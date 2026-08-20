inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@dctInverse8x8_sse2:bb.a
  %i.jz = fadd <4 x float> %i.jx, %i.jy
  %i.ka = fadd <4 x float> %i.jw, %i.jz           ; 2 uses
  %i.kb = fmul <4 x float> %i.ip, splat (float f0x3DC7C60E)
  %i.kc = fmul <4 x float> %i.it, splat (float f0x3E8E39E7)
  %i.kd = fsub <4 x float> %i.kb, %i.kc
  %i.ke = fmul <4 x float> %i.ix, splat (float f0x3ED4DB34)
  %i.kf = fmul <4 x float> %i.jb, splat (float f0x3EFB14C1)
  %i.kg = fsub <4 x float> %i.ke, %i.kf
  %i.kh = fadd <4 x float> %i.kd, %i.kg           ; 2 uses
  %i.ki = fadd <4 x float> %i.in, %i.iv
  %i.kj = fmul <4 x float> %i.ki, splat (float f0x3EB504FA) ; 2 uses
  %i.kk = fsub <4 x float> %i.in, %i.iv
  %i.kl = fmul <4 x float> %i.kk, splat (float f0x3EB504FA) ; 2 uses
  %i.km = fadd <4 x float> %i.jc, %i.jf           ; 2 uses
  %i.kn = fsub <4 x float> %i.jd, %i.je           ; 2 uses
  %i.ko = fadd <4 x float> %i.km, %i.kj           ; 2 uses
  %i.kp = fadd <4 x float> %i.kn, %i.kl           ; 2 uses
  %i.kq = fsub <4 x float> %i.kl, %i.kn           ; 2 uses
  %i.kr = fsub <4 x float> %i.kj, %i.km           ; 2 uses
  %i.ks = fadd <4 x float> %i.jm, %i.ko
  store <4 x float> %i.ks, ptr %0, align 16, !tbaa !90
  %i.kt = fadd <4 x float> %i.jt, %i.kp
  store <4 x float> %i.kt, ptr %i.io, align 16, !tbaa !90
  %i.ku = fadd <4 x float> %i.ka, %i.kq
  store <4 x float> %i.ku, ptr %i.iq, align 16, !tbaa !90
  %i.kv = fadd <4 x float> %i.kh, %i.kr
  store <4 x float> %i.kv, ptr %i.is, align 16, !tbaa !90
  %i.kw = fsub <4 x float> %i.kr, %i.kh
  store <4 x float> %i.kw, ptr %i.iu, align 16, !tbaa !90
  %i.kx = fsub <4 x float> %i.kq, %i.ka
  store <4 x float> %i.kx, ptr %i.iw, align 16, !tbaa !90
  %i.ky = fsub <4 x float> %i.kp, %i.jt
  store <4 x float> %i.ky, ptr %i.iy, align 16, !tbaa !90
  %i.kz = fsub <4 x float> %i.ko, %i.jm
  store <4 x float> %i.kz, ptr %i.ja, align 16, !tbaa !90
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lb = load <4 x float>, ptr %i.la, align 16, !tbaa !90 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ld = load <4 x float>, ptr %i.lc, align 16, !tbaa !90 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lf = load <4 x float>, ptr %i.le, align 16, !tbaa !90 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lh = load <4 x float>, ptr %i.lg, align 16, !tbaa !90 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.lj = load <4 x float>, ptr %i.li, align 16, !tbaa !90 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !tbaa !90 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ln = load <4 x float>, ptr %i.lm, align 16, !tbaa !90 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !90 ; 4 uses
  %i.lq = fmul <4 x float> %i.lf, splat (float f0x3EEC8360)
  %i.lr = fmul <4 x float> %i.lf, splat (float f0x3E43EF36)
  %i.ls = fmul <4 x float> %i.ln, splat (float f0x3EEC8360)
  %i.lt = fmul <4 x float> %i.ln, splat (float f0x3E43EF36)
  %i.lu = fmul <4 x float> %i.ld, splat (float f0x3EFB14C1)
  %i.lv = fmul <4 x float> %i.lh, splat (float f0x3ED4DB34)
  %i.lw = fadd <4 x float> %i.lu, %i.lv
  %i.lx = fmul <4 x float> %i.ll, splat (float f0x3E8E39E7)
  %i.ly = fmul <4 x float> %i.lp, splat (float f0x3DC7C60E)
  %i.lz = fadd <4 x float> %i.lx, %i.ly
  %i.ma = fadd <4 x float> %i.lw, %i.lz           ; 2 uses
  %i.mb = fmul <4 x float> %i.ld, splat (float f0x3ED4DB34)
  %i.mc = fmul <4 x float> %i.lh, splat (float f0x3DC7C60E)
  %i.md = fsub <4 x float> %i.mb, %i.mc
  %i.me = fmul <4 x float> %i.ll, splat (float f0x3EFB14C1)
  %i.mf = fmul <4 x float> %i.lp, splat (float f0x3E8E39E7)
  %i.mg = fadd <4 x float> %i.me, %i.mf
  %i.mh = fsub <4 x float> %i.md, %i.mg           ; 2 uses
  %i.mi = fmul <4 x float> %i.ld, splat (float f0x3E8E39E7)
  %i.mj = fmul <4 x float> %i.lh, splat (float f0x3EFB14C1)
  %i.mk = fsub <4 x float> %i.mi, %i.mj
  %i.ml = fmul <4 x float> %i.ll, splat (float f0x3DC7C60E)
  %i.mm = fmul <4 x float> %i.lp, splat (float f0x3ED4DB34)
  %i.mn = fadd <4 x float> %i.ml, %i.mm
  %i.mo = fadd <4 x float> %i.mk, %i.mn           ; 2 uses
  %i.mp = fmul <4 x float> %i.ld, splat (float f0x3DC7C60E)
  %i.mq = fmul <4 x float> %i.lh, splat (float f0x3E8E39E7)
  %i.mr = fsub <4 x float> %i.mp, %i.mq
  %i.ms = fmul <4 x float> %i.ll, splat (float f0x3ED4DB34)
  %i.mt = fmul <4 x float> %i.lp, splat (float f0x3EFB14C1)
  %i.mu = fsub <4 x float> %i.ms, %i.mt
  %i.mv = fadd <4 x float> %i.mr, %i.mu           ; 2 uses
  %i.mw = fadd <4 x float> %i.lb, %i.lj
  %i.mx = fmul <4 x float> %i.mw, splat (float f0x3EB504FA) ; 2 uses
  %i.my = fsub <4 x float> %i.lb, %i.lj
  %i.mz = fmul <4 x float> %i.my, splat (float f0x3EB504FA) ; 2 uses
  %i.na = fadd <4 x float> %i.lq, %i.lt           ; 2 uses
  %i.nb = fsub <4 x float> %i.lr, %i.ls           ; 2 uses
  %i.nc = fadd <4 x float> %i.na, %i.mx           ; 2 uses
  %i.nd = fadd <4 x float> %i.nb, %i.mz           ; 2 uses
  %i.ne = fsub <4 x float> %i.mz, %i.nb           ; 2 uses
  %i.nf = fsub <4 x float> %i.mx, %i.na           ; 2 uses
  %i.ng = fadd <4 x float> %i.ma, %i.nc
  store <4 x float> %i.ng, ptr %i.la, align 16, !tbaa !90
  %i.nh = fadd <4 x float> %i.mh, %i.nd
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.nh, ptr %i.ni, align 16, !tbaa !90
  %i.nj = fadd <4 x float> %i.mo, %i.ne
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %i.nj, ptr %i.nk, align 16, !tbaa !90
  %i.nl = fadd <4 x float> %i.mv, %i.nf
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %i.nl, ptr %i.nm, align 16, !tbaa !90
  %i.nn = fsub <4 x float> %i.nf, %i.mv
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %i.nn, ptr %i.no, align 16, !tbaa !90
  %i.np = fsub <4 x float> %i.ne, %i.mo
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %i.np, ptr %i.nq, align 16, !tbaa !90
  %i.nr = fsub <4 x float> %i.nd, %i.mh
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> %i.nr, ptr %i.ns, align 16, !tbaa !90
  %i.nt = fsub <4 x float> %i.nc, %i.ma
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %i.nt, ptr %i.nu, align 16, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @DwaCompressor_initializeBuffers(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51
  %i.g = sitofp i32 %i.b to float
  %i.h = fmul nnan float %i.g, 1.250000e-01
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptoui float %i.i to i64
  %i.k = sub nsw i32 %i.d, %i.f
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, 1.250000e-01
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fptoui float %i.o to i64
  %i.q = mul i64 %i.p, %i.j                       ; 3 uses
  %i.r = mul i64 %i.q, 126                        ; 2 uses
  %i.s = shl i64 %i.q, 1
  %i.t = sext i32 %i.b to i64
  %i.u = sext i32 %i.l to i64
  %i.v = mul nsw i64 %i.u, %i.t                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79
  br label %bb.x

._crit_edge:                                      ; preds = %bb.x, %.preheader
  %.0136.lcssa = phi i64 [ 0, %.preheader ], [ %i.ga, %bb.x ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, 12
  %i.ag = tail call ptr %i.ab(i64 noundef %i.af) #21, !inline_history !200 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %DwaCompressor_classifyChannels.exit.thread, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 5
  %i.am = tail call ptr %i.ai(i64 noundef %i.al) #21, !inline_history !200 ; 10 uses
  %.not99.i = icmp eq ptr %i.am, null
  br i1 %.not99.i, label %DwaCompressor_classifyChannels.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.ap, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph123.i, label %DwaCompressor_classifyChannels.exit

.lr.ph123.i:                                      ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 5 uses
  %i.au = load i64, ptr %i.w, align 8, !tbaa !80  ; 2 uses
  %.not127.i = icmp eq i64 %i.au, 0
  br i1 %.not127.i, label %.lr.ph123.split.i, label %.lr.ph123.split.us.i

.lr.ph123.split.us.i:                             ; preds = %.lr.ph123.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.i, %.lr.ph123.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us.i ], [ 0, %.lr.ph123.split.us.i ] ; 3 uses
  %i.ax = phi i32 [ %i.cp, %._crit_edge.us.i ], [ %i.aq, %.lr.ph123.split.us.i ]
  %i.ay = getelementptr inbounds nuw [576 x i8], ptr %i.at, i64 %indvars.iv.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 448
  %i.ba = load ptr, ptr %i.az, align 32, !tbaa !56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 5 uses
  %i.bc = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.bb, i32 noundef 46) #23 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %.0.i.us.i = select i1 %.not.i.us.i, ptr %i.bb, ptr %i.bd ; 3 uses
  %i.be = ptrtoint ptr %.0.i.us.i to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %wide.trip.count.i.us.i = zext nneg i32 %i.ax to i64 ; 2 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.f, %bb.c
  %indvars.iv.i.us.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.us.i, %bb.f ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i.us.i ; 7 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !203
  %i.bm = icmp eq i64 %i.bg, %i.bl
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = tail call i32 @strncmp(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bi, i64 noundef %i.bg) #23
  %.not.i109.us.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i109.us.i, label %CscPrefixMap_find.exit.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %CscPrefixMap_find.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !204

bb.g:                                             ; preds = %.lr.ph.i.us.i
  store ptr %i.bb, ptr %i.bh, align 8, !tbaa !201
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !203
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 -1, ptr %i.bp, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  store i32 -1, ptr %i.bq, align 4, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 -1, ptr %i.br, align 8, !tbaa !51
  br label %CscPrefixMap_find.exit.us.i

CscPrefixMap_find.exit.us.i:                      ; preds = %bb.f, %bb.e, %bb.g
  %.028.i.us.i = phi i64 [ %indvars.iv.i.us.i, %bb.g ], [ %indvars.iv.i.us.i, %bb.e ], [ %wide.trip.count.i.us.i, %bb.f ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.028.i.us.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 26
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !62
  %i.bv = zext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 548
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

bb.h:                                             ; preds = %Classifier_match.exit.thread.us.i, %CscPrefixMap_find.exit.us.i
  %.084120.us.i = phi i64 [ 0, %CscPrefixMap_find.exit.us.i ], [ %i.co, %Classifier_match.exit.thread.us.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.084120.us.i ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !83
  %.not.i110.us.i = icmp eq i32 %i.cb, %i.bv
  br i1 %.not.i110.us.i, label %bb.i, label %Classifier_match.exit.thread.us.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !86
  %.not7.i.us.i = icmp eq i16 %i.cd, 0
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !87 ; 2 uses
  br i1 %.not7.i.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = tail call i32 @strcasecmp(ptr noundef nonnull readonly %.0.i.us.i, ptr noundef %i.ce) #23
  br label %Classifier_match.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.cg = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i.us.i, ptr noundef nonnull dereferenceable(1) %i.ce) #23
  br label %Classifier_match.exit.us.i

Classifier_match.exit.us.i:                       ; preds = %bb.k, %bb.j
  %.0.shrunk.i.in.us.i = phi i32 [ %i.cg, %bb.k ], [ %i.cf, %bb.j ]
  %.0.shrunk.i.not.us.i = icmp eq i32 %.0.shrunk.i.in.us.i, 0
  br i1 %.0.shrunk.i.not.us.i, label %bb.l, label %Classifier_match.exit.thread.us.i

bb.l:                                             ; preds = %Classifier_match.exit.us.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !89
  store i32 %i.ci, ptr %i.bw, align 4, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !88 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.m, label %Classifier_match.exit.thread.us.i

bb.m:                                             ; preds = %bb.l
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cm
  store i32 %i.by, ptr %i.cn, align 4, !tbaa !51
  br label %Classifier_match.exit.thread.us.i

Classifier_match.exit.thread.us.i:                ; preds = %bb.m, %bb.l, %Classifier_match.exit.us.i, %bb.h
  %i.co = add nuw i64 %.084120.us.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.co, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.h, !llvm.loop !205

._crit_edge.us.i:                                 ; preds = %Classifier_match.exit.thread.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = load i32, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i, %i.cq
  br i1 %i.cr, label %bb.c, label %.preheader.i, !llvm.loop !206

.preheader.i:                                     ; preds = %._crit_edge.us.i, %CscPrefixMap_find.exit.i
  %i.cs = phi i32 [ %4, %CscPrefixMap_find.exit.i ], [ %i.cp, %._crit_edge.us.i ] ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i, label %DwaCompressor_classifyChannels.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  br label %bb.p

.lr.ph123.split.i:                                ; preds = %.lr.ph123.i, %CscPrefixMap_find.exit.i
  %i.cv = phi i32 [ %4, %CscPrefixMap_find.exit.i ], [ %i.aq, %.lr.ph123.i ] ; 3 uses
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %CscPrefixMap_find.exit.i ], [ 0, %.lr.ph123.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [576 x i8], ptr %i.at, i64 %indvars.iv136.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 448
  %i.cy = load ptr, ptr %i.cx, align 32, !tbaa !56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !85 ; 5 uses
  %i.da = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.cz, i32 noundef 46) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.da, null
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %.0.i.i = select i1 %.not.i.i, ptr %i.cz, ptr %i.db
  %i.dc = ptrtoint ptr %.0.i.i to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.cv to i64 ; 2 uses
  %2 = load ptr, ptr %i.am, align 8, !tbaa !201   ; 2 uses
  %3 = icmp eq ptr %2, null
  br i1 %3, label %.lr.ph.i.i._crit_edge, label %.lr.ph201

.lr.ph.i.i._crit_edge:                            ; preds = %.lr.ph.i.backedge.i, %.lr.ph123.split.i
  %.lcssa = phi ptr [ %i.am, %.lr.ph123.split.i ], [ %i.dp, %.lr.ph.i.backedge.i ] ; 5 uses
  store ptr %i.cz, ptr %.lcssa, align 8, !tbaa !201
  %i.df = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !203
  %i.dg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i32 -1, ptr %i.dg, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  store i32 -1, ptr %i.dh, align 4, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store i32 -1, ptr %i.di, align 8, !tbaa !51
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !47
  br label %CscPrefixMap_find.exit.i

.lr.ph201:                                        ; preds = %.lr.ph123.split.i, %.lr.ph.i.backedge.i
  %i.dj = phi ptr [ %i.dq, %.lr.ph.i.backedge.i ], [ %2, %.lr.ph123.split.i ]
  %i.dk = phi ptr [ %i.dp, %.lr.ph.i.backedge.i ], [ %i.am, %.lr.ph123.split.i ]
  %indvars.iv.i.i200 = phi i64 [ %indvars.iv.i.be.i, %.lr.ph.i.backedge.i ], [ 0, %.lr.ph123.split.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !203
  %i.dn = icmp eq i64 %i.de, %i.dm
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph201
  %i.do = tail call i32 @strncmp(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dj, i64 noundef %i.de) #23
  %.not.i109.i = icmp eq i32 %i.do, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i200, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond126.i = select i1 %.not.i109.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond126.i, label %CscPrefixMap_find.exit.i, label %.lr.ph.i.backedge.i

bb.o:                                             ; preds = %.lr.ph201
  %indvars.iv.next.i.old.i = add nuw nsw i64 %indvars.iv.i.i200, 1 ; 2 uses
  %exitcond.not.i.old.i = icmp eq i64 %indvars.iv.next.i.old.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.old.i, label %CscPrefixMap_find.exit.i, label %.lr.ph.i.backedge.i

.lr.ph.i.backedge.i:                              ; preds = %bb.o, %bb.n
  %indvars.iv.i.be.i = phi i64 [ %indvars.iv.next.i.old.i, %bb.o ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i.be.i ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !201 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.lr.ph.i.i._crit_edge, label %.lr.ph201, !llvm.loop !204

CscPrefixMap_find.exit.i:                         ; preds = %bb.o, %bb.n, %.lr.ph.i.i._crit_edge
  %4 = phi i32 [ %.pre.i, %.lr.ph.i.i._crit_edge ], [ %i.cv, %bb.n ], [ %i.cv, %bb.o ] ; 3 uses
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %i.ds = sext i32 %4 to i64
  %i.dt = icmp slt i64 %indvars.iv.next137.i, %i.ds
  br i1 %i.dt, label %.lr.ph123.split.i, label %.preheader.i, !llvm.loop !206

bb.p:                                             ; preds = %bb.w, %.lr.ph.i
  %i.du = phi i32 [ %i.cs, %.lr.ph.i ], [ %i.fn, %bb.w ] ; 5 uses
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next140.i, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv139.i ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !51 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !51 ; 3 uses
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !201
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %DwaCompressor_classifyChannels.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = icmp slt i32 %i.dx, 0
  %i.ef = icmp slt i32 %i.dz, 0
  %or.cond.i = select i1 %i.ee, i1 true, i1 %i.ef
  %i.eg = icmp slt i32 %i.eb, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.eg
  br i1 %or.cond3.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = zext nneg i32 %i.dx to i64
  %i.ei = getelementptr inbounds nuw [576 x i8], ptr %i.at, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 448
  %i.ek = load ptr, ptr %i.ej, align 32, !tbaa !56 ; 2 uses
  %i.el = zext nneg i32 %i.dz to i64
  %i.em = getelementptr inbounds nuw [576 x i8], ptr %i.at, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 448
  %i.eo = load ptr, ptr %i.en, align 32, !tbaa !56 ; 2 uses
  %i.ep = zext nneg i32 %i.eb to i64
  %i.eq = getelementptr inbounds nuw [576 x i8], ptr %i.at, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 448
  %i.es = load ptr, ptr %i.er, align 32, !tbaa !56 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !207 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !207
  %.not100.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not100.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !207
  %.not101.i = icmp eq i32 %i.eu, %i.ey
  br i1 %.not101.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !112 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !112
  %.not103.i = icmp eq i32 %i.fa, %i.fc
  br i1 %.not103.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !112
  %.not104.i = icmp eq i32 %i.fa, %i.fe
  br i1 %.not104.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ff = load ptr, ptr %i.ah, align 8, !tbaa !120
  %i.fg = load i32, ptr %i.cu, align 4, !tbaa !119
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [12 x i8], ptr %i.ff, i64 %i.fh ; 3 uses
  store i32 %i.dx, ptr %i.fi, align 4, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.dz, ptr %i.fj, align 4, !tbaa !51
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.eb, ptr %i.fk, align 4, !tbaa !51
  %i.fl = load i32, ptr %i.cu, align 4, !tbaa !119
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.cu, align 4, !tbaa !119
  %.pre142.i = load i32, ptr %i.ac, align 8, !tbaa !47
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.fn = phi i32 [ %.pre142.i, %bb.v ], [ %i.du, %bb.q ], [ %i.du, %bb.u ], [ %i.du, %bb.t ], [ %i.du, %bb.s ], [ %i.du, %bb.r ] ; 2 uses
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next140.i, %i.fo
  br i1 %i.fp, label %bb.p, label %DwaCompressor_classifyChannels.exit, !llvm.loop !208

DwaCompressor_classifyChannels.exit:              ; preds = %bb.p, %bb.w, %bb.b, %.preheader.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !44
  tail call void %i.fr(ptr noundef nonnull %i.am) #21, !inline_history !200
  %i.fs = load i32, ptr %i.ac, align 8, !tbaa !47 ; 2 uses
  %.not158205 = icmp sgt i32 %i.fs, 0
  br i1 %.not158205, label %.lr.ph211, label %._crit_edge212

.lr.ph211:                                        ; preds = %DwaCompressor_classifyChannels.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fu = shl nsw i64 %i.v, 1
  %i.fv = mul i64 %i.q, 252
  %i.fw = add i64 %i.fv, 65536
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %.0123199 = phi i64 [ 0, %.lr.ph ], [ %i.gb, %bb.x ] ; 2 uses
  %.0136198 = phi i64 [ 0, %.lr.ph ], [ %i.ga, %bb.x ]
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.0123199
  %.val = load ptr, ptr %i.fx, align 8, !tbaa !87
  %i.fy = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val) #23
  %i.fz = add i64 %.0136198, 3
  %i.ga = add i64 %i.fz, %i.fy                    ; 2 uses
  %i.gb = add nuw i64 %.0123199, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gb, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !209

bb.y:                                             ; preds = %.lr.ph211, %bb.ac
  %i.gc = phi i32 [ %i.fs, %.lr.ph211 ], [ %i.hb, %bb.ac ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.gd = phi i64 [ 0, %.lr.ph211 ], [ %i.hc, %bb.ac ] ; 3 uses
  %.0125209 = phi i64 [ 0, %.lr.ph211 ], [ %.2127.ph, %bb.ac ] ; 3 uses
  %.0128208 = phi i64 [ 0, %.lr.ph211 ], [ %.2130.ph, %bb.ac ] ; 3 uses
  %.0132207 = phi i64 [ 0, %.lr.ph211 ], [ %.2134.ph, %bb.ac ] ; 3 uses
  %.1137206 = phi i64 [ %.0136.lcssa, %.lr.ph211 ], [ %.3139.ph, %bb.ac ] ; 3 uses
  %i.ge = phi i64 [ 0, %.lr.ph211 ], [ %i.hd, %bb.ac ] ; 3 uses
  %i.gf = load ptr, ptr %i.ft, align 8, !tbaa !46
  %i.gg = getelementptr inbounds nuw [576 x i8], ptr %i.gf, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 448
  %i.gi = load ptr, ptr %i.gh, align 32, !tbaa !56 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 548
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !61
  switch i32 %i.gk, label %DwaCompressor_classifyChannels.exit.thread [
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 0, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.gl = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.r) #21
  %i.gm = tail call noundef i64 @llvm.umax.i64(i64 %i.fw, i64 %i.gl)
  %i.gn = add i64 %i.gm, %.1137206
  %i.go = add i64 %.0132207, 1
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !47
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 25
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !100
  %i.gr = sext i8 %i.gq to i64
  %i.gs = mul i64 %i.fu, %i.gr                    ; 2 uses
  %i.gt = add i64 %i.gs, %.0125209
  %i.gu = add i64 %i.gs, %i.gd
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 25
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !100
  %i.gx = sext i8 %i.gw to i64
  %i.gy = mul i64 %i.v, %i.gx                     ; 2 uses
  %i.gz = add i64 %i.gy, %.0128208
  %i.ha = add i64 %i.gy, %i.ge
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.hb = phi i32 [ %i.gc, %bb.ab ], [ %i.gc, %bb.aa ], [ %.pre, %bb.z ] ; 2 uses
  %i.hc = phi i64 [ %i.gd, %bb.ab ], [ %i.gu, %bb.aa ], [ %i.gd, %bb.z ] ; 2 uses
  %i.hd = phi i64 [ %i.ha, %bb.ab ], [ %i.ge, %bb.aa ], [ %i.ge, %bb.z ] ; 2 uses
  %.3139.ph = phi i64 [ %.1137206, %bb.ab ], [ %.1137206, %bb.aa ], [ %i.gn, %bb.z ] ; 2 uses
  %.2134.ph = phi i64 [ %.0132207, %bb.ab ], [ %.0132207, %bb.aa ], [ %i.go, %bb.z ] ; 2 uses
  %.2130.ph = phi i64 [ %i.gz, %bb.ab ], [ %.0128208, %bb.aa ], [ %.0128208, %bb.z ] ; 2 uses
  %.2127.ph = phi i64 [ %.0125209, %bb.ab ], [ %i.gt, %bb.aa ], [ %.0125209, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = sext i32 %i.hb to i64
  %.not158 = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %.not158, label %bb.y, label %._crit_edge212, !llvm.loop !210

._crit_edge212:                                   ; preds = %bb.ac, %DwaCompressor_classifyChannels.exit
  %.sroa.10.0 = phi i64 [ 0, %DwaCompressor_classifyChannels.exit ], [ %i.hc, %bb.ac ] ; 3 uses
  %.lcssa203 = phi i64 [ 0, %DwaCompressor_classifyChannels.exit ], [ %i.hd, %bb.ac ] ; 2 uses
  %.1137.lcssa = phi i64 [ %.0136.lcssa, %DwaCompressor_classifyChannels.exit ], [ %.3139.ph, %bb.ac ]
  %.0132.lcssa = phi i64 [ 0, %DwaCompressor_classifyChannels.exit ], [ %.2134.ph, %bb.ac ] ; 2 uses
  %.0128.lcssa = phi i64 [ 0, %DwaCompressor_classifyChannels.exit ], [ %.2130.ph, %bb.ac ]
  %.0125.lcssa = phi i64 [ 0, %DwaCompressor_classifyChannels.exit ], [ %.2127.ph, %bb.ac ] ; 5 uses
  %i.hf = tail call i64 @exr_compress_max_buffer_size(i64 noundef %.0125.lcssa) #21
  %i.hg = tail call i64 @exr_compress_max_buffer_size(i64 noundef %.0128.lcssa) #21
  %i.hh = mul i64 %.0132.lcssa, %i.s              ; 4 uses
  %i.hi = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.hh) #21
  %i.hj = add i64 %.1137.lcssa, 88
  %i.hk = add i64 %i.hj, %i.hf
  %i.hl = add i64 %i.hk, %i.hg
  %i.hm = add i64 %i.hl, %i.hi
  store i64 %i.hm, ptr %1, align 8, !tbaa !78
  %i.hn = mul i64 %.0132.lcssa, %i.r              ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !158
  %i.hq = icmp ugt i64 %i.hn, %i.hp
  br i1 %i.hq, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge212
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !158
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
end_hunk_0
