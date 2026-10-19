Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_testsrc?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@allyuv_fill_picture:bb.a
  %i.cy = getelementptr inbounds i8, ptr %i.cv, i64 %i.cx
  store i8 %i.ag, ptr %i.cy, align 1, !tbaa !61
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.n
  %i.db = getelementptr i8, ptr %i.da, i64 %indvars.iv59
  %i.dc = getelementptr i8, ptr %i.db, i64 6
  store i8 %i.ai, ptr %i.dc, align 1, !tbaa !61
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.de = or disjoint i64 %indvars.iv59, 6
  %i.df = sub nsw i64 %.neg44, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 %i.df
  store i8 %i.aj, ptr %i.dg, align 1, !tbaa !61
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.n
  %i.dj = getelementptr i8, ptr %i.di, i64 %indvars.iv59
  %i.dk = getelementptr i8, ptr %i.dj, i64 7
  store i8 %i.al, ptr %i.dk, align 1, !tbaa !61
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.dm = or disjoint i64 %indvars.iv59, 7
  %i.dn = sub nsw i64 %.neg44, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  store i8 %i.am, ptr %i.do, align 1, !tbaa !61
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 8
  %i.dp = icmp samesign ult i64 %indvars.iv59, 2040
  br i1 %i.dp, label %.preheader, label %.preheader46, !llvm.loop !145

bb.c:                                             ; preds = %bb.c, %.preheader46
  %indvars.iv62 = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next63.3, %bb.c ] ; 5 uses
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.bf
  %i.ds = getelementptr i8, ptr %i.dr, i64 %indvars.iv62
  store i8 %i.be, ptr %i.ds, align 1, !tbaa !61
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.bf
  %i.dv = getelementptr i8, ptr %i.du, i64 %indvars.iv62
  %i.dw = getelementptr i8, ptr %i.dv, i64 1
  store i8 %i.be, ptr %i.dw, align 1, !tbaa !61
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.bf
  %i.dz = getelementptr i8, ptr %i.dy, i64 %indvars.iv62
  %i.ea = getelementptr i8, ptr %i.dz, i64 2
  store i8 %i.be, ptr %i.ea, align 1, !tbaa !61
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.bf
  %i.ed = getelementptr i8, ptr %i.ec, i64 %indvars.iv62
  %i.ee = getelementptr i8, ptr %i.ed, i64 3
  store i8 %i.be, ptr %i.ee, align 1, !tbaa !61
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond65.not.3 = icmp eq i64 %indvars.iv.next63.3, 4096
  br i1 %exitcond65.not.3, label %bb.d, label %bb.c, !llvm.loop !146

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next67, 4096
  br i1 %exitcond69.not, label %bb.e, label %.preheader48, !llvm.loop !147

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @allrgb_config_props(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %i.g = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.d, i32 noundef %i.f) #19 ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !49
  store <2 x i32> %i.m, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  store i64 %i.p, ptr %i.n, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.s = load i64, ptr %i.r, align 4, !tbaa !49
  store i64 %i.s, ptr %i.q, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.v = load i64, ptr %i.u, align 4, !tbaa !49
  store i64 %i.v, ptr %i.t, align 8, !tbaa !49
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @allrgb_fill_picture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %1, align 8, !tbaa !56
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.01521 = phi ptr [ %i.d, %bb.a ], [ %i.an, %bb.c ] ; 2 uses
  %.01620 = phi i32 [ 0, %bb.a ], [ %i.ao, %bb.c ] ; 3 uses
  %i.e = trunc i32 %.01620 to i8                  ; 4 uses
  %i.f = lshr i32 %.01620, 4
  %i.g = and i32 %i.f, 240                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %.019 = phi ptr [ %.01521, %.preheader ], [ %i.al, %bb.b ] ; 13 uses
  %.01718 = phi i32 [ 0, %.preheader ], [ %i.am, %bb.b ] ; 9 uses
  %i.h = trunc i32 %.01718 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 1
  store i8 %i.h, ptr %.019, align 1, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 2
  store i8 %i.e, ptr %i.i, align 1, !tbaa !61
  %i.k = lshr i32 %.01718, 8
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = trunc nuw i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 3
  store i8 %i.m, ptr %i.j, align 1, !tbaa !61
  %i.o = trunc i32 %.01718 to i8
  %i.p = or disjoint i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.019, i64 4
  store i8 %i.p, ptr %i.n, align 1, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 5
  store i8 %i.e, ptr %i.q, align 1, !tbaa !61
  %i.s = lshr i32 %.01718, 8
  %i.t = or disjoint i32 %i.s, %i.g
  %i.u = trunc nuw i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.019, i64 6
  store i8 %i.u, ptr %i.r, align 1, !tbaa !61
  %i.w = trunc i32 %.01718 to i8
  %i.x = or disjoint i8 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 7
  store i8 %i.x, ptr %i.v, align 1, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i8 %i.e, ptr %i.y, align 1, !tbaa !61
  %i.aa = lshr i32 %.01718, 8
  %i.ab = or disjoint i32 %i.aa, %i.g
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.019, i64 9
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !61
  %i.ae = trunc i32 %.01718 to i8
  %i.af = or disjoint i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.019, i64 10
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %.019, i64 11
  store i8 %i.e, ptr %i.ag, align 1, !tbaa !61
  %i.ai = lshr i32 %.01718, 8
  %i.aj = or disjoint i32 %i.ai, %i.g
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 12
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !61
  %i.am = add nuw nsw i32 %.01718, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.am, 4096
  br i1 %exitcond.not.3, label %bb.c, label %bb.b, !llvm.loop !148

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds i8, ptr %.01521, i64 %i.c
  %i.ao = add nuw nsw i32 %.01620, 1              ; 2 uses
  %exitcond22.not = icmp eq i32 %i.ao, 4096
  br i1 %exitcond22.not, label %bb.d, label %.preheader, !llvm.loop !149

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @colorspectrum_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = sitofp nsz i32 %i.b to float
  %i.d = fadd nsz float %i.c, -1.000000e+00       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = fadd nsz float %i.g, -1.000000e+00
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !56     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !72   ; 2 uses
  %i.s = icmp eq i32 %i.r, 2
  %i.t = icmp eq i32 %i.r, 1
  %i.u = icmp sgt i32 %i.b, 0
  br i1 %i.u, label %.lr.ph53.split.us.preheader, label %._crit_edge54

.lr.ph53.split.us.preheader:                      ; preds = %.lr.ph53
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = sext i32 %i.y to i64                    ; 2 uses
  %i.ad = sext i32 %i.w to i64                    ; 2 uses
  %wide.trip.count63 = zext nneg i32 %i.f to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 4 uses
  %i.ae = add nsw i64 %wide.trip.count63, -1      ; 3 uses
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.ag ; 2 uses
  %i.ai = mul nsw i64 %i.ae, %i.ac
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ai
  %scevgep66 = getelementptr i8, ptr %i.aj, i64 %i.ag ; 2 uses
  %i.ak = mul nsw i64 %i.ae, %i.ad
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ak
  %scevgep67 = getelementptr i8, ptr %i.al, i64 %i.ag ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  %bound0 = icmp ult ptr %i.m, %scevgep66
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i32 %i.y, %i.aa
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %bound069 = icmp ult ptr %i.m, %scevgep67
  %bound170 = icmp ult ptr %i.p, %scevgep
  %found.conflict71 = and i1 %bound069, %bound170
  %i.ap = icmp slt i32 %i.w, 0
  %i.aq = or i1 %found.conflict71, %i.ap
  %conflict.rdx = or i1 %i.ao, %i.aq
  %bound074 = icmp ult ptr %i.n, %scevgep67
  %bound175 = icmp ult ptr %i.p, %scevgep66
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx79 = or i1 %conflict.rdx, %found.conflict76
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert84 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat85 = shufflevector <4 x float> %broadcast.splatinsert84, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph53.split.us

.lr.ph53.split.us:                                ; preds = %.lr.ph53.split.us.preheader, %._crit_edge.us
  %indvars.iv60 = phi i64 [ 0, %.lr.ph53.split.us.preheader ], [ %indvars.iv.next61, %._crit_edge.us ] ; 5 uses
  %i.ar = mul nsw i64 %indvars.iv60, %i.ab
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar ; 2 uses
  %i.at = mul nsw i64 %indvars.iv60, %i.ac
  %i.au = getelementptr inbounds i8, ptr %i.n, i64 %i.at ; 2 uses
  %i.av = mul nsw i64 %indvars.iv60, %i.ad
  %i.aw = getelementptr inbounds i8, ptr %i.p, i64 %i.av ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv60 to i32
  %i.ay = uitofp nsz nneg i32 %i.ax to float
  %i.az = fdiv nsz float %i.ay, %i.h              ; 5 uses
  br i1 %i.s, label %.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph53.split.us
  %i.ba = fsub nsz float 1.000000e+00, %i.az
  br i1 %i.t, label %.lr.ph.us, label %.fold.split.us

.fold.split.us:                                   ; preds = %bb.b
  br label %.lr.ph.us

.thread.us:                                       ; preds = %.lr.ph53.split.us
  %i.bb = fcmp nsz ogt float %i.az, 5.000000e-01  ; 2 uses
  %i.bc = fadd nnan nsz float %i.az, -5.000000e-01
  %i.bd = fmul nnan nsz float %i.bc, 2.000000e+00
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float -2.000000e+00, float 1.000000e+00)
  %i.bf = select i1 %i.bb, float %i.bd, float %i.be
  %i.bg = select nsz i1 %i.bb, float 0.000000e+00, float 1.000000e+00
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.thread.us, %.fold.split.us, %bb.b
  %i.bh = phi float [ %i.ba, %bb.b ], [ %i.bf, %.thread.us ], [ %i.az, %.fold.split.us ] ; 5 uses
  %i.bi = phi nsz float [ 1.000000e+00, %bb.b ], [ %i.bg, %.thread.us ], [ 0.000000e+00, %.fold.split.us ] ; 4 uses
  %i.bj = fsub nsz float 1.000000e+00, %i.bh      ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx79
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert80 = insertelement <4 x float> poison, float %i.bi, i64 0
  %broadcast.splat81 = shufflevector <4 x float> %broadcast.splatinsert80, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bk = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bl = fdiv nsz <4 x float> %i.bk, %broadcast.splat85 ; 3 uses
  %i.bm = fmul nsz <4 x float> %i.bl, splat (float 6.000000e+00)
  %i.bn = frem nsz <4 x float> %i.bm, splat (float 6.000000e+00)
  %i.bo = fadd nsz <4 x float> %i.bn, splat (float -3.000000e+00)
  %i.bp = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bo)
  %i.bq = fadd nsz <4 x float> %i.bp, splat (float -1.000000e+00) ; 2 uses
  %i.br = fcmp nsz ogt <4 x float> %i.bq, zeroinitializer
  %i.bs = select nsz <4 x i1> %i.br, <4 x float> %i.bq, <4 x float> zeroinitializer ; 2 uses
  %i.bt = fcmp nsz ogt <4 x float> %i.bs, splat (float 1.000000e+00)
  %i.bu = select nsz <4 x i1> %i.bt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bs ; 3 uses
  %i.bv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> splat (float 6.000000e+00), <4 x float> splat (float 4.000000e+00))
  %i.bw = frem nsz <4 x float> %i.bv, splat (float 6.000000e+00)
  %i.bx = fadd nsz <4 x float> %i.bw, splat (float -3.000000e+00)
  %i.by = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bx)
  %i.bz = fadd nsz <4 x float> %i.by, splat (float -1.000000e+00) ; 2 uses
  %i.ca = fcmp nsz ogt <4 x float> %i.bz, zeroinitializer
  %i.cb = select nsz <4 x i1> %i.ca, <4 x float> %i.bz, <4 x float> zeroinitializer ; 2 uses
  %i.cc = fcmp nsz ogt <4 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = select nsz <4 x i1> %i.cc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cb ; 3 uses
  %i.ce = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> splat (float 6.000000e+00), <4 x float> splat (float 2.000000e+00))
  %i.cf = frem nsz <4 x float> %i.ce, splat (float 6.000000e+00)
  %i.cg = fadd nsz <4 x float> %i.cf, splat (float -3.000000e+00)
  %i.ch = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cg)
  %i.ci = fadd nsz <4 x float> %i.ch, splat (float -1.000000e+00) ; 2 uses
  %i.cj = fcmp nsz ogt <4 x float> %i.ci, zeroinitializer
  %i.ck = select nsz <4 x i1> %i.cj, <4 x float> %i.ci, <4 x float> zeroinitializer ; 2 uses
  %i.cl = fcmp nsz ogt <4 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = select nsz <4 x i1> %i.cl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ck ; 3 uses
  %i.cn = fmul nsz <4 x float> %i.bu, %i.bu
  %i.co = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 3.000000e+00))
  %i.cp = fmul nsz <4 x float> %i.cn, %i.co
  %i.cq = fmul nsz <4 x float> %broadcast.splat83, %i.cp
  %i.cr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat81, <4 x float> %broadcast.splat, <4 x float> %i.cq)
  %i.cs = fmul nsz <4 x float> %i.cd, %i.cd
  %i.ct = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 3.000000e+00))
  %i.cu = fmul nsz <4 x float> %i.cs, %i.ct
  %i.cv = fmul nsz <4 x float> %broadcast.splat83, %i.cu
  %i.cw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat81, <4 x float> %broadcast.splat, <4 x float> %i.cv)
  %i.cx = fmul nsz <4 x float> %i.cm, %i.cm
  %i.cy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 3.000000e+00))
  %i.cz = fmul nsz <4 x float> %i.cx, %i.cy
  %i.da = fmul nsz <4 x float> %broadcast.splat83, %i.cz
  %i.db = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat81, <4 x float> %broadcast.splat, <4 x float> %i.da)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index
  store <4 x float> %i.cr, ptr %i.dc, align 4, !tbaa !158, !alias.scope !159, !noalias !160
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index
  store <4 x float> %i.cw, ptr %i.dd, align 4, !tbaa !158, !alias.scope !161, !noalias !162
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index
  store <4 x float> %i.db, ptr %i.de, align 4, !tbaa !158, !alias.scope !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = uitofp nsz nneg i32 %i.dg to float
  %i.di = fdiv nsz float %i.dh, %i.d              ; 3 uses
  %i.dj = fmul nsz float %i.di, 6.000000e+00
  %i.dk = frem nsz float %i.dj, 6.000000e+00
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.di, float 6.000000e+00, float 4.000000e+00)
  %i.dm = frem nsz float %i.dl, 6.000000e+00
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %i.dp = fadd nsz <2 x float> %i.do, splat (float -3.000000e+00)
  %i.dq = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dp)
  %i.dr = fadd nsz <2 x float> %i.dq, splat (float -1.000000e+00) ; 2 uses
  %i.ds = fcmp nsz ogt <2 x float> %i.dr, zeroinitializer
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.dr, <2 x float> zeroinitializer ; 3 uses
  %i.du = fcmp nsz ogt <2 x float> %i.dt, splat (float 1.000000e+00) ; 2 uses
  %i.dv = extractelement <2 x i1> %i.du, i64 1
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  %..i28.i.us = select nsz i1 %i.dv, float 1.000000e+00, float %i.dw ; 3 uses
  %i.dx = extractelement <2 x i1> %i.du, i64 0
  %i.dy = extractelement <2 x float> %i.dt, i64 0
  %..i27.i.us = select nsz i1 %i.dx, float 1.000000e+00, float %i.dy ; 3 uses
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.di, float 6.000000e+00, float 2.000000e+00)
  %i.ea = frem nsz float %i.dz, 6.000000e+00
  %i.eb = fadd nsz float %i.ea, -3.000000e+00
  %i.ec = tail call nsz float @llvm.fabs.f32(float %i.eb)
  %i.ed = fadd nsz float %i.ec, -1.000000e+00     ; 2 uses
  %i.ee = fcmp nsz ogt float %i.ed, 0.000000e+00
  %i.ef = select nsz i1 %i.ee, float %i.ed, float 0.000000e+00 ; 2 uses
  %i.eg = fcmp nsz ogt float %i.ef, 1.000000e+00
  %..i.i.us = select nsz i1 %i.eg, float 1.000000e+00, float %i.ef ; 3 uses
  %i.eh = fmul nsz float %..i28.i.us, %..i28.i.us
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %..i28.i.us, float -2.000000e+00, float 3.000000e+00)
  %i.ej = fmul nsz float %i.eh, %i.ei
  %i.ek = fmul nsz float %i.bj, %i.ej
  %i.el = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.ek)
  %i.em = fmul nsz float %..i27.i.us, %..i27.i.us
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %..i27.i.us, float -2.000000e+00, float 3.000000e+00)
  %i.eo = fmul nsz float %i.em, %i.en
  %i.ep = fmul nsz float %i.bj, %i.eo
  %i.eq = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.ep)
  %i.er = fmul nsz float %..i.i.us, %..i.i.us
  %i.es = tail call nsz float @llvm.fmuladd.f32(float %..i.i.us, float -2.000000e+00, float 3.000000e+00)
  %i.et = fmul nsz float %i.er, %i.es
  %i.eu = fmul nsz float %i.bj, %i.et
  %i.ev = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.eu)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store float %i.el, ptr %i.ew, align 4, !tbaa !158
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store float %i.eq, ptr %i.ex, align 4, !tbaa !158
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store float %i.ev, ptr %i.ey, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !155

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge54, label %.lr.ph53.split.us, !llvm.loop !156

._crit_edge54:                                    ; preds = %._crit_edge.us, %.lr.ph53, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @colorchart_config_props(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.d, ptr noundef nonnull %0, i32 noundef 0) #19
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
