Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/draco_decoder?download=true
inline.NumInlined: 364
inline.NumDeleted: 227
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.(anonymous namespace)::Options" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.draco::DecoderBuffer" = type <{ ptr, i64, i64, %"class.draco::DecoderBuffer::BitDecoder", i8, i8, i16, [4 x i8] }>
%"class.draco::DecoderBuffer::BitDecoder" = type { ptr, ptr, i64 }
%"class.draco::DracoTimer" = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%"class.draco::StatusOr" = type <{ %"class.draco::Status", i32, [4 x i8] }>
%"class.draco::Status" = type { i32, %"class.std::__cxx11::basic_string" }
%"class.draco::Decoder" = type { %"class.draco::DracoOptions" }
%"class.draco::DracoOptions" = type { %"class.draco::Options", %"class.std::map.5" }
%"class.draco::Options" = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.5" = type { %"class.std::_Rb_tree.6" }
%"class.std::_Rb_tree.6" = type { %"struct.std::_Rb_tree<draco::GeometryAttribute::Type, std::pair<const draco::GeometryAttribute::Type, draco::Options>, std::_Select1st<std::pair<const draco::GeometryAttribute::Type, draco::Options>>, std::less<draco::GeometryAttribute::Type>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<draco::GeometryAttribute::Type, std::pair<const draco::GeometryAttribute::Type, draco::Options>, std::_Select1st<std::pair<const draco::GeometryAttribute::Type, draco::Options>>, std::less<draco::GeometryAttribute::Type>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.draco::StatusOr.11" = type { %"class.draco::Status", %"class.std::unique_ptr.12" }
%"class.std::unique_ptr.12" = type { %"struct.std::__uniq_ptr_data.13" }
%"struct.std::__uniq_ptr_data.13" = type { %"class.std::__uniq_ptr_impl.14" }
%"class.std::__uniq_ptr_impl.14" = type { %"class.std::tuple.15" }
%"class.std::tuple.15" = type { %"struct.std::_Tuple_impl.16" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.draco::StatusOr.20" = type { %"class.draco::Status", %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.draco::ObjEncoder" = type { ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], ptr, ptr, ptr, %"class.std::unordered_map", i32, %"class.std::unordered_map", i32, %"class.std::__cxx11::basic_string" }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.draco::PlyEncoder" = type { ptr, ptr, ptr }
%"class.draco::StlEncoder" = type { ptr, ptr, ptr }

$_ZN5draco8StatusOrISt10unique_ptrINS_4MeshESt14default_deleteIS2_EEED2Ev = comdat any

$_ZN5draco7DecoderD2Ev = comdat any

$_ZN5draco8StatusOrISt10unique_ptrINS_10PointCloudESt14default_deleteIS2_EEED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN5draco10ObjEncoderD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN5draco17GeometryAttribute4TypeESt4pairIKS2_NS0_7OptionsEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

@.str.7 = private unnamed_addr constant [5 x i8] c".ply\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".stl\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Decoded geometry saved to %s (%ld ms to decode)\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Failed to decode the input file %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Failed opening the input file.\00", align 1
@str.1 = private unnamed_addr constant [54 x i8] c"Invalid output file extension. Use .obj .ply or .stl.\00", align 1
@str.2 = private unnamed_addr constant [34 x i8] c"Can't store a point cloud as STL.\00", align 1
@str.3 = private unnamed_addr constant [41 x i8] c"Failed to store the decoded mesh as STL.\00", align 1
@str.4 = private unnamed_addr constant [48 x i8] c"Failed to store the decoded point cloud as PLY.\00", align 1
@str.5 = private unnamed_addr constant [41 x i8] c"Failed to store the decoded mesh as PLY.\00", align 1
@str.6 = private unnamed_addr constant [48 x i8] c"Failed to store the decoded point cloud as OBJ.\00", align 1
@str.7 = private unnamed_addr constant [41 x i8] c"Failed to store the decoded mesh as OBJ.\00", align 1
@str.8 = private unnamed_addr constant [33 x i8] c"Failed to decode the input file.\00", align 1
@str.9 = private unnamed_addr constant [18 x i8] c"Empty input file.\00", align 1
@str.10 = private unnamed_addr constant [40 x i8] c"Usage: draco_decoder [options] -i input\00", align 1
@str.11 = private unnamed_addr constant [14 x i8] c"Main options:\00", align 1
@str.12 = private unnamed_addr constant [35 x i8] c"  -h | -?               show help.\00", align 1
@str.13 = private unnamed_addr constant [42 x i8] c"  -o <output>           output file name.\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::Options", align 8 ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.draco::DecoderBuffer", align 8 ; 10 uses
  %5 = alloca %"class.draco::DracoTimer", align 8 ; 8 uses
  %6 = alloca %"class.draco::StatusOr", align 8   ; 12 uses
  %7 = alloca %"class.draco::Decoder", align 8    ; 16 uses
  %8 = alloca %"class.draco::StatusOr.11", align 8 ; 9 uses
  %9 = alloca %"class.draco::Decoder", align 8    ; 16 uses
  %10 = alloca %"class.draco::StatusOr.20", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.draco::ObjEncoder", align 8 ; 10 uses
  %15 = alloca %"class.draco::PlyEncoder", align 8 ; 7 uses
  %16 = alloca %"class.draco::StlEncoder", align 8 ; 6 uses
  %17 = alloca %"class.draco::Status", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !17
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.f = add nsw i32 %0, -1                       ; 2 uses
  %.not86216 = icmp sgt i32 %0, 1
  br i1 %.not86216, label %sub_0, label %.critedge.thread

sub_0:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.069217 = phi i32 [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %bb.a ] ; 6 uses
  %i.g = sext i32 %.069217 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 9 uses
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %18 = zext i8 %i.j to i32
  %19 = sub nsw i32 45, %18                       ; 2 uses
  %.not218 = icmp eq i8 %i.j, 45                  ; 2 uses
  br i1 %.not218, label %sub_1, label %.tail201

sub_1:                                            ; preds = %sub_0
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = sub nsw i32 104, %i.m
  %.not219 = icmp eq i8 %i.l, 104
  br i1 %.not219, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 0, %i.q
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_2
  %i.s = phi i32 [ %i.r, %sub_2 ], [ %i.n, %sub_1 ]
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %sub_1203

sub_1203:                                         ; preds = %.tail
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 63, %i.v
  %.not221 = icmp eq i8 %i.u, 63
  br i1 %.not221, label %sub_2204, label %.tail201

sub_2204:                                         ; preds = %sub_1203
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 0, %i.z
  br label %.tail201

.tail201:                                         ; preds = %sub_0, %sub_1203, %sub_2204
  %20 = phi i32 [ %i.aa, %sub_2204 ], [ %i.w, %sub_1203 ], [ %19, %sub_0 ]
  %.not85 = icmp eq i32 %20, 0
  br i1 %.not85, label %bb.e, label %sub_0207

bb.b:                                             ; preds = %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

sub_0207:                                         ; preds = %.tail201
  br i1 %.not218, label %sub_1208, label %.tail206.thread

sub_1208:                                         ; preds = %sub_0207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 105, %i.ae
  %.not223 = icmp eq i8 %i.ad, 105
  br i1 %.not223, label %sub_2209, label %.tail206

sub_2209:                                         ; preds = %sub_1208
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 0, %i.ai
  br label %.tail206

.tail206:                                         ; preds = %sub_1208, %sub_2209
  %i.ak = phi i32 [ %i.aj, %sub_2209 ], [ %i.af, %sub_1208 ]
  %.not119 = icmp eq i32 %i.ak, 0
  %i.al = icmp slt i32 %.069217, %i.f             ; 3 uses
  %or.cond = select i1 %.not119, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.c, label %sub_1213

.tail206.thread:                                  ; preds = %sub_0207
  %i.am = icmp slt i32 %.069217, %i.f
  br label %.tail211

bb.c:                                             ; preds = %.tail206
  %i.an = add nsw i32 %.069217, 1                 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !17
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #18
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ar, ptr noundef nonnull %i.aq, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

sub_1213:                                         ; preds = %.tail206
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = sub nsw i32 111, %i.aw
  %.not225 = icmp eq i8 %i.av, 111
  br i1 %.not225, label %sub_2214, label %.tail211

sub_2214:                                         ; preds = %sub_1213
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 0, %i.ba
  br label %.tail211

.tail211:                                         ; preds = %.tail206.thread, %sub_1213, %sub_2214
  %i.bc = phi i1 [ %i.am, %.tail206.thread ], [ %i.al, %sub_1213 ], [ %i.al, %sub_2214 ]
  %i.bd = phi i32 [ %19, %.tail206.thread ], [ %i.ax, %sub_1213 ], [ %i.bb, %sub_2214 ]
  %.not120 = icmp eq i32 %i.bd, 0
  %or.cond123 = select i1 %.not120, i1 %i.bc, i1 false
  br i1 %or.cond123, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.d:                                             ; preds = %.tail211
  %i.be = add nsw i32 %.069217, 1                 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 2 uses
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !17
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #18
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.bi, ptr noundef nonnull %i.bh, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.d, %bb.c, %.tail211
  %.170 = phi i32 [ %.069217, %.tail211 ], [ %i.an, %bb.c ], [ %i.be, %bb.d ]
  %i.bl = add nsw i32 %.170, 1                    ; 2 uses
  %.not86 = icmp slt i32 %i.bl, %0
  br i1 %.not86, label %sub_0, label %.critedge, !llvm.loop !34

bb.e:                                             ; preds = %.tail, %.tail201
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  %puts1.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts2.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts3.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.cq

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.pre = load i64, ptr %i.b, align 8
  %i.bm = icmp eq i64 %.pre, 0
  %i.bn = icmp eq i32 %0, 2
  %or.cond198 = select i1 %i.bn, i1 true, i1 %i.bm
  br i1 %or.cond198, label %.critedge.thread, label %bb.f

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %puts.i127 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %putchar.i128 = call i32 @putchar(i32 10)       ; 0 uses
  %puts1.i129 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts2.i130 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts3.i131 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.cq

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bo = invoke noundef zeroext i1 @_ZN5draco16ReadFileToBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIcS4_E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.bo, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.cm

bb.i:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.j:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %3, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %puts118 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.cm

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN5draco13DecoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  invoke void @_ZN5draco13DecoderBuffer4InitEPKcm(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef %i.bu, i64 noundef %i.by)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN5draco7Decoder22GetEncodedGeometryTypeEPNS_13DecoderBufferE(ptr dead_on_unwind nonnull writable sret(%"class.draco::StatusOr") align 8 %6, ptr noundef nonnull %4)
          to label %bb.o unwind label %_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread

bb.o:                                             ; preds = %bb.n
  %i.bz = load i32, ptr %6, align 8, !tbaa !41
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val125 = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %.val125) ; 0 uses
  br label %bb.ci

bb.q:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.r:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZN5draco8StatusOrINS_19EncodedGeometryTypeEED2Ev.exit151.thread: ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit154

bb.s:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !43
  switch i32 %i.ch, label %.thread [
    i32 1, label %bb.t
    i32 0, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5draco10DracoTimer5StartEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.cj, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cm, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.co, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 0, ptr %i.cr, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN5draco7Decoder20DecodeMeshFromBufferEPNS_13DecoderBufferE(ptr dead_on_unwind nonnull writable sret(%"class.draco::StatusOr.11") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull %4)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cs = load i32, ptr %8, align 8, !tbaa !41
  %i.ct = icmp eq i32 %i.cs, 0                    ; 2 uses
  br i1 %i.ct, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val124 = load ptr, ptr %i.cu, align 8, !tbaa !20
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %.val124) ; 0 uses
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134

bb.x:                                             ; preds = %bb.ac, %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.y:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27 ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !27
  invoke void @_ZN5draco10DracoTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco4MeshEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(216) %i.da) #18, !inline_history !0
  br label %_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco4MeshESt14default_deleteIS1_EED2Ev.exit134: ; preds = %bb.z, %bb.w
end_hunk_0
