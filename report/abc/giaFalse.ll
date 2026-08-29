Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFalse?download=true
inline.NumInlined: 355
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Gia_ManCheckFalseOne:bb.a
  %.val189 = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val189, i64 %indvars.iv298
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %.val193 = load ptr, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [12 x i8], ptr %.val193, i64 %i.dw ; 7 uses
  %.not175 = icmp eq ptr %.val193, null
  br i1 %.not175, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val231 = load i64, ptr %i.dx, align 4         ; 5 uses
  %i.dy = and i64 %.val231, 2147483648
  %.not.i244 = icmp ne i64 %i.dy, 0
  %i.dz = and i64 %.val231, 536870911             ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 536870911
  %narrow.i.not = or i1 %.not.i244, %i.ea
  br i1 %narrow.i.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = add i32 %i.ec, %i.di
  %i.ee = sub nsw i64 0, %i.dz
  %i.ef = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !33
  %i.ei = add i32 %i.eh, %i.di
  %i.ej = lshr i64 %.val231, 32
  %i.ek = and i64 %i.ej, 536870911
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !33
  %i.ep = add i32 %i.eo, %i.di
  %i.eq = trunc i64 %.val231 to i32
  %i.er = lshr i32 %i.eq, 29
  %i.es = and i32 %i.er, 1
  %i.et = lshr i64 %.val231, 61
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.ew = shl nsw i32 %i.ed, 1                    ; 2 uses
  %i.ex = or disjoint i32 %i.ew, 1                ; 2 uses
  store i32 %i.ex, ptr %i.h, align 4, !tbaa !12
  %i.ey = shl nsw i32 %i.ei, 1
  %i.ez = or disjoint i32 %i.ey, %i.es            ; 2 uses
  store i32 %i.ez, ptr %i.do, align 4, !tbaa !12
  %i.fa = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dp) #20 ; 0 uses
  store i32 %i.ex, ptr %i.h, align 4, !tbaa !12
  %i.fb = shl nsw i32 %i.ep, 1
  %i.fc = or disjoint i32 %i.fb, %i.ev            ; 2 uses
  store i32 %i.fc, ptr %i.do, align 4, !tbaa !12
  %i.fd = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dp) #20 ; 0 uses
  store i32 %i.ew, ptr %i.h, align 4, !tbaa !12
  %i.fe = xor i32 %i.ez, 1
  store i32 %i.fe, ptr %i.do, align 4, !tbaa !12
  %i.ff = xor i32 %i.fc, 1
  store i32 %i.ff, ptr %i.dp, align 4, !tbaa !12
  %i.fg = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dq) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.fh = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.fi = add i32 %i.fh, %i.dl
  %i.fj = load i64, ptr %i.dx, align 4            ; 4 uses
  %i.fk = and i64 %i.fj, 536870911
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33
  %i.fp = add i32 %i.fo, %i.dl
  %i.fq = lshr i64 %i.fj, 32
  %i.fr = and i64 %i.fq, 536870911
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !33
  %i.fw = add i32 %i.fv, %i.dl
  %i.fx = trunc i64 %i.fj to i32
  %i.fy = lshr i32 %i.fx, 29
  %i.fz = and i32 %i.fy, 1
  %i.ga = lshr i64 %i.fj, 61
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = and i32 %i.gb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.gd = shl nsw i32 %i.fi, 1                    ; 2 uses
  %i.ge = or disjoint i32 %i.gd, 1                ; 2 uses
  store i32 %i.ge, ptr %i.g, align 4, !tbaa !12
  %i.gf = shl nsw i32 %i.fp, 1
  %i.gg = or disjoint i32 %i.fz, %i.gf            ; 2 uses
  store i32 %i.gg, ptr %i.dr, align 4, !tbaa !12
  %i.gh = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ds) #20 ; 0 uses
  store i32 %i.ge, ptr %i.g, align 4, !tbaa !12
  %i.gi = shl nsw i32 %i.fw, 1
  %i.gj = or disjoint i32 %i.gi, %i.gc            ; 2 uses
  store i32 %i.gj, ptr %i.dr, align 4, !tbaa !12
  %i.gk = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ds) #20 ; 0 uses
  store i32 %i.gd, ptr %i.g, align 4, !tbaa !12
  %i.gl = xor i32 %i.gg, 1
  store i32 %i.gl, ptr %i.dr, align 4, !tbaa !12
  %i.gm = xor i32 %i.gj, 1
  store i32 %i.gm, ptr %i.ds, align 4, !tbaa !12
  %i.gn = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.dt) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.val208.pre = load i32, ptr %i.bc, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.val208 = phi i32 [ %.val208317, %bb.j ], [ %.val208.pre, %bb.k ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.go = sext i32 %.val208 to i64
  %i.gp = icmp slt i64 %indvars.iv.next299, %i.go
  br i1 %i.gp, label %bb.i, label %.critedge2, !llvm.loop !72

.critedge2:                                       ; preds = %bb.i, %bb.l, %bb.h
  %i.gq = icmp sgt i32 %.val213, 0
  br i1 %i.gq, label %.lr.ph284, label %.critedge4

.lr.ph284:                                        ; preds = %.critedge2
  %.val188 = load ptr, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.gu = shl nuw nsw i32 %.val213, 1             ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.hf = shl i32 %.val213, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.hl = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.hm = zext nneg i32 %.val213 to i64           ; 2 uses
  %wide.trip.count304 = zext nneg i32 %.val213 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph284, %Vec_IntPush.exit
  %i.hn = phi ptr [ %i.ag, %.lr.ph284 ], [ %i.nz, %Vec_IntPush.exit ] ; 7 uses
  %i.ho = phi i32 [ %spec.store.select.i, %.lr.ph284 ], [ %i.oa, %Vec_IntPush.exit ] ; 7 uses
  %i.hp = phi i32 [ 0, %.lr.ph284 ], [ %i.ob, %Vec_IntPush.exit ] ; 4 uses
  %indvars.iv301 = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next302, %Vec_IntPush.exit ] ; 10 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val188, i64 %indvars.iv301
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !12
  %.val192 = load ptr, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %.idx270 = mul nsw i64 %i.hs, 12                ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %.val192, i64 %.idx270 ; 8 uses
  %.not176 = icmp eq ptr %.val192, null
  br i1 %.not176, label %.critedge4.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val230 = load i64, ptr %i.ht, align 4         ; 9 uses
  %i.hu = and i64 %.val230, 2147483648
  %.not.i245 = icmp ne i64 %i.hu, 0
  %i.hv = and i64 %.val230, 536870911             ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 536870911
  %narrow.i246.not = or i1 %.not.i245, %i.hw
  br i1 %narrow.i246.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hx = add nsw i64 %indvars.iv301, -1          ; 5 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %.val188, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12
  %i.ia = sext i32 %i.hz to i64
  %.idx = mul nsw i64 %i.ia, 12                   ; 2 uses
  %.idx271 = mul nsw i64 %i.hv, -12               ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ht, i64 %.idx271
  %i.ic = add nsw i64 %.idx271, %.idx270
  %i.id = icmp eq i64 %.idx, %i.ic
  br i1 %i.id, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ie = add nuw nsw i64 %indvars.iv301, %i.hm
  %i.if = lshr i64 %.val230, 32
  %i.ig = and i64 %i.if, 536870911
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr inbounds [12 x i8], ptr %i.ht, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !33
  %i.il = add i32 %i.ik, %i.di
  %i.im = trunc i64 %.val230 to i32
  %i.in = lshr i32 %i.im, 29
  %i.io = and i32 %i.in, 1
  %i.ip = lshr i64 %.val230, 61
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.is = shl nuw nsw i64 %i.ie, 1                ; 2 uses
  %i.it = trunc i64 %i.is to i32
  %i.iu = or disjoint i32 %i.it, 1                ; 3 uses
  store i32 %i.iu, ptr %i.f, align 4, !tbaa !12
  %i.iv = trunc i64 %i.hx to i32
  %.tr355 = add i32 %.val213, %i.iv
  %i.iw = shl nsw i32 %.tr355, 1
  %i.ix = or disjoint i32 %i.io, %i.iw            ; 2 uses
  store i32 %i.ix, ptr %i.gy, align 4, !tbaa !12
  %i.iy = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.gz) #20 ; 0 uses
  store i32 %i.iu, ptr %i.f, align 4, !tbaa !12
  %i.iz = shl nsw i32 %i.il, 1
  %i.ja = or disjoint i32 %i.iz, %i.ir            ; 2 uses
  store i32 %i.ja, ptr %i.gy, align 4, !tbaa !12
  %i.jb = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.gz) #20 ; 0 uses
  %i.jc = trunc nsw i64 %i.is to i32              ; 2 uses
  store i32 %i.jc, ptr %i.f, align 4, !tbaa !12
  %i.jd = xor i32 %i.ix, 1
  store i32 %i.jd, ptr %i.gy, align 4, !tbaa !12
  %i.je = xor i32 %i.ja, 1
  store i32 %i.je, ptr %i.gz, align 4, !tbaa !12
  %i.jf = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ha) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.jg = add nuw nsw i64 %indvars.iv301, %i.hl
  %i.jh = load i64, ptr %i.ht, align 4            ; 3 uses
  %i.ji = lshr i64 %i.jh, 32
  %i.jj = and i64 %i.ji, 536870911
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds [12 x i8], ptr %i.ht, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !33
  %i.jo = add i32 %i.jn, %i.dl
  %i.jp = trunc i64 %i.jh to i32
  %i.jq = lshr i32 %i.jp, 29
  %i.jr = and i32 %i.jq, 1
  %i.js = lshr i64 %i.jh, 61
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = and i32 %i.jt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.jv = shl nuw nsw i64 %i.jg, 1                ; 2 uses
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = or disjoint i32 %i.jw, 1                ; 2 uses
  store i32 %i.jx, ptr %i.e, align 4, !tbaa !12
  %i.jy = trunc i64 %i.hx to i32
  %.tr356 = add i32 %i.gu, %i.jy
  %i.jz = shl nsw i32 %.tr356, 1
  %i.ka = or disjoint i32 %i.jr, %i.jz            ; 2 uses
  store i32 %i.ka, ptr %i.hb, align 4, !tbaa !12
  %i.kb = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.hc) #20 ; 0 uses
  store i32 %i.jx, ptr %i.e, align 4, !tbaa !12
  %i.kc = shl nsw i32 %i.jo, 1
  %i.kd = or disjoint i32 %i.ju, %i.kc            ; 2 uses
  store i32 %i.kd, ptr %i.hb, align 4, !tbaa !12
  %i.ke = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.hc) #20 ; 0 uses
  %i.kf = trunc nsw i64 %i.jv to i32
  store i32 %i.kf, ptr %i.e, align 4, !tbaa !12
  %i.kg = xor i32 %i.ka, 1
  store i32 %i.kg, ptr %i.hb, align 4, !tbaa !12
  %i.kh = xor i32 %i.kd, 1
  store i32 %i.kh, ptr %i.hc, align 4, !tbaa !12
  %i.ki = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.hd) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.kj = lshr i64 %.val230, 32
  %i.kk = and i64 %i.kj, 536870911
  %.idx272 = mul nsw i64 %i.kk, -12
  %i.kl = add nsw i64 %.idx272, %.idx270
  %i.km = icmp eq i64 %.idx, %i.kl
  %i.kn = add nuw nsw i64 %indvars.iv301, %i.hm   ; 2 uses
  br i1 %i.km, label %bb.r, label %._crit_edge327

._crit_edge327:                                   ; preds = %bb.q
  %.pre333 = shl nuw nsw i64 %i.kn, 1             ; 2 uses
  %i.ko = trunc i64 %.pre333 to i32
  %.pre337 = or disjoint i32 %i.ko, 1
  %.pre339 = trunc nsw i64 %.pre333 to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !33
  %i.kr = add i32 %i.kq, %i.di
  %i.ks = trunc i64 %.val230 to i32
  %i.kt = lshr i32 %i.ks, 29
  %i.ku = and i32 %i.kt, 1
  %i.kv = lshr i64 %.val230, 61
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ky = shl nuw nsw i64 %i.kn, 1                ; 2 uses
  %i.kz = trunc i64 %i.ky to i32
  %i.la = or disjoint i32 %i.kz, 1                ; 3 uses
  store i32 %i.la, ptr %i.d, align 4, !tbaa !12
  %i.lb = shl nsw i32 %i.kr, 1
  %i.lc = or disjoint i32 %i.lb, %i.ku            ; 2 uses
  store i32 %i.lc, ptr %i.gr, align 4, !tbaa !12
  %i.ld = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gs) #20 ; 0 uses
  store i32 %i.la, ptr %i.d, align 4, !tbaa !12
  %i.le = trunc i64 %i.hx to i32
  %.tr = add i32 %.val213, %i.le
  %i.lf = shl nsw i32 %.tr, 1
  %i.lg = or disjoint i32 %i.kx, %i.lf            ; 2 uses
  store i32 %i.lg, ptr %i.gr, align 4, !tbaa !12
  %i.lh = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gs) #20 ; 0 uses
  %i.li = trunc nsw i64 %i.ky to i32              ; 2 uses
  store i32 %i.li, ptr %i.d, align 4, !tbaa !12
  %i.lj = xor i32 %i.lc, 1
  store i32 %i.lj, ptr %i.gr, align 4, !tbaa !12
  %i.lk = xor i32 %i.lg, 1
  store i32 %i.lk, ptr %i.gs, align 4, !tbaa !12
  %i.ll = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gt) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.lm = add nuw nsw i64 %indvars.iv301, %i.hl
  %i.ln = load i64, ptr %i.ht, align 4            ; 3 uses
  %i.lo = and i64 %i.ln, 536870911
  %i.lp = sub nsw i64 0, %i.lo
  %i.lq = getelementptr inbounds [12 x i8], ptr %i.ht, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !33
  %i.lt = add i32 %i.ls, %i.dl
  %i.lu = trunc i64 %i.ln to i32
  %i.lv = lshr i32 %i.lu, 29
  %i.lw = and i32 %i.lv, 1
  %i.lx = lshr i64 %i.ln, 61
  %i.ly = trunc nuw nsw i64 %i.lx to i32
  %i.lz = and i32 %i.ly, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ma = shl nuw nsw i64 %i.lm, 1                ; 2 uses
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.mb, 1                ; 2 uses
  store i32 %i.mc, ptr %i.c, align 4, !tbaa !12
  %i.md = shl nsw i32 %i.lt, 1
  %i.me = or disjoint i32 %i.lw, %i.md            ; 2 uses
  store i32 %i.me, ptr %i.gv, align 4, !tbaa !12
  %i.mf = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gw) #20 ; 0 uses
  store i32 %i.mc, ptr %i.c, align 4, !tbaa !12
  %i.mg = trunc i64 %i.hx to i32
  %.tr354 = add i32 %i.gu, %i.mg
  %i.mh = shl nsw i32 %.tr354, 1
  %i.mi = or disjoint i32 %i.lz, %i.mh            ; 2 uses
  store i32 %i.mi, ptr %i.gv, align 4, !tbaa !12
  %i.mj = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gw) #20 ; 0 uses
  %i.mk = trunc nsw i64 %i.ma to i32
  store i32 %i.mk, ptr %i.c, align 4, !tbaa !12
  %i.ml = xor i32 %i.me, 1
  store i32 %i.ml, ptr %i.gv, align 4, !tbaa !12
  %i.mm = xor i32 %i.mi, 1
  store i32 %i.mm, ptr %i.gw, align 4, !tbaa !12
  %i.mn = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gx) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge327, %bb.r, %bb.p
  %.pre-phi340 = phi i32 [ %.pre339, %._crit_edge327 ], [ %i.li, %bb.r ], [ %i.jc, %bb.p ] ; 2 uses
  %.pre-phi338 = phi i32 [ %.pre337, %._crit_edge327 ], [ %i.la, %bb.r ], [ %i.iu, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.mo = shl nuw nsw i64 %indvars.iv301, 1       ; 3 uses
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = or disjoint i32 %i.mp, 1                ; 2 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi338, ptr %i.he, align 4, !tbaa !12
  %i.mr = trunc i64 %i.mo to i32                  ; 3 uses
  %i.ms = add i32 %i.hf, %i.mr                    ; 3 uses
  %i.mt = or disjoint i32 %i.ms, 1                ; 2 uses
  store i32 %i.mt, ptr %i.hg, align 4, !tbaa !12
  %i.mu = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi340, ptr %i.he, align 4, !tbaa !12
  store i32 %i.ms, ptr %i.hg, align 4, !tbaa !12
  %i.mv = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mr, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi338, ptr %i.he, align 4, !tbaa !12
  store i32 %i.ms, ptr %i.hg, align 4, !tbaa !12
  %i.mw = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mr, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi340, ptr %i.he, align 4, !tbaa !12
  store i32 %i.mt, ptr %i.hg, align 4, !tbaa !12
  %i.mx = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.my = and i64 %.val230, 2684354559
  %narrow.i247.not = icmp eq i64 %i.my, 2684354559
  br i1 %narrow.i247.not, label %bb.u, label %._crit_edge328

._crit_edge328:                                   ; preds = %bb.t
  %.pre329 = shl nuw nsw i64 %indvars.iv301, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33 ; 2 uses
  %i.nb = add i32 %i.na, %i.di
  %i.nc = add i32 %i.na, %i.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.nd = shl nuw nsw i64 %indvars.iv301, 1       ; 3 uses
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = or disjoint i32 %i.ne, 1                ; 2 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !12
  %i.ng = shl nsw i32 %i.nb, 1                    ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 1                ; 2 uses
  store i32 %i.nh, ptr %i.hi, align 4, !tbaa !12
  %i.ni = shl nsw i32 %i.nc, 1                    ; 3 uses
  %i.nj = or disjoint i32 %i.ni, 1                ; 2 uses
  store i32 %i.nj, ptr %i.hj, align 4, !tbaa !12
  %i.nk = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !12
  store i32 %i.ng, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.ni, ptr %i.hj, align 4, !tbaa !12
  %i.nl = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  %i.nm = trunc nsw i64 %i.nd to i32              ; 2 uses
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !12
  store i32 %i.nh, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.ni, ptr %i.hj, align 4, !tbaa !12
  %i.nn = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !12
  store i32 %i.ng, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.nj, ptr %i.hj, align 4, !tbaa !12
  %i.no = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge328, %bb.u, %bb.s
  %.pre-phi330 = phi i64 [ %.pre329, %._crit_edge328 ], [ %i.nd, %bb.u ], [ %i.mo, %bb.s ]
  %i.np = icmp eq i32 %i.hp, %i.ho
  br i1 %i.np, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.v
  %i.nq = icmp slt i32 %i.ho, 16
  br i1 %i.nq, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not9.i.i = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.x
  %i.ns = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.aa:                                            ; preds = %bb.w
  %i.nt = icmp samesign ult i32 %i.ho, 1073741823
  %i.nu = shl nuw nsw i32 %i.ho, 1
  %spec.select.i = select i1 %i.nt, i32 %i.nu, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ho, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %.not9.i10.i = icmp eq ptr %i.hn, null
  %i.nv = zext nneg i32 %spec.select.i to i64
  %i.nw = shl nuw nsw i64 %i.nv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nx = call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %i.nw) #21
  br label %Vec_IntPush.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ny = call noalias ptr @malloc(i64 noundef %i.nw) #22
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.v, %bb.aa
  %i.nz = phi ptr [ %i.hn, %bb.v ], [ %i.hn, %bb.aa ], [ %i.ns, %bb.z ], [ %i.nr, %bb.y ], [ %i.nx, %bb.ac ], [ %i.ny, %bb.ad ] ; 3 uses
  %i.oa = phi i32 [ %i.ho, %bb.v ], [ %i.ho, %bb.aa ], [ 16, %bb.z ], [ 16, %bb.y ], [ %spec.select.i, %bb.ac ], [ %spec.select.i, %bb.ad ]
  %i.ob = add nuw nsw i32 %i.hp, 1                ; 2 uses
  %i.oc = zext nneg i32 %i.hp to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oc
  %i.oe = trunc nsw i64 %.pre-phi330 to i32
  store i32 %i.oe, ptr %i.od, align 4, !tbaa !12
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.critedge4.loopexit, label %bb.m, !llvm.loop !73

.critedge4.loopexit:                              ; preds = %Vec_IntPush.exit, %bb.m
  %.val196322 = phi i32 [ %i.ob, %Vec_IntPush.exit ], [ %i.hp, %bb.m ]
  %.val239320 = phi ptr [ %i.nz, %Vec_IntPush.exit ], [ %i.hn, %bb.m ]
  %i.of = sext i32 %.val196322 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.val196 = phi i64 [ %i.of, %.critedge4.loopexit ], [ 0, %.critedge2 ]
  %.val239 = phi ptr [ %.val239320, %.critedge4.loopexit ], [ %i.ag, %.critedge2 ] ; 4 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %.val239, i64 %.val196
  %i.oh = sext i32 %2 to i64
  %i.oi = call i32 @sat_solver_solve(ptr noundef %i.cu, ptr noundef %.val239, ptr noundef %i.og, i64 noundef %i.oh, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, -1
  br i1 %i.oj, label %bb.ae, label %.loopexit275

bb.ae:                                            ; preds = %.critedge4
  %i.ok = getelementptr i8, ptr %i.cu, i64 340
  %.val240 = load i32, ptr %i.ok, align 4, !tbaa !74 ; 5 uses
  %i.ol = getelementptr i8, ptr %i.cu, i64 344
  %.val241 = load ptr, ptr %i.ol, align 8, !tbaa !75 ; 6 uses
  %i.om = sext i32 %.val240 to i64
  %i.on = getelementptr [4 x i8], ptr %.val241, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !12
  %i.oq = ashr i32 %i.op, 1                       ; 2 uses
  %i.or = load i32, ptr %.val241, align 4, !tbaa !12
  %i.os = ashr i32 %i.or, 1                       ; 3 uses
  %i.ot = sub nsw i32 %i.os, %i.oq
  %i.ou = icmp slt i32 %i.ot, 20
  br i1 %i.ou, label %bb.af, label %.loopexit275

bb.af:                                            ; preds = %bb.ae
  %i.ov = call i32 @llvm.smax.i32(i32 %i.oq, i32 1) ; 3 uses
  %i.ow = add nsw i32 %i.ov, -1
  %.not177287 = icmp sgt i32 %i.ow, %i.os
  %.val185.pre = load ptr, ptr %i.ai, align 8, !tbaa !8 ; 3 uses
  br i1 %.not177287, label %.loopexit275, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.af
  %i.ox = getelementptr i8, ptr %3, i64 8
  %.val232 = load ptr, ptr %i.ox, align 8, !tbaa !45 ; 2 uses
  %i.oy = zext nneg i32 %i.ov to i64
  %i.oz = add nsw i64 %i.oy, -1
  %i.pa = zext nneg i32 %i.os to i64              ; 3 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1
  %.not177.not = icmp slt i64 %indvars.iv306, %i.pa
  br i1 %.not177.not, label %bb.ah, label %._crit_edge, !llvm.loop !76

bb.ah:                                            ; preds = %.lr.ph289, %bb.ag
  %indvars.iv306 = phi i64 [ %i.oz, %.lr.ph289 ], [ %indvars.iv.next307, %bb.ag ] ; 3 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %.val185.pre, i64 %indvars.iv306
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !12
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [16 x i8], ptr %.val232, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  %.val.i248 = load i32, ptr %i.pf, align 4, !tbaa !32
  %i.pg = icmp sgt i32 %.val.i248, 0
  br i1 %i.pg, label %.loopexit275, label %bb.ag

end_hunk_0
begin_hunk_1_@Gia_ManCheckOne:bb.a
  %i.kx = add i32 %i.kw, %i.cw
  %i.ky = add nsw i32 %i.kp, %i.jw
  %i.kz = trunc i64 %i.kr to i32
  %i.la = lshr i32 %i.kz, 29
  %i.lb = and i32 %i.la, 1
  %i.lc = lshr i64 %i.kr, 61
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = and i32 %i.ld, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.lf = shl nsw i32 %i.kq, 1                    ; 2 uses
  %i.lg = or disjoint i32 %i.lf, 1                ; 2 uses
  store i32 %i.lg, ptr %i.b, align 4, !tbaa !12
  %i.lh = shl nsw i32 %i.kx, 1
  %i.li = or disjoint i32 %i.lb, %i.lh            ; 2 uses
  store i32 %i.li, ptr %i.gf, align 4, !tbaa !12
  %i.lj = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gg) #20 ; 0 uses
  store i32 %i.lg, ptr %i.b, align 4, !tbaa !12
  %i.lk = shl nsw i32 %i.ky, 1
  %i.ll = or disjoint i32 %i.le, %i.lk            ; 2 uses
  store i32 %i.ll, ptr %i.gf, align 4, !tbaa !12
  %i.lm = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gg) #20 ; 0 uses
  store i32 %i.lf, ptr %i.b, align 4, !tbaa !12
  %i.ln = xor i32 %i.li, 1
  store i32 %i.ln, ptr %i.gf, align 4, !tbaa !12
  %i.lo = xor i32 %i.ll, 1
  store i32 %i.lo, ptr %i.gg, align 4, !tbaa !12
  %i.lp = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge297, %bb.s, %bb.q
  %.pre-phi303 = phi i32 [ %.pre302, %._crit_edge297 ], [ %i.kf, %bb.s ], [ %i.ib, %bb.q ] ; 2 uses
  %.pre-phi301 = phi i32 [ %.pre300, %._crit_edge297 ], [ %i.ke, %bb.s ], [ %i.ia, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.lq = shl nuw nsw i64 %indvars.iv274, 1       ; 2 uses
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = or disjoint i32 %i.lr, 1                ; 2 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi303, ptr %i.go, align 4, !tbaa !12
  %i.lt = shl i32 %.val187289, 2
  %i.lu = trunc i64 %i.lq to i32                  ; 4 uses
  %i.lv = add i32 %i.lt, %i.lu                    ; 3 uses
  %i.lw = or disjoint i32 %i.lv, 1                ; 2 uses
  store i32 %i.lw, ptr %i.gp, align 4, !tbaa !12
  %i.lx = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi301, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lv, ptr %i.gp, align 4, !tbaa !12
  %i.ly = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi303, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lv, ptr %i.gp, align 4, !tbaa !12
  %i.lz = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi301, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lw, ptr %i.gp, align 4, !tbaa !12
  %i.ma = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.mb = icmp eq i32 %i.gu, %i.gt
  br i1 %i.mb, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %i.mc = icmp slt i32 %i.gt, 16
  br i1 %i.mc, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not9.i.i = icmp eq ptr %i.gs, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.md = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gs, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.me = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.u
  %i.mf = icmp samesign ult i32 %i.gt, 1073741823
  %i.mg = shl nuw nsw i32 %i.gt, 1
  %spec.select.i = select i1 %i.mf, i32 %i.mg, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.gt, %spec.select.i
  br i1 %.not.i9.i, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i = icmp eq ptr %i.gs, null
  %i.mh = zext nneg i32 %spec.select.i to i64
  %i.mi = shl nuw nsw i64 %i.mh, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mj = call ptr @realloc(ptr noundef nonnull %i.gs, i64 noundef %i.mi) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.mk = call noalias ptr @malloc(i64 noundef %i.mi) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %storemerge = phi ptr [ %i.me, %bb.x ], [ %i.md, %bb.w ], [ %i.mj, %bb.aa ], [ %i.mk, %bb.ab ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i, %bb.aa ], [ %spec.select.i, %bb.ab ] ; 2 uses
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %i.k, align 8, !tbaa !41
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.t, %bb.y, %Vec_IntGrow.exit11.sink.split.i
  %i.ml = phi ptr [ %i.gr, %bb.t ], [ %i.gr, %bb.y ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.mm = phi i32 [ %i.gt, %bb.t ], [ %i.gt, %bb.y ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.mn = add nsw i32 %i.gu, 1                    ; 2 uses
  store i32 %i.mn, ptr %i.m, align 4, !tbaa !32
  %i.mo = sext i32 %i.gu to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mo
  store i32 %i.lu, ptr %i.mp, align 4, !tbaa !12
  %.val187.pre = load i32, ptr %i.w, align 4, !tbaa !32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.o, %Vec_IntPush.exit
  %.val187 = phi i32 [ %.val187289, %bb.o ], [ %.val187.pre, %Vec_IntPush.exit ] ; 3 uses
  %i.mq = phi ptr [ %i.gr, %bb.o ], [ %i.ml, %Vec_IntPush.exit ] ; 2 uses
  %i.mr = phi ptr [ %i.gs, %bb.o ], [ %i.ml, %Vec_IntPush.exit ]
  %i.ms = phi i32 [ %i.gt, %bb.o ], [ %i.mm, %Vec_IntPush.exit ]
  %i.mt = phi i32 [ %i.gu, %bb.o ], [ %i.mn, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.mu = sext i32 %.val187 to i64
  %i.mv = icmp slt i64 %indvars.iv.next275, %i.mu
  br i1 %i.mv, label %bb.n, label %.critedge4.loopexit, !llvm.loop !109

.critedge4.loopexit:                              ; preds = %bb.ac, %bb.n
  %.val176294 = phi i32 [ %i.gu, %bb.n ], [ %i.mt, %bb.ac ]
  %.val212292 = phi ptr [ %i.gr, %bb.n ], [ %i.mq, %bb.ac ]
  %.val187.lcssa.ph = phi i32 [ %.val187289, %bb.n ], [ %.val187, %bb.ac ]
  %i.mw = sext i32 %.val176294 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.val176 = phi i64 [ 0, %.critedge2 ], [ %i.mw, %.critedge4.loopexit ]
  %.val212 = phi ptr [ %i.q, %.critedge2 ], [ %.val212292, %.critedge4.loopexit ] ; 2 uses
  %.val187.lcssa = phi i32 [ %.val193, %.critedge2 ], [ %.val187.lcssa.ph, %.critedge4.loopexit ]
  %i.mx = getelementptr inbounds [4 x i8], ptr %.val212, i64 %.val176
  %i.my = sext i32 %3 to i64
  %i.mz = call i32 @sat_solver_solve(ptr noundef %i.cf, ptr noundef %.val212, ptr noundef %i.mx, i64 noundef %i.my, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.na = icmp eq i32 %i.mz, -1
  br i1 %i.na, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %.critedge4
  %i.nb = getelementptr i8, ptr %i.cf, i64 340
  %.val213 = load i32, ptr %i.nb, align 4, !tbaa !74 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.cf, i64 344
  %.val214 = load ptr, ptr %i.nc, align 8, !tbaa !75 ; 3 uses
  %i.nd = sext i32 %.val213 to i64
  %i.ne = getelementptr [4 x i8], ptr %.val214, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !12
  %i.nh = ashr i32 %i.ng, 1
  %i.ni = load i32, ptr %.val214, align 4, !tbaa !12
  %i.nj = ashr i32 %i.ni, 1                       ; 2 uses
  %i.nk = call i32 @llvm.smax.i32(i32 %i.nh, i32 1) ; 2 uses
  %i.nl = add nsw i32 %i.nk, -1
  %.not157259 = icmp sgt i32 %i.nl, %i.nj
  br i1 %.not157259, label %bb.an, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.ad
  %.val163 = load ptr, ptr %i.ab, align 8, !tbaa !8
  %.promoted262 = load i32, ptr %i.k, align 8, !tbaa !41
  %.promoted265 = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = add nsw i64 %i.nm, -1
  %i.no = zext nneg i32 %i.nj to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph261, %Vec_IntPush.exit227
  %indvars.iv279 = phi i64 [ %i.nn, %.lr.ph261 ], [ %indvars.iv.next280, %Vec_IntPush.exit227 ] ; 3 uses
  %indvars.iv277 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next278, %Vec_IntPush.exit227 ] ; 7 uses
  %storemerge244266 = phi ptr [ %.promoted265, %.lr.ph261 ], [ %storemerge244267, %Vec_IntPush.exit227 ] ; 6 uses
  %spec.select.sink.i224264 = phi i32 [ %.promoted262, %.lr.ph261 ], [ %spec.select.sink.i224263, %Vec_IntPush.exit227 ] ; 3 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %.val163, i64 %indvars.iv279
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !12
  %i.nr = trunc nsw i64 %indvars.iv277 to i32
  %i.ns = icmp eq i32 %spec.select.sink.i224264, %i.nr
  br i1 %i.ns, label %bb.af, label %Vec_IntPush.exit227

bb.af:                                            ; preds = %bb.ae
  %i.nt = icmp samesign ult i64 %indvars.iv277, 16
  br i1 %i.nt, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i225 = icmp eq ptr %storemerge244266, null
  br i1 %.not9.i.i225, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge244266, i64 noundef 64) #21
  br label %Vec_IntPush.exit227

bb.ai:                                            ; preds = %bb.ag
  %i.nv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit227

bb.aj:                                            ; preds = %bb.af
  %i.nw = icmp samesign ult i64 %indvars.iv277, 1073741823
  %indvars.iv277.tr = trunc nsw i64 %indvars.iv277 to i32
  %i.nx = shl nsw i32 %indvars.iv277.tr, 1
  %spec.select.i220 = select i1 %i.nw, i32 %i.nx, i32 2147483647 ; 4 uses
  %i.ny = sext i32 %spec.select.i220 to i64
  %.not.i9.i221 = icmp samesign ult i64 %indvars.iv277, %i.ny
  br i1 %.not.i9.i221, label %bb.ak, label %Vec_IntPush.exit227

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i222 = icmp eq ptr %storemerge244266, null
  %i.nz = zext nneg i32 %spec.select.i220 to i64
  %i.oa = shl nuw nsw i64 %i.nz, 2                ; 2 uses
  br i1 %.not9.i10.i222, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ob = call ptr @realloc(ptr noundef nonnull %storemerge244266, i64 noundef %i.oa) #21
  br label %Vec_IntPush.exit227

bb.am:                                            ; preds = %bb.ak
  %i.oc = call noalias ptr @malloc(i64 noundef %i.oa) #22
  br label %Vec_IntPush.exit227

Vec_IntPush.exit227:                              ; preds = %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.aj
  %storemerge244267 = phi ptr [ %storemerge244266, %bb.ae ], [ %storemerge244266, %bb.aj ], [ %i.nv, %bb.ai ], [ %i.nu, %bb.ah ], [ %i.ob, %bb.al ], [ %i.oc, %bb.am ] ; 3 uses
  %spec.select.sink.i224263 = phi i32 [ %spec.select.sink.i224264, %bb.ae ], [ %spec.select.sink.i224264, %bb.aj ], [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i220, %bb.al ], [ %spec.select.i220, %bb.am ] ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %storemerge244267, i64 %indvars.iv277
  store i32 %i.nq, ptr %i.od, align 4, !tbaa !12
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1
  %.not157.not = icmp slt i64 %indvars.iv279, %i.no
  br i1 %.not157.not, label %bb.ae, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %Vec_IntPush.exit227
  %i.oe = trunc nsw i64 %indvars.iv.next278 to i32 ; 2 uses
  store i32 %i.oe, ptr %i.m, align 4, !tbaa !32
  store i32 %spec.select.sink.i224263, ptr %i.k, align 8
  store ptr %storemerge244267, ptr %i.r, align 8
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.ad
  %.val175296 = phi i32 [ %i.oe, %._crit_edge ], [ 0, %bb.ad ]
  %i.of = add nsw i32 %.val213, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge4
  %.val173 = phi i32 [ %.val175296, %bb.an ], [ 0, %.critedge4 ] ; 2 uses
  %.0238 = phi ptr [ %.val214, %bb.an ], [ null, %.critedge4 ]
  %.0147 = phi i32 [ %i.of, %bb.an ], [ -1, %.critedge4 ] ; 2 uses
  %.not158 = icmp eq i32 %4, 0
  br i1 %.not158, label %bb.bi, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.og = load i32, ptr %i.h, align 4, !tbaa !12  ; 7 uses
  %i.oh = getelementptr i8, ptr %0, i64 160
  %.val208 = load ptr, ptr %i.oh, align 8, !tbaa !39 ; 7 uses
  %i.oi = add nsw i32 %i.og, 1                    ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.val208, i64 4 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !32 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.og, %i.ok
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ol = load i32, ptr %.val208, align 8, !tbaa !41 ; 4 uses
  %i.om = shl nsw i32 %i.ol, 1                    ; 2 uses
  %.not.i.i228 = icmp slt i32 %i.og, %i.om
  %.not.i.i.not.i.i = icmp sgt i32 %i.ol, %i.og   ; 2 uses
  br i1 %.not.i.i228, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.on = getelementptr inbounds nuw i8, ptr %.val208, i64 8 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.oo, null
  %i.op = sext i32 %i.oi to i64
  %i.oq = shl nsw i64 %i.op, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.or = call ptr @realloc(ptr noundef nonnull %i.oo, i64 noundef %i.oq) #21
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.os = call noalias ptr @malloc(i64 noundef %i.oq) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ot = phi ptr [ %i.or, %bb.at ], [ %i.os, %bb.au ]
  store ptr %i.ot, ptr %i.on, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ou = icmp slt i32 %i.ol, 1073741823
  %spec.select.i.i.i = select i1 %i.ou, i32 %i.om, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ol, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ay, label %Vec_IntGrow.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ov = getelementptr inbounds nuw i8, ptr %.val208, i64 8 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ow, null
  %i.ox = sext i32 %spec.select.i.i.i to i64
  %i.oy = shl nsw i64 %i.ox, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.oz = call ptr @realloc(ptr noundef nonnull %i.ow, i64 noundef %i.oy) #21
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.pa = call noalias ptr @malloc(i64 noundef %i.oy) #22
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.pb = phi ptr [ %i.oz, %bb.az ], [ %i.pa, %bb.ba ]
  store ptr %i.pb, ptr %i.ov, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.bb, %bb.av
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.bb ], [ %i.oi, %bb.av ]
  store i32 %spec.select.sink.i.i.i, ptr %.val208, align 8, !tbaa !41
  %.pre.i.i = load i32, ptr %i.oj, align 4, !tbaa !32
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ax, %bb.aw, %bb.ar
  %i.pc = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.ok, %bb.ax ], [ %i.ok, %bb.aw ], [ %i.ok, %bb.ar ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.pc, %i.og
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.val208, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !8
  %i.pf = sext i32 %i.pc to i64
  %i.pg = shl nsw i64 %i.pf, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.pe, i64 %i.pg
  %i.ph = sub i32 %i.og, %i.pc
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = add nuw nsw i64 %i.pj, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.pk, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !32
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.ap, %._crit_edge.i.i.i
  %i.pl = getelementptr i8, ptr %.val208, i64 8
  %.val.i.i = load ptr, ptr %i.pl, align 8, !tbaa !8
  %i.pm = sext i32 %i.og to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !12
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1, i32 noundef %i.po) ; 0 uses
  switch i32 %i.mz, label %bb.be [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
  ]

bb.bc:                                            ; preds = %Gia_ObjLevelId.exit
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %3) ; 0 uses
  br label %bb.bg

bb.bd:                                            ; preds = %Gia_ObjLevelId.exit
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %Gia_ObjLevelId.exit
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.val173, i32 noundef %.val187.lcssa) ; 0 uses
  %.not159 = icmp ne i32 %5, 0
  %i.pt = icmp sgt i32 %.0147, -1
  %or.cond = select i1 %.not159, i1 %i.pt, i1 false
  br i1 %or.cond, label %.lr.ph269, label %.loopexit

.lr.ph269:                                        ; preds = %bb.be
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.pu = zext nneg i32 %.0147 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph269, %bb.bf
  %indvars.iv284 = phi i64 [ %i.pu, %.lr.ph269 ], [ %indvars.iv.next285, %bb.bf ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.0238, i64 %indvars.iv284
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !12
  %i.px = ashr i32 %i.pw, 1
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !12
  %i.qb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.qa) ; 0 uses
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, -1
  %.not320 = icmp eq i64 %indvars.iv284, 0
  br i1 %.not320, label %.loopexit, label %bb.bf, !llvm.loop !111

.loopexit:                                        ; preds = %bb.bf, %bb.be
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %.loopexit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.qd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #20
  %i.qe = icmp slt i32 %i.qd, 0
end_hunk_1
