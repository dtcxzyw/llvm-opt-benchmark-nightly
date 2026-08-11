inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 103
begin_hunk_0_@LumaResidualCoding:bb.a
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 12880
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %i.gj, i64 32, i1 false)
  %i.gk = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 6440
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !198
  %i.gn = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 180
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !34
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.gm, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !146
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !33
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 12912
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i64 32, i1 false)
  %i.gz = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6440
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !198
  %i.hc = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !34
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr [8 x i8], ptr %i.hb, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !146
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 176
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !33
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 12944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.hn, i64 32, i1 false)
  %i.ho = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6440
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !198
  %i.hr = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 180
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !34
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %i.hq, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 88
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !146
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !33
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 12976
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i64 32, i1 false)
  %i.id = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 6440
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !198
  %i.ig = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 180
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !34
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %i.if, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 96
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !146
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 176
  %i.io = load i32, ptr %i.in, align 8, !tbaa !33
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 13008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i64 32, i1 false)
  %i.is = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 6440
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !198
  %i.iv = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 180
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !34
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [8 x i8], ptr %i.iu, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 104
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !146
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 176
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !33
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.jb, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 13040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false)
  %i.jh = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 6440
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !198
  %i.jk = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 180
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !34
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr [8 x i8], ptr %i.jj, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 112
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !146
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 176
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !33
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 13072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ju, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, i64 32, i1 false)
  %i.jw = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 6440
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !198
  %i.jz = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 180
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !34
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.jy, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 120
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !146
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 176
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !33
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.kf, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jz, i64 13104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %i.kk, i64 32, i1 false)
  %i.kl = load ptr, ptr @img, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !55
  %i.ko = icmp eq i32 %i.kn, 3
  br i1 %i.ko, label %.preheader34.preheader, label %.loopexit

.preheader34.preheader:                           ; preds = %bb.f
  tail call void @copyblock_sp(i32 noundef 0, i32 noundef 0) #17
  tail call void @copyblock_sp(i32 noundef 0, i32 noundef 4) #17
  tail call void @copyblock_sp(i32 noundef 4, i32 noundef 0) #17
  tail call void @copyblock_sp(i32 noundef 4, i32 noundef 4) #17
  tail call void @copyblock_sp(i32 noundef 8, i32 noundef 0) #17
  tail call void @copyblock_sp(i32 noundef 8, i32 noundef 4) #17
  tail call void @copyblock_sp(i32 noundef 12, i32 noundef 0) #17
  tail call void @copyblock_sp(i32 noundef 12, i32 noundef 4) #17
  tail call void @copyblock_sp(i32 noundef 0, i32 noundef 8) #17
  tail call void @copyblock_sp(i32 noundef 0, i32 noundef 12) #17
  tail call void @copyblock_sp(i32 noundef 4, i32 noundef 8) #17
  tail call void @copyblock_sp(i32 noundef 4, i32 noundef 12) #17
  tail call void @copyblock_sp(i32 noundef 8, i32 noundef 8) #17
  tail call void @copyblock_sp(i32 noundef 8, i32 noundef 12) #17
  tail call void @copyblock_sp(i32 noundef 12, i32 noundef 8) #17
  tail call void @copyblock_sp(i32 noundef 12, i32 noundef 12) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader34.preheader, %bb.f, %bb.e, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @TransformDecision(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.f = icmp eq i32 %0, -1                       ; 2 uses
  %i.g = add nuw nsw i32 %0, 1
  %.048 = select i1 %i.f, i32 0, i32 %0           ; 4 uses
  %.047 = select i1 %i.f, i32 4, i32 %i.g         ; 2 uses
  %i.h = icmp slt i32 %.048, %.047
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = shl i32 %.048, 3
  %i.j = shl i32 %.048, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv88 = phi i32 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next89, %bb.b ] ; 2 uses
  %indvars.iv = phi i32 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next84, %bb.b ] ; 2 uses
  %.04570 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ev, %bb.b ]
  %.04669 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ey, %bb.b ]
  %.14968 = phi i32 [ %.048, %.lr.ph.preheader ], [ %i.ez, %bb.b ] ; 3 uses
  %i.k = and i32 %indvars.iv88, -8
  %i.l = sext i32 %i.k to i64
  %.lobit = and i32 %indvars.iv, 8                ; 2 uses
  %i.m = zext nneg i32 %.lobit to i64             ; 6 uses
  call void @SetModesAndRefframe(i32 noundef %.14968, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.n = shl i32 %.14968, 2
  %i.o = load i16, ptr %i.c, align 2, !tbaa !179
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.s = load i16, ptr %i.d, align 2, !tbaa !179  ; 2 uses
  %i.t = load i16, ptr %i.e, align 2, !tbaa !179  ; 2 uses
  %i.u = or i32 %i.n, 4
  %i.v = sext i32 %i.u to i64
  %indvars.iv.next86 = or disjoint i64 %i.m, 4    ; 6 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next86 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %indvars.iv90 = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next91, %.preheader ] ; 12 uses
  %.167.a = phi i32 [ %.04570, %.lr.ph ], [ %i.ev, %.preheader ]
  %.05265 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3.3.1, %.preheader ] ; 6 uses
  %i.x = trunc nsw i64 %indvars.iv90 to i32       ; 2 uses
  %i.y = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %indvars.iv90, %i.ab        ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.m, %i.af                 ; 4 uses
  tail call void @LumaPrediction4x4(i32 noundef %.lobit, i32 noundef %i.x, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i16 noundef signext %i.s, i16 noundef signext %i.t)
  %i.ah = load ptr, ptr @imgY_org, align 8, !tbaa !41 ; 4 uses
  %i.ai = load ptr, ptr @img, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12624 ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !146
  %i.am = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.ag
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.m
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @diff64, i64 %.05265 ; 2 uses
  %i.aq = load <4 x i16>, ptr %i.an, align 2, !tbaa !179
  %i.ar = zext <4 x i16> %i.aq to <4 x i32>
  %i.as = load <4 x i16>, ptr %i.ao, align 2, !tbaa !179
  %i.at = zext <4 x i16> %i.as to <4 x i32>
  %i.au = sub nsw <4 x i32> %i.ar, %i.at
  store <4 x i32> %i.au, ptr %i.ap, align 16, !tbaa !4
  %i.av = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !146
  %i.ay = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ag
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.m
  %i.bc = getelementptr [4 x i8], ptr @diff64, i64 %.05265
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load <4 x i16>, ptr %i.ba, align 2, !tbaa !179
  %i.bf = zext <4 x i16> %i.be to <4 x i32>
  %i.bg = load <4 x i16>, ptr %i.bb, align 2, !tbaa !179
  %i.bh = zext <4 x i16> %i.bg to <4 x i32>
  %i.bi = sub nsw <4 x i32> %i.bf, %i.bh
  store <4 x i32> %i.bi, ptr %i.bd, align 16, !tbaa !4
  %i.bj = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !146
  %i.bm = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.bn = getelementptr i8, ptr %i.bm, i64 64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.ag
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.m
  %i.bq = getelementptr [4 x i8], ptr @diff64, i64 %.05265
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load <4 x i16>, ptr %i.bo, align 2, !tbaa !179
  %i.bt = zext <4 x i16> %i.bs to <4 x i32>
  %i.bu = load <4 x i16>, ptr %i.bp, align 2, !tbaa !179
  %i.bv = zext <4 x i16> %i.bu to <4 x i32>
  %i.bw = sub nsw <4 x i32> %i.bt, %i.bv
  store <4 x i32> %i.bw, ptr %i.br, align 16, !tbaa !4
  %i.bx = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.ca = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.cb = getelementptr i8, ptr %i.ca, i64 96
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ag
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.m
  %i.ce = getelementptr [4 x i8], ptr @diff64, i64 %.05265
  %i.cf = getelementptr i8, ptr %i.ce, i64 48
  %i.cg = load <4 x i16>, ptr %i.cc, align 2, !tbaa !179
  %i.ch = zext <4 x i16> %i.cg to <4 x i32>
  %i.ci = load <4 x i16>, ptr %i.cd, align 2, !tbaa !179
  %i.cj = zext <4 x i16> %i.ci to <4 x i32>
  %i.ck = sub nsw <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.cf, align 16, !tbaa !4
  %indvars.iv.next.3.3 = or disjoint i64 %.05265, 16 ; 4 uses
  %2 = tail call i32 @distortion4x4(ptr noundef nonnull %i.ap) #17
  %3 = add nsw i32 %2, %.167.a
  %i.cl = load ptr, ptr @img, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 192
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !35
  %i.co = sext i32 %i.cn to i64
  %i.cp = add nsw i64 %indvars.iv.next86, %i.co   ; 4 uses
  tail call void @LumaPrediction4x4(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i16 noundef signext %i.s, i16 noundef signext %i.t)
  %i.cq = load ptr, ptr @imgY_org, align 8, !tbaa !41 ; 4 uses
  %i.cr = load ptr, ptr @img, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12624 ; 4 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.ac
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !146
  %i.cv = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %indvars.iv90
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cp
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next86
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3 ; 2 uses
  %i.cz = load <4 x i16>, ptr %i.cw, align 2, !tbaa !179
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = load <4 x i16>, ptr %i.cx, align 2, !tbaa !179
  %i.dc = zext <4 x i16> %i.db to <4 x i32>
  %i.dd = sub nsw <4 x i32> %i.da, %i.dc
  store <4 x i32> %i.dd, ptr %i.cy, align 16, !tbaa !4
  %i.de = getelementptr [8 x i8], ptr %i.cq, i64 %i.ac
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !146
  %i.dh = getelementptr [32 x i8], ptr %i.cs, i64 %indvars.iv90
  %i.di = getelementptr i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.cp
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next86
  %i.dl = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %i.dn = load <4 x i16>, ptr %i.dj, align 2, !tbaa !179
  %i.do = zext <4 x i16> %i.dn to <4 x i32>
  %i.dp = load <4 x i16>, ptr %i.dk, align 2, !tbaa !179
  %i.dq = zext <4 x i16> %i.dp to <4 x i32>
  %i.dr = sub nsw <4 x i32> %i.do, %i.dq
  store <4 x i32> %i.dr, ptr %i.dm, align 16, !tbaa !4
  %i.ds = getelementptr [8 x i8], ptr %i.cq, i64 %i.ac
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !146
  %i.dv = getelementptr [32 x i8], ptr %i.cs, i64 %indvars.iv90
  %i.dw = getelementptr i8, ptr %i.dv, i64 64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.cp
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %indvars.iv.next86
  %i.dz = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.ea = getelementptr i8, ptr %i.dz, i64 32
  %i.eb = load <4 x i16>, ptr %i.dx, align 2, !tbaa !179
  %i.ec = zext <4 x i16> %i.eb to <4 x i32>
  %i.ed = load <4 x i16>, ptr %i.dy, align 2, !tbaa !179
  %i.ee = zext <4 x i16> %i.ed to <4 x i32>
  %i.ef = sub nsw <4 x i32> %i.ec, %i.ee
  store <4 x i32> %i.ef, ptr %i.ea, align 16, !tbaa !4
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ac
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !146
  %i.ej = getelementptr [32 x i8], ptr %i.cs, i64 %indvars.iv90
  %i.ek = getelementptr i8, ptr %i.ej, i64 96
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.cp
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %indvars.iv.next86
  %i.en = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i16>, ptr %i.el, align 2, !tbaa !179
  %i.eq = zext <4 x i16> %i.ep to <4 x i32>
  %i.er = load <4 x i16>, ptr %i.em, align 2, !tbaa !179
  %i.es = zext <4 x i16> %i.er to <4 x i32>
  %i.et = sub nsw <4 x i32> %i.eq, %i.es
  store <4 x i32> %i.et, ptr %i.eo, align 16, !tbaa !4
  %indvars.iv.next.3.3.1 = add nuw nsw i64 %.05265, 32
  %i.eu = tail call i32 @distortion4x4(ptr noundef nonnull %i.cy) #17
  %i.ev = add nsw i32 %i.eu, %3                   ; 3 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 4
  %i.ew = icmp slt i64 %indvars.iv90, %i.v
  br i1 %i.ew, label %.preheader, label %bb.b, !llvm.loop !209

bb.b:                                             ; preds = %.preheader
  %i.ex = tail call i32 @distortion8x8(ptr noundef nonnull @diff64) #17
  %i.ey = add nsw i32 %i.ex, %.04669              ; 2 uses
  %i.ez = add i32 %.14968, 1                      ; 2 uses
  %indvars.iv.next84 = add i32 %indvars.iv, 8
  %indvars.iv.next89 = add i32 %indvars.iv88, 4
  %exitcond.not = icmp eq i32 %i.ez, %.047
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.046.lcssa = phi i32 [ 0, %bb.a ], [ %i.ey, %bb.b ] ; 2 uses
  %.045.lcssa = phi i32 [ 0, %bb.a ], [ %i.ev, %bb.b ] ; 2 uses
  %i.fa = load ptr, ptr @input, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 5100
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !61
  %i.fd = icmp eq i32 %i.fc, 2
  %i.fe = icmp slt i32 %.046.lcssa, %.045.lcssa
  %or.cond = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ff = load i32, ptr %1, align 4, !tbaa !4
  %i.fg = sub i32 %.045.lcssa, %.046.lcssa
  %i.fh = add i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %1, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare i32 @distortion4x4(ptr noundef) local_unnamed_addr #5

declare i32 @distortion8x8(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @IntraChromaPrediction4x4(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = sext i32 %1 to i64                       ; 8 uses
  %i.k = sext i32 %0 to i64                       ; 4 uses
  %i.l = sext i32 %i.i to i64                     ; 4 uses
  %i.m = sext i32 %2 to i64                       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12624
  %i.o = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8528
  %i.r = getelementptr inbounds [2048 x i8], ptr %i.q, i64 %i.k
  %i.s = getelementptr inbounds [512 x i8], ptr %i.r, i64 %i.l
  %i.t = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.j
  %i.v = load i64, ptr %i.u, align 2
  store i64 %i.v, ptr %i.p, align 2
  %indvars.iv.next = add nsw i64 %i.m, 1          ; 2 uses
  %i.w = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12624
  %i.y = getelementptr inbounds [32 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.z = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8528
  %i.ab = getelementptr inbounds [2048 x i8], ptr %i.aa, i64 %i.k
  %i.ac = getelementptr inbounds [512 x i8], ptr %i.ab, i64 %i.l
  %i.ad = getelementptr inbounds [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.j
  %i.af = load i64, ptr %i.ae, align 2
  store i64 %i.af, ptr %i.z, align 2
  %indvars.iv.next.1 = add nsw i64 %i.m, 2        ; 2 uses
  %i.ag = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12624
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %indvars.iv.next.1
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8528
  %i.al = getelementptr inbounds [2048 x i8], ptr %i.ak, i64 %i.k
  %i.am = getelementptr inbounds [512 x i8], ptr %i.al, i64 %i.l
  %i.an = getelementptr inbounds [32 x i8], ptr %i.am, i64 %indvars.iv.next.1
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.j
  %i.ap = load i64, ptr %i.ao, align 2
  store i64 %i.ap, ptr %i.aj, align 2
  %indvars.iv.next.2 = add nsw i64 %i.m, 3        ; 2 uses
  %i.aq = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12624
  %i.as = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %indvars.iv.next.2
  %i.at = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8528
  %i.av = getelementptr inbounds [2048 x i8], ptr %i.au, i64 %i.k
  %i.aw = getelementptr inbounds [512 x i8], ptr %i.av, i64 %i.l
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.j
  %i.az = load i64, ptr %i.ay, align 2
  store i64 %i.az, ptr %i.at, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChromaPrediction4x4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 4                        ; 4 uses
  %i.b = add nsw i32 %2, 4                        ; 5 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !8    ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr @active_pps, align 8, !tbaa !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load i32, ptr %i.m, align 8, !tbaa !180
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  switch i32 %i.p, label %bb.c [
    i32 0, label %bb.e
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !181
  %.not158 = icmp eq i32 %i.r, 0
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !55
  %i.u = icmp eq i32 %i.t, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  %i.v = phi i1 [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.c ], [ %i.u, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.x = load i16, ptr %i.w, align 8, !tbaa !182  ; 2 uses
  %i.y = icmp ne i16 %i.x, 0
  %i.z = or i16 %7, %6
  %i.aa = icmp eq i16 %i.z, 0
  %or.cond5 = and i1 %i.aa, %i.y
  %i.ab = icmp eq i32 %3, 2                       ; 3 uses
  %i.ac = icmp eq i32 %4, 1
  %i.ad = and i1 %i.ac, %or.cond5
  %i.ae = icmp eq i32 %5, 1
  %i.af = and i1 %i.ae, %i.ad
  %or.cond11 = and i1 %i.ab, %i.af
  br i1 %or.cond11, label %.thread161, label %bb.f

.thread161:                                       ; preds = %bb.e
  %i.ag = icmp eq i16 %i.x, 1
  %.in.v = select i1 %i.ag, i64 14392, i64 14400
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.ah = load ptr, ptr %.in, align 8, !tbaa !183
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i32 %3, -1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !58
  %i.al = sext i32 %1 to i64                      ; 8 uses
  %i.am = sext i32 %0 to i64                      ; 4 uses
  %i.an = sext i32 %i.ak to i64                   ; 4 uses
  %i.ao = sext i32 %2 to i64                      ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12624
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8528
  %i.at = getelementptr inbounds [2048 x i8], ptr %i.as, i64 %i.am
  %i.au = getelementptr inbounds [512 x i8], ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds [32 x i8], ptr %i.au, i64 %i.ao
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.al
  %i.ax = load i64, ptr %i.aw, align 2
  store i64 %i.ax, ptr %i.ar, align 2
  %indvars.iv.next.i = add nsw i64 %i.ao, 1       ; 2 uses
  %i.ay = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12624
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.az, i64 %indvars.iv.next.i
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.al
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8528
  %i.bd = getelementptr inbounds [2048 x i8], ptr %i.bc, i64 %i.am
  %i.be = getelementptr inbounds [512 x i8], ptr %i.bd, i64 %i.an
end_hunk_0
