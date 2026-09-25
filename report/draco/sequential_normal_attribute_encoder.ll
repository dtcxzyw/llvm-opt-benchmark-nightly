Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_normal_attribute_encoder?download=true
inline.NumInlined: 2058
inline.NumDeleted: 781
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !54
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !54
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !54
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !54
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !296

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !301

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !54
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !54
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !297

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !54
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !298

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !302   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #18
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !181

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !54
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !54
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !181

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !54
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !302
  store ptr %i.do, ptr %i.f, align 8, !tbaa !300
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !299
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiE17ComputeCorrectionENS_7VectorDIiLi2EEES3_(ptr dead_on_unwind noalias writable sret(%"class.draco::VectorD") align 4 %0, ptr noundef nonnull align 4 dereferenceable(20) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71   ; 4 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !13, !noalias !309
  %i.d = sub nsw i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13, !noalias !309
  %i.g = sub nsw i32 %i.f, %i.b
  %.sroa.432.0.insert.ext = zext i32 %i.g to i64
  %.sroa.432.0.insert.shift = shl nuw i64 %.sroa.432.0.insert.ext, 32
  %.sroa.031.0.insert.ext = zext i32 %i.d to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.432.0.insert.shift, %.sroa.031.0.insert.ext
  store i64 %.sroa.031.0.insert.insert, ptr %2, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.i = load i32, ptr %3, align 4, !tbaa !13, !noalias !310
  %4 = sub nsw i32 %i.i, %i.b                     ; 3 uses
  %5 = load i32, ptr %i.h, align 4, !tbaa !13, !noalias !310
  %i.j = sub nsw i32 %5, %i.b                     ; 3 uses
  %.sroa.4.0.insert.ext = zext i32 %i.j to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.030.0.insert.ext = zext i32 %4 to i64
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.030.0.insert.ext
  store i64 %.sroa.030.0.insert.insert, ptr %3, align 4, !tbaa !54
  %i.k = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true)
  %i.m = add nuw i32 %i.l, %i.k
  %i.n = load i32, ptr %i.a, align 4, !tbaa !71   ; 3 uses
  %.not = icmp ugt i32 %i.m, %i.n
  br i1 %.not, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %2, align 4, !tbaa !13     ; 3 uses
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = load i32, ptr %i.e, align 4, !tbaa !13   ; 4 uses
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.o, 0
  br i1 %i.s, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.q, 1
  br i1 %i.t, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ 1, %bb.d ], [ -1, %bb.e ]
  %.inv22.i.i = icmp slt i32 %i.q, 1
  %i.v = select i1 %.inv22.i.i, i32 -1, i32 1
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit

_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.021.i.i = phi i32 [ %i.v, %bb.f ], [ 1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ %i.u, %bb.f ], [ 1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.w = mul nsw i32 %.0.i.i, %i.n                ; 2 uses
  %i.x = mul nsw i32 %.021.i.i, %i.n              ; 2 uses
  %i.y = shl i32 %i.o, 1
  %i.z = sub i32 %i.y, %i.w                       ; 2 uses
  %i.aa = shl i32 %i.q, 1
  %i.ab = sub i32 %i.aa, %i.x                     ; 2 uses
  %i.ac = mul nsw i32 %.0.i.i, %.021.i.i
  %i.ad = icmp sgt i32 %i.ac, -1                  ; 2 uses
  %i.ae = sub i32 0, %i.ab
  %i.af = sub i32 0, %i.z
  %.028.i.i = select i1 %i.ad, i32 %i.ae, i32 %i.ab
  %.027.i.i = select i1 %i.ad, i32 %i.af, i32 %i.z
  %i.ag = add i32 %.028.i.i, %i.w
  %i.ah = add i32 %.027.i.i, %i.x
  %i.ai = sdiv i32 %i.ag, 2
  store i32 %i.ai, ptr %2, align 4, !tbaa !13
  %i.aj = sdiv i32 %i.ah, 2
  store i32 %i.aj, ptr %i.e, align 4, !tbaa !13
  %i.ak = load i32, ptr %3, align 4, !tbaa !13    ; 3 uses
  %6 = icmp sgt i32 %i.ak, -1
  %7 = load i32, ptr %i.h, align 4, !tbaa !13     ; 4 uses
  br i1 %6, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit
  %i.al = icmp sgt i32 %7, -1
  br i1 %i.al, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7, label %bb.j

bb.i:                                             ; preds = %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit
  %i.an = icmp slt i32 %7, 1
  br i1 %i.an, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ 1, %bb.h ], [ -1, %bb.i ]
  %.inv22.i.i2 = icmp slt i32 %7, 1
  %i.ap = select i1 %.inv22.i.i2, i32 -1, i32 1
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7

_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.021.i.i3 = phi i32 [ %i.ap, %bb.j ], [ 1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %.0.i.i4 = phi i32 [ %i.ao, %bb.j ], [ 1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !71  ; 2 uses
  %i.ar = shl i32 %i.ak, 1
  %i.as = shl i32 %7, 1
  %i.at = mul nsw i32 %.0.i.i4, %.021.i.i3
  %i.au = icmp sgt i32 %i.at, -1                  ; 2 uses
  %i.av = mul nsw i32 %i.aq, %.0.i.i4             ; 2 uses
  %i.aw = mul nsw i32 %i.aq, %.021.i.i3           ; 2 uses
  %i.ax = sub i32 %i.ar, %i.av                    ; 2 uses
  %i.ay = sub i32 %i.as, %i.aw                    ; 2 uses
  %i.az = sub i32 0, %i.ay
  %i.ba = sub i32 0, %i.ax
  %.027.i.i6.a = select i1 %i.au, i32 %i.az, i32 %i.ay
  %.028.i.i5 = select i1 %i.au, i32 %i.ba, i32 %i.ax
  %i.bb = add i32 %.027.i.i6.a, %i.av
  %i.bc = add i32 %.028.i.i5, %i.aw
  %i.bd = sdiv i32 %i.bb, 2                       ; 2 uses
  store i32 %i.bd, ptr %3, align 4, !tbaa !13
  %8 = sdiv i32 %i.bc, 2                          ; 2 uses
  store i32 %8, ptr %i.h, align 4, !tbaa !13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7
  %i.be = phi i32 [ %8, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7 ], [ %i.j, %bb.a ] ; 5 uses
  %i.bf = phi i32 [ %i.bd, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit7 ], [ %4, %bb.a ] ; 3 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.split, label %bb.k

.split:                                           ; preds = %thread-pre-split
  %i.bh = icmp eq i32 %i.be, 0
  br i1 %i.bh, label %bb.o, label %bb.l

bb.k:                                             ; preds = %thread-pre-split
  %i.bi = icmp slt i32 %i.bf, 0
  br i1 %i.bi, label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit, label %bb.m

_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit: ; preds = %bb.k
  %i.bj = icmp slt i32 %i.be, 1
  br i1 %i.bj, label %bb.o, label %select.unfold

bb.l:                                             ; preds = %.split
  %.inv11.i = icmp slt i32 %i.be, 1
  br i1 %.inv11.i, label %select.unfold41, label %select.unfold

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp sgt i32 %i.be, -1
  br i1 %i.bk, label %bb.n, label %select.unfold41

select.unfold41:                                  ; preds = %bb.l, %bb.m
  %i.bl = load i32, ptr %2, align 4, !tbaa !13
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !13
  %i.bn = sub nsw i32 0, %i.bl
  %.sroa.728.0.insert.ext65 = zext i32 %i.bn to i64
  %.sroa.728.0.insert.shift66 = shl nuw i64 %.sroa.728.0.insert.ext65, 32
  %.sroa.027.0.insert.ext67 = zext i32 %i.bm to i64
  %.sroa.027.0.insert.insert68 = or disjoint i64 %.sroa.728.0.insert.shift66, %.sroa.027.0.insert.ext67
  store i64 %.sroa.027.0.insert.insert68, ptr %2, align 4, !tbaa !54
  %i.bo = load i32, ptr %3, align 4, !tbaa !13
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !13
  %i.bq = sub nsw i32 0, %i.bo
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %2, align 4, !tbaa !13
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !13
  %i.bt = sub nsw i32 0, %i.br
  %i.bu = sub nsw i32 0, %i.bs
  %.sroa.728.0.insert.ext73 = zext i32 %i.bu to i64
  %.sroa.728.0.insert.shift74 = shl nuw i64 %.sroa.728.0.insert.ext73, 32
  %.sroa.027.0.insert.ext75 = zext i32 %i.bt to i64
  %.sroa.027.0.insert.insert76 = or disjoint i64 %.sroa.728.0.insert.shift74, %.sroa.027.0.insert.ext75
  store i64 %.sroa.027.0.insert.insert76, ptr %2, align 4, !tbaa !54
  %i.bv = load i32, ptr %3, align 4, !tbaa !13
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !13
  %i.bx = sub nsw i32 0, %i.bv
  %i.by = sub nsw i32 0, %i.bw
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9

select.unfold:                                    ; preds = %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit, %bb.l
  %i.bz = load i32, ptr %2, align 4, !tbaa !13
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !13
  %i.cb = sub nsw i32 0, %i.ca
  %.sroa.728.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.728.0.insert.shift = shl nuw i64 %.sroa.728.0.insert.ext, 32
  %.sroa.027.0.insert.ext = zext i32 %i.cb to i64
  %.sroa.027.0.insert.insert = or disjoint i64 %.sroa.728.0.insert.shift, %.sroa.027.0.insert.ext
  store i64 %.sroa.027.0.insert.insert, ptr %2, align 4, !tbaa !54
  %i.cc = load i32, ptr %3, align 4, !tbaa !13
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !13
  %i.ce = sub nsw i32 0, %i.cd
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9

_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9: ; preds = %select.unfold41, %bb.n, %select.unfold
  %.sroa.7.0 = phi i32 [ %i.cc, %select.unfold ], [ %i.bq, %select.unfold41 ], [ %i.by, %bb.n ] ; 2 uses
  %.sroa.018.0 = phi i32 [ %i.ce, %select.unfold ], [ %i.bp, %select.unfold41 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.018.0.insert.ext = zext i32 %.sroa.018.0 to i64
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.018.0.insert.ext
  store i64 %.sroa.018.0.insert.insert, ptr %3, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %.split, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit
  %i.cf = phi i32 [ 0, %.split ], [ %.sroa.7.0, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9 ], [ %i.be, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit ]
  %i.cg = phi i32 [ 0, %.split ], [ %.sroa.018.0, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit9 ], [ %i.bf, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE14IsInBottomLeftERKNS_7VectorDIiLi2EEE.exit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = load <2 x i32>, ptr %2, align 4, !tbaa !13, !noalias !311
  %i.ck = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %i.cf, i64 1
  %i.cm = sub nsw <2 x i32> %i.cj, %i.cl          ; 2 uses
  %i.cn = icmp slt <2 x i32> %i.cm, zeroinitializer
  %i.co = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.cp = shufflevector <2 x i32> %i.co, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cq = select <2 x i1> %i.cn, <2 x i32> %i.cp, <2 x i32> zeroinitializer
  %i.cr = add nsw <2 x i32> %i.cq, %i.cm
  store <2 x i32> %i.cr, ptr %0, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN5draco21ShannonEntropyTrackerC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5draco21ShannonEntropyTrackerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #17
  br label %_ZN5draco21ShannonEntropyTrackerD2Ev.exit

_ZN5draco21ShannonEntropyTrackerD2Ev.exit:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %.ptr1, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5draco21ShannonEntropyTrackerD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 3
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.v
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.t) #17
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN5draco21ShannonEntropyTrackerD2Ev.exit, %bb.d
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %.ptr1.1, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ae
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ac) #17
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.1

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.1:           ; preds = %bb.e, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %.ptr1.2, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.2, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.an
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.al) #17
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.2:           ; preds = %bb.f, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.1
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %.ptr1.3, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.3, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.3, label %bb.g

bb.g:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !117 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.au) #17
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.3

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.3:           ; preds = %bb.g, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedEncodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = icmp ne ptr %i.h, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
end_hunk_0
