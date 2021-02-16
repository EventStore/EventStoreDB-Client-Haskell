# Pas besoin: http2-grpc-proto3-wire, proto3-wire


mkdir -p gen-bin
mkdir -p gen
rm -rf ./gen/Proto/
protolens=`which proto-lens-protoc`

# Locally build the directory tree required by the proto files dependency graph.
PROTOPATH=protos

# git clone https://github.com/gogo/protobuf.git
# ln -s ./protobuf/gogoproto ./gogoproto
# PROTOPATH=${PROTOPATH}:./protobuf

# git clone https://github.com/googleapis/googleapis
# ln -s ./googleapis/google ./google
# PROTOPATH=${PROTOPATH}:./googleapis

# Compile stuff
function protoCompile() {
	local dotProto=$1
	protoc "--plugin=protoc-gen-haskell-protolens=${protolens}" \
		"--proto_path=${PROTOPATH}" \
		"--haskell-protolens_out=./gen" \
		"${dotProto}"
}

protoCompile ./protos/shared.proto
protoCompile ./protos/streams.proto
protoCompile ./protos/persistent.proto
protoCompile ./protos/gossip.proto

for file in `find gen -name "*.hs"`
do
    sed -i -e 's/Proto\./Database\.EventStore\.Grpc\.Wire\./' $file
done

find gen -name "*.hs" | sed -e 's/gen\///' | sed -e 's/\.hs$//' | tr '/' '.'
mv gen/Proto/*.hs Database/EventStore/Grpc/Wire