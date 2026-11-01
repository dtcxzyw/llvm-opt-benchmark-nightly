Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_sp_div:bb.a
  %i.jc = trunc nsw i64 %i.iz to i32
  %i.jd = icmp ult i32 %i.jb, %i.jc
  %i.je = icmp ugt i64 %i.iz, 4294967295
  %i.jf = or i1 %i.jd, %i.je
  br i1 %i.jf, label %.lr.ph.i202.preheader480, label %vector.memcheck434

vector.memcheck434:                               ; preds = %vector.scevcheck427
  %i.jg = shl nuw nsw i64 %i.it, 3                ; 2 uses
  %i.jh = add nuw nsw i32 %i.io, %i.ik
  %i.ji = add nsw i32 %i.jh, -1
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3                ; 2 uses
  %i.jl = sub nsw i64 %i.jk, %i.jg
  %diff.check435.a = icmp ugt i64 %i.jl, -32
  %i.jm = sub nsw i64 %i.jg, %i.jk
  %i.jn = add nsw i64 %i.jm, -9
  %diff.check436 = icmp ult i64 %i.jn, 31
  %conflict.rdx437 = or i1 %diff.check435.a, %diff.check436
  br i1 %conflict.rdx437, label %.lr.ph.i202.preheader480, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck434
  %n.vec439 = and i64 %i.it, 2147483644           ; 2 uses
  %i.jo = and i64 %i.it, 3
  %broadcast.splatinsert440 = insertelement <2 x i64> poison, i64 %.pre.i201, i64 0
  %broadcast.splat441 = shufflevector <2 x i64> %broadcast.splatinsert440, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert442 = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat443 = shufflevector <2 x i64> %broadcast.splatinsert442, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph438
  %index445 = phi i64 [ 0, %vector.ph438 ], [ %index.next450, %vector.body444 ] ; 2 uses
  %i.jp = sub i64 %i.it, %index445                ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -24
  %wide.load446.a = load <2 x i64>, ptr %i.jr, align 8, !tbaa !36
  %wide.load447.a = load <2 x i64>, ptr %i.js, align 8, !tbaa !36
  %i.jt = shl <2 x i64> %wide.load446.a, %broadcast.splat441
  %i.ju = shl <2 x i64> %wide.load447.a, %broadcast.splat441
  %i.jv = getelementptr [8 x i8], ptr %i.d, i64 %i.jp ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 -8
  %i.jx = getelementptr i8, ptr %i.jv, i64 -24
  %wide.load448.a = load <2 x i64>, ptr %i.jw, align 8, !tbaa !36
  %wide.load449 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !36
  %i.jy = lshr <2 x i64> %wide.load448.a, %broadcast.splat443
  %i.jz = lshr <2 x i64> %wide.load449, %broadcast.splat443
  %i.ka = or <2 x i64> %i.jy, %i.jt
  %i.kb = or <2 x i64> %i.jz, %i.ju
  %i.kc = trunc nuw i64 %i.jp to i32
  %i.kd = add i32 %i.kc, %i.io
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -24
  store <2 x i64> %i.ka, ptr %i.kg, align 8, !tbaa !36
  store <2 x i64> %i.kb, ptr %i.kh, align 8, !tbaa !36
  %index.next450 = add nuw i64 %index445, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next450, %n.vec439
  br i1 %i.ki, label %middle.block451, label %vector.body444, !llvm.loop !110

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %n.vec439, %i.it
  br i1 %cmp.n452, label %._crit_edge.i205, label %.lr.ph.i202.preheader480

.lr.ph.i202.preheader480:                         ; preds = %vector.memcheck434, %vector.scevcheck427, %.lr.ph.i202.preheader, %middle.block451
  %indvars.iv.i203.ph = phi i64 [ %i.it, %vector.memcheck434 ], [ %i.it, %vector.scevcheck427 ], [ %i.it, %.lr.ph.i202.preheader ], [ %i.jo, %middle.block451 ] ; 7 uses
  %xtraiter497 = and i64 %indvars.iv.i203.ph, 1
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %.lr.ph.i202.prol.loopexit, label %.lr.ph.i202.prol

.lr.ph.i202.prol:                                 ; preds = %.lr.ph.i202.preheader480
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203.ph
  %i.kk = load i64, ptr %i.kj, align 16, !tbaa !36
  %i.kl = shl i64 %i.kk, %.pre.i201
  %i.km = add nsw i64 %indvars.iv.i203.ph, -1
  %i.kn = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203.ph
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !36
  %i.kp = lshr i64 %i.ko, %i.ix
  %i.kq = or i64 %i.kp, %i.kl
  %i.kr = trunc nuw nsw i64 %indvars.iv.i203.ph to i32
  %i.ks = add nuw i32 %i.kr, %i.io
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.kt
  store i64 %i.kq, ptr %i.ku, align 8, !tbaa !36
  br label %.lr.ph.i202.prol.loopexit

.lr.ph.i202.prol.loopexit:                        ; preds = %.lr.ph.i202.prol, %.lr.ph.i202.preheader480
  %indvars.iv.i203.unr = phi i64 [ %indvars.iv.i203.ph, %.lr.ph.i202.preheader480 ], [ %i.km, %.lr.ph.i202.prol ]
  %i.kv = icmp eq i64 %indvars.iv.i203.ph, 1
  br i1 %i.kv, label %._crit_edge.i205, label %.lr.ph.i202

bb.ak:                                            ; preds = %bb.ai
  %.not82.i209 = icmp samesign ugt i32 %i.ip, %i.ir
  br i1 %.not82.i209, label %sp_lshb.exit.thread253, label %bb.am

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202
  %indvars.iv.i203 = phi i64 [ %i.ll, %.lr.ph.i202 ], [ %indvars.iv.i203.unr, %.lr.ph.i202.prol.loopexit ] ; 6 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !36
  %i.ky = shl i64 %i.kx, %.pre.i201
  %i.kz = add nsw i64 %indvars.iv.i203, -1        ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !36
  %i.lc = lshr i64 %i.lb, %i.ix
  %i.ld = or i64 %i.lc, %i.ky
  %i.le = trunc nuw i64 %indvars.iv.i203 to i32
  %i.lf = add i32 %i.le, %i.io
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lg
  store i64 %i.ld, ptr %i.lh, align 8, !tbaa !36
  %i.li = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !36
  %i.lk = shl i64 %i.lj, %.pre.i201
  %i.ll = add nsw i64 %indvars.iv.i203, -2        ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %i.d, i64 %i.kz
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !36
  %i.lo = lshr i64 %i.ln, %i.ix
  %i.lp = or i64 %i.lo, %i.lk
  %i.lq = trunc nuw i64 %i.kz to i32
  %i.lr = add i32 %i.lq, %i.io
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ls
  store i64 %i.lp, ptr %i.lt, align 8, !tbaa !36
  %.not58.wide.i204.1 = icmp eq i64 %i.ll, 0
  br i1 %.not58.wide.i204.1, label %._crit_edge.i205, label %.lr.ph.i202, !llvm.loop !111

._crit_edge.i205:                                 ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202, %middle.block451, %.thread73.i199
  %i.lu = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.lv = shl i64 %i.lu, %.pre.i201
  %i.lw = zext nneg i16 %i.im to i64              ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lw
  store i64 %i.lv, ptr %i.lx, align 8, !tbaa !36
  %.not59.i206 = icmp eq i64 %i.iy, 0
  br i1 %.not59.i206, label %.thread70.i207, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i205
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ih
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lw
  store i64 %i.iy, ptr %i.lz, align 8, !tbaa !36
  br label %.thread70.i207

bb.am:                                            ; preds = %bb.ak
  %i.ma = zext nneg i16 %i.im to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ma
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr nonnull align 8 %i.dm, i64 %i.ij, i1 false)
  br label %.thread70.i207

.thread70.i207:                                   ; preds = %bb.am, %bb.al, %._crit_edge.i205
  %i.mc = phi i16 [ %i.f, %._crit_edge.i205 ], [ %i.dl, %bb.al ], [ %i.f, %bb.am ]
  %i.md = add i16 %i.mc, %i.im                    ; 2 uses
  store i16 %i.md, ptr %i.d, align 16, !tbaa !40
  %i.me = shl nuw nsw i16 %i.im, 3
  %i.mf = zext nneg i16 %i.me to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.mf, i1 false)
  br label %bb.an

thread-pre-split:                                 ; preds = %_sp_copy.exit185, %_sp_copy.exit185.thread
  %.pr = load i16, ptr %1, align 8, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split, %.thread70.i207
  %i.mg = phi i16 [ %.pr, %thread-pre-split ], [ %i.md, %.thread70.i207 ] ; 2 uses
  %.0117.ph = phi i32 [ 64, %thread-pre-split ], [ %i.eh, %.thread70.i207 ] ; 4 uses
  %.0112.ph = phi ptr [ %1, %thread-pre-split ], [ %i.d, %.thread70.i207 ] ; 7 uses
  %.not141 = icmp eq i16 %i.mg, 0
  br i1 %.not141, label %sp_lshb.exit.thread253, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mh = load i16, ptr %i.dc, align 8, !tbaa !40
  %i.mi = sub i16 %i.mh, %i.mg
  %i.mj = add i16 %i.mi, 1                        ; 3 uses
  store i16 %i.mj, ptr %i.dd, align 8, !tbaa !40
  %.not131.i = icmp eq i16 %i.mj, 0
  br i1 %.not131.i, label %._crit_edge.i212, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.ao
  %i.mk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ml = zext i16 %i.mj to i64
  %i.mm = shl nuw nsw i64 %i.ml, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mk, i8 0, i64 %i.mm, i1 false), !tbaa !36
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %.lr.ph.i211, %bb.ao
  %i.mn = getelementptr inbounds nuw i8, ptr %.0112.ph, i64 8 ; 3 uses
  %i.mo = load i16, ptr %.0112.ph, align 8, !tbaa !40
  %i.mp = zext i16 %i.mo to i64
  %i.mq = getelementptr [8 x i8], ptr %.0112.ph, i64 %i.mp
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !36 ; 2 uses
  call fastcc void @_sp_div_same_size(ptr noundef nonnull %i.dc, ptr noundef nonnull readonly %.0112.ph, ptr noundef nonnull %i.dd)
  %i.ms = load i16, ptr %i.dc, align 8, !tbaa !40 ; 2 uses
  %i.mt = load i16, ptr %.0112.ph, align 8, !tbaa !40 ; 9 uses
  %.191124.i = add i16 %i.ms, -1                  ; 2 uses
  %.not125.i = icmp ult i16 %.191124.i, %i.mt
  br i1 %.not125.i, label %._crit_edge129.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %._crit_edge.i212
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 6 uses
  %i.mv = zext i64 %i.mr to i128
  %.not132.i = icmp eq i16 %i.mt, 0
  %i.mw = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 10 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.my = add i16 %i.mt, 1                        ; 2 uses
  %umax.i = tail call i16 @llvm.umax.i16(i16 %i.my, i16 1) ; 2 uses
  %wide.trip.count.i = zext i16 %i.mt to i64      ; 3 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %wide.trip.count.i
  %wide.trip.count139.i = zext i16 %umax.i to i64 ; 2 uses
  %xtraiter499 = and i64 %wide.trip.count.i, 1
  %i.na = icmp eq i16 %i.mt, 1
  %unroll_iter = and i64 %wide.trip.count.i, 65534
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  %lcmp.mod502 = trunc i16 %i.mt to i1
  %xtraiter503 = and i64 %wide.trip.count139.i, 1
  %i.nb = icmp ult i16 %i.my, 2
  %unroll_iter506 = and i64 %wide.trip.count139.i, 65534
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  %lcmp.mod505 = trunc i16 %umax.i to i1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.lr.ph128.i
  %.191126.i = phi i16 [ %.191124.i, %.lr.ph128.i ], [ %.191.i, %bb.at ] ; 4 uses
  %i.nc = zext i16 %.191126.i to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.nc ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !36 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, %i.mr
  br i1 %i.nf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ng = getelementptr i8, ptr %i.nd, i64 -8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !36
  %i.ni = zext i64 %i.ne to i128
  %i.nj = shl nuw i128 %i.ni, 64
  %i.nk = zext i64 %i.nh to i128
  %i.nl = or disjoint i128 %i.nj, %i.nk
  %i.nm = udiv i128 %i.nl, %i.mv
  %i.nn = trunc i128 %i.nm to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.085.i = phi i64 [ %i.nn, %bb.aq ], [ -1, %bb.ap ] ; 2 uses
  %i.no = sub nuw i16 %.191126.i, %i.mt           ; 2 uses
  %i.np = zext i16 %i.no to i32                   ; 5 uses
  br i1 %.not132.i, label %.split.us, label %.lr.ph107.i

.split.us:                                        ; preds = %bb.ar
  store i64 0, ptr %i.mw, align 8, !tbaa !36
  br label %.preheader.i216.preheader

.lr.ph107.i:                                      ; preds = %bb.ar, %._crit_edge114.loopexit.i
  %.1.i213 = phi i64 [ %i.pb, %._crit_edge114.loopexit.i ], [ %.085.i, %bb.ar ] ; 3 uses
  %i.nq = zext i64 %.1.i213 to i128               ; 3 uses
  br i1 %i.na, label %.epil.preheader, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.lr.ph107.i, %.lr.ph107.i.new
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ] ; 4 uses
  %.0105.i = phi i128 [ %i.og, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i214
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !36
  %i.nt = zext i64 %i.ns to i128
  %i.nu = mul nuw i128 %i.nt, %i.nq
  %i.nv = add nuw i128 %i.nu, %.0105.i            ; 2 uses
  %i.nw = trunc i128 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i214
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !36
  %i.ny = lshr i128 %i.nv, 64
  %indvars.iv.next.i215 = or disjoint i64 %indvars.iv.i214, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.next.i215
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !36
  %i.ob = zext i64 %i.oa to i128
  %i.oc = mul nuw i128 %i.ob, %i.nq
  %i.od = add nuw i128 %i.oc, %i.ny               ; 2 uses
  %i.oe = trunc i128 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next.i215
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !36
  %i.og = lshr i128 %i.od, 64                     ; 3 uses
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph113.preheader.i.unr-lcssa, label %.lr.ph107.i.new, !llvm.loop !112

.lr.ph113.preheader.i.unr-lcssa:                  ; preds = %.lr.ph107.i.new
  %extract.t = trunc nuw i128 %i.og to i64
  br i1 %lcmp.mod500.not, label %.lr.ph113.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph113.preheader.i.unr-lcssa, %.lr.ph107.i
  %indvars.iv.i214.epil.init = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next.i215.1, %.lr.ph113.preheader.i.unr-lcssa ] ; 2 uses
  %.0105.i.epil.init = phi i128 [ 0, %.lr.ph107.i ], [ %i.og, %.lr.ph113.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod502)
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i214.epil.init
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !36
  %i.oj = zext i64 %i.oi to i128
  %i.ok = mul nuw i128 %i.oj, %i.nq
  %i.ol = add nuw i128 %i.ok, %.0105.i.epil.init  ; 2 uses
  %i.om = trunc i128 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i214.epil.init
  store i64 %i.om, ptr %i.on, align 8, !tbaa !36
  %i.oo = lshr i128 %i.ol, 64
  %extract.t510.a = trunc nuw i128 %i.oo to i64
  br label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %.lr.ph113.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa.off0 = phi i64 [ %extract.t, %.lr.ph113.preheader.i.unr-lcssa ], [ %extract.t510.a, %.epil.preheader ]
  store i64 %.lcssa.off0, ptr %i.mz, align 8, !tbaa !36
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %bb.as, %.lr.ph113.preheader.i
  %.188111.i = phi i16 [ %7, %bb.as ], [ %i.mt, %.lr.ph113.preheader.i ] ; 3 uses
  %5 = zext i16 %.188111.i to i32                 ; 2 uses
  %6 = zext i16 %.188111.i to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %6
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !36 ; 2 uses
  %i.or = add nuw nsw i32 %5, %i.np
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !36
  %.not99.i = icmp eq i64 %i.oq, %i.ou
  br i1 %.not99.i, label %bb.as, label %._crit_edge114.loopexit.i

bb.as:                                            ; preds = %.lr.ph113.i
  %7 = add i16 %.188111.i, -1                     ; 2 uses
  %.not98.i = icmp eq i16 %7, 0
  br i1 %.not98.i, label %.._crit_edge114.loopexit.i_crit_edge, label %.lr.ph113.i, !llvm.loop !113

.._crit_edge114.loopexit.i_crit_edge:             ; preds = %bb.as
  %.pre = load i64, ptr %i.mw, align 8, !tbaa !36
  br label %._crit_edge114.loopexit.i, !llvm.loop !113

._crit_edge114.loopexit.i:                        ; preds = %.lr.ph113.i, %.._crit_edge114.loopexit.i_crit_edge
  %i.ov = phi i64 [ %.pre, %.._crit_edge114.loopexit.i_crit_edge ], [ %i.oq, %.lr.ph113.i ]
  %.lcssa.ph.i = phi i32 [ 0, %.._crit_edge114.loopexit.i_crit_edge ], [ %5, %.lr.ph113.i ]
  %i.ow = add nuw nsw i32 %.lcssa.ph.i, %i.np
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !36
  %i.pa = icmp ugt i64 %i.ov, %i.oz
  %i.pb = add i64 %.1.i213, -1
  br i1 %i.pa, label %.lr.ph107.i, label %.preheader.i216.preheader, !llvm.loop !114

.preheader.i216.preheader:                        ; preds = %._crit_edge114.loopexit.i, %.split.us
  %.us-phi = phi i64 [ %.085.i, %.split.us ], [ %.1.i213, %._crit_edge114.loopexit.i ]
  br i1 %i.nb, label %.preheader.i216.epil.preheader, label %.preheader.i216

.preheader.i216:                                  ; preds = %.preheader.i216.preheader, %.preheader.i216
  %indvars.iv136.i.a = phi i64 [ %indvars.iv.next137.i.1, %.preheader.i216 ], [ 0, %.preheader.i216.preheader ] ; 4 uses
  %.086123.i = phi i128 [ %i.qb, %.preheader.i216 ], [ 0, %.preheader.i216.preheader ]
  %niter507 = phi i64 [ %niter507.next.1, %.preheader.i216 ], [ 0, %.preheader.i216.preheader ]
  %i.pc = trunc nuw i64 %indvars.iv136.i.a to i32
  %i.pd = add nuw nsw i32 %i.pc, %i.np
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.pe ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !36
  %i.ph = zext i64 %i.pg to i128
  %i.pi = add nsw i128 %.086123.i, %i.ph
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv136.i.a
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !36
  %i.pl = zext i64 %i.pk to i128
  %i.pm = sub nsw i128 %i.pi, %i.pl               ; 2 uses
  %i.pn = trunc i128 %i.pm to i64
  store i64 %i.pn, ptr %i.pf, align 8, !tbaa !36
  %i.po = ashr i128 %i.pm, 64
  %indvars.iv.next137.i.a = or disjoint i64 %indvars.iv136.i.a, 1 ; 2 uses
  %i.pp = trunc nuw i64 %indvars.iv.next137.i.a to i32
  %i.pq = add nuw nsw i32 %i.pp, %i.np
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.pr ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !36
  %i.pu = zext i64 %i.pt to i128
  %i.pv = add nsw i128 %i.po, %i.pu
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next137.i.a
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !36
  %i.py = zext i64 %i.px to i128
  %i.pz = sub nsw i128 %i.pv, %i.py               ; 2 uses
  %i.qa = trunc i128 %i.pz to i64
  store i64 %i.qa, ptr %i.ps, align 8, !tbaa !36
  %i.qb = ashr i128 %i.pz, 64                     ; 2 uses
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i.a, 2 ; 2 uses
  %niter507.next.1 = add i64 %niter507, 2         ; 2 uses
  %niter507.ncmp.1 = icmp eq i64 %niter507.next.1, %unroll_iter506
  br i1 %niter507.ncmp.1, label %.unr-lcssa, label %.preheader.i216, !llvm.loop !115

.unr-lcssa:                                       ; preds = %.preheader.i216
  %extract.t511 = trunc nsw i128 %i.qb to i64
  br i1 %lcmp.mod504.not, label %bb.at, label %.preheader.i216.epil.preheader

.preheader.i216.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.i216.preheader
  %indvars.iv136.i.epil.init = phi i64 [ 0, %.preheader.i216.preheader ], [ %indvars.iv.next137.i.1, %.unr-lcssa ] ; 2 uses
  %.086123.i.epil.init.off0 = phi i64 [ 0, %.preheader.i216.preheader ], [ %extract.t511, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod505)
  %i.qc = trunc nuw i64 %indvars.iv136.i.epil.init to i32
  %i.qd = add nuw nsw i32 %i.qc, %i.np
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.qe ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !36
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv136.i.epil.init
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !36
  %i.qj = add i64 %.086123.i.epil.init.off0, %i.qg
  %i.qk = sub i64 %i.qj, %i.qi
  store i64 %i.qk, ptr %i.qf, align 8, !tbaa !36
  br label %bb.at

bb.at:                                            ; preds = %.unr-lcssa, %.preheader.i216.epil.preheader
  %i.ql = zext i16 %i.no to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.ql
  store i64 %.us-phi, ptr %i.qm, align 8, !tbaa !36
  %.191.i = add i16 %.191126.i, -1                ; 2 uses
  %.not.i217 = icmp ult i16 %.191.i, %i.mt
  br i1 %.not.i217, label %._crit_edge129.i, label %bb.ap, !llvm.loop !116

._crit_edge129.i:                                 ; preds = %bb.at, %._crit_edge.i212
  %.191.in.lcssa.i = phi i16 [ %i.ms, %._crit_edge.i212 ], [ %.191126.i, %bb.at ] ; 2 uses
  store i16 %.191.in.lcssa.i, ptr %i.dc, align 8, !tbaa !40
  %i.qn = load i16, ptr %.0112.ph, align 8, !tbaa !40
  %i.qo = icmp eq i16 %.191.in.lcssa.i, %i.qn
  br i1 %i.qo, label %bb.au, label %_sp_div_impl.exit

bb.au:                                            ; preds = %._crit_edge129.i
  call fastcc void @_sp_div_same_size(ptr noundef nonnull %i.dc, ptr noundef nonnull readonly %.0112.ph, ptr noundef nonnull %i.dd)
  br label %_sp_div_impl.exit

_sp_div_impl.exit:                                ; preds = %._crit_edge129.i, %bb.au
  %.not142 = icmp eq ptr %3, null
  br i1 %.not142, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %_sp_div_impl.exit
  %.not143 = icmp eq i32 %.0117.ph, 64
  %.pr.pre = load i16, ptr %i.dc, align 8, !tbaa !40 ; 6 uses
  br i1 %.not143, label %sp_rshb.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not.i218.not = icmp eq i16 %.pr.pre, 0
  br i1 %.not.i218.not, label %sp_rshb.exit.thread, label %bb.ax

sp_rshb.exit.thread:                              ; preds = %bb.aw
  store volatile i16 0, ptr %i.dc, align 8, !tbaa !34
  %i.qp = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store volatile i64 0, ptr %i.qp, align 8, !tbaa !36
  br label %_sp_copy.exit228.thread

bb.ax:                                            ; preds = %bb.aw
  %i.qq = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !39
  %i.qs = icmp ugt i16 %.pr.pre, %i.qr
  br i1 %i.qs, label %_sp_copy.exit228, label %.preheader.i219

.preheader.i219:                                  ; preds = %bb.ax
  %i.qt = add i16 %.pr.pre, -1                    ; 4 uses
  %.not66.i = icmp eq i16 %i.qt, 0
  br i1 %.not66.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i220

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i219
  %.pre.i226.a = zext nneg i32 %.0117.ph to i64
  br label %._crit_edge.i225

.lr.ph.i220:                                      ; preds = %.preheader.i219
  %i.qu = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.qv = zext nneg i32 %.0117.ph to i64          ; 3 uses
  %i.qw = sub nuw nsw i32 64, %.0117.ph
  %i.qx = zext nneg i32 %i.qw to i64              ; 2 uses
  %wide.trip.count.i221 = zext i16 %i.qt to i64   ; 4 uses
  %min.iters.check455 = icmp ult i16 %.pr.pre, 5
  br i1 %min.iters.check455, label %scalar.ph454.preheader, label %vector.ph456

vector.ph456:                                     ; preds = %.lr.ph.i220
  %n.vec457 = and i64 %wide.trip.count.i221, 65532 ; 3 uses
  %broadcast.splatinsert458 = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %broadcast.splat459 = shufflevector <2 x i64> %broadcast.splatinsert458, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert460 = insertelement <2 x i64> poison, i64 %i.qx, i64 0
  %broadcast.splat461 = shufflevector <2 x i64> %broadcast.splatinsert460, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph456
  %index463 = phi i64 [ 0, %vector.ph456 ], [ %index.next468, %vector.body462 ] ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %index463 ; 5 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %wide.load464.a = load <2 x i64>, ptr %i.qy, align 8, !tbaa !36
  %wide.load465.a = load <2 x i64>, ptr %i.qz, align 8, !tbaa !36
  %i.ra = lshr <2 x i64> %wide.load464.a, %broadcast.splat459
  %i.rb = lshr <2 x i64> %wide.load465.a, %broadcast.splat459
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %wide.load466.a = load <2 x i64>, ptr %i.rc, align 8, !tbaa !36
  %wide.load467 = load <2 x i64>, ptr %i.rd, align 8, !tbaa !36
  %i.re = shl <2 x i64> %wide.load466.a, %broadcast.splat461
  %i.rf = shl <2 x i64> %wide.load467, %broadcast.splat461
  %i.rg = or <2 x i64> %i.re, %i.ra
  %i.rh = or <2 x i64> %i.rf, %i.rb
  store <2 x i64> %i.rg, ptr %i.qy, align 8, !tbaa !36
  store <2 x i64> %i.rh, ptr %i.qz, align 8, !tbaa !36
  %index.next468 = add nuw i64 %index463, 4       ; 2 uses
  %i.ri = icmp eq i64 %index.next468, %n.vec457
  br i1 %i.ri, label %middle.block469, label %vector.body462, !llvm.loop !117

middle.block469:                                  ; preds = %vector.body462
  %cmp.n470 = icmp eq i64 %n.vec457, %wide.trip.count.i221
  br i1 %cmp.n470, label %._crit_edge.loopexit.i, label %scalar.ph454.preheader

scalar.ph454.preheader:                           ; preds = %.lr.ph.i220, %middle.block469
  %indvars.iv.i222.ph = phi i64 [ 0, %.lr.ph.i220 ], [ %n.vec457, %middle.block469 ]
  br label %scalar.ph454

scalar.ph454:                                     ; preds = %scalar.ph454.preheader, %scalar.ph454
  %indvars.iv.i222 = phi i64 [ %indvars.iv.next.i223, %scalar.ph454 ], [ %indvars.iv.i222.ph, %scalar.ph454.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.i222 ; 2 uses
  %i.rj = load i64, ptr %gep.i, align 8, !tbaa !36
  %i.rk = lshr i64 %i.rj, %i.qv
  %i.rl = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !36
  %i.rn = shl i64 %i.rm, %i.qx
  %i.ro = or i64 %i.rn, %i.rk
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.i222
  store i64 %i.ro, ptr %i.rp, align 8, !tbaa !36
  %indvars.iv.next.i223 = add nuw nsw i64 %indvars.iv.i222, 1 ; 2 uses
  %exitcond.not.i224 = icmp eq i64 %indvars.iv.next.i223, %wide.trip.count.i221
  br i1 %exitcond.not.i224, label %._crit_edge.loopexit.i, label %scalar.ph454, !llvm.loop !118

._crit_edge.loopexit.i:                           ; preds = %scalar.ph454, %middle.block469
  %i.rq = zext i16 %i.qt to i64
  br label %._crit_edge.i225

._crit_edge.i225:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.._crit_edge_crit_edge.i
  %.pre-phi305 = phi i64 [ %wide.trip.count.i221, %._crit_edge.loopexit.i ], [ 0, %.preheader.._crit_edge_crit_edge.i ]
  %.pre-phi.i = phi i64 [ %i.qv, %._crit_edge.loopexit.i ], [ %.pre.i226.a, %.preheader.._crit_edge_crit_edge.i ]
  %.lcssa62.i = phi i64 [ %i.rq, %._crit_edge.loopexit.i ], [ 0, %.preheader.._crit_edge_crit_edge.i ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %.lcssa62.i
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !36
  %i.ru = lshr i64 %i.rt, %.pre-phi.i             ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %.pre-phi305
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !36
  %i.rw = icmp ne i64 %i.ru, 0
end_hunk_0
