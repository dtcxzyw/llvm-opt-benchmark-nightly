Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0

$_ZTS17LibRaw_exceptions = comdat any

@_ZZN6LibRaw15wavelet_denoiseEvE5noise = internal unnamed_addr constant [8 x float] [float f0x3F4CD9E8, float 2.735000e-01, float 1.202000e-01, float 5.850000e-02, float 2.910000e-02, float 1.520000e-02, float 8.000000e-03, float 4.400000e-03], align 16
@_ZZN6LibRaw13median_filterEvE3opt = internal unnamed_addr constant [38 x i8] c"\01\02\04\05\07\08\00\01\03\04\06\07\01\02\04\05\07\08\00\03\05\08\04\07\03\06\01\04\02\05\04\07\04\02\06\04\04\02", align 16
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZZN6LibRaw16blend_highlightsEvE5trans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float f0x3FDDB3D7, float f0xBFDDB3D7, float 0.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16
@_ZZN6LibRaw16blend_highlightsEvE6itrans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float f0x3F5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float f0xBF5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13hat_transformEPfS0_iii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader53

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 3 uses
  %i.e = zext nneg i32 %5 to i64                  ; 4 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 5 uses
  %min.iters.check = icmp ugt i32 %5, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader154

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %2, i64 %i.f
  %i.g = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.g
  %i.h = getelementptr i8, ptr %2, i64 %i.f
  %scevgep77 = getelementptr i8, ptr %i.h, i64 4
  %bound0 = icmp ult ptr %1, %scevgep76
  %bound1 = icmp ult ptr %scevgep75, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %1, %scevgep77
  %bound179 = icmp ult ptr %2, %scevgep
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  br i1 %conflict.rdx, label %.lr.ph.preheader154, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !8, !alias.scope !10
  %wide.load81 = load <4 x float>, ptr %i.j, align 4, !tbaa !8, !alias.scope !10
  %i.k = sub nuw nsw i64 %i.e, %index
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -12
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -28
  %wide.load82 = load <4 x float>, ptr %i.m, align 4, !tbaa !8, !alias.scope !10
  %wide.load83 = load <4 x float>, ptr %i.n, align 4, !tbaa !8, !alias.scope !10
  %reverse = shufflevector <4 x float> %wide.load82, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse84 = shufflevector <4 x float> %wide.load83, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse)
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load81, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse84)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load85 = load <4 x float>, ptr %gep, align 4, !tbaa !8, !alias.scope !13
  %wide.load86 = load <4 x float>, ptr %i.q, align 4, !tbaa !8, !alias.scope !13
  %i.r = fadd <4 x float> %i.o, %wide.load85
  %i.s = fadd <4 x float> %i.p, %wide.load86
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %i.r, ptr %i.t, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  store <4 x float> %i.s, ptr %i.u, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader53, label %.lr.ph.preheader154

.lr.ph.preheader154:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %.lr.ph ] ; 3 uses
  %i.w = add nsw i32 %.0.lcssa, %5
  %i.x = icmp slt i32 %i.w, %4
  br i1 %i.x, label %.lr.ph56.preheader, label %.preheader

.lr.ph56.preheader:                               ; preds = %.preheader53
  %i.y = sext i32 %5 to i64                       ; 5 uses
  %i.z = zext nneg i32 %.0.lcssa to i64           ; 7 uses
  %i.aa = add nsw i64 %i.y, %i.z                  ; 4 uses
  %i.ab = sext i32 %3 to i64                      ; 3 uses
  %i.ac = sext i32 %4 to i64
  %invariant.op = sub nsw i64 %i.ac, %i.y         ; 2 uses
  %i.ad = add nuw nsw i64 %i.z, 1
  %i.ae = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.ad)
  %i.af = sub nsw i64 %i.ae, %i.z                 ; 3 uses
  %min.iters.check95 = icmp ugt i64 %i.af, 11
  %ident.check88.not = icmp eq i32 %3, 1
  %or.cond151 = and i1 %min.iters.check95, %ident.check88.not
  br i1 %or.cond151, label %vector.memcheck89, label %.lr.ph56.preheader152

vector.memcheck89:                                ; preds = %.lr.ph56.preheader
  %i.ag = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = sub i64 %i.ah, %i.b
  %diff.check = icmp ugt i64 %i.ai, -32
  %i.aj = add i64 %i.ag, %i.b
  %i.ak = sub i64 %i.a, %i.aj
  %diff.check90 = icmp ugt i64 %i.ak, -32
  %conflict.rdx91 = or i1 %diff.check, %diff.check90
  %i.al = sub i64 %i.a, %i.b
  %diff.check92 = icmp ugt i64 %i.al, -32
  %conflict.rdx93 = or i1 %conflict.rdx91, %diff.check92
  br i1 %conflict.rdx93, label %.lr.ph56.preheader152, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck89
  %n.vec97 = and i64 %i.af, -8                    ; 4 uses
  %i.am = add i64 %n.vec97, %i.z                  ; 2 uses
  %i.an = add i64 %i.aa, %n.vec97
  %i.ao = getelementptr [4 x i8], ptr %2, i64 %i.aa
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next106, %vector.body98 ] ; 3 uses
  %i.ap = add nuw i64 %index99, %i.z              ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load100 = load <4 x float>, ptr %i.aq, align 4, !tbaa !8
  %wide.load101 = load <4 x float>, ptr %i.ar, align 4, !tbaa !8
  %i.as = sub nsw i64 %i.ap, %i.y
  %i.at = getelementptr inbounds [4 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load102 = load <4 x float>, ptr %i.at, align 4, !tbaa !8
  %wide.load103 = load <4 x float>, ptr %i.au, align 4, !tbaa !8
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load100, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load102)
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load101, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load103)
  %i.ax = getelementptr [4 x i8], ptr %i.ao, i64 %index99 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load104 = load <4 x float>, ptr %i.ax, align 4, !tbaa !8
  %wide.load105 = load <4 x float>, ptr %i.ay, align 4, !tbaa !8
  %i.az = fadd <4 x float> %i.av, %wide.load104
  %i.ba = fadd <4 x float> %i.aw, %wide.load105
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %i.az, ptr %i.bb, align 4, !tbaa !8
  store <4 x float> %i.ba, ptr %i.bc, align 4, !tbaa !8
  %index.next106 = add nuw i64 %index99, 8        ; 2 uses
  %i.bd = icmp eq i64 %index.next106, %n.vec97
  br i1 %i.bd, label %middle.block107, label %vector.body98, !llvm.loop !22

middle.block107:                                  ; preds = %vector.body98
  %cmp.n108 = icmp eq i64 %i.af, %n.vec97
  br i1 %cmp.n108, label %.preheader.loopexit, label %.lr.ph56.preheader152

.lr.ph56.preheader152:                            ; preds = %vector.memcheck89, %.lr.ph56.preheader, %middle.block107
  %indvars.iv64.ph = phi i64 [ %i.z, %vector.memcheck89 ], [ %i.z, %.lr.ph56.preheader ], [ %i.am, %middle.block107 ]
  %indvars.iv62.ph = phi i64 [ %i.aa, %vector.memcheck89 ], [ %i.aa, %.lr.ph56.preheader ], [ %i.an, %middle.block107 ]
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader154, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader154 ] ; 5 uses
  %i.be = mul nsw i64 %indvars.iv, %i.d
  %i.bf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !8
  %i.bh = sub nuw nsw i64 %i.e, %indvars.iv
  %i.bi = mul nsw i64 %i.bh, %i.d
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !8
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.000000e+00, float %i.bk)
  %i.bm = add nuw nsw i64 %indvars.iv, %i.e
  %i.bn = mul nsw i64 %i.bm, %i.d
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !8
  %i.bq = fadd float %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader53, label %.lr.ph, !llvm.loop !23

.preheader.loopexit:                              ; preds = %.lr.ph56, %middle.block107
  %indvars.iv.next65.lcssa = phi i64 [ %i.am, %middle.block107 ], [ %indvars.iv.next65, %.lr.ph56 ]
  %i.bs = trunc nsw i64 %indvars.iv.next65.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader53
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader53 ], [ %i.bs, %.preheader.loopexit ] ; 4 uses
  %i.bt = icmp slt i32 %.1.lcssa, %4
  br i1 %i.bt, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %.preheader
  %i.bu = shl i32 %4, 1                           ; 3 uses
  %.neg52 = add nsw i32 %i.bu, -2                 ; 2 uses
  %i.bv = sext i32 %.1.lcssa to i64               ; 9 uses
  %i.bw = sext i32 %3 to i64                      ; 2 uses
  %i.bx = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count72 = sext i32 %4 to i64         ; 4 uses
  %i.by = sub nsw i64 %wide.trip.count72, %i.bv   ; 3 uses
  %min.iters.check134 = icmp ult i64 %i.by, 24
  br i1 %min.iters.check134, label %scalar.ph133.preheader, label %vector.scevcheck111

vector.scevcheck111:                              ; preds = %.lr.ph59
  %ident.check112 = icmp ne i32 %3, 1
  %i.bz = xor i64 %i.bv, -1
  %i.ca = add nsw i64 %i.bz, %wide.trip.count72   ; 2 uses
  %i.cb = add i32 %i.bu, -2
  %i.cc = add i32 %.1.lcssa, %5
  %i.cd = sub i32 %i.cb, %i.cc                    ; 2 uses
  %i.ce = trunc i64 %i.ca to i32
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = icmp sgt i32 %i.cf, %i.cd
  %i.ch = icmp ugt i64 %i.ca, 4294967295
  %i.ci = or i1 %i.cg, %i.ch
  %i.cj = or i1 %ident.check112, %i.ci
  br i1 %i.cj, label %scalar.ph133.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %vector.scevcheck111
  %i.ck = shl nsw i64 %i.bv, 2                    ; 3 uses
  %scevgep114 = getelementptr i8, ptr %1, i64 %i.ck ; 3 uses
  %i.cl = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.cl ; 3 uses
  %i.cm = add i32 %i.bu, -2
  %i.cn = add i32 %.1.lcssa, %5
  %i.co = sub i32 %i.cm, %i.cn
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = add nsw i64 %i.bv, %i.cp
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = add nsw i64 %i.cr, 4
  %i.ct = sub nsw i64 %i.cs, %i.cl
  %scevgep116 = getelementptr i8, ptr %2, i64 %i.ct
  %i.cu = shl nsw i64 %i.cp, 2
  %i.cv = getelementptr i8, ptr %2, i64 %i.cu
  %scevgep117 = getelementptr i8, ptr %i.cv, i64 4
  %i.cw = shl nsw i64 %i.bx, 2                    ; 2 uses
  %i.cx = sub nsw i64 %i.ck, %i.cw
  %scevgep118 = getelementptr i8, ptr %2, i64 %i.cx
  %i.cy = sub nsw i64 %i.cl, %i.cw
  %scevgep119 = getelementptr i8, ptr %2, i64 %i.cy
  %scevgep120 = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep121 = getelementptr i8, ptr %2, i64 %i.cl
  %bound0122 = icmp ult ptr %scevgep114, %scevgep117
  %bound1123 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0125 = icmp ult ptr %scevgep114, %scevgep119
  %bound1126 = icmp ult ptr %scevgep118, %scevgep115
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %found.conflict124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep114, %scevgep121
  %bound1130 = icmp ult ptr %scevgep120, %scevgep115
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph133.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck113
  %n.vec136 = and i64 %i.by, -8                   ; 3 uses
  %i.cz = add nsw i64 %n.vec136, %i.bv
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.da = add nuw i64 %index138, %i.bv            ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load139 = load <4 x float>, ptr %i.db, align 4, !tbaa !8, !alias.scope !24
  %wide.load140 = load <4 x float>, ptr %i.dc, align 4, !tbaa !8, !alias.scope !24
  %i.dd = sub nsw i64 %i.da, %i.bx
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load141 = load <4 x float>, ptr %i.de, align 4, !tbaa !8, !alias.scope !27
  %wide.load142 = load <4 x float>, ptr %i.df, align 4, !tbaa !8, !alias.scope !27
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load139, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load141)
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load140, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load142)
  %i.di = trunc nsw i64 %i.da to i32
  %i.dj = add i32 %5, %i.di
  %i.dk = sub i32 %.neg52, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -28
  %wide.load143 = load <4 x float>, ptr %i.dn, align 4, !tbaa !8, !alias.scope !29
  %wide.load144 = load <4 x float>, ptr %i.do, align 4, !tbaa !8, !alias.scope !29
  %reverse145 = shufflevector <4 x float> %wide.load143, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse146 = shufflevector <4 x float> %wide.load144, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dp = fadd <4 x float> %i.dg, %reverse145
  %i.dq = fadd <4 x float> %i.dh, %reverse146
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> %i.dp, ptr %i.dr, align 4, !tbaa !8, !alias.scope !31, !noalias !33
  store <4 x float> %i.dq, ptr %i.ds, align 4, !tbaa !8, !alias.scope !31, !noalias !33
  %index.next147 = add nuw i64 %index138, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.dt, label %middle.block148, label %vector.body137, !llvm.loop !34

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.by, %n.vec136
  br i1 %cmp.n149, label %._crit_edge, label %scalar.ph133.preheader

scalar.ph133.preheader:                           ; preds = %vector.memcheck113, %vector.scevcheck111, %.lr.ph59, %middle.block148
  %indvars.iv69.ph = phi i64 [ %i.bv, %vector.memcheck113 ], [ %i.bv, %vector.scevcheck111 ], [ %i.bv, %.lr.ph59 ], [ %i.cz, %middle.block148 ]
  br label %scalar.ph133

.lr.ph56:                                         ; preds = %.lr.ph56.preheader152, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader152 ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader152 ] ; 2 uses
  %i.du = mul nsw i64 %indvars.iv64, %i.ab
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !8
  %i.dx = sub nsw i64 %indvars.iv64, %i.y
  %i.dy = mul nsw i64 %i.dx, %i.ab
  %i.dz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !8
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dw, float 2.000000e+00, float %i.ea)
  %i.ec = mul nsw i64 %indvars.iv62, %i.ab
  %i.ed = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !8
  %i.ef = fadd float %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.ef, ptr %i.eg, align 4, !tbaa !8
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.eh = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.eh, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !35

scalar.ph133:                                     ; preds = %scalar.ph133.preheader, %scalar.ph133
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %scalar.ph133 ], [ %indvars.iv69.ph, %scalar.ph133.preheader ] ; 5 uses
  %i.ei = mul nsw i64 %indvars.iv69, %i.bw
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !8
  %i.el = sub nsw i64 %indvars.iv69, %i.bx
  %i.em = mul nsw i64 %i.el, %i.bw
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !8
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float 2.000000e+00, float %i.eo)
  %i.eq = trunc nsw i64 %indvars.iv69 to i32
  %i.er = add i32 %5, %i.eq
  %i.es = sub i32 %.neg52, %i.er
  %i.et = mul nsw i32 %i.es, %3
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !8
  %i.ex = fadd float %i.ep, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.ex, ptr %i.ey, align 4, !tbaa !8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %scalar.ph133, !llvm.loop !36

._crit_edge:                                      ; preds = %scalar.ph133, %middle.block148, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !37   ; 3 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !99   ; 3 uses
  %i.i = icmp ult i16 %i.h, 65
  %i.j = zext i16 %i.e to i64
  %i.k = zext i16 %i.h to i64
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %i.m = icmp samesign ugt i64 %i.l, 357826559
  %or.cond = select i1 %i.i, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.x, label %.preheader301

.preheader301:                                    ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader301
  %.0231 = phi i32 [ %i.r, %bb.c ], [ 1, %.preheader301 ] ; 3 uses
  %i.p = shl i32 %i.o, %.0231
  %i.q = icmp ult i32 %i.p, 65536
end_hunk_0
