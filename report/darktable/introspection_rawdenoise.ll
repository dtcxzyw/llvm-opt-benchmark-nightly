Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@process:bb.a
  %i.km = add nuw i64 %.02536.i, 6                ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.km
  store float 5.000000e-01, ptr %i.kn, align 4, !tbaa !12, !noalias !171
  %i.ko = getelementptr [4 x i8], ptr %i.hj, i64 %i.km
  store float 5.000000e-01, ptr %i.ko, align 4, !tbaa !12, !noalias !171
  %i.kp = add nuw i64 %.02536.i, 7                ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kp
  store float 5.000000e-01, ptr %i.kq, align 4, !tbaa !12, !noalias !171
  %i.kr = getelementptr [4 x i8], ptr %i.hj, i64 %i.kp
  store float 5.000000e-01, ptr %i.kr, align 4, !tbaa !12, !noalias !171
  %i.ks = add nuw i64 %.02536.i, 8                ; 2 uses
  %exitcond.not.i34.7 = icmp eq i64 %i.ks, %i.fy
  br i1 %exitcond.not.i34.7, label %.preheader4.i, label %.lr.ph.i33, !llvm.loop !158

.split.i:                                         ; preds = %bb.ae
  call void @dwt_denoise(ptr noundef nonnull %i.gg, i32 noundef %.val, i32 noundef %.val19, i32 noundef 5, ptr noundef nonnull %i.a) #22, !noalias !171
  br i1 %brmerge.i, label %._crit_edge19.split.i, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.split.i
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.025420.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph15.i

.preheader.i35:                                   ; preds = %.preheader4.i, %bb.ae
  %.025111.i = phi i64 [ %i.ph, %bb.ae ], [ 0, %.preheader4.i ] ; 6 uses
  %i.kt = mul i64 %.025111.i, %i.fy               ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kt ; 6 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kt ; 12 uses
  %i.kw = trunc i64 %.025111.i to i32             ; 3 uses
  %i.kx = add nsw i32 %i.kw, 600
  %i.ky = srem i32 %i.kx, 6
  %i.kz = sext i32 %i.ky to i64                   ; 3 uses
  br i1 %i.js, label %bb.l, label %.thread57.i

bb.l:                                             ; preds = %.preheader.i35
  %i.la = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kz ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !38, !noalias !171
  %i.lc = zext i8 %i.lb to i32
  %i.ld = icmp eq i32 %.025420.i, %i.lc
  br i1 %i.ld, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.le = load float, ptr %i.ku, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.lf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.le, float 0.000000e+00)
  %i.lg = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.lf) ; 3 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.gs
  store float %i.lg, ptr %i.lh, align 4, !tbaa !12, !noalias !171
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.gt
  store float %i.lg, ptr %i.li, align 4, !tbaa !12, !noalias !171
  store float %i.lg, ptr %i.kv, align 4, !tbaa !12, !noalias !171
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %invariant.gep.i40 = getelementptr [4 x i8], ptr %i.kv, i64 %i.fy
  br i1 %i.ju, label %.lr.ph8.i, label %._crit_edge.i36

.thread57.i:                                      ; preds = %.preheader.i35
  br i1 %i.ju, label %.lr.ph8.thread.i, label %._crit_edge.i36

.lr.ph8.thread.i:                                 ; preds = %.thread57.i
  %i.lj = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kz
  br label %.lr.ph8.split.us.i

.lr.ph8.i:                                        ; preds = %bb.n
  %i.lk = icmp ult i64 %.025111.i, %i.gw
  br label %.lr.ph8.split.i

.lr.ph8.split.us.i:                               ; preds = %bb.p, %.lr.ph8.thread.i
  %.02507.us.i = phi i64 [ %i.lz, %bb.p ], [ 0, %.lr.ph8.thread.i ] ; 4 uses
  %i.ll = trunc i64 %.02507.us.i to i32
  %i.lm = add nsw i32 %i.ll, 600
  %i.ln = srem i32 %i.lm, 6
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %i.lj, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !38, !noalias !171
  %i.lr = icmp eq i8 %i.lq, 1
  br i1 %i.lr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph8.split.us.i
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.02507.us.i
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.lu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lt, float 0.000000e+00)
  %i.lv = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.lu) ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.02507.us.i ; 3 uses
  store float %i.lv, ptr %i.lw, align 4, !tbaa !12, !noalias !171
  %i.lx = getelementptr [4 x i8], ptr %i.lw, i64 %i.fy
  store float %i.lv, ptr %i.lx, align 4, !tbaa !12, !noalias !171
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store float %i.lv, ptr %i.ly, align 4, !tbaa !12, !noalias !171
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph8.split.us.i
  %i.lz = add nuw i64 %.02507.us.i, 1             ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.lz, %i.gv
  br i1 %exitcond28.not.i, label %._crit_edge.i36, label %.lr.ph8.split.us.i

._crit_edge.i36:                                  ; preds = %bb.p, %bb.s, %.thread57.i, %bb.n
  %i.ma = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kz ; 5 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !38, !noalias !171
  %i.mc = zext i8 %i.mb to i32
  %.not262.i = icmp eq i32 %.025420.i, %i.mc
  br i1 %.not262.i, label %bb.y, label %bb.t

.lr.ph8.split.i:                                  ; preds = %bb.s, %.lr.ph8.i
  %.02507.i = phi i64 [ %i.my, %bb.s ], [ 1, %.lr.ph8.i ] ; 6 uses
  %i.md = trunc i64 %.02507.i to i32
  %i.me = add nsw i32 %i.md, 600
  %i.mf = srem i32 %i.me, 6
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %i.la, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !38, !noalias !171
  %i.mj = zext i8 %i.mi to i32
  %i.mk = icmp eq i32 %.025420.i, %i.mj
  br i1 %i.mk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph8.split.i
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.02507.i
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.mn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mm, float 0.000000e+00)
  %i.mo = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.mn) ; 9 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.02507.i ; 3 uses
  store float %i.mo, ptr %i.mp, align 4, !tbaa !12, !noalias !171
  %i.mq = sub i64 %.02507.i, %i.fy
  %i.mr = getelementptr [4 x i8], ptr %i.kv, i64 %i.mq ; 3 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  store float %i.mo, ptr %i.ms, align 4, !tbaa !12, !noalias !171
  store float %i.mo, ptr %i.mr, align 4, !tbaa !12, !noalias !171
  %i.mt = getelementptr i8, ptr %i.mr, i64 -4
  store float %i.mo, ptr %i.mt, align 4, !tbaa !12, !noalias !171
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store float %i.mo, ptr %i.mu, align 4, !tbaa !12, !noalias !171
  %i.mv = getelementptr i8, ptr %i.mp, i64 -4
  store float %i.mo, ptr %i.mv, align 4, !tbaa !12, !noalias !171
  br i1 %i.lk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i40, i64 %.02507.i ; 3 uses
  %i.mw = getelementptr i8, ptr %gep.i41, i64 4
  store float %i.mo, ptr %i.mw, align 4, !tbaa !12, !noalias !171
  store float %i.mo, ptr %gep.i41, align 4, !tbaa !12, !noalias !171
  %i.mx = getelementptr i8, ptr %gep.i41, i64 -4
  store float %i.mo, ptr %i.mx, align 4, !tbaa !12, !noalias !171
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph8.split.i
  %i.my = add nuw i64 %.02507.i, 1                ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.my, %i.gv
  br i1 %exitcond27.not.i, label %._crit_edge.i36, label %.lr.ph8.split.i

bb.t:                                             ; preds = %._crit_edge.i36
  %i.mz = icmp ugt i64 %.025111.i, 1
  br i1 %i.mz, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !38, !noalias !171
  %i.nc = zext i8 %i.nb to i32
  %i.nd = icmp eq i32 %.025420.i, %i.nc
  %.mux3.i = zext i1 %i.nd to i32
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ne = add i32 %i.kw, 599
  %i.nf = srem i32 %i.ne, 6
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.ng ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !38, !noalias !171
  %i.nj = zext i8 %i.ni to i32
  %i.nk = icmp eq i32 %.025420.i, %i.nj
  br i1 %i.nk, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !38, !noalias !171
  %i.nn = zext i8 %i.nm to i32
  %i.no = icmp eq i32 %.025420.i, %i.nn
  br i1 %i.no, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !38, !noalias !171
  %i.nr = zext i8 %i.nq to i32
  %i.ns = icmp eq i32 %.025420.i, %i.nr
  %spec.select.i39 = select i1 %i.ns, i32 %i.gr, i32 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.thread.i
  %.0249.i = phi i32 [ %.mux3.i, %.thread.i ], [ 1, %bb.v ], [ %spec.select.i39, %bb.w ], [ %i.gq, %bb.u ]
  %i.nt = sext i32 %.0249.i to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.nt
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.nw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nv, float 0.000000e+00)
  %i.nx = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.nw)
  store float %i.nx, ptr %i.kv, align 4, !tbaa !12, !noalias !171
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i36
  %i.ny = getelementptr inbounds i8, ptr %i.ma, i64 %i.hd
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !38, !noalias !171
  %i.oa = zext i8 %i.nz to i32
  %i.ob = icmp eq i32 %.025420.i, %i.oa           ; 2 uses
  br i1 %i.js, label %bb.z, label %6

bb.z:                                             ; preds = %bb.y
  br i1 %i.ob, label %bb.aa, label %.thread64.i

bb.aa:                                            ; preds = %bb.z
  %i.oc = getelementptr [4 x i8], ptr %i.kv, i64 %i.fy
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.gv
  %i.oe = load float, ptr %i.od, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.of = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oe, float 0.000000e+00)
  %i.og = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.of) ; 3 uses
  %i.oh = getelementptr inbounds i8, ptr %i.kv, i64 -4
  store float %i.og, ptr %i.oh, align 4, !tbaa !12, !noalias !171
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.gv
  store float %i.og, ptr %i.oi, align 4, !tbaa !12, !noalias !171
  %i.oj = getelementptr i8, ptr %i.oc, i64 -8
  store float %i.og, ptr %i.oj, align 4, !tbaa !12, !noalias !171
  br label %bb.ae

6:                                                ; preds = %bb.y
  br i1 %i.ob, label %bb.ae, label %.thread64.i

.thread64.i:                                      ; preds = %6, %bb.z
  %i.ok = getelementptr inbounds i8, ptr %i.ma, i64 %i.hf
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !38, !noalias !171
  %i.om = zext i8 %i.ol to i32
  %i.on = icmp eq i32 %.025420.i, %i.om
  br i1 %i.on, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %.thread64.i
  %i.oo = icmp ugt i64 %.025111.i, 1
  br i1 %i.oo, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.op = add i32 %i.kw, 599
  %i.oq = srem i32 %i.op, 6
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 %i.hd
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !38, !noalias !171
  %i.ov = zext i8 %i.ou to i32
  %i.ow = icmp eq i32 %.025420.i, %i.ov
  br i1 %i.ow, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ox = getelementptr inbounds i8, ptr %i.os, i64 %i.hf
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !38, !noalias !171
  %i.oz = zext i8 %i.oy to i32
  %i.pa = icmp eq i32 %.025420.i, %i.oz
  %spec.select268.i = select i1 %i.pa, i32 -2, i32 %i.gu
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread64.i
  %.0248.i = phi i32 [ %i.gu, %bb.ab ], [ %i.ha, %.thread64.i ], [ -1, %bb.ac ], [ %spec.select268.i, %bb.ad ]
  %i.pb = sext i32 %.0248.i to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12, !alias.scope !169, !noalias !170
  %i.pe = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pd, float 0.000000e+00)
  %i.pf = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.pe)
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.gv
  store float %i.pf, ptr %i.pg, align 4, !tbaa !12, !noalias !171
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.i, %6, %bb.aa
  %i.ph = add nuw i64 %.025111.i, 1               ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.ph, %i.fz
  br i1 %exitcond29.not.i, label %.split.i, label %.preheader.i35

._crit_edge19.split.i:                            ; preds = %._crit_edge16.i, %.split.i, %.split.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !171
  %i.pi = add nuw nsw i32 %.025420.i, 1           ; 2 uses
  %exitcond37.not.i = icmp eq i32 %i.pi, 3
  br i1 %exitcond37.not.i, label %bb.j, label %bb.k

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %._crit_edge16.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %._crit_edge16.i ], [ 0, %.lr.ph15.i.preheader ] ; 3 uses
  %i.pj = mul nuw nsw i64 %indvars.iv32.i, %i.fy  ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.pj ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pj ; 2 uses
  %i.pm = trunc i64 %indvars.iv32.i to i32
  %i.pn = add i32 %i.pm, 600
  %i.po = urem i32 %i.pn, 6
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [6 x i8], ptr %i.fv, i64 %i.pp ; 9 uses
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.body88

vector.body88:                                    ; preds = %.lr.ph15.i, %vector.body88
  %index89 = phi i64 [ %index.next91, %vector.body88 ], [ 0, %.lr.ph15.i ] ; 3 uses
  %vec.ind90 = phi <8 x i32> [ %vec.ind.next92, %vector.body88 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph15.i ] ; 2 uses
  %i.pr = add <8 x i32> %vec.ind90, splat (i32 600)
  %i.ps = urem <8 x i32> %i.pr, splat (i32 6)
  %i.pt = zext nneg <8 x i32> %i.ps to <8 x i64>  ; 8 uses
  %i.pu = extractelement <8 x i64> %i.pt, i64 0
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pu
  %i.pw = extractelement <8 x i64> %i.pt, i64 1
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pw
  %i.py = extractelement <8 x i64> %i.pt, i64 2
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.py
  %i.qa = extractelement <8 x i64> %i.pt, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qa
  %i.qc = extractelement <8 x i64> %i.pt, i64 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qc
  %i.qe = extractelement <8 x i64> %i.pt, i64 5
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qe
  %i.qg = extractelement <8 x i64> %i.pt, i64 6
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qg
  %i.qi = extractelement <8 x i64> %i.pt, i64 7
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qi
  %i.qk = load i8, ptr %i.pv, align 1, !tbaa !38, !noalias !171
  %i.ql = load i8, ptr %i.px, align 1, !tbaa !38, !noalias !171
  %i.qm = load i8, ptr %i.pz, align 1, !tbaa !38, !noalias !171
  %i.qn = load i8, ptr %i.qb, align 1, !tbaa !38, !noalias !171
  %i.qo = load i8, ptr %i.qd, align 1, !tbaa !38, !noalias !171
  %i.qp = load i8, ptr %i.qf, align 1, !tbaa !38, !noalias !171
  %i.qq = load i8, ptr %i.qh, align 1, !tbaa !38, !noalias !171
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !38, !noalias !171
  %i.qs = insertelement <8 x i8> poison, i8 %i.qk, i64 0
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 1
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 2
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 3
  %i.qw = insertelement <8 x i8> %i.qv, i8 %i.qo, i64 4
  %i.qx = insertelement <8 x i8> %i.qw, i8 %i.qp, i64 5
  %i.qy = insertelement <8 x i8> %i.qx, i8 %i.qq, i64 6
  %i.qz = insertelement <8 x i8> %i.qy, i8 %i.qr, i64 7
  %i.ra = zext <8 x i8> %i.qz to <8 x i32>
  %i.rb = icmp eq <8 x i32> %broadcast.splat, %i.ra ; 2 uses
  %i.rc = getelementptr [4 x i8], ptr %i.pk, i64 %index89
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.rc, <8 x i1> %i.rb, <8 x float> poison), !tbaa !12, !noalias !171 ; 2 uses
  %i.rd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %wide.masked.load
  %i.re = getelementptr [4 x i8], ptr %i.pl, i64 %index89
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.rd, ptr align 4 %i.re, <8 x i1> %i.rb), !tbaa !12, !alias.scope !170, !noalias !169
  %index.next91 = add nuw i64 %index89, 8         ; 2 uses
  %vec.ind.next92 = add <8 x i32> %vec.ind90, splat (i32 8)
  %i.rf = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.rf, label %middle.block93, label %vector.body88, !llvm.loop !159

middle.block93:                                   ; preds = %vector.body88
  br i1 %cmp.n94, label %._crit_edge16.i, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %.lr.ph15.i, %middle.block93
  %indvars.iv.i37.ph = phi i64 [ 0, %.lr.ph15.i ], [ %n.vec87, %middle.block93 ]
  br label %scalar.ph84

._crit_edge16.i:                                  ; preds = %bb.ag, %middle.block93
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %._crit_edge19.split.i, label %.lr.ph15.i

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %bb.ag
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %bb.ag ], [ %indvars.iv.i37.ph, %scalar.ph84.preheader ] ; 4 uses
  %i.rg = trunc i64 %indvars.iv.i37 to i32
  %i.rh = add i32 %i.rg, 600
  %i.ri = urem i32 %i.rh, 6
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !38, !noalias !171
  %i.rm = zext i8 %i.rl to i32
  %i.rn = icmp eq i32 %.025420.i, %i.rm
  br i1 %i.rn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %scalar.ph84
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.i37
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !12, !noalias !171 ; 2 uses
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.rp
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv.i37
  store float %i.rq, ptr %i.rr, align 4, !tbaa !12, !alias.scope !170, !noalias !169
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %scalar.ph84
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i21
  br i1 %exitcond31.not.i, label %._crit_edge16.i, label %scalar.ph84, !llvm.loop !160

wavelet_denoise.exit:                             ; preds = %bb.j, %bb.h, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #4 {
.preheader:
  tail call void @dt_iop_default_init(ptr noundef %0) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !50  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <8 x float> <float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01>, ptr %i.c, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %gep.1.3, align 4, !tbaa !12
  store <4 x float> <float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00>, ptr %gep.3.1, align 4, !tbaa !12
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((488, 492), (676, 680)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.c) #22
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = zext i1 %.not to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %i.e, ptr %i.f, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %.not, ptr @.str.5, ptr @.str.6
  tail call void @gtk_stack_set_visible_child_name(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.j, align 4, !tbaa !174
  ret void
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #6

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
dt_draw_curve_calc_values.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 13 uses
  %i.c = load float, ptr %1, align 4, !tbaa !175
  store float %i.c, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !54   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !12
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, -1.000000e+00
  %i.l = load float, ptr %i.f, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store float %i.k, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store float %i.l, ptr %i.n, align 4, !tbaa !57
  %i.o = load float, ptr %i.e, align 4, !tbaa !12
  %i.p = load float, ptr %i.f, align 4, !tbaa !12
  store float %i.o, ptr %i.m, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store float %i.p, ptr %i.q, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store float %i.s, ptr %i.v, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store float %i.u, ptr %i.w, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store float %i.y, ptr %i.ab, align 8, !tbaa !56
end_hunk_0
