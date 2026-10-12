Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lsp?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_amrwb_lsp2lpc:bb.a
middle.block103:                                  ; preds = %vector.body86
  %cmp.n104 = icmp eq i64 %indvar78, %n.vec83
  br i1 %cmp.n104, label %._crit_edge.i46, label %.lr.ph.i50.preheader106

.lr.ph.i50.preheader106:                          ; preds = %.lr.ph.i50.preheader, %middle.block103
  %indvars.iv34.i51.ph = phi i64 [ %indvars.iv.i44, %.lr.ph.i50.preheader ], [ %i.bj, %middle.block103 ]
  br label %.lr.ph.i50

._crit_edge.i46:                                  ; preds = %.lr.ph.i50, %middle.block103, %.lr.ph32.i42
  %i.bx = load double, ptr %i.aw, align 16, !tbaa !16
  %i.by = fadd nsz double %i.ba, %i.bx
  store double %i.by, ptr %i.aw, align 16, !tbaa !16
  %indvars.iv.next38.i47 = add nuw nsw i64 %indvars.iv37.i43, 1 ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i44, 1
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next38.i47, %wide.trip.count.i41
  %indvar.next79 = add i64 %indvar78, 1
  br i1 %exitcond.not.i49, label %.lr.ph, label %.lr.ph32.i42, !llvm.loop !0

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader106, %.lr.ph.i50
  %indvars.iv34.i51 = phi i64 [ %indvars.iv.next35.i52, %.lr.ph.i50 ], [ %indvars.iv34.i51.ph, %.lr.ph.i50.preheader106 ] ; 3 uses
  %i.bz = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv34.i51 ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !16
  %i.cc = getelementptr i8, ptr %i.bz, i64 -16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !16
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.ba, double %i.cd)
  %i.cf = load double, ptr %i.bz, align 8, !tbaa !16
  %i.cg = fadd nsz double %i.cf, %i.ce
  store double %i.cg, ptr %i.bz, align 8, !tbaa !16
  %indvars.iv.next35.i52 = add nsw i64 %indvars.iv34.i51, -1
  %i.ch = icmp sgt i64 %indvars.iv34.i51, 2
  br i1 %i.ch, label %.lr.ph.i50, label %._crit_edge.i46, !llvm.loop !29

lsp2polyf.exit53.._crit_edge_crit_edge:           ; preds = %bb.a
  %i.ci = add i32 %2, -1
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %.phi.trans.insert62 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj
  %.pre = load double, ptr %.phi.trans.insert62, align 8, !tbaa !16 ; 2 uses
  %.pre63 = fadd nsz double %.pre, 1.000000e+00
  br label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i46, %lsp2polyf.exit
  %i.ck = add i32 %2, -1
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !16 ; 3 uses
  %i.co = fadd nsz double %i.cn, 1.000000e+00     ; 2 uses
  %i.cp = fsub nsz double 1.000000e+00, %i.cn
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv57 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next58, %bb.b ] ; 4 uses
  %indvars.iv = phi i64 [ %i.cl, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv57
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !16
  %i.cs = fmul nsz double %i.cr, %i.co            ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv57 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !16
  %i.cv = getelementptr i8, ptr %i.ct, i64 -16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !16
  %i.cx = fsub nsz double %i.cu, %i.cw
  %i.cy = fmul nsz double %i.cp, %i.cx            ; 2 uses
  %i.cz = fadd nsz double %i.cs, %i.cy
  %i.da = fmul nsz double %i.cz, 5.000000e-01
  %i.db = fptrunc nsz double %i.da to float
  %i.dc = getelementptr [4 x i8], ptr %1, i64 %indvars.iv57
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  store float %i.db, ptr %i.dd, align 4, !tbaa !14
  %i.de = fsub nsz double %i.cs, %i.cy
  %i.df = fmul nsz double %i.de, 5.000000e-01
  %i.dg = fptrunc nsz double %i.df to float
  %i.dh = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  store float %i.dg, ptr %i.di, align 4, !tbaa !14
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.b, %lsp2polyf.exit53.._crit_edge_crit_edge
  %.pre-phi64 = phi double [ %.pre63, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.co, %bb.b ]
  %.pre-phi = phi i64 [ %i.cj, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.cl, %bb.b ]
  %i.dj = phi double [ %.pre, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.cn, %bb.b ]
  %i.dk = sext i32 %i.c to i64                    ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !16
  %i.dn = fmul nsz double %.pre-phi64, %i.dm
  %i.do = fmul nsz double %i.dn, 5.000000e-01
  %i.dp = fptrunc nsz double %i.do to float
  %i.dq = getelementptr [4 x i8], ptr %1, i64 %i.dk
  %i.dr = getelementptr i8, ptr %i.dq, i64 -4
  store float %i.dp, ptr %i.dr, align 4, !tbaa !14
  %i.ds = fptrunc nsz double %i.dj to float
  %i.dt = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi
  store float %i.ds, ptr %i.dt, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lp_decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !11
  %i.d = sext <8 x i16> %wide.load to <8 x i32>
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load15 = load <8 x i16>, ptr %i.e, align 2, !tbaa !11
  %i.f = sext <8 x i16> %wide.load15 to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, %i.d
  %i.h = lshr <8 x i32> %i.g, splat (i32 1)
  %i.i = trunc <8 x i32> %i.h to <8 x i16>
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  store <8 x i16> %i.i, ptr %i.j, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2, !tbaa !11
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, %i.n
  %i.s = lshr i32 %i.r, 1
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.t, ptr %i.u, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.v = ashr i32 %4, 1                           ; 2 uses
  call fastcc void @acelp_lsp2lpc(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.v)
  tail call fastcc void @acelp_lsp2lpc(ptr noundef %1, ptr noundef %2, i32 noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @acelp_lsp2lpc(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1073741824, 1073741824) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 10 uses
  %i.b = alloca [11 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 4194304, ptr %i.a, align 16, !tbaa !40
  %i.c = load i16, ptr %1, align 2, !tbaa !11
  %i.d = sext i16 %i.c to i32
  %.neg.i = mul nsw i32 %i.d, -256
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %.neg.i, ptr %i.e, align 4, !tbaa !40
  %.not27.i = icmp slt i32 %2, 2
  br i1 %.not27.i, label %lsp2poly.exit.thread, label %.lr.ph.preheader.i

lsp2poly.exit.thread:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i32 4194304, ptr %i.b, align 16, !tbaa !40
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
  %i.h = sext i16 %i.g to i32
  %.neg.i2133 = mul nsw i32 %i.h, -256
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.neg.i2133, ptr %i.i, align 4, !tbaa !40
  br label %lsp2poly.exit32

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = add nuw nsw i32 %2, 1
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit80, %.lr.ph.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit80 ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit80 ], [ 2, %.lr.ph.preheader.i ] ; 6 uses
  %3 = add i64 %indvar, 1                         ; 3 uses
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  store i32 %i.m, ptr %i.k, align 4, !tbaa !40
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 2
  %i.n = getelementptr i8, ptr %1, i64 %.idx.i
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11   ; 2 uses
  %i.q = sext i16 %i.p to i64                     ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.r = sub i64 %indvars.iv.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.q, i64 0
  %i.s = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %indvars.iv.i, %index
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !40
  %i.w = getelementptr i8, ptr %i.u, i64 -20
  %wide.load39 = load <4 x i32>, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %i.x, align 4, !tbaa !40
  %i.y = add <4 x i32> %wide.load40, %wide.load39
  %i.z = sext <4 x i32> %wide.load to <4 x i64>
  %i.aa = mul nsw <4 x i64> %i.s, %i.z
  %i.ab = lshr <4 x i64> %i.aa, splat (i64 14)
  %i.ac = trunc <4 x i64> %i.ab to <4 x i32>
  %reverse42 = sub <4 x i32> %i.y, %i.ac
  store <4 x i32> %reverse42, ptr %i.x, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit80, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv29.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %scalar.ph ], [ %indvars.iv29.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv29.i ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.q
  %i.aj = lshr i64 %i.ai, 14
  %i.ak = getelementptr i8, ptr %i.ae, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.an = trunc i64 %i.aj to i32
  %i.ao = add i32 %i.am, %i.al
  %i.ap = sub i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.ae, align 4, !tbaa !40
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, -1
  %i.aq = icmp sgt i64 %indvars.iv29.i, 2
  br i1 %i.aq, label %scalar.ph, label %.loopexit80, !llvm.loop !34

.loopexit80:                                      ; preds = %scalar.ph, %middle.block
  %i.ar = sext i16 %i.p to i32
  %i.as = shl nsw i32 %i.ar, 8
  %i.at = load i32, ptr %i.e, align 4, !tbaa !40
  %i.au = sub nsw i32 %i.at, %i.as
  store i32 %i.au, ptr %i.e, align 4, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %lsp2poly.exit, label %.lr.ph.i, !llvm.loop !35

lsp2poly.exit:                                    ; preds = %.loopexit80
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i32 4194304, ptr %i.b, align 16, !tbaa !40
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !11
  %i.ax = sext i16 %i.aw to i32
  %.neg.i21 = mul nsw i32 %i.ax, -256
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 %.neg.i21, ptr %i.ay, align 4, !tbaa !40
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.loopexit, %lsp2poly.exit
  %indvar43 = phi i64 [ %indvar.next44, %.loopexit ], [ 0, %lsp2poly.exit ] ; 2 uses
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i30, %.loopexit ], [ 2, %lsp2poly.exit ] ; 6 uses
  %4 = add i64 %indvar43, 1                       ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.i26 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !40
  %.idx.i27 = shl nuw nsw i64 %indvars.iv.i26, 2
  %i.bc = getelementptr i8, ptr %i.av, i64 %.idx.i27
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !11 ; 2 uses
  %i.bf = sext i16 %i.be to i64                   ; 2 uses
  %min.iters.check46 = icmp ult i64 %4, 4
  br i1 %min.iters.check46, label %scalar.ph45.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i25
  %n.vec48 = and i64 %4, -4                       ; 3 uses
  %i.bg = sub i64 %indvars.iv.i26, %n.vec48
  %broadcast.splatinsert49 = insertelement <4 x i64> poison, i64 %i.bf, i64 0
  %i.bh = shufflevector <4 x i64> %broadcast.splatinsert49, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph47
  %index52 = phi i64 [ 0, %vector.ph47 ], [ %index.next59, %vector.body51 ] ; 2 uses
  %i.bi = sub i64 %indvars.iv.i26, %index52
  %i.bj = getelementptr [4 x i8], ptr %i.b, i64 %i.bi ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %wide.load53 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bl = getelementptr i8, ptr %i.bj, i64 -20
  %wide.load55 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bm = getelementptr i8, ptr %i.bj, i64 -12    ; 2 uses
  %wide.load56 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bn = add <4 x i32> %wide.load56, %wide.load55
  %i.bo = sext <4 x i32> %wide.load53 to <4 x i64>
  %i.bp = mul nsw <4 x i64> %i.bh, %i.bo
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 14)
  %i.br = trunc <4 x i64> %i.bq to <4 x i32>
  %reverse58 = sub <4 x i32> %i.bn, %i.br
  store <4 x i32> %reverse58, ptr %i.bm, align 4, !tbaa !40
  %index.next59 = add nuw i64 %index52, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next59, %n.vec48
  br i1 %i.bs, label %middle.block60, label %vector.body51, !llvm.loop !36

middle.block60:                                   ; preds = %vector.body51
  %cmp.n61 = icmp eq i64 %4, %n.vec48
  br i1 %cmp.n61, label %.loopexit, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %.lr.ph.i25, %middle.block60
  %indvars.iv29.i28.ph = phi i64 [ %indvars.iv.i26, %.lr.ph.i25 ], [ %i.bg, %middle.block60 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %indvars.iv29.i28 = phi i64 [ %indvars.iv.next30.i29, %scalar.ph45 ], [ %indvars.iv29.i28.ph, %scalar.ph45.preheader ] ; 3 uses
  %i.bt = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv29.i28 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.bf
  %i.by = lshr i64 %i.bx, 14
  %i.bz = getelementptr i8, ptr %i.bt, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !40
  %i.cc = trunc i64 %i.by to i32
  %i.cd = add i32 %i.cb, %i.ca
  %i.ce = sub i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.bt, align 4, !tbaa !40
  %indvars.iv.next30.i29 = add nsw i64 %indvars.iv29.i28, -1
  %i.cf = icmp sgt i64 %indvars.iv29.i28, 2
  br i1 %i.cf, label %scalar.ph45, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph45, %middle.block60
  %i.cg = sext i16 %i.be to i32
  %i.ch = shl nsw i32 %i.cg, 8
  %i.ci = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.cj = sub nsw i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %i.ay, align 4, !tbaa !40
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i
  %indvar.next44 = add i64 %indvar43, 1
  br i1 %exitcond.not.i31, label %lsp2poly.exit32, label %.lr.ph.i25, !llvm.loop !35

lsp2poly.exit32:                                  ; preds = %.loopexit, %lsp2poly.exit.thread
  store i16 4096, ptr %0, align 2, !tbaa !11
  %.not35 = icmp slt i32 %2, 1
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lsp2poly.exit32
  %i.ck = shl nuw nsw i32 %2, 1
  %i.cl = or disjoint i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.cn to i64
  %.pre = load i32, ptr %i.a, align 16, !tbaa !40 ; 2 uses
  %.pre38 = load i32, ptr %i.b, align 16, !tbaa !40 ; 2 uses
  %i.co = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check64 = icmp ult i32 %2, 4
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph
  %n.vec66 = and i64 %i.co, 2147483644            ; 3 uses
  %i.cp = or disjoint i64 %n.vec66, 1
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre38, i64 3
  %vector.recur.init69 = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next74, %vector.body67 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph65 ], [ %wide.load72, %vector.body67 ]
  %vector.recur70 = phi <4 x i32> [ %vector.recur.init69, %vector.ph65 ], [ %wide.load71, %vector.body67 ]
  %i.cq = or disjoint i64 %index68, 1             ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq
  %wide.load71 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !40 ; 4 uses
  %i.cs = shufflevector <4 x i32> %vector.recur70, <4 x i32> %wide.load71, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cq
  %wide.load72 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !40 ; 4 uses
  %i.cu = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load72, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cv = sub nsw <4 x i32> %wide.load72, %i.cu   ; 2 uses
  %i.cw = add <4 x i32> %wide.load71, splat (i32 1024)
  %i.cx = add <4 x i32> %i.cw, %i.cs              ; 2 uses
  %i.cy = add nsw <4 x i32> %i.cv, %i.cx
  %i.cz = lshr <4 x i32> %i.cy, splat (i32 11)
  %i.da = trunc <4 x i32> %i.cz to <4 x i16>
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cq
  store <4 x i16> %i.da, ptr %i.db, align 2, !tbaa !11
  %i.dc = sub nsw <4 x i32> %i.cx, %i.cv
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 11)
  %i.de = sub nsw i64 %i.cm, %i.cq
  %i.df = getelementptr inbounds [2 x i8], ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -6
  %i.dh = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse73 = trunc <4 x i32> %i.dh to <4 x i16>
  store <4 x i16> %reverse73, ptr %i.dg, align 2, !tbaa !11
  %index.next74 = add nuw i64 %index68, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.di, label %middle.block75, label %vector.body67, !llvm.loop !38

middle.block75:                                   ; preds = %vector.body67
  %vector.recur.extract = extractelement <4 x i32> %wide.load72, i64 3
  %vector.recur.extract76 = extractelement <4 x i32> %wide.load71, i64 3
  %cmp.n77 = icmp eq i64 %n.vec66, %i.co
  br i1 %cmp.n77, label %._crit_edge, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.lr.ph, %middle.block75
  %.ph = phi i32 [ %.pre38, %.lr.ph ], [ %vector.recur.extract, %middle.block75 ]
  %.ph81 = phi i32 [ %.pre, %.lr.ph ], [ %vector.recur.extract76, %middle.block75 ]
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.cp, %middle.block75 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %i.dj = phi i32 [ %i.do, %scalar.ph63 ], [ %.ph, %scalar.ph63.preheader ]
  %i.dk = phi i32 [ %i.dm, %scalar.ph63 ], [ %.ph81, %scalar.ph63.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph63 ], [ %indvars.iv.ph, %scalar.ph63.preheader ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !40 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40 ; 2 uses
  %i.dp = sub nsw i32 %i.do, %i.dj                ; 2 uses
  %i.dq = add i32 %i.dm, 1024
  %i.dr = add i32 %i.dq, %i.dk                    ; 2 uses
  %i.ds = add nsw i32 %i.dp, %i.dr
  %i.dt = lshr i32 %i.ds, 11
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !11
  %i.dw = sub nsw i32 %i.dr, %i.dp
  %i.dx = lshr i32 %i.dw, 11
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = sub nsw i64 %i.cm, %indvars.iv
  %i.ea = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dz
  store i16 %i.dy, ptr %i.ea, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph63, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph63, %middle.block75, %lsp2poly.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lspd2lpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x double], align 16           ; 9 uses
  %i.b = alloca [11 x double], align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = shl i32 %2, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !16
  %i.g = load double, ptr %0, align 8, !tbaa !16
  %i.h = fmul nsz double %i.g, -2.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store double %i.h, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %.not29.i = icmp slt i32 %2, 2
  br i1 %.not29.i, label %lsp2polyf.exit.thread, label %.lr.ph32.preheader.i

lsp2polyf.exit.thread:                            ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !16
  %i.l = load double, ptr %i.k, align 8, !tbaa !16
  %i.m = fmul nsz double %i.l, -2.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.m, ptr %i.n, align 8, !tbaa !16
  br label %lsp2polyf.exit32

.lr.ph32.preheader.i:                             ; preds = %bb.a
  %i.o = add nuw i32 %2, 1
  %wide.trip.count.i = zext i32 %i.o to i64       ; 2 uses
  br label %.lr.ph32.i
end_hunk_0
