inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@opj_mct_decode_real:bb.a

.lr.ph85:                                         ; preds = %._crit_edge
  %i.af = load float, ptr %.0.lcssa, align 4, !tbaa !20 ; 3 uses
  %i.ag = load float, ptr %.074.lcssa, align 4, !tbaa !20 ; 2 uses
  %i.ah = load float, ptr %.075.lcssa, align 4, !tbaa !20 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 1.402000e+00, float %i.af)
  %i.aj = fneg float %i.ag
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 3.441300e-01, float %i.af)
  %i.al = fneg float %i.ah
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float f0x3F36D1E1, float %i.ak)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ag, float 1.772000e+00, float %i.af)
  store float %i.ai, ptr %.0.lcssa, align 4, !tbaa !20
  store float %i.am, ptr %.074.lcssa, align 4, !tbaa !20
  store float %i.an, ptr %.075.lcssa, align 4, !tbaa !20
  %exitcond90.not = icmp eq i64 %i.ae, 1
  br i1 %exitcond90.not, label %._crit_edge86, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !20 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 4 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !20 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float 1.402000e+00, float %i.ap)
  %i.av = fneg float %i.ar
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 3.441300e-01, float %i.ap)
  %i.ax = fneg float %i.at
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float f0x3F36D1E1, float %i.aw)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ar, float 1.772000e+00, float %i.ap)
  store float %i.au, ptr %i.ao, align 4, !tbaa !20
  store float %i.ay, ptr %i.aq, align 4, !tbaa !20
  store float %i.az, ptr %i.as, align 4, !tbaa !20
  %exitcond90.not.1 = icmp eq i64 %i.ae, 2
  br i1 %exitcond90.not.1, label %._crit_edge86, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 8 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 1.402000e+00, float %i.bb)
  %i.bh = fneg float %i.bd
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float 3.441300e-01, float %i.bb)
  %i.bj = fneg float %i.bf
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float f0x3F36D1E1, float %i.bi)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bd, float 1.772000e+00, float %i.bb)
  store float %i.bg, ptr %i.ba, align 4, !tbaa !20
  store float %i.bk, ptr %i.bc, align 4, !tbaa !20
  store float %i.bl, ptr %i.be, align 4, !tbaa !20
  %exitcond90.not.2 = icmp eq i64 %i.ae, 3
  br i1 %exitcond90.not.2, label %._crit_edge86, label %.lr.ph85.3

.lr.ph85.3:                                       ; preds = %.lr.ph85.2
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 12 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 12 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !20 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.402000e+00, float %i.bn)
  %i.bt = fneg float %i.bp
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float 3.441300e-01, float %i.bn)
  %i.bv = fneg float %i.br
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float f0x3F36D1E1, float %i.bu)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bp, float 1.772000e+00, float %i.bn)
  store float %i.bs, ptr %i.bm, align 4, !tbaa !20
  store float %i.bw, ptr %i.bo, align 4, !tbaa !20
  store float %i.bx, ptr %i.bq, align 4, !tbaa !20
  %exitcond90.not.3 = icmp eq i64 %i.ae, 4
  br i1 %exitcond90.not.3, label %._crit_edge86, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.3
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !20 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 16 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !20 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 16 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float 1.402000e+00, float %i.bz)
  %i.cf = fneg float %i.cb
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float 3.441300e-01, float %i.bz)
  %i.ch = fneg float %i.cd
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float f0x3F36D1E1, float %i.cg)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cb, float 1.772000e+00, float %i.bz)
  store float %i.ce, ptr %i.by, align 4, !tbaa !20
  store float %i.ci, ptr %i.ca, align 4, !tbaa !20
  store float %i.cj, ptr %i.cc, align 4, !tbaa !20
  %exitcond90.not.4 = icmp eq i64 %i.ae, 5
  br i1 %exitcond90.not.4, label %._crit_edge86, label %.lr.ph85.5

.lr.ph85.5:                                       ; preds = %.lr.ph85.4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !20 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 20 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !20 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 20 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float 1.402000e+00, float %i.cl)
  %i.cr = fneg float %i.cn
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float 3.441300e-01, float %i.cl)
  %i.ct = fneg float %i.cp
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float f0x3F36D1E1, float %i.cs)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cn, float 1.772000e+00, float %i.cl)
  store float %i.cq, ptr %i.ck, align 4, !tbaa !20
  store float %i.cu, ptr %i.cm, align 4, !tbaa !20
  store float %i.cv, ptr %i.co, align 4, !tbaa !20
  %exitcond90.not.5 = icmp eq i64 %i.ae, 6
  br i1 %exitcond90.not.5, label %._crit_edge86, label %.lr.ph85.6

.lr.ph85.6:                                       ; preds = %.lr.ph85.5
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !20 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 24 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 24 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !20 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float 1.402000e+00, float %i.cx)
  %i.dd = fneg float %i.cz
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float 3.441300e-01, float %i.cx)
  %i.df = fneg float %i.db
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float f0x3F36D1E1, float %i.de)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cz, float 1.772000e+00, float %i.cx)
  store float %i.dc, ptr %i.cw, align 4, !tbaa !20
  store float %i.dg, ptr %i.cy, align 4, !tbaa !20
  store float %i.dh, ptr %i.da, align 4, !tbaa !20
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.3, %.lr.ph85.4, %.lr.ph85.5, %.lr.ph85.6, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_mct_getnorm_real(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @opj_mct_norms_real, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !17
  ret double %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_encode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %3, %3                           ; 4 uses
  %i.b = add i32 %i.a, %3
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call ptr @opj_malloc(i64 noundef %i.d) #8 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 10 uses
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %.preheader54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 4294967288               ; 4 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !20
  %wide.load83 = load <4 x float>, ptr %i.l, align 4, !tbaa !20
  %i.m = fmul <4 x float> %wide.load, splat (float 8.192000e+03)
  %i.n = fmul <4 x float> %wide.load83, splat (float 8.192000e+03)
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !3
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.preheader54, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04556.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.04655.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %middle.block, %bb.b
  %5 = icmp ne i64 %1, 0
  %6 = icmp ne i32 %3, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.preheader53.us.us.preheader, label %._crit_edge65

.preheader53.us.us.preheader:                     ; preds = %.preheader54
  %i.t = shl nuw nsw i64 %i.f, 2
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.u = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.f, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  %min.iters.check90 = icmp ult i32 %3, 8
  %n.vec93 = and i64 %i.f, 4294967288             ; 4 uses
  %i.v = shl nuw nsw i64 %n.vec93, 2
  %cmp.n104 = icmp eq i64 %n.vec93, %i.f
  %xtraiter112 = and i64 %i.f, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  %i.w = add nsw i64 %i.f, -1
  br label %.preheader53.us.us

.preheader53.us.us:                               ; preds = %.preheader53.us.us.preheader, %._crit_edge.us.us
  %.14764.us.us = phi i64 [ %i.cz, %._crit_edge.us.us ], [ 0, %.preheader53.us.us.preheader ]
  br i1 %i.u, label %.epil.preheader, label %.preheader53.us.us.new

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %.loopexit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.loopexit ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.062.us.us = phi ptr [ %.lcssa, %.loopexit ], [ %i.g, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 9 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us
  %scevgep = getelementptr i8, ptr %i.y, i64 4    ; 2 uses
  %scevgep85 = getelementptr i8, ptr %.062.us.us, i64 %i.t
  %bound0 = icmp ult ptr %i.y, %i.g
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.y, %scevgep85
  %bound187 = icmp ult ptr %.062.us.us, %scevgep
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  br i1 %conflict.rdx, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %i.z = getelementptr i8, ptr %.062.us.us, i64 %i.v ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body94 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.aq, %vector.body94 ]
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.ar, %vector.body94 ]
  %i.aa = shl i64 %index95, 2
  %next.gep97 = getelementptr i8, ptr %.062.us.us, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load98 = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !3, !alias.scope !27
  %wide.load99 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !3, !alias.scope !27
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index95 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load100 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !3, !alias.scope !30
  %wide.load101 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !3, !alias.scope !30
  %i.ae = sext <4 x i32> %wide.load98 to <4 x i64>
  %i.af = sext <4 x i32> %wide.load99 to <4 x i64>
  %i.ag = sext <4 x i32> %wide.load100 to <4 x i64>
  %i.ah = sext <4 x i32> %wide.load101 to <4 x i64>
  %i.ai = mul nsw <4 x i64> %i.ag, %i.ae
  %i.aj = mul nsw <4 x i64> %i.ah, %i.af
  %i.ak = add nsw <4 x i64> %i.ai, splat (i64 4096)
  %i.al = add nsw <4 x i64> %i.aj, splat (i64 4096)
  %i.am = lshr <4 x i64> %i.ak, splat (i64 13)
  %i.an = lshr <4 x i64> %i.al, splat (i64 13)
  %i.ao = trunc <4 x i64> %i.am to <4 x i32>
  %i.ap = trunc <4 x i64> %i.an to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <4 x i32> %vec.phi96, %i.ap         ; 2 uses
  %index.next102 = add nuw i64 %index95, 8        ; 2 uses
  %i.as = icmp eq i64 %index.next102, %n.vec93
  br i1 %i.as, label %middle.block103, label %vector.body94, !llvm.loop !32

middle.block103:                                  ; preds = %vector.body94
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.at, ptr %i.y, align 4, !tbaa !3, !alias.scope !33, !noalias !35
  br i1 %cmp.n104, label %.loopexit, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %..preheader_crit_edge.us.us, %middle.block103
  %indvars.iv69.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %n.vec93, %middle.block103 ] ; 4 uses
  %.160.us.us.ph = phi ptr [ %.062.us.us, %vector.memcheck ], [ %.062.us.us, %..preheader_crit_edge.us.us ], [ %i.z, %middle.block103 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %i.at, %middle.block103 ] ; 2 uses
  br i1 %lcmp.mod113.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol

scalar.ph89.prol:                                 ; preds = %scalar.ph89.preheader
  %i.au = load i32, ptr %.160.us.us.ph, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69.ph
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = sext i32 %i.au to i64
  %i.ay = sext i32 %i.aw to i64
  %i.az = mul nsw i64 %i.ay, %i.ax
  %i.ba = add nsw i64 %i.az, 4096
  %i.bb = lshr i64 %i.ba, 13
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %.ph, %i.bc                 ; 2 uses
  store i32 %i.bd, ptr %i.y, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.160.us.us.ph, i64 4 ; 2 uses
  %indvars.iv.next70.prol = or disjoint i64 %indvars.iv69.ph, 1
  br label %scalar.ph89.prol.loopexit

scalar.ph89.prol.loopexit:                        ; preds = %scalar.ph89.prol, %scalar.ph89.preheader
  %.lcssa109.unr = phi ptr [ poison, %scalar.ph89.preheader ], [ %i.be, %scalar.ph89.prol ]
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %scalar.ph89.preheader ], [ %indvars.iv.next70.prol, %scalar.ph89.prol ]
  %.160.us.us.unr = phi ptr [ %.160.us.us.ph, %scalar.ph89.preheader ], [ %i.be, %scalar.ph89.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph89.preheader ], [ %i.bd, %scalar.ph89.prol ]
  %i.bf = icmp eq i64 %indvars.iv69.ph, %i.w
  br i1 %i.bf, label %.loopexit, label %scalar.ph89

.loopexit:                                        ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89, %middle.block103
  %.lcssa = phi ptr [ %i.z, %middle.block103 ], [ %.lcssa109.unr, %scalar.ph89.prol.loopexit ], [ %i.ce, %scalar.ph89 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !24
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.f
  br i1 %exitcond78.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !36

scalar.ph89:                                      ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %scalar.ph89 ], [ %indvars.iv69.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %.160.us.us = phi ptr [ %i.ce, %scalar.ph89 ], [ %.160.us.us.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %i.bh = phi i32 [ %i.cd, %scalar.ph89 ], [ %.unr, %scalar.ph89.prol.loopexit ]
  %i.bi = load i32, ptr %.160.us.us, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sext i32 %i.bi to i64
  %i.bm = sext i32 %i.bk to i64
  %i.bn = mul nsw i64 %i.bm, %i.bl
  %i.bo = add nsw i64 %i.bn, 4096
  %i.bp = lshr i64 %i.bo, 13
  %i.bq = trunc i64 %i.bp to i32
  %i.br = add nsw i32 %i.bh, %i.bq                ; 2 uses
  store i32 %i.br, ptr %i.y, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = sext i32 %i.bt to i64
  %i.by = sext i32 %i.bw to i64
  %i.bz = mul nsw i64 %i.by, %i.bx
  %i.ca = add nsw i64 %i.bz, 4096
  %i.cb = lshr i64 %i.ca, 13
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = add nsw i32 %i.br, %i.cc                ; 2 uses
  store i32 %i.cd, ptr %i.y, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 8 ; 2 uses
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %i.f
  br i1 %exitcond73.not.1, label %.loopexit, label %scalar.ph89, !llvm.loop !37

.preheader53.us.us.new:                           ; preds = %.preheader53.us.us, %.preheader53.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader53.us.us.new, !llvm.loop !38

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader53.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader53.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader53.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c, !llvm.loop !39

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.loopexit
  %i.cz = add nuw i64 %.14764.us.us, 1            ; 2 uses
  %exitcond79.not = icmp eq i64 %i.cz, %1
  br i1 %exitcond79.not, label %._crit_edge65, label %.preheader53.us.us, !llvm.loop !41

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %.04556 = phi ptr [ %i.da, %.lr.ph ], [ %.04556.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.04655 = phi i64 [ %i.df, %.lr.ph ], [ %.04655.ph, %.lr.ph.preheader110 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.04556, i64 4
  %i.db = load float, ptr %.04556, align 4, !tbaa !20
  %i.dc = fmul float %i.db, 8.192000e+03
  %i.dd = fptosi float %i.dc to i32
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04655
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  %i.df = add nuw nsw i64 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.h
  br i1 %exitcond.not, label %.preheader54, label %.lr.ph, !llvm.loop !42

._crit_edge65:                                    ; preds = %._crit_edge.us.us, %.preheader54
  tail call void @opj_free(ptr noundef nonnull %i.e) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge65
  %.044 = phi i32 [ 1, %._crit_edge65 ], [ 0, %bb.a ]
  ret i32 %.044
}

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #4

declare void @opj_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_decode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = shl i32 %3, 1
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call ptr @opj_malloc(i64 noundef %i.c) #8 ; 11 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %3 to i64                       ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %5 = icmp ne i64 %1, 0
  %6 = icmp ne i32 %3, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.preheader41.us.us.preheader, label %._crit_edge49

.preheader41.us.us.preheader:                     ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.e, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  %xtraiter71 = and i64 %i.e, 1
  %i.h = icmp eq i32 %3, 1
  %unroll_iter77 = and i64 %i.e, 4294967294
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  %lcmp.mod76 = trunc i32 %3 to i1
  br label %.preheader41.us.us

.preheader41.us.us:                               ; preds = %.preheader41.us.us.preheader, %._crit_edge.us.us
  %.03648.us.us = phi i64 [ %i.ax, %._crit_edge.us.us ], [ 0, %.preheader41.us.us.preheader ]
  br i1 %i.g, label %.epil.preheader, label %.preheader41.us.us.new

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.c
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.c ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.03745.us.us = phi ptr [ %.lcssa68, %bb.c ], [ %0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv56 ; 4 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  br i1 %i.h, label %.epil.preheader70, label %..preheader_crit_edge.us.us.new

.unr-lcssa:                                       ; preds = %..preheader_crit_edge.us.us.new
  br i1 %lcmp.mod73.not, label %bb.c, label %.epil.preheader70

.epil.preheader70:                                ; preds = %.unr-lcssa, %..preheader_crit_edge.us.us
  %indvars.iv51.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us ], [ %indvars.iv.next52.1, %.unr-lcssa ]
  %.13843.us.us.epil.init = phi ptr [ %.03745.us.us, %..preheader_crit_edge.us.us ], [ %i.x, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %..preheader_crit_edge.us.us ], [ %i.ac, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.j = getelementptr inbounds nuw i8, ptr %.13843.us.us.epil.init, i64 4
  %i.k = load float, ptr %.13843.us.us.epil.init, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51.epil.init
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float %i.m, float %.epil.init) ; 2 uses
  store float %i.n, ptr %i.i, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader70
  %.lcssa68 = phi ptr [ %i.x, %.unr-lcssa ], [ %i.j, %.epil.preheader70 ]
  %.lcssa = phi float [ %i.ac, %.unr-lcssa ], [ %i.n, %.epil.preheader70 ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.o, align 8, !tbaa !43
  store float %.lcssa, ptr %i.p, align 4, !tbaa !20
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %i.e
  br i1 %exitcond60.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !45

..preheader_crit_edge.us.us.new:                  ; preds = %..preheader_crit_edge.us.us, %..preheader_crit_edge.us.us.new
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %..preheader_crit_edge.us.us.new ], [ 0, %..preheader_crit_edge.us.us ] ; 3 uses
  %.13843.us.us = phi ptr [ %i.x, %..preheader_crit_edge.us.us.new ], [ %.03745.us.us, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.r = phi float [ %i.ac, %..preheader_crit_edge.us.us.new ], [ 0.000000e+00, %..preheader_crit_edge.us.us ]
  %niter78 = phi i64 [ %niter78.next.1, %..preheader_crit_edge.us.us.new ], [ 0, %..preheader_crit_edge.us.us ]
  %i.s = getelementptr inbounds nuw i8, ptr %.13843.us.us, i64 4
  %i.t = load float, ptr %.13843.us.us, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51
  %i.v = load float, ptr %i.u, align 4, !tbaa !20
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.r) ; 2 uses
  store float %i.w, ptr %i.i, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %.13843.us.us, i64 8 ; 3 uses
  %i.y = load float, ptr %i.s, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ab, float %i.w) ; 4 uses
  store float %i.ac, ptr %i.i, align 4, !tbaa !20
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %.unr-lcssa, label %..preheader_crit_edge.us.us.new, !llvm.loop !46

.preheader41.us.us.new:                           ; preds = %.preheader41.us.us, %.preheader41.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader41.us.us.new ], [ 0, %.preheader41.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader41.us.us.new ], [ 0, %.preheader41.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.af, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.aj, ptr %i.ak, align 4, !tbaa !20
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.an = load float, ptr %i.am, align 4, !tbaa !20
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store float %i.an, ptr %i.ao, align 4, !tbaa !20
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store float %i.ar, ptr %i.as, align 4, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader41.us.us.new, !llvm.loop !47

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader41.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader41.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader41.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  store float %i.av, ptr %i.aw, align 4, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.d, !llvm.loop !48

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.d, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.c
  %i.ax = add nuw i64 %.03648.us.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ax, %1
  br i1 %exitcond61.not, label %._crit_edge49, label %.preheader41.us.us, !llvm.loop !49

._crit_edge49:                                    ; preds = %._crit_edge.us.us, %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.d) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge49
  %.0 = phi i32 [ 1, %._crit_edge49 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @opj_calculate_norms(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  %unroll_iter = and i32 %1, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.epilog-lcssa
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.epilog-lcssa ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br i1 %i.a, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.02325 = phi i32 [ %i.z, %.lr.ph.new ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.d = phi double [ %i.ab, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.e = zext i32 %.02325 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = add i32 %.02325, %1                      ; 2 uses
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.d)
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = add i32 %i.h, %1                         ; 2 uses
  %i.o = fpext float %i.m to double               ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.j)
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = add i32 %i.n, %1                         ; 2 uses
  %i.u = fpext float %i.s to double               ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.p)
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !20
  %i.z = add i32 %i.t, %1                         ; 2 uses
  %i.aa = fpext float %i.y to double              ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.v) ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.new, !llvm.loop !50

.unr-lcssa:                                       ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.02325.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.z, %.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.02325.epil = phi i32 [ %.02325.epil.init, %.epil.preheader ], [ %i.ag, %bb.b ] ; 2 uses
end_hunk_0
