inline.NumInlined: 185
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@sbr_lf_gen:bb.a
bb.a:
  %i.a = shl i32 %4, 1                            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10240) %1, i8 0, i64 10240, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge48.split, label %.preheader45.lr.ph

.preheader45.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [8192 x i8], ptr %2, i64 %i.e ; 3 uses
  br i1 %i.d, label %.preheader45.preheader, label %._crit_edge48.split

.preheader45.preheader:                           ; preds = %.preheader45.lr.ph
  %i.g = add i32 %i.a, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 8) ; 2 uses
  %wide.trip.count57 = zext i32 %i.c to i64
  %i.h = zext nneg i32 %smax to i64
  %i.i = add nsw i64 %i.h, -7                     ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %i.j = icmp eq i32 %smax, 8
  %unroll_iter = and i64 %i.i, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod69 = trunc i64 %i.i to i1
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader45.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 5 uses
  %i.k = getelementptr inbounds nuw [320 x i8], ptr %1, i64 %indvars.iv54 ; 3 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader45.new

.preheader45.new:                                 ; preds = %.preheader45, %.preheader45.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader45.new ], [ 8, %.preheader45 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.new ], [ 0, %.preheader45 ]
  %i.l = getelementptr [256 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 -2048
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv54 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr [256 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.u = getelementptr i8, ptr %i.t, i64 -2048
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv54 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next ; 2 uses
  store float %i.w, ptr %i.x, align 4, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store float %i.z, ptr %i.aa, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader45.new, !llvm.loop !284

._crit_edge.unr-lcssa:                            ; preds = %.preheader45.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader45
  %indvars.iv.epil.init = phi i64 [ 8, %.preheader45 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.ab = getelementptr [256 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2048
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv54 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil.init ; 2 uses
  store float %i.ae, ptr %i.af, align 4, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store float %i.ah, ptr %i.ai, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge48.split, label %.preheader45, !llvm.loop !285

._crit_edge48.split:                              ; preds = %._crit_edge, %.preheader45.lr.ph, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13 ; 2 uses
  %.not52 = icmp eq i32 %i.ak, 0
  br i1 %.not52, label %._crit_edge51, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge48.split
  %i.al = sub nsw i32 1, %3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8192 x i8], ptr %2, i64 %i.am ; 8 uses
  %i.ao = sext i32 %i.a to i64                    ; 8 uses
  %i.ap = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2048
  %wide.trip.count66 = zext i32 %i.ak to i64
  %i.ar = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 -1792
  %i.at = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.au = getelementptr i8, ptr %i.at, i64 -1536
  %i.av = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.aw = getelementptr i8, ptr %i.av, i64 -1280
  %i.ax = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1024
  %i.az = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.ba = getelementptr i8, ptr %i.az, i64 -768
  %i.bb = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.bc = getelementptr i8, ptr %i.bb, i64 -512
  %i.bd = getelementptr [256 x i8], ptr %i.an, i64 %i.ao
  %i.be = getelementptr i8, ptr %i.bd, i64 -256
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv63 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next64, %.preheader ] ; 10 uses
  %i.bf = getelementptr inbounds nuw [320 x i8], ptr %1, i64 %indvars.iv63 ; 16 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv63 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !28
  store float %i.bh, ptr %i.bf, align 4, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store float %i.bj, ptr %i.bk, align 4, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv63 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store float %i.bp, ptr %i.bq, align 4, !tbaa !28
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv63 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store float %i.bs, ptr %i.bt, align 4, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store float %i.bv, ptr %i.bw, align 4, !tbaa !28
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv63 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store float %i.by, ptr %i.bz, align 4, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store float %i.cb, ptr %i.cc, align 4, !tbaa !28
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv63 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store float %i.ce, ptr %i.cf, align 4, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store float %i.ch, ptr %i.ci, align 4, !tbaa !28
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv63 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store float %i.ck, ptr %i.cl, align 4, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  store float %i.cn, ptr %i.co, align 4, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv63 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store float %i.cq, ptr %i.cr, align 4, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  store float %i.ct, ptr %i.cu, align 4, !tbaa !28
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv63 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store float %i.cw, ptr %i.cx, align 4, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  store float %i.cz, ptr %i.da, align 4, !tbaa !28
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge51, label %.preheader, !llvm.loop !286

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.split
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @sbr_hf_assemble(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 5 uses
  %i.b = alloca [48 x float], align 16            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99
  %.not.not = icmp eq i32 %i.d, 0                 ; 4 uses
  %i.e = select i1 %.not.not, i32 4, i32 0        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13   ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 69920 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 77984 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88732 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !153  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 88736 ; 2 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !287 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40
  %.not179 = icmp eq i32 %i.q, 0
  br i1 %.not179, label %bb.b, label %.preheader191

.preheader191:                                    ; preds = %bb.a
  br i1 %.not.not, label %.loopexit190.loopexit, label %.loopexit190

.loopexit190.loopexit:                            ; preds = %.preheader191
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 387728 ; 4 uses
  %i.s = sext i32 %i.i to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 390800 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 88716 ; 8 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !12
  %i.x = zext i8 %i.w to i64
  %.idx301 = mul nuw nsw i64 %i.x, 384
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx301
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 16 %i.u, i64 %i.t, i1 false)
  %i.z = load i8, ptr %i.v, align 4, !tbaa !12
  %i.aa = zext i8 %i.z to i64
  %.idx302 = mul nuw nsw i64 %i.aa, 384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx302
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 16 %i.r, i64 %i.t, i1 false)
  %i.ac = load i8, ptr %i.v, align 4, !tbaa !12
  %i.ad = zext i8 %i.ac to i64
  %.idx303 = mul nuw nsw i64 %i.ad, 384
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx303
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 16 %i.u, i64 %i.t, i1 false)
  %i.ag = load i8, ptr %i.v, align 4, !tbaa !12
  %i.ah = zext i8 %i.ag to i64
  %.idx304 = mul nuw nsw i64 %i.ah, 384
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx304
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 16 %i.r, i64 %i.t, i1 false)
  %i.ak = load i8, ptr %i.v, align 4, !tbaa !12
  %i.al = zext i8 %i.ak to i64
  %.idx305 = mul nuw nsw i64 %i.al, 384
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx305
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull align 16 %i.u, i64 %i.t, i1 false)
  %i.ao = load i8, ptr %i.v, align 4, !tbaa !12
  %i.ap = zext i8 %i.ao to i64
  %.idx306 = mul nuw nsw i64 %i.ap, 384
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx306
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 16 %i.r, i64 %i.t, i1 false)
  %i.as = load i8, ptr %i.v, align 4, !tbaa !12
  %i.at = zext i8 %i.as to i64
  %.idx307 = mul nuw nsw i64 %i.at, 384
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx307
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 16 %i.u, i64 %i.t, i1 false)
  %i.aw = load i8, ptr %i.v, align 4, !tbaa !12
  %i.ax = zext i8 %i.aw to i64
  %.idx308 = mul nuw nsw i64 %i.ax, 384
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx308
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 16 %i.r, i64 %i.t, i1 false)
  br label %.loopexit190

bb.b:                                             ; preds = %bb.a
  br i1 %.not.not, label %.preheader189, label %.loopexit190

.preheader189:                                    ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 88716 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88725 ; 6 uses
  %i.bc = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 1                ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bg, ptr noundef nonnull align 4 dereferenceable(192) %i.bl, i64 192, i1 false)
  %i.bm = getelementptr inbounds nuw [192 x i8], ptr %i.k, i64 %i.bf
  %i.bn = getelementptr inbounds nuw [192 x i8], ptr %i.k, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bm, ptr noundef nonnull align 4 dereferenceable(192) %i.bn, i64 192, i1 false)
  %i.bo = zext nneg i32 %i.be to i64
  %i.bp = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.br = zext nneg i32 %i.bj to i64
  %i.bs = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bq, ptr noundef nonnull align 4 dereferenceable(192) %i.bt, i64 192, i1 false)
  %i.bu = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.bv = zext i8 %i.bu to i64
  %.idx = mul nuw nsw i64 %i.bv, 384
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.by = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.bz = zext i8 %i.by to i64
  %.idx268 = mul nuw nsw i64 %i.bz, 384
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx268
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bx, ptr noundef nonnull align 4 dereferenceable(192) %i.cb, i64 192, i1 false)
  %i.cc = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.cd = zext i8 %i.cc to i64
  %.idx269 = mul nuw nsw i64 %i.cd, 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx269
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 384
  %i.cg = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.ch = zext i8 %i.cg to i64
  %.idx270 = mul nuw nsw i64 %i.ch, 384
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx270
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.cf, ptr noundef nonnull align 4 dereferenceable(192) %i.cj, i64 192, i1 false)
  %i.ck = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.cl = zext i8 %i.ck to i64
  %.idx271 = mul nuw nsw i64 %i.cl, 384
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx271
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 384
  %i.co = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.cp = zext i8 %i.co to i64
  %.idx272 = mul nuw nsw i64 %i.cp, 384
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx272
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.cn, ptr noundef nonnull align 4 dereferenceable(192) %i.cr, i64 192, i1 false)
  %i.cs = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.ct = zext i8 %i.cs to i64
  %.idx273 = mul nuw nsw i64 %i.ct, 384
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx273
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 576
  %i.cw = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.cx = zext i8 %i.cw to i64
  %.idx274 = mul nuw nsw i64 %i.cx, 384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx274
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.cv, ptr noundef nonnull align 4 dereferenceable(192) %i.cz, i64 192, i1 false)
  %i.da = load i8, ptr %i.ba, align 4, !tbaa !12
  %i.db = zext i8 %i.da to i64
  %.idx275 = mul nuw nsw i64 %i.db, 384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx275
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 576
  %i.de = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.df = zext i8 %i.de to i64
  %.idx276 = mul nuw nsw i64 %i.df, 384
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx276
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.dd, ptr noundef nonnull align 4 dereferenceable(192) %i.dh, i64 192, i1 false)
  br label %.loopexit190

.loopexit190:                                     ; preds = %.loopexit190.loopexit, %.preheader189, %.preheader191, %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !58 ; 3 uses
  %.not229 = icmp eq i32 %i.dj, 0
  br i1 %.not229, label %._crit_edge226, label %.lr.ph200

.lr.ph200:                                        ; preds = %.loopexit190
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 88716 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 390800
  %i.dm = sext i32 %i.i to i64
  %i.dn = shl nsw i64 %i.dm, 2                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 387728
  %i.dp = zext nneg i32 %i.e to i64
  %wide.trip.count = zext i32 %i.dj to i64
  %.pre = load i8, ptr %i.dk, align 4, !tbaa !12
  br label %bb.c

.loopexit188:                                     ; preds = %bb.d, %bb.c
  %i.dq = phi i8 [ %i.ew, %bb.c ], [ %i.ff, %bb.d ]
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count
  br i1 %exitcond241.not, label %.lr.ph225, label %bb.c, !llvm.loop !288

.lr.ph225:                                        ; preds = %.loopexit188
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 88716 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dt = icmp sgt i32 %i.i, 0
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 393720
  %i.dv = sext i32 %i.g to i64                    ; 3 uses
  %invariant.gep220 = getelementptr [8 x i8], ptr %0, i64 %i.dv
  %i.dw = getelementptr inbounds [320 x i8], ptr %1, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 393728
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 389264
  %i.dz = and i32 %i.g, 1
  %i.ea = icmp sgt i32 %i.i, 1
  %i.eb = and i32 %i.i, 1
  %.not184 = icmp eq i32 %i.eb, 0
  %5 = sext i32 %i.i to i64                       ; 3 uses
  %i.ec = zext nneg i32 %i.e to i64               ; 2 uses
  %.pre261 = load i8, ptr %i.dr, align 4, !tbaa !12
  %wide.trip.count250 = zext nneg i32 %i.i to i64
  %invariant.gep283 = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.ec
  %invariant.op = add nsw i64 %5, -1
  %i.ed = add nsw i64 %5, -2
  %i.ee = lshr i64 %i.ed, 1                       ; 2 uses
  %i.ef = shl i64 %i.ee, 4
  %i.eg = shl nsw i64 %i.dv, 3
  %i.eh = shl i64 %i.ee, 3
  %i.ei = getelementptr i8, ptr %2, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 389272
  %i.ek = getelementptr i8, ptr %0, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.eg
  %i.em = getelementptr i8, ptr %i.el, i64 12
  %i.en = add nsw i64 %5, -2                      ; 2 uses
  %i.eo = lshr i64 %i.en, 1
  %i.ep = add nuw i64 %i.eo, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 8
  %i.eq = and i64 %i.ep, 3                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 4, i64 %i.eq
  %n.vec = sub i64 %i.ep, %i.es                   ; 2 uses
  %i.et = shl i64 %n.vec, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph200, %.loopexit188
  %i.eu = phi i8 [ %.pre, %.lr.ph200 ], [ %i.dq, %.loopexit188 ] ; 2 uses
  %indvars.iv238 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next239, %.loopexit188 ] ; 3 uses
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.next239 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !12  ; 2 uses
  %i.ex = icmp ult i8 %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph198, label %.loopexit188

.lr.ph198:                                        ; preds = %bb.c
  %i.ey = getelementptr inbounds nuw [192 x i8], ptr %i.dl, i64 %indvars.iv238
  %i.ez = getelementptr inbounds nuw [192 x i8], ptr %i.do, i64 %indvars.iv238
  %i.fa = zext i8 %i.eu to i64
  %i.fb = shl nuw nsw i64 %i.fa, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph198, %bb.d
  %indvars.iv = phi i64 [ %i.fb, %.lr.ph198 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.fc = add nuw nsw i64 %indvars.iv, %i.dp      ; 2 uses
  %i.fd = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 16 %i.ey, i64 %i.dn, i1 false)
  %i.fe = getelementptr inbounds nuw [192 x i8], ptr %i.k, i64 %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr nonnull align 16 %i.ez, i64 %i.dn, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !12  ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 1
  %i.fi = icmp samesign ult i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %bb.d, label %.loopexit188, !llvm.loop !289

.loopexit186.loopexit:                            ; preds = %bb.o
  %.pre262 = load i32, ptr %i.di, align 8, !tbaa !58
  br label %.loopexit186

.loopexit186:                                     ; preds = %.loopexit186.loopexit, %bb.e
  %i.fj = phi i32 [ %i.fn, %bb.e ], [ %.pre262, %.loopexit186.loopexit ] ; 2 uses
  %i.fk = phi i8 [ %i.fs, %bb.e ], [ %i.ky, %.loopexit186.loopexit ]
  %.1173.lcssa = phi i32 [ %.0172222, %bb.e ], [ %i.kx, %.loopexit186.loopexit ] ; 2 uses
  %.1171.lcssa = phi i32 [ %.0170223, %bb.e ], [ %i.kv, %.loopexit186.loopexit ] ; 2 uses
  %i.fl = zext i32 %i.fj to i64
  %i.fm = icmp samesign ult i64 %indvars.iv.next259, %i.fl
  br i1 %i.fm, label %bb.e, label %._crit_edge226, !llvm.loop !290

bb.e:                                             ; preds = %.lr.ph225, %.loopexit186
  %i.fn = phi i32 [ %i.dj, %.lr.ph225 ], [ %i.fj, %.loopexit186 ]
  %i.fo = phi i8 [ %.pre261, %.lr.ph225 ], [ %i.fk, %.loopexit186 ] ; 2 uses
  %indvars.iv258 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next259, %.loopexit186 ] ; 7 uses
  %.0170223 = phi i32 [ %i.m, %.lr.ph225 ], [ %.1171.lcssa, %.loopexit186 ] ; 2 uses
  %.0172222 = phi i32 [ %i.o, %.lr.ph225 ], [ %.1173.lcssa, %.loopexit186 ] ; 2 uses
  %i.fp = mul nuw nsw i64 %indvars.iv258, 192     ; 2 uses
  %i.fq = getelementptr i8, ptr %2, i64 %i.fp
  %scevgep291 = getelementptr i8, ptr %i.fq, i64 389264
  %scevgep292 = getelementptr i8, ptr %i.ej, i64 %i.fp
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv.next259 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !12  ; 2 uses
  %i.ft = icmp ult i8 %i.fo, %i.fs
  br i1 %i.ft, label %.lr.ph216, label %.loopexit186

.lr.ph216:                                        ; preds = %bb.e
  %i.fu = getelementptr inbounds nuw [192 x i8], ptr %i.dy, i64 %indvars.iv258 ; 4 uses
  %i.fv = zext i8 %i.fo to i64                    ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 1
  %i.fx = shl nuw nsw i64 %i.fv, 10
  %i.fy = getelementptr i8, ptr %i.em, i64 %i.fx
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph216, %bb.o
  %indvar = phi i64 [ 0, %.lr.ph216 ], [ %indvar.next, %bb.o ] ; 2 uses
  %indvars.iv255 = phi i64 [ %i.fw, %.lr.ph216 ], [ %indvars.iv.next256, %bb.o ] ; 6 uses
  %.1171212 = phi i32 [ %.0170223, %.lr.ph216 ], [ %i.kv, %bb.o ] ; 2 uses
  %.1173211 = phi i32 [ %.0172222, %.lr.ph216 ], [ %i.kx, %bb.o ] ; 4 uses
  %i.fz = shl nuw nsw i64 %indvar, 9
  %scevgep = getelementptr i8, ptr %i.fy, i64 %i.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br i1 %.not.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ga = load i32, ptr %4, align 4, !tbaa !13
  %i.gb = zext i32 %i.ga to i64
  %.not180 = icmp eq i64 %indvars.iv258, %i.gb
  br i1 %.not180, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gc = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.gd = zext i32 %i.gc to i64
  %.not181 = icmp eq i64 %indvars.iv258, %i.gd
  br i1 %.not181, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.h
  br i1 %i.dt, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %.preheader
  %i.ge = add nuw nsw i64 %indvars.iv255, %i.ec   ; 6 uses
  %i.gf = add nsw i64 %i.ge, -3                   ; 2 uses
  %i.gg = add nsw i64 %i.ge, -2                   ; 2 uses
  %i.gh = add nsw i64 %i.ge, -1                   ; 2 uses
  %i.gi = add nsw i64 %i.ge, -4                   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph208, %bb.i
  %indvars.iv247 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next248, %bb.i ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv247
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv247
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv247 ; 5 uses
  %invariant.gep201 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv247 ; 5 uses
  %gep.3 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep, i64 %i.gf
  %i.gl = load float, ptr %gep.3, align 4, !tbaa !28
  %i.gm = insertelement <2 x float> poison, float %i.gl, i64 0
  %gep202.3 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep201, i64 %i.gf
  %i.gn = load float, ptr %gep202.3, align 4, !tbaa !28
  %i.go = insertelement <2 x float> %i.gm, float %i.gn, i64 1
  %gep.2 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep, i64 %i.gg
  %i.gp = load float, ptr %gep.2, align 4, !tbaa !28
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %gep202.2 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep201, i64 %i.gg
  %i.gr = load float, ptr %gep202.2, align 4, !tbaa !28
  %i.gs = insertelement <2 x float> %i.gq, float %i.gr, i64 1
  %gep.1 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep, i64 %i.gh
  %i.gt = load float, ptr %gep.1, align 4, !tbaa !28
  %i.gu = insertelement <2 x float> poison, float %i.gt, i64 0
  %gep202.1 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep201, i64 %i.gh
  %i.gv = load float, ptr %gep202.1, align 4, !tbaa !28
  %i.gw = insertelement <2 x float> %i.gu, float %i.gv, i64 1
  %gep = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep, i64 %i.ge
  %i.gx = load float, ptr %gep, align 4, !tbaa !28
  %i.gy = insertelement <2 x float> poison, float %i.gx, i64 0
  %gep202 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep201, i64 %i.ge
  %i.gz = load float, ptr %gep202, align 4, !tbaa !28
  %i.ha = insertelement <2 x float> %i.gy, float %i.gz, i64 1
  %i.hb = fmul nsz <2 x float> %i.ha, splat (float f0x3EAAAAAB)
  %i.hc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> splat (float f0x3E9A5E94), <2 x float> %i.hb)
  %i.hd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> splat (float f0x3E5F67D3), <2 x float> %i.hc)
  %i.he = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> splat (float f0x3DEBDB04), <2 x float> %i.hd)
  %gep.4 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep, i64 %i.gi
  %i.hf = load float, ptr %gep.4, align 4, !tbaa !28
  %gep202.4 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep201, i64 %i.gi
  %i.hg = load float, ptr %gep202.4, align 4, !tbaa !28
  %i.hh = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.hg, i64 1
  %i.hj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> splat (float 3.183050e-02), <2 x float> %i.he) ; 2 uses
  %i.hk = extractelement <2 x float> %i.hj, i64 0
  store float %i.hk, ptr %i.gj, align 4, !tbaa !28
  %i.hl = extractelement <2 x float> %i.hj, i64 1
  store float %i.hl, ptr %i.gk, align 4, !tbaa !28
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %.loopexit, label %bb.i, !llvm.loop !291

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %gep284 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep283, i64 %indvars.iv255
  %i.hm = getelementptr inbounds nuw [192 x i8], ptr %i.k, i64 %indvars.iv255
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.j
  %.0175 = phi ptr [ %gep284, %bb.j ], [ %i.a, %.preheader ], [ %i.a, %bb.i ]
  %.0174 = phi ptr [ %i.hm, %bb.j ], [ %i.b, %.preheader ], [ %i.b, %bb.i ]
  %i.hn = load ptr, ptr %i.du, align 8, !tbaa !292
  %gep221 = getelementptr [512 x i8], ptr %invariant.gep220, i64 %indvars.iv255 ; 3 uses
  %i.ho = add nuw nsw i64 %indvars.iv255, 2
  call void %i.hn(ptr noundef %gep221, ptr noundef %i.dw, ptr noundef %.0175, i32 noundef %i.i, i64 noundef %i.ho) #12
  %i.hp = load i32, ptr %4, align 4, !tbaa !13
  %i.hq = zext i32 %i.hp to i64
  %.not182 = icmp eq i64 %indvars.iv258, %i.hq
  br i1 %.not182, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.hr = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.hs = zext i32 %i.hr to i64
  %.not183 = icmp eq i64 %indvars.iv258, %i.hs
  br i1 %.not183, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ht = sext i32 %.1173211 to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !103
  call void %i.hv(ptr noundef %gep221, ptr noundef nonnull %i.fu, ptr noundef %.0174, i32 noundef %.1171212, i32 noundef %i.g, i32 noundef %i.i) #12
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %.loopexit
  %i.hw = and i32 %.1173211, 1                    ; 3 uses
  %i.hx = add nsw i32 %.1173211, %i.dz
  %i.hy = and i32 %i.hx, 2
  %i.hz = sub nsw i32 1, %i.hy                    ; 3 uses
  %i.ia = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %gep221, i64 %i.ia ; 7 uses
  br i1 %i.ea, label %.lr.ph210, label %._crit_edge

.lr.ph210:                                        ; preds = %bb.m
  %i.ic = sub nsw i32 0, %i.hw
  %i.id = xor i32 %i.hz, %i.ic
  %i.ie = add nsw i32 %i.id, %i.hw
  %i.if = sitofp nsz i32 %i.hz to float           ; 2 uses
  %i.ig = sitofp nsz i32 %i.ie to float           ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

end_hunk_0
