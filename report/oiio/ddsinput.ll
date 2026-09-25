Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0
@_ZZ9bcdec_bc7E14partition_sets = internal unnamed_addr constant [2 x [64 x [4 x [4 x i8]]]] [[64 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\01", [4 x i8] c"\00\00\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\81\00\00\00", [4 x i8] c"\01\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\00\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\00\00\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\81\01\00\00", [4 x i8] c"\01\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\81\00\00\00", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\81\00\00\00", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\81\01\01\00", [4 x i8] c"\01\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\81\01\01\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\01", [4 x i8] c"\00\00\00\01", [4 x i8] c"\01\00\00\00", [4 x i8] c"\01\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\01\01", [4 x i8] zeroinitializer, [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\01", [4 x i8] c"\01\00\81\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\00\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\81\01\00\00", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\81\00\01\00", [4 x i8] c"\01\00\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\00\01\01\00", [4 x i8] c"\01\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\81\01\00\00", [4 x i8] c"\01\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\01\00\01\01", [4 x i8] c"\01\01\00\01", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\00\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\01\81\00", [4 x i8] c"\00\01\01\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\00", [4 x i8] c"\01\01\81\00", [4 x i8] c"\00\01\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\00", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\00\01\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\81\00", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\00\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\81\01\01\00", [4 x i8] c"\00\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\01\01\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\81\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\01\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\01", [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\00\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\01", [4 x i8] c"\01\00\00\00", [4 x i8] c"\01\01\01\00", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\81\00", [4 x i8] c"\00\00\01\00", [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\01\01\81"]], [64 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\80\00\01\81", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\02\02\01", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\81", [4 x i8] c"\00\00\01\01", [4 x i8] c"\82\02\01\01", [4 x i8] c"\02\02\02\01"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\02\00\00\01", [4 x i8] c"\82\02\01\01", [4 x i8] c"\02\02\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\82", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\81\01\02\02", [4 x i8] c"\01\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\81", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\82", [4 x i8] c"\00\00\02\02", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\82\02\01\01", [4 x i8] c"\02\02\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\81\01\01\01", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\81\01\01\01", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\81\01", [4 x i8] c"\02\02\02\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\02", [4 x i8] c"\00\00\81\02", [4 x i8] c"\00\00\01\02", [4 x i8] c"\00\00\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\02", [4 x i8] c"\00\01\81\02", [4 x i8] c"\00\01\01\02", [4 x i8] c"\00\01\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\02\02", [4 x i8] c"\00\81\02\02", [4 x i8] c"\00\01\02\02", [4 x i8] c"\00\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\81", [4 x i8] c"\00\01\01\02", [4 x i8] c"\01\01\02\02", [4 x i8] c"\01\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\81", [4 x i8] c"\02\00\00\01", [4 x i8] c"\82\02\00\00", [4 x i8] c"\02\02\02\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\81", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\01\01\02", [4 x i8] c"\01\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\81", [4 x i8] c"\00\00\01\01", [4 x i8] c"\82\00\00\01", [4 x i8] c"\02\02\00\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\02\02", [4 x i8] c"\81\01\02\02", [4 x i8] c"\01\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\82", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\01\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\81", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\02\02\02", [4 x i8] c"\00\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\81", [4 x i8] c"\00\00\00\01", [4 x i8] c"\82\02\02\01", [4 x i8] c"\02\02\02\01"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\81\01", [4 x i8] c"\00\01\02\02", [4 x i8] c"\00\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\82\02\81\00", [4 x i8] c"\02\02\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\02\82", [4 x i8] c"\00\81\02\02", [4 x i8] c"\00\00\01\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\02", [4 x i8] c"\00\00\01\02", [4 x i8] c"\81\01\02\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\01\02\82\01", [4 x i8] c"\81\02\02\01", [4 x i8] c"\00\01\01\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\01\81\00", [4 x i8] c"\01\02\82\01", [4 x i8] c"\01\02\02\01"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\02", [4 x i8] c"\01\01\00\02", [4 x i8] c"\81\01\00\02", [4 x i8] c"\00\00\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\00\81\01\00", [4 x i8] c"\02\00\00\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\00\01\02\02", [4 x i8] c"\00\01\82\02", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\82\02\01\01", [4 x i8] c"\02\02\02\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\00\00\00\02", [4 x i8] c"\81\01\02\02", [4 x i8] c"\01\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\82", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\01\02", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\81", [4 x i8] c"\00\00\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\02\00", [4 x i8] c"\00\81\02\00", [4 x i8] c"\00\01\82\00", [4 x i8] c"\00\01\02\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\01\01\81\01", [4 x i8] c"\02\02\82\02", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\80\01\02\00", [4 x i8] c"\01\02\00\01", [4 x i8] c"\82\00\81\02", [4 x i8] c"\00\01\02\00"], [4 x [4 x i8]] [[4 x i8] c"\80\01\02\00", [4 x i8] c"\02\00\01\02", [4 x i8] c"\81\82\00\01", [4 x i8] c"\00\01\02\00"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\02\02\00\00", [4 x i8] c"\01\01\82\02", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\01\01", [4 x i8] c"\01\01\82\02", [4 x i8] c"\02\02\00\00", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\81", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\02\02\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\82\01\02\01", [4 x i8] c"\02\01\02\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\02", [4 x i8] c"\01\81\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\01\01\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\82", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\00", [4 x i8] c"\01\02\82\01", [4 x i8] c"\00\02\02\00", [4 x i8] c"\01\02\02\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\01", [4 x i8] c"\02\02\82\02", [4 x i8] c"\02\02\02\02", [4 x i8] c"\00\01\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\02\01\02\01", [4 x i8] c"\82\01\02\01", [4 x i8] c"\02\01\02\81"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\81", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\82", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\02\02\02", [4 x i8] c"\00\01\01\81"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\02", [4 x i8] c"\01\81\01\02", [4 x i8] c"\00\00\00\02", [4 x i8] c"\01\01\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] c"\02\81\01\02", [4 x i8] c"\02\01\01\02", [4 x i8] c"\02\01\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\02", [4 x i8] c"\00\81\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\00\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\02", [4 x i8] c"\01\01\01\02", [4 x i8] c"\81\01\01\02", [4 x i8] c"\00\00\00\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\00\81\01\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\02\01\81\02", [4 x i8] c"\02\01\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\00", [4 x i8] c"\00\81\01\00", [4 x i8] c"\02\02\02\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\02", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\81\01", [4 x i8] c"\00\00\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\02\02", [4 x i8] c"\01\01\02\02", [4 x i8] c"\81\01\02\02", [4 x i8] c"\00\00\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\02\81\01\82"], [4 x [4 x i8]] [[4 x i8] c"\80\00\00\82", [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\02", [4 x i8] c"\00\00\00\81"], [4 x [4 x i8]] [[4 x i8] c"\80\02\02\02", [4 x i8] c"\01\02\02\02", [4 x i8] c"\00\02\02\02", [4 x i8] c"\81\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\00\81", [4 x i8] c"\02\02\02\02", [4 x i8] c"\02\02\02\02", [4 x i8] c"\02\02\02\82"], [4 x [4 x i8]] [[4 x i8] c"\80\01\01\81", [4 x i8] c"\02\00\01\01", [4 x i8] c"\82\02\00\01", [4 x i8] c"\02\02\02\00"]]], align 16
@_ZZ9bcdec_bc7E8aWeight2 = internal unnamed_addr constant [4 x i32] [i32 0, i32 21, i32 43, i32 64], align 16
@_ZZ9bcdec_bc7E8aWeight3 = internal unnamed_addr constant [8 x i32] [i32 0, i32 9, i32 18, i32 27, i32 37, i32 46, i32 55, i32 64], align 16
@_ZZ9bcdec_bc7E8aWeight4 = internal unnamed_addr constant [16 x i32] [i32 0, i32 4, i32 9, i32 13, i32 17, i32 21, i32 26, i32 30, i32 34, i32 38, i32 43, i32 47, i32 51, i32 55, i32 60, i32 64], align 16
@_ZN11OpenImageIO4v3_119dds_imageio_versionE = local_unnamed_addr global i32 27, align 4
@.str = private unnamed_addr constant [4 x i8] c"dds\00", align 1
@_ZN11OpenImageIO4v3_120dds_input_extensionsE = local_unnamed_addr global [2 x ptr] [ptr @.str, ptr null], align 16
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid DDS header, possibly corrupt file\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Image with no data\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported DXGI format: {}\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unsupported compression type: {}\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dds:bc5normal\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"DXT2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DXT3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DXT4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"BC4\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"BC5\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"BC6HU\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"BC6HS\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"BC7\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Unsupported DDS bit depth: {} (maybe it's a corrupted file?)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"oiio:BitsPerSample\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"srgb_rec709_scene\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"lin_rec709_scene\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"textureformat\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Volume Texture\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"CubeFace Environment\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"+x\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"+y\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"+z\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"dds:CubeMapSides\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Plain Texture\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [35 x i8] c"%s:%u: %s: Assertion '%s' failed.\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/oiio/OpenImageIO/src/dds.imageio/ddsinput.cpp\00", align 1
@__FUNCTION__._ZN11OpenImageIO4v3_18DDSInput13readimg_tilesEv = private unnamed_addr constant [14 x i8] c"readimg_tiles\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"m_buf.size() >= m_spec.tile_bytes()\00", align 1
@_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastx = internal unnamed_addr global i32 -1, align 4
@_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lasty = internal unnamed_addr global i32 -1, align 4
@_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastz = internal unnamed_addr global i32 -1, align 4
@_ZTVN11OpenImageIO4v3_18DDSInputE = hidden unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_18DDSInputE, ptr @_ZN11OpenImageIO4v3_18DDSInputD2Ev, ptr @_ZN11OpenImageIO4v3_18DDSInputD0Ev, ptr @_ZNK11OpenImageIO4v3_18DDSInput11format_nameEv, ptr @_ZNK11OpenImageIO4v3_18DDSInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK11OpenImageIO4v3_18DDSInput10valid_fileEPNS0_10Filesystem7IOProxyE, ptr @_ZN11OpenImageIO4v3_18DDSInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE, ptr @_ZN11OpenImageIO4v3_18DDSInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_, ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv, ptr @_ZN11OpenImageIO4v3_110ImageInput4specEii, ptr @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii, ptr @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi, ptr @_ZN11OpenImageIO4v3_18DDSInput5closeEv, ptr @_ZNK11OpenImageIO4v3_18DDSInput16current_subimageEv, ptr @_ZNK11OpenImageIO4v3_18DDSInput16current_miplevelEv, ptr @_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll, ptr @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_18DDSInput20read_native_scanlineEiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz, ptr @_ZN11OpenImageIO4v3_110ImageInput11set_ioproxyEPNS0_10Filesystem7IOProxyE, ptr @_ZNK11OpenImageIO4v3_110ImageInput8heapsizeEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput9footprintEv] }, align 8
@_ZTIN11OpenImageIO4v3_18DDSInputE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_18DDSInputE, ptr @_ZTIN11OpenImageIO4v3_110ImageInputE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_18DDSInputE = hidden constant [30 x i8] c"N11OpenImageIO4v3_18DDSInputE\00", align 1
@_ZTIN11OpenImageIO4v3_110ImageInputE = external constant ptr
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@"_ZTIZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0" = internal constant [101 x i8] c"ZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.62 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.64 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.71 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.81 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.82 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_1L25GetDxgiFormatBitsPerPixelEj = private unnamed_addr constant [70 x i8] c" \00\00\00  \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00  \00\00 \00 ", align 4
@switch.table._ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii = private unnamed_addr constant [10 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 8
@switch.table._ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii.7 = private unnamed_addr constant [25 x i8] [i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 16, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 24, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z18bcdec__color_blockPKvPvii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %0, align 2, !tbaa !46     ; 2 uses
  %i.d = load i16, ptr %i.b, align 2, !tbaa !46   ; 2 uses
  %i.e = zext i16 %i.c to i32                     ; 3 uses
  %i.f = lshr i32 %i.e, 11
  %i.g = mul nuw nsw i32 %i.f, 527
  %i.h = add nuw nsw i32 %i.g, 23
  %i.i = lshr i32 %i.h, 6                         ; 4 uses
  %i.j = lshr i32 %i.e, 5
  %i.k = and i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, 259
  %i.m = add nuw nsw i32 %i.l, 33
  %i.n = lshr i32 %i.m, 6                         ; 4 uses
  %i.o = and i32 %i.e, 31
  %i.p = mul nuw nsw i32 %i.o, 527
  %i.q = add nuw nsw i32 %i.p, 23
  %i.r = lshr i32 %i.q, 6                         ; 4 uses
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = shl nuw nsw i32 %i.n, 8
  %i.u = or i32 %i.s, %i.t
  %i.v = or i32 %i.u, %i.i
  %i.w = or i32 %i.v, -16777216
  store i32 %i.w, ptr %i.a, align 16, !tbaa !44
  %i.x = zext i16 %i.d to i32                     ; 3 uses
  %i.y = lshr i32 %i.x, 11
  %i.z = mul nuw nsw i32 %i.y, 527
  %i.aa = add nuw nsw i32 %i.z, 23
  %i.ab = lshr i32 %i.aa, 6                       ; 4 uses
  %i.ac = lshr i32 %i.x, 5
  %i.ad = and i32 %i.ac, 63
  %i.ae = mul nuw nsw i32 %i.ad, 259
  %i.af = add nuw nsw i32 %i.ae, 33
  %i.ag = lshr i32 %i.af, 6                       ; 4 uses
  %i.ah = and i32 %i.x, 31
  %i.ai = mul nuw nsw i32 %i.ah, 527
  %i.aj = add nuw nsw i32 %i.ai, 23
  %i.ak = lshr i32 %i.aj, 6                       ; 4 uses
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = shl nuw nsw i32 %i.ag, 8
  %i.an = or i32 %i.al, %i.am
  %i.ao = or i32 %i.an, %i.ab
  %i.ap = or i32 %i.ao, -16777216
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !44
  %i.ar = icmp ugt i16 %i.c, %i.d
  %i.as = icmp ne i32 %3, 0
  %or.cond = or i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = shl nuw nsw i32 %i.i, 1
  %i.au = add nuw nsw i32 %i.at, %i.ab
  %i.av = trunc nuw nsw i32 %i.au to i16
  %.lhs.trunc = add nuw nsw i16 %i.av, 1
  %i.aw = udiv i16 %.lhs.trunc, 3
  %.zext = zext nneg i16 %i.aw to i32
  %i.ax = shl nuw nsw i32 %i.n, 1
  %i.ay = add nuw nsw i32 %i.ax, %i.ag
  %i.az = trunc nuw nsw i32 %i.ay to i16
  %.lhs.trunc60 = add nuw nsw i16 %i.az, 1
  %i.ba = udiv i16 %.lhs.trunc60, 3
  %.zext61 = zext nneg i16 %i.ba to i32
  %i.bb = shl nuw nsw i32 %i.r, 1
  %i.bc = shl nuw nsw i32 %.zext61, 8
  %i.bd = shl nuw nsw i32 %i.ab, 1
  %i.be = shl nuw nsw i32 %i.ag, 1
  %i.bf = shl nuw nsw i32 %i.ak, 1
  %i.bg = add nuw nsw i32 %i.bb, %i.ak
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  %i.bi = add nuw nsw i32 %i.bd, %i.i
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  %i.bk = add nuw nsw i32 %i.be, %i.n
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = add nuw nsw i32 %i.bf, %i.r
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  %i.bo = insertelement <4 x i16> poison, i16 %i.bh, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bj, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bl, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 3
  %i.bs = add nuw nsw <4 x i16> %i.br, splat (i16 1)
  %i.bt = udiv <4 x i16> %i.bs, splat (i16 3)     ; 4 uses
  %i.bu = extractelement <4 x i16> %i.bt, i64 0
  %.zext63 = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext63, 16
  %i.bw = or disjoint i32 %i.bv, %.zext
  %i.bx = or i32 %i.bw, %i.bc
  %i.by = extractelement <4 x i16> %i.bt, i64 1
  %.zext65 = zext nneg i16 %i.by to i32
  %i.bz = extractelement <4 x i16> %i.bt, i64 2
  %.zext67 = zext nneg i16 %i.bz to i32
  %i.ca = extractelement <4 x i16> %i.bt, i64 3
  %.zext69 = zext nneg i16 %i.ca to i32
  %i.cb = shl nuw nsw i32 %.zext69, 16
  %i.cc = shl nuw nsw i32 %.zext67, 8
  %i.cd = or disjoint i32 %i.cb, %.zext65
  %i.ce = or i32 %i.cd, %i.cc
  %i.cf = or i32 %i.ce, -16777216
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.cg = add nuw nsw i32 %i.i, 1
  %i.ch = add nuw nsw i32 %i.cg, %i.ab
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %i.ag, %i.n
  %i.ck = add nuw nsw i32 %i.ak, %i.r
  %i.cl = shl nuw nsw i32 %i.ck, 15
  %i.cm = add nuw nsw i32 %i.cl, 32768
  %i.cn = and i32 %i.cm, 16711680
  %i.co = shl nuw nsw i32 %i.cj, 7
  %i.cp = add nuw nsw i32 %i.co, 128
  %i.cq = and i32 %i.cp, 16776960
  %i.cr = or i32 %i.ci, %i.cn
  %i.cs = or i32 %i.cr, %i.cq
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.sink76.in = phi i32 [ %i.bx, %bb.b ], [ %i.cs, %bb.c ]
  %.sink = phi i32 [ %i.cf, %bb.b ], [ 0, %bb.c ]
  %.sink76 = or i32 %.sink76.in, -16777216
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink76, ptr %i.ct, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sink, ptr %i.cu, align 4, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !44 ; 16 uses
  %i.cx = sext i32 %2 to i64                      ; 3 uses
  %i.cy = and i32 %i.cw, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  store i32 %i.db, ptr %1, align 4, !tbaa !44
  %i.dc = lshr i32 %i.cw, 2
  %i.dd = and i32 %i.dc, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !44
  %i.di = lshr i32 %i.cw, 4
  %i.dj = and i32 %i.di, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !44
  %i.do = lshr i32 %i.cw, 6
  %i.dp = and i32 %i.do, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !44
  %i.du = lshr i32 %i.cw, 8
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.cx ; 5 uses
  %i.dw = and i32 %i.du, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !44
  store i32 %i.dz, ptr %i.dv, align 4, !tbaa !44
  %i.ea = lshr i32 %i.cw, 10
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !44
  %i.eg = lshr i32 %i.cw, 12
  %i.eh = and i32 %i.eg, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !44
  %i.em = lshr i32 %i.cw, 14
  %i.en = and i32 %i.em, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !44
  %i.es = lshr i32 %i.cw, 16
  %i.et = getelementptr inbounds i8, ptr %i.dv, i64 %i.cx ; 5 uses
  %i.eu = and i32 %i.es, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !44
  store i32 %i.ex, ptr %i.et, align 4, !tbaa !44
  %i.ey = lshr i32 %i.cw, 18
  %i.ez = and i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !44
  %i.fe = lshr i32 %i.cw, 20
  %i.ff = and i32 %i.fe, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !44
  %i.fk = lshr i32 %i.cw, 22
  %i.fl = and i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !44
  %i.fq = lshr i32 %i.cw, 24
  %i.fr = getelementptr inbounds i8, ptr %i.et, i64 %i.cx ; 4 uses
  %i.fs = and i32 %i.fq, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !44
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !44
  %i.fw = lshr i32 %i.cw, 26
  %i.fx = and i32 %i.fw, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !44
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !44
  %i.gc = lshr i32 %i.cw, 28
  %i.gd = and i32 %i.gc, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !44
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !44
  %i.gi = lshr i32 %i.cw, 30
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !44
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z24bcdec__sharp_alpha_blockPKvPvi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1), (4, 5), (8, 9), (12, 13)) %1, i32 noundef %2) local_unnamed_addr #0 {
.preheader:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = load i16, ptr %0, align 2, !tbaa !46
  %i.c = trunc i16 %i.b to i8
  %i.d = and i8 %i.c, 15
  %i.e = mul nuw i8 %i.d, 17
  store i8 %i.e, ptr %1, align 1, !tbaa !47
  %i.f = load i16, ptr %0, align 2, !tbaa !46
  %i.g = trunc i16 %i.f to i8
  %i.h = lshr i8 %i.g, 4
  %i.i = mul nuw i8 %i.h, 17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.j, align 1, !tbaa !47
  %i.k = load i16, ptr %0, align 2, !tbaa !46
  %i.l = lshr i16 %i.k, 8
  %i.m = trunc nuw i16 %i.l to i8
  %i.n = and i8 %i.m, 15
  %i.o = mul nuw i8 %i.n, 17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.o, ptr %i.p, align 1, !tbaa !47
  %i.q = load i16, ptr %0, align 2, !tbaa !46
  %i.r = lshr i16 %i.q, 12
  %i.s = trunc nuw nsw i16 %i.r to i8
  %i.t = mul nuw i8 %i.s, 17
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_":bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !150   ; 9 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !139  ; 2 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.i = trunc i64 %.val3 to i32
  %i.j = shl nsw i32 %i.i, 2                      ; 2 uses
  %i.k = trunc i64 %.val4 to i32
  %i.l = shl nsw i32 %i.k, 2
  %i.m = load ptr, ptr %.val, align 8, !tbaa !387, !nonnull !164, !align !165
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %.sroa.speculated166.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.p = icmp slt i32 %i.j, %.sroa.speculated166.i.i.i
  br i1 %i.p, label %.preheader174.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.lr.ph.i.i.i:                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 14 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 7 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 11 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 15 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 19 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 23 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 27 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 31 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 35 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 39 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 43 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 47 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 51 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 55 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 59 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 7 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.preheader174.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.preheader.i.i.i:                    ; preds = %.preheader174.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !389, !nonnull !164, !align !166
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !140
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !390, !nonnull !164, !align !165
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %.val3, %i.cp
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !391, !nonnull !164, !align !166
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !139
  %i.ct = mul i64 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ct
  %i.cv = sext i32 %i.j to i64
  %i.cw = sext i32 %.sroa.speculated166.i.i.i to i64
  br label %.preheader174.i.i.i

.preheader174.i.i.i:                              ; preds = %.critedge75.i.i.i, %.preheader174.preheader.i.i.i
  %i.cx = phi i32 [ %i.ch, %.preheader174.preheader.i.i.i ], [ %i.atp, %.critedge75.i.i.i ] ; 2 uses
  %indvars.iv199.i.i.i = phi i64 [ %i.cv, %.preheader174.preheader.i.i.i ], [ %indvars.iv.next200.i.i.i, %.critedge75.i.i.i ] ; 3 uses
  %.061191.i.i.i = phi ptr [ %i.cu, %.preheader174.preheader.i.i.i ], [ %.1.lcssa.i.i.i, %.critedge75.i.i.i ] ; 2 uses
  %.not70185.i.i.i = icmp sgt i32 %i.cx, 0
  br i1 %.not70185.i.i.i, label %.lr.ph189.i.i.i, label %.critedge75.i.i.i

.lr.ph189.i.i.i:                                  ; preds = %.preheader174.i.i.i
  %i.cy = trunc nsw i64 %indvars.iv199.i.i.i to i32 ; 6 uses
  %i.cz = or disjoint i32 %i.cy, 1
  %i.da = icmp slt i32 %i.cz, %.sroa.speculated166.i.i.i
  %i.db = or disjoint i32 %i.cy, 2
  %i.dc = icmp slt i32 %i.db, %.sroa.speculated166.i.i.i
  %i.dd = or disjoint i32 %i.cy, 3
  %i.de = icmp slt i32 %i.dd, %.sroa.speculated166.i.i.i
  %i.df = or disjoint i32 %i.cy, 1
  %i.dg = icmp slt i32 %i.df, %.sroa.speculated166.i.i.i
  %i.dh = or disjoint i32 %i.cy, 2
  %i.di = icmp slt i32 %i.dh, %.sroa.speculated166.i.i.i
  %i.dj = or disjoint i32 %i.cy, 3
  %i.dk = icmp slt i32 %i.dj, %.sroa.speculated166.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.i.i, %.lr.ph189.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph189.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %.1188.i.i.i = phi ptr [ %.061191.i.i.i, %.lr.ph189.i.i.i ], [ %i.alp, %.critedge.i.i.i ] ; 21 uses
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !392, !nonnull !164, !align !165
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !141 ; 2 uses
  switch i32 %i.dm, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit" [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.h
    i32 7, label %bb.k
    i32 8, label %bb.p
    i32 9, label %bb.p
    i32 10, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  call void @_Z18bcdec__color_blockPKvPvii(ptr noundef readonly %.1188.i.i.i, ptr noundef nonnull %i.g, i32 noundef 16, i32 noundef 0)
  br label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !46
  %i.dr = zext i16 %i.do to i32                   ; 3 uses
  %i.ds = lshr i32 %i.dr, 5
  %i.dt = and i32 %i.dr, 31
  %i.du = zext i16 %i.dq to i32                   ; 3 uses
  %i.dv = lshr i32 %i.du, 5
  %i.dw = and i32 %i.du, 31
  %i.dx = lshr i32 %i.dr, 11
  %i.dy = mul nuw nsw i32 %i.dx, 527
  %i.dz = add nuw nsw i32 %i.dy, 23
  %i.ea = lshr i32 %i.dz, 6                       ; 3 uses
  %i.eb = and i32 %i.ds, 63
  %i.ec = mul nuw nsw i32 %i.eb, 259
  %i.ed = add nuw nsw i32 %i.ec, 33
  %i.ee = lshr i32 %i.ed, 6                       ; 3 uses
  %i.ef = mul nuw nsw i32 %i.dt, 527
  %i.eg = add nuw nsw i32 %i.ef, 23
  %i.eh = lshr i32 %i.eg, 6                       ; 3 uses
  %i.ei = shl nuw nsw i32 %i.eh, 16
  %i.ej = shl nuw nsw i32 %i.ee, 8
  %i.ek = or i32 %i.ei, %i.ej
  %i.el = or i32 %i.ek, %i.ea
  %i.em = or i32 %i.el, -16777216
  store i32 %i.em, ptr %i.f, align 16, !tbaa !44
  %i.en = lshr i32 %i.du, 11
  %i.eo = mul nuw nsw i32 %i.en, 527
  %i.ep = add nuw nsw i32 %i.eo, 23
  %i.eq = lshr i32 %i.ep, 6                       ; 3 uses
  %i.er = and i32 %i.dv, 63
  %i.es = mul nuw nsw i32 %i.er, 259
  %i.et = add nuw nsw i32 %i.es, 33
  %i.eu = lshr i32 %i.et, 6                       ; 3 uses
  %i.ev = mul nuw nsw i32 %i.dw, 527
  %i.ew = add nuw nsw i32 %i.ev, 23
  %i.ex = lshr i32 %i.ew, 6                       ; 3 uses
  %i.ey = shl nuw nsw i32 %i.ex, 16
  %i.ez = shl nuw nsw i32 %i.eu, 8
  %i.fa = or i32 %i.ey, %i.ez
  %i.fb = or i32 %i.fa, %i.eq
  %i.fc = or i32 %i.fb, -16777216
  store i32 %i.fc, ptr %i.cb, align 4, !tbaa !44
  %i.fd = shl nuw nsw i32 %i.ea, 1
  %i.fe = add nuw nsw i32 %i.fd, %i.eq
  %i.ff = trunc nuw nsw i32 %i.fe to i16
  %i.fg = shl nuw nsw i32 %i.ee, 1
  %i.fh = add nuw nsw i32 %i.fg, %i.eu
  %i.fi = trunc nuw nsw i32 %i.fh to i16
  %i.fj = shl nuw nsw i32 %i.eh, 1
  %i.fk = add nuw nsw i32 %i.fj, %i.ex
  %i.fl = trunc nuw nsw i32 %i.fk to i16
  %i.fm = shl nuw nsw i32 %i.eq, 1
  %i.fn = add nuw nsw i32 %i.fm, %i.ea
  %i.fo = trunc nuw nsw i32 %i.fn to i16
  %i.fp = insertelement <2 x i16> poison, i16 %i.fo, i64 0
  %i.fq = insertelement <2 x i16> %i.fp, i16 %i.ff, i64 1
  %i.fr = add nuw nsw <2 x i16> %i.fq, splat (i16 1)
  %i.fs = udiv <2 x i16> %i.fr, splat (i16 3)
  %i.ft = zext nneg <2 x i16> %i.fs to <2 x i32>
  %i.fu = shl nuw nsw i32 %i.eu, 1
  %i.fv = add nuw nsw i32 %i.fu, %i.ee
  %i.fw = trunc nuw nsw i32 %i.fv to i16
  %i.fx = insertelement <2 x i16> poison, i16 %i.fw, i64 0
  %i.fy = insertelement <2 x i16> %i.fx, i16 %i.fi, i64 1
  %i.fz = add nuw nsw <2 x i16> %i.fy, splat (i16 1)
  %i.ga = udiv <2 x i16> %i.fz, splat (i16 3)
  %i.gb = zext nneg <2 x i16> %i.ga to <2 x i32>
  %i.gc = shl nuw nsw i32 %i.ex, 1
  %i.gd = add nuw nsw i32 %i.gc, %i.eh
  %i.ge = trunc nuw nsw i32 %i.gd to i16
  %i.gf = insertelement <2 x i16> poison, i16 %i.ge, i64 0
  %i.gg = insertelement <2 x i16> %i.gf, i16 %i.fl, i64 1
  %i.gh = add nuw nsw <2 x i16> %i.gg, splat (i16 1)
  %i.gi = udiv <2 x i16> %i.gh, splat (i16 3)
  %i.gj = zext nneg <2 x i16> %i.gi to <2 x i32>
  %i.gk = shl nuw nsw <2 x i32> %i.gj, splat (i32 16)
  %i.gl = shl nuw nsw <2 x i32> %i.gb, splat (i32 8)
  %i.gm = or disjoint <2 x i32> %i.gk, %i.ft
  %i.gn = or <2 x i32> %i.gm, %i.gl
  %i.go = or <2 x i32> %i.gn, splat (i32 -16777216)
  %i.gp = shufflevector <2 x i32> %i.go, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gp, ptr %i.cc, align 8, !tbaa !44
  %i.gq = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !44 ; 16 uses
  %i.gs = and i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !44
  store i32 %i.gv, ptr %i.g, align 16, !tbaa !44
  %i.gw = lshr i32 %i.gr, 2
  %i.gx = and i32 %i.gw, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !44
  store i32 %i.ha, ptr %i.w, align 4, !tbaa !44
  %i.hb = lshr i32 %i.gr, 4
  %i.hc = and i32 %i.hb, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !44
  store i32 %i.hf, ptr %i.y, align 8, !tbaa !44
  %i.hg = lshr i32 %i.gr, 6
  %i.hh = and i32 %i.hg, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !44
  store i32 %i.hk, ptr %i.aa, align 4, !tbaa !44
  %i.hl = lshr i32 %i.gr, 8
  %i.hm = and i32 %i.hl, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !44
  store i32 %i.hp, ptr %i.ac, align 16, !tbaa !44
  %i.hq = lshr i32 %i.gr, 10
  %i.hr = and i32 %i.hq, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !44
  store i32 %i.hu, ptr %i.ae, align 4, !tbaa !44
  %i.hv = lshr i32 %i.gr, 12
  %i.hw = and i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !44
  store i32 %i.hz, ptr %i.ag, align 8, !tbaa !44
  %i.ia = lshr i32 %i.gr, 14
  %i.ib = and i32 %i.ia, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !44
  store i32 %i.ie, ptr %i.ai, align 4, !tbaa !44
  %i.if = lshr i32 %i.gr, 16
  %i.ig = and i32 %i.if, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !44
  store i32 %i.ij, ptr %i.bi, align 16, !tbaa !44
  %i.ik = lshr i32 %i.gr, 18
  %i.il = and i32 %i.ik, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !44
  store i32 %i.io, ptr %i.bj, align 4, !tbaa !44
  %i.ip = lshr i32 %i.gr, 20
  %i.iq = and i32 %i.ip, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !44
  store i32 %i.it, ptr %i.bk, align 8, !tbaa !44
  %i.iu = lshr i32 %i.gr, 22
  %i.iv = and i32 %i.iu, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !44
  store i32 %i.iy, ptr %i.bl, align 4, !tbaa !44
  %i.iz = lshr i32 %i.gr, 24
  %i.ja = and i32 %i.iz, 3
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !44
  store i32 %i.jd, ptr %i.bm, align 16, !tbaa !44
  %i.je = lshr i32 %i.gr, 26
  %i.jf = and i32 %i.je, 3
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !44
  store i32 %i.ji, ptr %i.bn, align 4, !tbaa !44
  %i.jj = lshr i32 %i.gr, 28
  %i.jk = and i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !44
  store i32 %i.jn, ptr %i.bo, align 8, !tbaa !44
  %i.jo = lshr i32 %i.gr, 30
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !44
  store i32 %i.jr, ptr %i.bp, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.js = load i16, ptr %.1188.i.i.i, align 4, !tbaa !46
  %i.jt = trunc i16 %i.js to i8
  %i.ju = and i8 %i.jt, 15
  %i.jv = mul nuw i8 %i.ju, 17
  store i8 %i.jv, ptr %i.ao, align 1, !tbaa !47
  %i.jw = load i16, ptr %.1188.i.i.i, align 4, !tbaa !46
  %i.jx = trunc i16 %i.jw to i8
  %i.jy = lshr i8 %i.jx, 4
  %i.jz = mul nuw i8 %i.jy, 17
  store i8 %i.jz, ptr %i.aq, align 1, !tbaa !47
  %i.ka = load i16, ptr %.1188.i.i.i, align 4, !tbaa !46
  %i.kb = lshr i16 %i.ka, 8
  %i.kc = trunc nuw i16 %i.kb to i8
  %i.kd = and i8 %i.kc, 15
  %i.ke = mul nuw i8 %i.kd, 17
  store i8 %i.ke, ptr %i.as, align 1, !tbaa !47
  %i.kf = load i16, ptr %.1188.i.i.i, align 4, !tbaa !46
  %i.kg = lshr i16 %i.kf, 12
  %i.kh = trunc nuw nsw i16 %i.kg to i8
  %i.ki = mul nuw i8 %i.kh, 17
  store i8 %i.ki, ptr %i.au, align 1, !tbaa !47
  %i.kj = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 2 ; 4 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !46
  %i.kl = trunc i16 %i.kk to i8
  %i.km = and i8 %i.kl, 15
  %i.kn = mul nuw i8 %i.km, 17
  store i8 %i.kn, ptr %i.aw, align 1, !tbaa !47
  %i.ko = load i16, ptr %i.kj, align 2, !tbaa !46
  %i.kp = trunc i16 %i.ko to i8
  %i.kq = lshr i8 %i.kp, 4
  %i.kr = mul nuw i8 %i.kq, 17
  store i8 %i.kr, ptr %i.ay, align 1, !tbaa !47
  %i.ks = load i16, ptr %i.kj, align 2, !tbaa !46
  %i.kt = lshr i16 %i.ks, 8
  %i.ku = trunc nuw i16 %i.kt to i8
  %i.kv = and i8 %i.ku, 15
  %i.kw = mul nuw i8 %i.kv, 17
  store i8 %i.kw, ptr %i.ba, align 1, !tbaa !47
  %i.kx = load i16, ptr %i.kj, align 2, !tbaa !46
  %i.ky = lshr i16 %i.kx, 12
  %i.kz = trunc nuw nsw i16 %i.ky to i8
  %i.la = mul nuw i8 %i.kz, 17
  store i8 %i.la, ptr %i.bc, align 1, !tbaa !47
  %i.lb = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 4 ; 4 uses
  %i.lc = load i16, ptr %i.lb, align 4, !tbaa !46
  %i.ld = trunc i16 %i.lc to i8
  %i.le = and i8 %i.ld, 15
  %i.lf = mul nuw i8 %i.le, 17
  store i8 %i.lf, ptr %i.bt, align 1, !tbaa !47
  %i.lg = load i16, ptr %i.lb, align 4, !tbaa !46
  %i.lh = trunc i16 %i.lg to i8
  %i.li = lshr i8 %i.lh, 4
  %i.lj = mul nuw i8 %i.li, 17
  store i8 %i.lj, ptr %i.bu, align 1, !tbaa !47
  %i.lk = load i16, ptr %i.lb, align 4, !tbaa !46
  %i.ll = lshr i16 %i.lk, 8
  %i.lm = trunc nuw i16 %i.ll to i8
  %i.ln = and i8 %i.lm, 15
  %i.lo = mul nuw i8 %i.ln, 17
  store i8 %i.lo, ptr %i.bv, align 1, !tbaa !47
  %i.lp = load i16, ptr %i.lb, align 4, !tbaa !46
  %i.lq = lshr i16 %i.lp, 12
  %i.lr = trunc nuw nsw i16 %i.lq to i8
  %i.ls = mul nuw i8 %i.lr, 17
  store i8 %i.ls, ptr %i.bw, align 1, !tbaa !47
  %i.lt = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 6 ; 4 uses
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !46
  %i.lv = trunc i16 %i.lu to i8
  %i.lw = and i8 %i.lv, 15
  %i.lx = mul nuw i8 %i.lw, 17
  store i8 %i.lx, ptr %i.bx, align 1, !tbaa !47
  %i.ly = load i16, ptr %i.lt, align 2, !tbaa !46
  %i.lz = trunc i16 %i.ly to i8
  %i.ma = lshr i8 %i.lz, 4
  %i.mb = mul nuw i8 %i.ma, 17
  store i8 %i.mb, ptr %i.by, align 1, !tbaa !47
  %i.mc = load i16, ptr %i.lt, align 2, !tbaa !46
  %i.md = lshr i16 %i.mc, 8
  %i.me = trunc nuw i16 %i.md to i8
  %i.mf = and i8 %i.me, 15
  %i.mg = mul nuw i8 %i.mf, 17
  store i8 %i.mg, ptr %i.bz, align 1, !tbaa !47
  %i.mh = load i16, ptr %i.lt, align 2, !tbaa !46
  %i.mi = lshr i16 %i.mh, 12
  %i.mj = trunc nuw nsw i16 %i.mi to i8
  %i.mk = mul nuw i8 %i.mj, 17
  store i8 %i.mk, ptr %i.ca, align 1, !tbaa !47
  br label %bb.r

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ml = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !46
  %i.mn = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !46
  %i.mp = zext i16 %i.mm to i32                   ; 3 uses
  %i.mq = lshr i32 %i.mp, 5
  %i.mr = and i32 %i.mp, 31
  %i.ms = zext i16 %i.mo to i32                   ; 3 uses
  %i.mt = lshr i32 %i.ms, 5
  %i.mu = and i32 %i.ms, 31
  %i.mv = lshr i32 %i.mp, 11
  %i.mw = mul nuw nsw i32 %i.mv, 527
  %i.mx = add nuw nsw i32 %i.mw, 23
  %i.my = lshr i32 %i.mx, 6                       ; 3 uses
  %i.mz = and i32 %i.mq, 63
  %i.na = mul nuw nsw i32 %i.mz, 259
  %i.nb = add nuw nsw i32 %i.na, 33
  %i.nc = lshr i32 %i.nb, 6                       ; 3 uses
  %i.nd = mul nuw nsw i32 %i.mr, 527
  %i.ne = add nuw nsw i32 %i.nd, 23
  %i.nf = lshr i32 %i.ne, 6                       ; 3 uses
  %i.ng = shl nuw nsw i32 %i.nf, 16
  %i.nh = shl nuw nsw i32 %i.nc, 8
  %i.ni = or i32 %i.ng, %i.nh
  %i.nj = or i32 %i.ni, %i.my
  %i.nk = or i32 %i.nj, -16777216
  store i32 %i.nk, ptr %i.d, align 16, !tbaa !44
  %i.nl = lshr i32 %i.ms, 11
  %i.nm = mul nuw nsw i32 %i.nl, 527
  %i.nn = add nuw nsw i32 %i.nm, 23
  %i.no = lshr i32 %i.nn, 6                       ; 3 uses
  %i.np = and i32 %i.mt, 63
  %i.nq = mul nuw nsw i32 %i.np, 259
  %i.nr = add nuw nsw i32 %i.nq, 33
  %i.ns = lshr i32 %i.nr, 6                       ; 3 uses
  %i.nt = mul nuw nsw i32 %i.mu, 527
  %i.nu = add nuw nsw i32 %i.nt, 23
  %i.nv = lshr i32 %i.nu, 6                       ; 3 uses
  %i.nw = shl nuw nsw i32 %i.nv, 16
  %i.nx = shl nuw nsw i32 %i.ns, 8
  %i.ny = or i32 %i.nw, %i.nx
  %i.nz = or i32 %i.ny, %i.no
  %i.oa = or i32 %i.nz, -16777216
  store i32 %i.oa, ptr %i.bg, align 4, !tbaa !44
  %i.ob = shl nuw nsw i32 %i.my, 1
  %i.oc = add nuw nsw i32 %i.ob, %i.no
  %i.od = trunc nuw nsw i32 %i.oc to i16
  %i.oe = shl nuw nsw i32 %i.nc, 1
  %i.of = add nuw nsw i32 %i.oe, %i.ns
  %i.og = trunc nuw nsw i32 %i.of to i16
  %i.oh = shl nuw nsw i32 %i.nf, 1
  %i.oi = add nuw nsw i32 %i.oh, %i.nv
  %i.oj = trunc nuw nsw i32 %i.oi to i16
  %i.ok = shl nuw nsw i32 %i.no, 1
  %i.ol = add nuw nsw i32 %i.ok, %i.my
  %i.om = trunc nuw nsw i32 %i.ol to i16
  %i.on = insertelement <2 x i16> poison, i16 %i.om, i64 0
  %i.oo = insertelement <2 x i16> %i.on, i16 %i.od, i64 1
  %i.op = add nuw nsw <2 x i16> %i.oo, splat (i16 1)
  %i.oq = udiv <2 x i16> %i.op, splat (i16 3)
  %i.or = zext nneg <2 x i16> %i.oq to <2 x i32>
  %i.os = shl nuw nsw i32 %i.ns, 1
  %i.ot = add nuw nsw i32 %i.os, %i.nc
  %i.ou = trunc nuw nsw i32 %i.ot to i16
  %i.ov = insertelement <2 x i16> poison, i16 %i.ou, i64 0
  %i.ow = insertelement <2 x i16> %i.ov, i16 %i.og, i64 1
  %i.ox = add nuw nsw <2 x i16> %i.ow, splat (i16 1)
  %i.oy = udiv <2 x i16> %i.ox, splat (i16 3)
  %i.oz = zext nneg <2 x i16> %i.oy to <2 x i32>
  %i.pa = shl nuw nsw i32 %i.nv, 1
  %i.pb = add nuw nsw i32 %i.pa, %i.nf
  %i.pc = trunc nuw nsw i32 %i.pb to i16
  %i.pd = insertelement <2 x i16> poison, i16 %i.pc, i64 0
  %i.pe = insertelement <2 x i16> %i.pd, i16 %i.oj, i64 1
  %i.pf = add nuw nsw <2 x i16> %i.pe, splat (i16 1)
  %i.pg = udiv <2 x i16> %i.pf, splat (i16 3)
  %i.ph = zext nneg <2 x i16> %i.pg to <2 x i32>
  %i.pi = shl nuw nsw <2 x i32> %i.ph, splat (i32 16)
  %i.pj = shl nuw nsw <2 x i32> %i.oz, splat (i32 8)
  %i.pk = or disjoint <2 x i32> %i.pi, %i.or
  %i.pl = or <2 x i32> %i.pk, %i.pj
  %i.pm = or <2 x i32> %i.pl, splat (i32 -16777216)
  %i.pn = shufflevector <2 x i32> %i.pm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.pn, ptr %i.bh, align 8, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !44 ; 16 uses
  %i.pq = and i32 %i.pp, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !44
  store i32 %i.pt, ptr %i.g, align 16, !tbaa !44
  %i.pu = lshr i32 %i.pp, 2
  %i.pv = and i32 %i.pu, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !44
  store i32 %i.py, ptr %i.w, align 4, !tbaa !44
  %i.pz = lshr i32 %i.pp, 4
  %i.qa = and i32 %i.pz, 3
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !44
  store i32 %i.qd, ptr %i.y, align 8, !tbaa !44
  %i.qe = lshr i32 %i.pp, 6
  %i.qf = and i32 %i.qe, 3
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !44
  store i32 %i.qi, ptr %i.aa, align 4, !tbaa !44
  %i.qj = lshr i32 %i.pp, 8
  %i.qk = and i32 %i.qj, 3
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !44
  store i32 %i.qn, ptr %i.ac, align 16, !tbaa !44
  %i.qo = lshr i32 %i.pp, 10
  %i.qp = and i32 %i.qo, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !44
  store i32 %i.qs, ptr %i.ae, align 4, !tbaa !44
  %i.qt = lshr i32 %i.pp, 12
  %i.qu = and i32 %i.qt, 3
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !44
  store i32 %i.qx, ptr %i.ag, align 8, !tbaa !44
  %i.qy = lshr i32 %i.pp, 14
  %i.qz = and i32 %i.qy, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !44
  store i32 %i.rc, ptr %i.ai, align 4, !tbaa !44
  %i.rd = lshr i32 %i.pp, 16
  %i.re = and i32 %i.rd, 3
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !44
  store i32 %i.rh, ptr %i.bi, align 16, !tbaa !44
  %i.ri = lshr i32 %i.pp, 18
  %i.rj = and i32 %i.ri, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !44
  store i32 %i.rm, ptr %i.bj, align 4, !tbaa !44
  %i.rn = lshr i32 %i.pp, 20
  %i.ro = and i32 %i.rn, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !44
  store i32 %i.rr, ptr %i.bk, align 8, !tbaa !44
  %i.rs = lshr i32 %i.pp, 22
  %i.rt = and i32 %i.rs, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !44
  store i32 %i.rw, ptr %i.bl, align 4, !tbaa !44
  %i.rx = lshr i32 %i.pp, 24
  %i.ry = and i32 %i.rx, 3
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !44
  store i32 %i.sb, ptr %i.bm, align 16, !tbaa !44
  %i.sc = lshr i32 %i.pp, 26
  %i.sd = and i32 %i.sc, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !44
  store i32 %i.sg, ptr %i.bn, align 4, !tbaa !44
  %i.sh = lshr i32 %i.pp, 28
  %i.si = and i32 %i.sh, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !44
  store i32 %i.sl, ptr %i.bo, align 8, !tbaa !44
  %i.sm = lshr i32 %i.pp, 30
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !44
  store i32 %i.sp, ptr %i.bp, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.sq = load i64, ptr %.1188.i.i.i, align 8, !tbaa !49 ; 18 uses
  %i.sr = trunc i64 %i.sq to i16
  store i16 %i.sr, ptr %i.e, align 2
  %i.ss = trunc i64 %i.sq to i32                  ; 2 uses
  %i.st = and i32 %i.ss, 255                      ; 11 uses
  %i.su = lshr i32 %i.ss, 8
  %i.sv = and i32 %i.su, 255                      ; 9 uses
  %i.sw = icmp samesign ugt i32 %i.st, %i.sv
  %i.sx = shl nuw nsw i32 %i.sv, 1                ; 2 uses
  %i.sy = mul nuw nsw i32 %i.sv, 3                ; 2 uses
  br i1 %i.sw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.sz = mul nuw nsw i32 %i.st, 6
  %i.ta = mul nuw nsw i32 %i.st, 5
  %i.tb = shl nuw nsw i32 %i.st, 2
  %i.tc = mul nuw nsw i32 %i.st, 3
  %i.td = shl nuw nsw i32 %i.sv, 2
  %i.te = add nuw nsw i32 %i.sz, %i.sv
  %i.tf = trunc nuw nsw i32 %i.te to i16
  %i.tg = add nuw nsw i32 %i.sx, %i.ta
  %i.th = trunc nuw nsw i32 %i.tg to i16
  %i.ti = add nuw nsw i32 %i.sy, %i.tb
  %i.tj = trunc nuw nsw i32 %i.ti to i16
  %i.tk = add nuw nsw i32 %i.td, %i.tc
  %i.tl = trunc nuw nsw i32 %i.tk to i16
  %i.tm = insertelement <4 x i16> poison, i16 %i.tf, i64 0
  %i.tn = insertelement <4 x i16> %i.tm, i16 %i.th, i64 1
  %i.to = insertelement <4 x i16> %i.tn, i16 %i.tj, i64 2
  %i.tp = insertelement <4 x i16> %i.to, i16 %i.tl, i64 3
  %i.tq = add nuw nsw <4 x i16> %i.tp, splat (i16 1)
  %i.tr = udiv <4 x i16> %i.tq, splat (i16 7)
  %i.ts = shl nuw nsw i32 %i.st, 1
  %i.tt = mul nuw nsw i32 %i.sv, 5
  %i.tu = add nuw nsw i32 %i.tt, %i.ts
  %i.tv = trunc nuw nsw i32 %i.tu to i16
  %.lhs.trunc28.i.i.i.i = add nuw nsw i16 %i.tv, 1
  %i.tw = udiv i16 %.lhs.trunc28.i.i.i.i, 7
  %i.tx = trunc nuw i16 %i.tw to i8
  %i.ty = mul nuw nsw i32 %i.sv, 6
  %i.tz = add nuw nsw i32 %i.ty, %i.st
  %i.ua = trunc nuw nsw i32 %i.tz to i16
  %.lhs.trunc30.i.i.i.i = add nuw nsw i16 %i.ua, 1
  %i.ub = udiv i16 %.lhs.trunc30.i.i.i.i, 7
  %i.uc = trunc nuw i16 %i.ub to i8
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ud = shl nuw nsw i32 %i.st, 2
  %i.ue = mul nuw nsw i32 %i.st, 3
  %i.uf = shl nuw nsw i32 %i.st, 1
  %i.ug = shl nuw nsw i32 %i.sv, 2
  %i.uh = add nuw nsw i32 %i.ud, %i.sv
  %i.ui = trunc nuw nsw i32 %i.uh to i16
  %i.uj = add nuw nsw i32 %i.sx, %i.ue
  %i.uk = trunc nuw nsw i32 %i.uj to i16
  %i.ul = add nuw nsw i32 %i.sy, %i.uf
  %i.um = trunc nuw nsw i32 %i.ul to i16
  %i.un = add nuw nsw i32 %i.ug, %i.st
  %i.uo = trunc nuw nsw i32 %i.un to i16
  %i.up = insertelement <4 x i16> poison, i16 %i.ui, i64 0
  %i.uq = insertelement <4 x i16> %i.up, i16 %i.uk, i64 1
  %i.ur = insertelement <4 x i16> %i.uq, i16 %i.um, i64 2
  %i.us = insertelement <4 x i16> %i.ur, i16 %i.uo, i64 3
  %i.ut = add nuw nsw <4 x i16> %i.us, splat (i16 1)
  %i.uu = udiv <4 x i16> %i.ut, splat (i16 5)
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i

_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i:  ; preds = %bb.g, %bb.f
  %.sink46.i.i.i.i = phi i8 [ %i.tx, %bb.f ], [ 0, %bb.g ]
  %.sink.i.i.i.i = phi i8 [ %i.uc, %bb.f ], [ -1, %bb.g ]
  %i.uv = phi <4 x i16> [ %i.tr, %bb.f ], [ %i.uu, %bb.g ]
  %i.uw = trunc <4 x i16> %i.uv to <4 x i8>
  store <4 x i8> %i.uw, ptr %i.bq, align 2, !tbaa !47
end_hunk_1
