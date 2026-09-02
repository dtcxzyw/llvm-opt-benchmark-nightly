Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm:bb.a
bb.ai:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jq
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  %i.kc = sitofp i32 %i.kb to float
  %i.kd = fmul nnan float %i.kc, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2: ; preds = %bb.ai, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %.0.i.i291.2 = phi float [ %i.kd, %bb.ai ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1 ]
  store float %.0.i.i291.2, ptr %i.dr, align 8, !tbaa !58
  %i.ke = add nuw nsw i64 %.0.i256, 24            ; 2 uses
  %i.kf = icmp samesign ugt i64 %i.ke, %2
  br i1 %i.kf, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3, label %bb.aj

bb.aj:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jx
  %i.kh = load i32, ptr %i.kg, align 1
  %i.ki = tail call i32 @llvm.bswap.i32(i32 %i.kh)
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = fmul nnan float %i.kj, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3: ; preds = %bb.aj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %.0.i.i291.3 = phi float [ %i.kk, %bb.aj ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2 ]
  store float %.0.i.i291.3, ptr %i.ds, align 4, !tbaa !58
  %i.kl = add nuw nsw i64 %.0.i256, 28            ; 2 uses
  %i.km = icmp samesign ugt i64 %i.kl, %2
  br i1 %i.km, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4, label %bb.ak

bb.ak:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ke
  %i.ko = load i32, ptr %i.kn, align 1
  %i.kp = tail call i32 @llvm.bswap.i32(i32 %i.ko)
  %i.kq = sitofp i32 %i.kp to float
  %i.kr = fmul nnan float %i.kq, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4: ; preds = %bb.ak, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %.0.i.i291.4 = phi float [ %i.kr, %bb.ak ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3 ]
  store float %.0.i.i291.4, ptr %i.dt, align 8, !tbaa !58
  %i.ks = add nuw nsw i64 %.0.i256, 32            ; 2 uses
  %i.kt = icmp samesign ugt i64 %i.ks, %2
  br i1 %i.kt, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5, label %bb.al

bb.al:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl
  %i.kv = load i32, ptr %i.ku, align 1
  %i.kw = tail call i32 @llvm.bswap.i32(i32 %i.kv)
  %i.kx = sitofp i32 %i.kw to float
  %i.ky = fmul nnan float %i.kx, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5: ; preds = %bb.al, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %.0.i.i291.5 = phi float [ %i.ky, %bb.al ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4 ]
  store float %.0.i.i291.5, ptr %i.du, align 4, !tbaa !58
  %i.kz = add nuw nsw i64 %.0.i256, 36            ; 2 uses
  %i.la = icmp samesign ugt i64 %i.kz, %2
  br i1 %i.la, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6, label %bb.am

bb.am:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ks
  %i.lc = load i32, ptr %i.lb, align 1
  %i.ld = tail call i32 @llvm.bswap.i32(i32 %i.lc)
  %i.le = sitofp i32 %i.ld to float
  %i.lf = fmul nnan float %i.le, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6: ; preds = %bb.am, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %.0.i.i291.6 = phi float [ %i.lf, %bb.am ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5 ]
  store float %.0.i.i291.6, ptr %i.dv, align 8, !tbaa !58
  %i.lg = add nuw nsw i64 %.0.i256, 40            ; 2 uses
  %i.lh = icmp samesign ugt i64 %i.lg, %2
  br i1 %i.lh, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7, label %bb.an

bb.an:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 %i.kz
  %i.lj = load i32, ptr %i.li, align 1
  %i.lk = tail call i32 @llvm.bswap.i32(i32 %i.lj)
  %i.ll = sitofp i32 %i.lk to float
  %i.lm = fmul nnan float %i.ll, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7: ; preds = %bb.an, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %.0.i.i291.7 = phi float [ %i.lm, %bb.an ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6 ]
  store float %.0.i.i291.7, ptr %i.dw, align 4, !tbaa !58
  %i.ln = add nuw nsw i64 %.0.i256, 44            ; 2 uses
  %i.lo = icmp samesign ugt i64 %i.ln, %2
  br i1 %i.lo, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, label %bb.ao

bb.ao:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg
  %i.lq = load i32, ptr %i.lp, align 1
  %i.lr = tail call i32 @llvm.bswap.i32(i32 %i.lq)
  %i.ls = sitofp i32 %i.lr to float
  %i.lt = fmul nnan float %i.ls, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8: ; preds = %bb.ao, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %.0.i.i291.8 = phi float [ %i.lt, %bb.ao ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7 ]
  store float %.0.i.i291.8, ptr %i.dx, align 8, !tbaa !58
  store i32 1, ptr %i.e, align 4, !tbaa !59
  br label %.critedge

bb.ap:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.lu = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.9)
  %.not233 = icmp eq i32 %i.lu, 0
  br i1 %.not233, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.lv = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.10)
  %.not234 = icmp eq i32 %i.lv, 0
  br i1 %.not234, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.lw = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.11)
  %.not235 = icmp eq i32 %i.lw, 0
  br i1 %.not235, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lx = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.12)
  %.not236 = icmp eq i32 %i.lx, 0
  br i1 %.not236, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !21  ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 98
  %i.mb = icmp eq i8 %i.lz, 103
  %i.mc = zext i1 %i.mb to i32
  %i.md = select i1 %i.ma, i32 2, i32 %i.mc       ; 2 uses
  %i.me = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0.i256, ptr noundef nonnull @.str.13)
  %.not237 = icmp eq i32 %i.me, 0
  br i1 %.not237, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mf = zext nneg i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.mf ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.mh = add nuw nsw i64 %.0.i256, 12            ; 6 uses
  %i.mi = icmp samesign ugt i64 %i.mh, %2
  br i1 %i.mi, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294:     ; preds = %bb.au
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i32, ptr %i.mk, align 1
  %i.mm = tail call i32 @llvm.bswap.i32(i32 %i.ml) ; 4 uses
  %i.mn = zext i32 %i.mm to i64                   ; 4 uses
  switch i32 %i.mm, label %bb.ax [
    i32 0, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread
    i32 1, label %bb.av
  ]

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread: ; preds = %bb.au, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 0, ptr %i.mg, align 8, !tbaa !60
  br label %.loopexit

bb.av:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 2, ptr %i.mg, align 8, !tbaa !60
  %i.mo = add nuw nsw i64 %.0.i256, 14            ; 2 uses
  %i.mp = icmp samesign ugt i64 %i.mo, %2
  br i1 %i.mp, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mh ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !21
  %i.ms = zext i8 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 8
  %i.mu = getelementptr i8, ptr %i.mq, i64 1
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !21
  %i.mw = zext i8 %i.mv to i32
  %i.mx = or disjoint i32 %i.mt, %i.mw
  %i.my = uitofp nneg i32 %i.mx to float
  %i.mz = fmul nnan float %i.my, 3.906250e-03
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit:        ; preds = %bb.av, %bb.aw
  %.0.i295 = phi float [ %i.mz, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  store float %.0.i295, ptr %i.na, align 8, !tbaa !61
  br label %.loopexit

bb.ax:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 1, ptr %i.mg, align 8, !tbaa !60
  %i.nb = shl nuw nsw i64 %i.mn, 1
  %i.nc = add nuw nsw i64 %i.nb, %i.mh
  %i.nd = icmp samesign ugt i64 %i.nc, %2
  %i.ne = icmp ugt i32 %i.mm, 16777216
  %or.cond = or i1 %i.ne, %i.nd
  br i1 %or.cond, label %.critedge243, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ax
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i64 %i.mn, ptr %i.nf, align 8, !tbaa !62
  %i.ng = shl nuw nsw i64 %i.mn, 2
  %i.nh = tail call noalias noundef ptr @malloc(i64 noundef %i.ng) #32 ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !48
  %umax421 = tail call i64 @llvm.umax.i64(i64 %i.mn, i64 1) ; 3 uses
  %i.nj = icmp ult i32 %i.mm, 2
  br i1 %i.nj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax421, 33554430
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, %.lr.ph.preheader.new
  %.1213398 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ol, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %.1397 = phi i64 [ %i.mh, %.lr.ph.preheader.new ], [ %i.nx, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ]
  %i.nk = add nuw nsw i64 %.1397, 2               ; 2 uses
  %i.nl = icmp samesign ugt i64 %i.nk, %2
  br i1 %i.nl, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %.1397 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !21
  %i.no = zext i8 %i.nn to i32
  %i.np = shl nuw nsw i32 %i.no, 8
  %i.nq = getelementptr i8, ptr %i.nm, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !21
  %i.ns = zext i8 %i.nr to i32
  %i.nt = or disjoint i32 %i.np, %i.ns
  %i.nu = uitofp nneg i32 %i.nt to float
  %i.nv = fmul nnan float %i.nu, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297:     ; preds = %.lr.ph, %bb.ay
  %.0.i296 = phi float [ %i.nv, %bb.ay ], [ 0.000000e+00, %.lr.ph ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.1213398
  store float %.0.i296, ptr %i.nw, align 4, !tbaa !58
  %i.nx = add nuw nsw i64 %.1397, 4               ; 4 uses
  %i.ny = icmp samesign ugt i64 %i.nx, %2
  br i1 %i.ny, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, label %bb.az

bb.az:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %i.nk ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !21
  %i.ob = zext i8 %i.oa to i32
  %i.oc = shl nuw nsw i32 %i.ob, 8
  %i.od = getelementptr i8, ptr %i.nz, i64 1
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !21
  %i.of = zext i8 %i.oe to i32
  %i.og = or disjoint i32 %i.oc, %i.of
  %i.oh = uitofp nneg i32 %i.og to float
  %i.oi = fmul nnan float %i.oh, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1:   ; preds = %bb.az, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %.0.i296.1 = phi float [ %i.oi, %bb.az ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297 ]
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.1213398
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store float %.0.i296.1, ptr %i.ok, align 4, !tbaa !58
  %i.ol = add nuw nsw i64 %.1213398, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !111

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1
  %3 = trunc i64 %umax421 to i1
  br i1 %3, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1213398.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ol, %.loopexit.loopexit.unr-lcssa ]
  %.1397.epil.init = phi i64 [ %i.mh, %.lr.ph.preheader ], [ %i.nx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod423 = trunc i64 %umax421 to i1
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.om = add nuw nsw i64 %.1397.epil.init, 2     ; 2 uses
  %i.on = icmp samesign ugt i64 %i.om, %2
  br i1 %i.on, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.epil.preheader
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 %.1397.epil.init ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !21
  %i.oq = zext i8 %i.op to i32
  %i.or = shl nuw nsw i32 %i.oq, 8
  %i.os = getelementptr i8, ptr %i.oo, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !21
  %i.ou = zext i8 %i.ot to i32
  %i.ov = or disjoint i32 %i.or, %i.ou
  %i.ow = uitofp nneg i32 %i.ov to float
  %i.ox = fmul nnan float %i.ow, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil: ; preds = %bb.ba, %.lr.ph.epil.preheader
  %.0.i296.epil = phi float [ %i.ox, %bb.ba ], [ 0.000000e+00, %.lr.ph.epil.preheader ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.1213398.epil.init
  store float %.0.i296.epil, ptr %i.oy, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, %.loopexit.loopexit.unr-lcssa, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, %bb.at
  %.2 = phi i64 [ %.0.i256, %bb.at ], [ %i.mo, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit ], [ %i.mh, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread ], [ %i.nx, %.loopexit.loopexit.unr-lcssa ], [ %i.om, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil ] ; 12 uses
  %i.oz = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.2, ptr noundef nonnull @.str.14)
  %.not238 = icmp eq i32 %i.oz, 0
  br i1 %.not238, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.pa = zext nneg i32 %i.md to i64
  %i.pb = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.pa ; 8 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.pc = add i64 %.2, 10
  %i.pd = icmp ugt i64 %i.pc, %2
  br i1 %i.pd, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299:     ; preds = %bb.bb
  %i.pe = getelementptr i8, ptr %1, i64 %.2       ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.ph = zext i8 %i.pg to i32
  %i.pi = shl nuw nsw i32 %i.ph, 8
  %i.pj = getelementptr i8, ptr %i.pe, i64 9
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !21
  %i.pl = zext i8 %i.pk to i32
  %i.pm = or disjoint i32 %i.pi, %i.pl            ; 2 uses
  %i.pn = icmp samesign ult i32 %i.pm, 5
  br i1 %i.pn, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %.critedge243

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread: ; preds = %bb.bb, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299
  %.0.i298381 = phi i32 [ %i.pm, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 0, %bb.bb ] ; 5 uses
  %i.po = add nuw nsw i32 %.0.i298381, 2
  store i32 %i.po, ptr %i.pb, align 8, !tbaa !60
  %i.pp = add i64 %.2, 16                         ; 3 uses
  %i.pq = icmp ugt i64 %i.pp, %2
  br i1 %i.pq, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, label %bb.bc

bb.bc:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread
  %i.pr = getelementptr i8, ptr %1, i64 %.2
  %i.ps = getelementptr i8, ptr %i.pr, i64 12
  %i.pt = load i32, ptr %i.ps, align 1
  %i.pu = tail call i32 @llvm.bswap.i32(i32 %i.pt)
  %i.pv = sitofp i32 %i.pu to float
  %i.pw = fmul nnan float %i.pv, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301:  ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, %bb.bc
  %.0.i.i300 = phi float [ %i.pw, %bb.bc ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  store float %.0.i.i300, ptr %i.px, align 8, !tbaa !61
  %.not239 = icmp eq i32 %.0.i298381, 0
  br i1 %.not239, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301
  %i.py = add i64 %.2, 20                         ; 2 uses
  %i.pz = icmp ugt i64 %i.py, %2
  br i1 %i.pz, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 %i.pp
  %i.qb = load i32, ptr %i.qa, align 1
  %i.qc = tail call i32 @llvm.bswap.i32(i32 %i.qb)
  %i.qd = sitofp i32 %i.qc to float
  %i.qe = fmul nnan float %i.qd, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303:  ; preds = %bb.bd, %bb.be
  %.0.i.i302 = phi float [ %i.qe, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pb, i64 28
  store float %.0.i.i302, ptr %i.qf, align 4, !tbaa !63
  %i.qg = add i64 %.2, 24                         ; 3 uses
  %i.qh = icmp ugt i64 %i.qg, %2
  br i1 %i.qh, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 %i.py
  %i.qj = load i32, ptr %i.qi, align 1
  %i.qk = tail call i32 @llvm.bswap.i32(i32 %i.qj)
  %i.ql = sitofp i32 %i.qk to float
  %i.qm = fmul nnan float %i.ql, f0x37800000
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %.0.i.i304 = phi float [ %i.qm, %bb.bf ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303 ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  store float %.0.i.i304, ptr %i.qn, align 8, !tbaa !64
  %.not393 = icmp eq i32 %.0.i298381, 1
  br i1 %.not393, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qo = add i64 %.2, 28                         ; 3 uses
  %i.qp = icmp ugt i64 %i.qo, %2
  br i1 %i.qp, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 %i.qg
  %i.qr = load i32, ptr %i.qq, align 1
  %i.qs = tail call i32 @llvm.bswap.i32(i32 %i.qr)
  %i.qt = sitofp i32 %i.qs to float
  %i.qu = fmul nnan float %i.qt, f0x37800000
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i306 = phi float [ %i.qu, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pb, i64 36
  store float %.0.i.i306, ptr %i.qv, align 4, !tbaa !65
  %i.qw = icmp samesign ugt i32 %.0.i298381, 2
  br i1 %i.qw, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.qx = add i64 %.2, 32                         ; 3 uses
  %i.qy = icmp ugt i64 %i.qx, %2
  br i1 %i.qy, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %i.qo
  %i.ra = load i32, ptr %i.qz, align 1
  %i.rb = tail call i32 @llvm.bswap.i32(i32 %i.ra)
  %i.rc = sitofp i32 %i.rb to float
  %i.rd = fmul nnan float %i.rc, f0x37800000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i.i308 = phi float [ %i.rd, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  store float %.0.i.i308, ptr %i.re, align 8, !tbaa !66
  %i.rf = icmp eq i32 %.0.i298381, 4
  br i1 %i.rf, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.rg = add i64 %.2, 36                         ; 2 uses
  %i.rh = icmp ugt i64 %i.rg, %2
  br i1 %i.rh, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 %i.qx
  %i.rj = load i32, ptr %i.ri, align 1
  %i.rk = tail call i32 @llvm.bswap.i32(i32 %i.rj)
  %i.rl = sitofp i32 %i.rk to float
  %i.rm = fmul nnan float %i.rl, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311:  ; preds = %bb.bn, %bb.bo
  %.0.i.i310 = phi float [ %i.rm, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pb, i64 44
  store float %.0.i.i310, ptr %i.rn, align 4, !tbaa !115
  %i.ro = add i64 %.2, 40                         ; 2 uses
  %i.rp = icmp ugt i64 %i.ro, %2
  br i1 %i.rp, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, label %bb.bp

bb.bp:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 %i.rg
  %i.rr = load i32, ptr %i.rq, align 1
  %i.rs = tail call i32 @llvm.bswap.i32(i32 %i.rr)
  %i.rt = sitofp i32 %i.rs to float
  %i.ru = fmul nnan float %i.rt, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, %bb.bp
  %.0.i.i312 = phi float [ %i.ru, %bb.bp ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311 ]
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  store float %.0.i.i312, ptr %i.rv, align 8, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, %bb.bg, %bb.bj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, %bb.bm, %.loopexit, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, %bb.as, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266
  %.7 = phi i64 [ %.0.i256, %bb.as ], [ %.2, %.loopexit ], [ %i.fo, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266 ], [ %i.ln, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8 ], [ %i.ja, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290 ], [ %i.hw, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282 ], [ %i.gs, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274 ], [ %i.ro, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313 ], [ %i.qx, %bb.bm ], [ %i.qo, %bb.bj ], [ %i.qg, %bb.bg ], [ %i.pp, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301 ]
  %.not394 = icmp ugt i64 %.7, %2
  br i1 %.not394, label %.critedge243, label %bb.b

.critedge243:                                     ; preds = %.critedge, %bb.b, %bb.ax, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299, %bb.f, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, %.preheader, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit, %bb.a
  %.8 = phi i32 [ 1, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit ], [ 1, %bb.a ], [ 0, %.preheader ], [ 1, %bb.f ], [ 1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 1, %bb.ax ], [ 0, %bb.b ], [ 1, %.critedge ], [ 1, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259 ]
  ret i32 %.8
}
end_hunk_0
begin_hunk_1_@_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf:bb.a
  %i.r = uitofp i64 %i.j to float
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %1, float %i.h, float %i.s) ; 2 uses
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = fmul float %i.t, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.v)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.x = fcmp ogt float %1, 0.000000e+00
  br i1 %i.x, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load float, ptr %i.y, align 8, !tbaa !61
  %i.aa = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %1, float noundef %i.z)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  %i.ab = fcmp olt float %1, 0.000000e+00
  br i1 %i.ab, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.ae = fneg float %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load float, ptr %i.af, align 4, !tbaa !63 ; 2 uses
  %i.ah = fdiv float %i.ae, %i.ag
  %i.ai = fcmp ult float %1, %i.ah
  br i1 %i.ai, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %1, float %i.ad)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load float, ptr %i.ak, align 8, !tbaa !61
  %i.am = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.aj, float noundef %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !65
  %i.ap = fadd float %i.am, %i.ao
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  %i.aq = fcmp olt float %1, 0.000000e+00
  br i1 %i.aq, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load float, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load float, ptr %i.au, align 4, !tbaa !63 ; 2 uses
  %i.aw = fdiv float %i.at, %i.av
  %i.ax = fcmp ult float %1, %i.aw
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.av, float %1, float %i.as)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load float, ptr %i.az, align 8, !tbaa !61
  %i.bb = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.ay, float noundef %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !65
  %i.be = fadd float %i.bb, %i.bd
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !65
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !66
  %i.bj = fcmp ult float %1, %i.bi
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !64
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bl, float %1, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !61
  %i.br = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.bo, float noundef %i.bq)
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !65
  %i.bu = fmul float %1, %i.bt
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !66
  %i.bx = fcmp ult float %1, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bz = load float, ptr %i.by, align 4, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !64
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bz, float %1, float %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !61
  %i.cf = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.cc, float noundef %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !65
  %i.ci = fadd float %i.cf, %i.ch
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !67
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %1, float %i.cm)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.a, %bb.r, %bb.s, %bb.o, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.c, %bb.d, %bb.w
  %.1 = phi float [ 0.000000e+00, %bb.w ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %bb.h ], [ %1, %bb.j ], [ 0.000000e+00, %bb.k ], [ %1, %bb.m ], [ %i.bg, %bb.p ], [ %i.bu, %bb.s ], [ 0.000000e+00, %bb.b ], [ %1, %bb.c ], [ %i.w, %bb.g ], [ %i.aa, %bb.i ], [ %i.ap, %bb.l ], [ %i.be, %bb.o ], [ %i.br, %bb.r ], [ %i.ci, %bb.u ], [ %i.cn, %bb.v ]
  ret float %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %0, float noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = fcmp oeq float %0, 1.000000e+00
  %i.b = fcmp oeq float %1, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %common.ret233, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq float %1, 1.000000e+00
  br i1 %i.c, label %common.ret233, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp ogt float %0, 0.000000e+00          ; 2 uses
  %i.e = fcmp ole float %0, f0x7F7FFFFF
  %i.f = tail call float @llvm.fabs.f32(float %1) ; 3 uses
  %i.g = fcmp ole float %i.f, f0x7F7FFFFF
  %i.h = and i1 %i.e, %i.g
  %or.cond7 = and i1 %i.d, %i.h
  br i1 %or.cond7, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond129 = fcmp uno float %0, %1
  br i1 %or.cond129, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = fadd float %0, %1
  br label %common.ret233

bb.f:                                             ; preds = %bb.d
  br i1 %i.d, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = fcmp ogt float %0, f0x7F7FFFFF
  br i1 %i.j, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.k = fcmp ugt float %1, 0.000000e+00
  %. = select i1 %i.k, float %0, float 0.000000e+00
  br label %common.ret233

bb.i:                                             ; preds = %bb.f
  %or.cond9 = fcmp ogt float %i.f, f0x4E800000
  br i1 %or.cond9, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = fptosi float %1 to i32                   ; 3 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fcmp une float %1, %i.m
  br i1 %i.n, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.o = fcmp olt float %0, f0xFF7FFFFF
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = fcmp olt float %1, 0.000000e+00
  %i.q = select i1 %i.p, float 0.000000e+00, float +inf
  br label %common.ret233

bb.m:                                             ; preds = %bb.k
  %i.r = fcmp oeq float %0, 0.000000e+00
  br i1 %i.r, label %bb.n, label %common.ret233

bb.n:                                             ; preds = %bb.m
  %i.s = fcmp olt float %1, 0.000000e+00
  %i.t = select i1 %i.s, float +inf, float 0.000000e+00
  br label %common.ret233

bb.o:                                             ; preds = %bb.j
  %2 = trunc i32 %i.l to i1
  br i1 %2, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.u = fcmp oeq float %0, 0.000000e+00
  br i1 %i.u, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = fcmp olt float %1, 0.000000e+00
  %i.w = fdiv float 1.000000e+00, %0
  %i.x = select i1 %i.v, float %i.w, float %0
  br label %common.ret233

common.ret233:                                    ; preds = %bb.ad, %._crit_edge160.thread, %bb.z, %bb.y, %bb.w, %bb.q, %bb.l, %bb.n, %bb.m, %bb.b, %bb.a, %bb.ab, %bb.v, %bb.t, %bb.h, %bb.e, %bb.r
  %common.ret231.op = phi float [ %i.aa, %bb.r ], [ %i.da, %bb.ad ], [ +qnan, %bb.m ], [ 1.000000e+00, %bb.a ], [ %i.br, %bb.ab ], [ 0.000000e+00, %bb.y ], [ %i.i, %bb.e ], [ %., %bb.h ], [ 1.000000e+00, %bb.w ], [ %i.ad, %bb.t ], [ %i.af, %bb.v ], [ %i.de, %._crit_edge160.thread ], [ %0, %bb.b ], [ %i.q, %bb.l ], [ %i.t, %bb.n ], [ %i.x, %bb.q ], [ %i.am, %bb.z ]
  ret float %common.ret231.op

bb.r:                                             ; preds = %bb.p
  %i.y = fneg float %0
  %i.z = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.y, float noundef %1)
  %i.aa = fneg float %i.z
  br label %common.ret233

bb.s:                                             ; preds = %bb.o, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.l, %bb.o ]
  %i.ab = fcmp oeq float %0, 0.000000e+00
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ac = fcmp ole float %1, 0.000000e+00
  %i.ad = select i1 %i.ac, float +inf, float 0.000000e+00
  br label %common.ret233

bb.u:                                             ; preds = %bb.s
  %i.ae = fcmp olt float %0, f0xFF7FFFFF
  br i1 %i.ae, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %3 = fcmp ugt float %1, 0.000000e+00
  %4 = trunc i32 %.0 to i1
  %5 = select i1 %4, float -inf, float +inf
  %i.af = select i1 %3, float %5, float 0.000000e+00
  br label %common.ret233

bb.w:                                             ; preds = %bb.u
  %i.ag = fneg float %0
  %i.ah = fcmp oeq float %0, -1.000000e+00
  br i1 %i.ah, label %common.ret233, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.g
  %.0121 = phi float [ %0, %bb.g ], [ %i.ag, %bb.w ] ; 2 uses
  %or.cond11 = fcmp ogt float %i.f, f0x7F7FFFFF
  br i1 %or.cond11, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ai = fcmp olt float %.0121, 1.000000e+00
  %i.aj = fcmp ule float %1, 0.000000e+00
  %.not128 = xor i1 %i.aj, %i.ai
  br i1 %.not128, label %common.ret233, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ak = fcmp olt float %1, 0.000000e+00
  %i.al = fneg float %1
  %i.am = select i1 %i.ak, float %i.al, float %1
  br label %common.ret233

bb.aa:                                            ; preds = %bb.x, %bb.c
  %.1122 = phi float [ %0, %bb.c ], [ %.0121, %bb.x ] ; 4 uses
  %i.an = fcmp olt float %.1122, f0x37800000
  br i1 %i.an, label %.lr.ph, label %.preheader132

.preheader132:                                    ; preds = %.lr.ph, %bb.aa
  %.0116.lcssa = phi float [ 0.000000e+00, %bb.aa ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.0111.lcssa = phi float [ %.1122, %bb.aa ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.ao = fcmp ogt float %.0111.lcssa, 6.553600e+04
  br i1 %i.ao, label %.lr.ph138, label %.preheader131

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.0111134 = phi float [ %i.aq, %.lr.ph ], [ %.1122, %bb.aa ]
  %.0116133 = phi float [ %i.ap, %.lr.ph ], [ 0.000000e+00, %bb.aa ]
  %i.ap = fadd float %.0116133, -1.600000e+01     ; 2 uses
  %i.aq = fmul nnan float %.0111134, 6.553600e+04 ; 3 uses
  %i.ar = fcmp olt float %i.aq, f0x37800000
  br i1 %i.ar, label %.lr.ph, label %.preheader132, !llvm.loop !148

.preheader131:                                    ; preds = %.lr.ph138, %.preheader132
  %.1117.lcssa = phi float [ %.0116.lcssa, %.preheader132 ], [ %i.at, %.lr.ph138 ] ; 2 uses
  %.1112.lcssa = phi float [ %.0111.lcssa, %.preheader132 ], [ %i.au, %.lr.ph138 ] ; 3 uses
  %i.as = fcmp olt float %.1112.lcssa, 1.000000e+00
  br i1 %i.as, label %.lr.ph143, label %.preheader130

.lr.ph138:                                        ; preds = %.preheader132, %.lr.ph138
  %.1112137 = phi float [ %i.au, %.lr.ph138 ], [ %.0111.lcssa, %.preheader132 ]
  %.1117136 = phi float [ %i.at, %.lr.ph138 ], [ %.0116.lcssa, %.preheader132 ]
  %i.at = fadd float %.1117136, 1.600000e+01      ; 2 uses
  %i.au = fmul nnan float %.1112137, f0x37800000  ; 3 uses
  %i.av = fcmp ogt float %i.au, 6.553600e+04
  br i1 %i.av, label %.lr.ph138, label %.preheader131, !llvm.loop !149

.preheader130:                                    ; preds = %.lr.ph143, %.preheader131
  %.2118.lcssa = phi float [ %.1117.lcssa, %.preheader131 ], [ %i.ax, %.lr.ph143 ] ; 2 uses
  %.2113.lcssa = phi float [ %.1112.lcssa, %.preheader131 ], [ %i.ay, %.lr.ph143 ] ; 3 uses
  %i.aw = fcmp ogt float %.2113.lcssa, 2.000000e+00
  br i1 %i.aw, label %.lr.ph148, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader131, %.lr.ph143
  %.2113142 = phi float [ %i.ay, %.lr.ph143 ], [ %.1112.lcssa, %.preheader131 ]
  %.2118141 = phi float [ %i.ax, %.lr.ph143 ], [ %.1117.lcssa, %.preheader131 ]
  %i.ax = fadd float %.2118141, -1.000000e+00     ; 2 uses
  %i.ay = fmul nnan float %.2113142, 2.000000e+00 ; 3 uses
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %.lr.ph143, label %.preheader130, !llvm.loop !150

.lr.ph148:                                        ; preds = %.preheader130, %.lr.ph148
  %.3147 = phi float [ %i.bb, %.lr.ph148 ], [ %.2113.lcssa, %.preheader130 ]
  %.3119146 = phi float [ %i.ba, %.lr.ph148 ], [ %.2118.lcssa, %.preheader130 ]
  %i.ba = fadd float %.3119146, 1.000000e+00      ; 2 uses
  %i.bb = fmul nnan float %.3147, 5.000000e-01    ; 3 uses
  %i.bc = fcmp ogt float %i.bb, 2.000000e+00
  br i1 %i.bc, label %.lr.ph148, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph148, %.preheader130
  %.3119.lcssa = phi float [ %.2118.lcssa, %.preheader130 ], [ %i.ba, %.lr.ph148 ]
  %.3.lcssa = phi float [ %.2113.lcssa, %.preheader130 ], [ %i.bb, %.lr.ph148 ]
  %i.bd = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.3.lcssa, i64 0 ; 2 uses
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> <float f0x3C7B5381, float 0.000000e+00>, <2 x float> <float f0x3EEEAA40, float f0x3E0C8592>)
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.be, <2 x float> <float f0xBDB4F828, float f0x3EC71CDB>)
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> <float f0xBEC946D1, float f0x3DB9D868>) ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fdiv float %i.bi, %i.bj
  %i.bl = fadd float %.3119.lcssa, %i.bk
  %i.bm = fmul float %1, %i.bl                    ; 3 uses
  %i.bn = tail call float @llvm.fabs.f32(float %i.bm)
  %or.cond13 = fcmp ult float %i.bn, 1.280000e+02
  br i1 %or.cond13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.bo = fcmp ogt float %.1122, 1.000000e+00
  %i.bp = fcmp ule float %1, 0.000000e+00
  %i.bq = xor i1 %i.bp, %i.bo
  %i.br = select i1 %i.bq, float +inf, float 0.000000e+00
  br label %common.ret233

bb.ac:                                            ; preds = %._crit_edge
  %i.bs = fptosi float %i.bm to i32               ; 8 uses
  %i.bt = sitofp i32 %i.bs to float
  %i.bu = fsub float %i.bm, %i.bt                 ; 5 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float f0x3BB8A601, float f0x3D953178)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float f0x3ED5E70B)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bw, float 1.000000e+00) ; 4 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float f0x3CC0861B, float f0xBE8CFD51)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.by, float 1.000000e+00) ; 2 uses
  %i.ca = icmp slt i32 %i.bs, -30
  br i1 %i.ca, label %.lr.ph154, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.cb = icmp sgt i32 %i.bs, 30
  br i1 %i.cb, label %.lr.ph159.preheader, label %._crit_edge160

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.cc = add nsw i32 %i.bs, -31                  ; 2 uses
  %i.cd = udiv i32 %i.cc, 31
  %i.ce = add nuw nsw i32 %i.cd, 1
  %xtraiter = and i32 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader, %.lr.ph159.prol
  %.2158.prol = phi i32 [ %i.cg, %.lr.ph159.prol ], [ %i.bs, %.lr.ph159.preheader ]
  %.1115157.prol = phi float [ %i.cf, %.lr.ph159.prol ], [ %i.bx, %.lr.ph159.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph159.prol ], [ 0, %.lr.ph159.preheader ]
  %i.cf = fmul float %.1115157.prol, f0x4F000000  ; 3 uses
  %i.cg = add nsw i32 %.2158.prol, -31            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol, !llvm.loop !152

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.2158.unr = phi i32 [ %i.bs, %.lr.ph159.preheader ], [ %i.cg, %.lr.ph159.prol ]
  %.1115157.unr = phi float [ %i.bx, %.lr.ph159.preheader ], [ %i.cf, %.lr.ph159.prol ]
  %.lcssa211.unr = phi float [ poison, %.lr.ph159.preheader ], [ %i.cf, %.lr.ph159.prol ]
  %.lcssa210.unr = phi i32 [ poison, %.lr.ph159.preheader ], [ %i.cg, %.lr.ph159.prol ]
  %i.ch = icmp ult i32 %i.cc, 217
  br i1 %i.ch, label %._crit_edge160.thread, label %.lr.ph159

.lr.ph154:                                        ; preds = %bb.ac, %.lr.ph154
  %.1152 = phi i32 [ %i.cj, %.lr.ph154 ], [ %i.bs, %bb.ac ] ; 2 uses
  %.0114151 = phi float [ %i.ci, %.lr.ph154 ], [ %i.bx, %bb.ac ]
  %i.ci = fmul float %.0114151, f0x30000000       ; 2 uses
  %i.cj = add nsw i32 %.1152, 31                  ; 2 uses
  %i.ck = icmp samesign ult i32 %.1152, -61
  br i1 %i.ck, label %.lr.ph154, label %._crit_edge160, !llvm.loop !153

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %.2158 = phi i32 [ %i.ct, %.lr.ph159 ], [ %.2158.unr, %.lr.ph159.prol.loopexit ] ; 2 uses
  %.1115157 = phi float [ %i.cs, %.lr.ph159 ], [ %.1115157.unr, %.lr.ph159.prol.loopexit ]
  %i.cl = fmul float %.1115157, f0x4F000000
  %i.cm = fmul float %i.cl, f0x4F000000
  %i.cn = fmul float %i.cm, f0x4F000000
  %i.co = fmul float %i.cn, f0x4F000000
  %i.cp = fmul float %i.co, f0x4F000000
  %i.cq = fmul float %i.cp, f0x4F000000
  %i.cr = fmul float %i.cq, f0x4F000000
  %i.cs = fmul float %i.cr, f0x4F000000           ; 2 uses
  %i.ct = add nsw i32 %.2158, -248                ; 2 uses
  %i.cu = icmp sgt i32 %.2158, 278
  br i1 %i.cu, label %.lr.ph159, label %._crit_edge160.thread, !llvm.loop !154

._crit_edge160:                                   ; preds = %.lr.ph154, %.preheader
  %.1115.lcssa = phi float [ %i.bx, %.preheader ], [ %i.ci, %.lr.ph154 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bs, %.preheader ], [ %i.cj, %.lr.ph154 ] ; 3 uses
  %i.cv = icmp slt i32 %.2.lcssa, 0
  br i1 %i.cv, label %bb.ad, label %._crit_edge160.thread

bb.ad:                                            ; preds = %._crit_edge160
  %i.cw = sub nsw i32 0, %.2.lcssa
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = uitofp nneg i32 %i.cx to float
  %i.cz = fmul float %i.bz, %i.cy
  %i.da = fdiv float %.1115.lcssa, %i.cz
  br label %common.ret233

._crit_edge160.thread:                            ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159, %._crit_edge160
  %.2.lcssa186 = phi i32 [ %.2.lcssa, %._crit_edge160 ], [ %.lcssa210.unr, %.lr.ph159.prol.loopexit ], [ %i.ct, %.lr.ph159 ]
  %.1115.lcssa185 = phi float [ %.1115.lcssa, %._crit_edge160 ], [ %.lcssa211.unr, %.lr.ph159.prol.loopexit ], [ %i.cs, %.lr.ph159 ]
  %i.db = shl nuw nsw i32 1, %.2.lcssa186
  %i.dc = uitofp nneg i32 %i.db to float
  %i.dd = fmul float %.1115.lcssa185, %i.dc
  %i.de = fdiv float %i.dd, %i.bz
  br label %common.ret233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 9 uses
  %i.b = alloca [9 x float], align 16             ; 11 uses
  %i.c = alloca [9 x float], align 16             ; 10 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b
end_hunk_1
