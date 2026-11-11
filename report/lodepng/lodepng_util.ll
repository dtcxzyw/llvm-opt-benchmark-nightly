Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm:bb.a
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 %i.ir
  %i.jb = load i32, ptr %i.ja, align 1
  %i.jc = tail call i32 @llvm.bswap.i32(i32 %i.jb)
  %i.jd = sitofp i32 %i.jc to float
  %i.je = fmul nnan float %i.jd, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288, %bb.ae
  %.0.i.i289 = phi float [ %i.je, %bb.ae ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288 ]
  store float %.0.i.i289, ptr %i.s, align 8, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread:   ; preds = %bb.g, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, %bb.i, %bb.h, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, %bb.o, %bb.n, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276, %bb.u, %bb.t, %bb.z, %bb.aa, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284
  %i.jf = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.8)
  %.not232 = icmp eq i32 %i.jf, 0
  br i1 %.not232, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.jg = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.jh = icmp samesign ugt i64 %i.jg, %2
  br i1 %i.jh, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 1
  %i.jl = tail call i32 @llvm.bswap.i32(i32 %i.jk)
  %i.jm = sitofp i32 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292:  ; preds = %bb.af, %bb.ag
  %.0.i.i291 = phi float [ %i.jn, %bb.ag ], [ 0.000000e+00, %bb.af ]
  store float %.0.i.i291, ptr %i.dk, align 8, !tbaa !58
  %i.jo = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.jp = icmp samesign ugt i64 %i.jo, %2
  br i1 %i.jp, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1, label %bb.ah

bb.ah:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 %i.jg
  %i.jr = load i32, ptr %i.jq, align 1
  %i.js = tail call i32 @llvm.bswap.i32(i32 %i.jr)
  %i.jt = sitofp i32 %i.js to float
  %i.ju = fmul nnan float %i.jt, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1: ; preds = %bb.ah, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %.0.i.i291.1 = phi float [ %i.ju, %bb.ah ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292 ]
  store float %.0.i.i291.1, ptr %i.do, align 4, !tbaa !58
  %i.jv = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.jw = icmp samesign ugt i64 %i.jv, %2
  br i1 %i.jw, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2, label %bb.ai

bb.ai:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %i.jo
  %i.jy = load i32, ptr %i.jx, align 1
  %i.jz = tail call i32 @llvm.bswap.i32(i32 %i.jy)
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = fmul nnan float %i.ka, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2: ; preds = %bb.ai, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %.0.i.i291.2 = phi float [ %i.kb, %bb.ai ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1 ]
  store float %.0.i.i291.2, ptr %i.dp, align 8, !tbaa !58
  %i.kc = add nuw nsw i64 %.0.i256, 24            ; 2 uses
  %i.kd = icmp samesign ugt i64 %i.kc, %2
  br i1 %i.kd, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3, label %bb.aj

bb.aj:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 %i.jv
  %i.kf = load i32, ptr %i.ke, align 1
  %i.kg = tail call i32 @llvm.bswap.i32(i32 %i.kf)
  %i.kh = sitofp i32 %i.kg to float
  %i.ki = fmul nnan float %i.kh, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3: ; preds = %bb.aj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %.0.i.i291.3 = phi float [ %i.ki, %bb.aj ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2 ]
  store float %.0.i.i291.3, ptr %i.dq, align 4, !tbaa !58
  %i.kj = add nuw nsw i64 %.0.i256, 28            ; 2 uses
  %i.kk = icmp samesign ugt i64 %i.kj, %2
  br i1 %i.kk, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4, label %bb.ak

bb.ak:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 %i.kc
  %i.km = load i32, ptr %i.kl, align 1
  %i.kn = tail call i32 @llvm.bswap.i32(i32 %i.km)
  %i.ko = sitofp i32 %i.kn to float
  %i.kp = fmul nnan float %i.ko, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4: ; preds = %bb.ak, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %.0.i.i291.4 = phi float [ %i.kp, %bb.ak ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3 ]
  store float %.0.i.i291.4, ptr %i.dr, align 8, !tbaa !58
  %i.kq = add nuw nsw i64 %.0.i256, 32            ; 2 uses
  %i.kr = icmp samesign ugt i64 %i.kq, %2
  br i1 %i.kr, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5, label %bb.al

bb.al:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kj
  %i.kt = load i32, ptr %i.ks, align 1
  %i.ku = tail call i32 @llvm.bswap.i32(i32 %i.kt)
  %i.kv = sitofp i32 %i.ku to float
  %i.kw = fmul nnan float %i.kv, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5: ; preds = %bb.al, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %.0.i.i291.5 = phi float [ %i.kw, %bb.al ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4 ]
  store float %.0.i.i291.5, ptr %i.ds, align 4, !tbaa !58
  %i.kx = add nuw nsw i64 %.0.i256, 36            ; 2 uses
  %i.ky = icmp samesign ugt i64 %i.kx, %2
  br i1 %i.ky, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6, label %bb.am

bb.am:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %i.kq
  %i.la = load i32, ptr %i.kz, align 1
  %i.lb = tail call i32 @llvm.bswap.i32(i32 %i.la)
  %i.lc = sitofp i32 %i.lb to float
  %i.ld = fmul nnan float %i.lc, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6: ; preds = %bb.am, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %.0.i.i291.6 = phi float [ %i.ld, %bb.am ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5 ]
  store float %.0.i.i291.6, ptr %i.dt, align 8, !tbaa !58
  %i.le = add nuw nsw i64 %.0.i256, 40            ; 2 uses
  %i.lf = icmp samesign ugt i64 %i.le, %2
  br i1 %i.lf, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7, label %bb.an

bb.an:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.kx
  %i.lh = load i32, ptr %i.lg, align 1
  %i.li = tail call i32 @llvm.bswap.i32(i32 %i.lh)
  %i.lj = sitofp i32 %i.li to float
  %i.lk = fmul nnan float %i.lj, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7: ; preds = %bb.an, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %.0.i.i291.7 = phi float [ %i.lk, %bb.an ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6 ]
  store float %.0.i.i291.7, ptr %i.du, align 4, !tbaa !58
  %i.ll = add nuw nsw i64 %.0.i256, 44            ; 2 uses
  %i.lm = icmp samesign ugt i64 %i.ll, %2
  br i1 %i.lm, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, label %bb.ao

bb.ao:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 %i.le
  %i.lo = load i32, ptr %i.ln, align 1
  %i.lp = tail call i32 @llvm.bswap.i32(i32 %i.lo)
  %i.lq = sitofp i32 %i.lp to float
  %i.lr = fmul nnan float %i.lq, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8: ; preds = %bb.ao, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %.0.i.i291.8 = phi float [ %i.lr, %bb.ao ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7 ]
  store float %.0.i.i291.8, ptr %i.dv, align 8, !tbaa !58
  store i32 1, ptr %i.e, align 4, !tbaa !59
  br label %.critedge

bb.ap:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.ls = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.9)
  %.not233 = icmp eq i32 %i.ls, 0
  br i1 %.not233, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.lt = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.10)
  %.not234 = icmp eq i32 %i.lt, 0
  br i1 %.not234, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.lu = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.11)
  %.not235 = icmp eq i32 %i.lu, 0
  br i1 %.not235, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lv = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.12)
  %.not236 = icmp eq i32 %i.lv, 0
  br i1 %.not236, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !21  ; 2 uses
  %i.ly = icmp eq i8 %i.lx, 98
  %i.lz = icmp eq i8 %i.lx, 103
  %i.ma = zext i1 %i.lz to i32
  %i.mb = select i1 %i.ly, i32 2, i32 %i.ma       ; 2 uses
  %i.mc = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0.i256, ptr noundef nonnull @.str.13)
  %.not237 = icmp eq i32 %i.mc, 0
  br i1 %.not237, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.md = zext nneg i32 %i.mb to i64
  %i.me = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.md ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.mf = add nuw nsw i64 %.0.i256, 12            ; 6 uses
  %i.mg = icmp samesign ugt i64 %i.mf, %2
  br i1 %i.mg, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294:     ; preds = %bb.au
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i32, ptr %i.mi, align 1
  %i.mk = tail call i32 @llvm.bswap.i32(i32 %i.mj) ; 4 uses
  %i.ml = zext i32 %i.mk to i64                   ; 4 uses
  switch i32 %i.mk, label %bb.ax [
    i32 0, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread
    i32 1, label %bb.av
  ]

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread: ; preds = %bb.au, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 0, ptr %i.me, align 8, !tbaa !60
  br label %.loopexit

bb.av:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 2, ptr %i.me, align 8, !tbaa !60
  %i.mm = add nuw nsw i64 %.0.i256, 14            ; 2 uses
  %i.mn = icmp samesign ugt i64 %i.mm, %2
  br i1 %i.mn, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !21
  %i.mq = zext i8 %i.mp to i32
  %i.mr = shl nuw nsw i32 %i.mq, 8
  %i.ms = getelementptr i8, ptr %i.mo, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !21
  %i.mu = zext i8 %i.mt to i32
  %i.mv = or disjoint i32 %i.mr, %i.mu
  %i.mw = uitofp nneg i32 %i.mv to float
  %i.mx = fmul nnan float %i.mw, 3.906250e-03
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit:        ; preds = %bb.av, %bb.aw
  %.0.i295 = phi float [ %i.mx, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  store float %.0.i295, ptr %i.my, align 8, !tbaa !61
  br label %.loopexit

bb.ax:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 1, ptr %i.me, align 8, !tbaa !60
  %i.mz = shl nuw nsw i64 %i.ml, 1
  %i.na = add nuw nsw i64 %i.mz, %i.mf
  %i.nb = icmp samesign ugt i64 %i.na, %2
  %i.nc = icmp ugt i32 %i.mk, 16777216
  %or.cond = or i1 %i.nc, %i.nb
  br i1 %or.cond, label %.critedge243, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ax
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store i64 %i.ml, ptr %i.nd, align 8, !tbaa !62
  %i.ne = shl nuw nsw i64 %i.ml, 2
  %i.nf = tail call noalias noundef ptr @malloc(i64 noundef %i.ne) #32 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !48
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ml, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %3 = icmp ult i32 %i.mk, 2
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, 33554430
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, %.lr.ph.preheader.new
  %.1213398 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.oi, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %.1397 = phi i64 [ %i.mf, %.lr.ph.preheader.new ], [ %i.nu, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ]
  %i.nh = add nuw nsw i64 %.1397, 2               ; 2 uses
  %i.ni = icmp samesign ugt i64 %i.nh, %2
  br i1 %i.ni, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 %.1397 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !21
  %i.nl = zext i8 %i.nk to i32
  %i.nm = shl nuw nsw i32 %i.nl, 8
  %i.nn = getelementptr i8, ptr %i.nj, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !21
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nm, %i.np
  %i.nr = uitofp nneg i32 %i.nq to float
  %i.ns = fmul nnan float %i.nr, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297:     ; preds = %.lr.ph, %bb.ay
  %.0.i296 = phi float [ %i.ns, %bb.ay ], [ 0.000000e+00, %.lr.ph ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.1213398
  store float %.0.i296, ptr %i.nt, align 4, !tbaa !58
  %i.nu = add nuw nsw i64 %.1397, 4               ; 4 uses
  %i.nv = icmp samesign ugt i64 %i.nu, %2
  br i1 %i.nv, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, label %bb.az

bb.az:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 %i.nh ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !21
  %i.ny = zext i8 %i.nx to i32
  %i.nz = shl nuw nsw i32 %i.ny, 8
  %i.oa = getelementptr i8, ptr %i.nw, i64 1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !21
  %i.oc = zext i8 %i.ob to i32
  %i.od = or disjoint i32 %i.nz, %i.oc
  %i.oe = uitofp nneg i32 %i.od to float
  %i.of = fmul nnan float %i.oe, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1:   ; preds = %bb.az, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %.0.i296.1 = phi float [ %i.of, %bb.az ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297 ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.1213398
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store float %.0.i296.1, ptr %i.oh, align 4, !tbaa !58
  %i.oi = add nuw nsw i64 %.1213398, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !111

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1213398.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.oi, %.loopexit.loopexit.unr-lcssa ]
  %.1397.epil.init = phi i64 [ %i.mf, %.lr.ph.preheader ], [ %i.nu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod422 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.oj = add nuw nsw i64 %.1397.epil.init, 2     ; 2 uses
  %i.ok = icmp samesign ugt i64 %i.oj, %2
  br i1 %i.ok, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.epil.preheader
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %.1397.epil.init ; 2 uses
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !21
  %i.on = zext i8 %i.om to i32
  %i.oo = shl nuw nsw i32 %i.on, 8
  %i.op = getelementptr i8, ptr %i.ol, i64 1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !21
  %i.or = zext i8 %i.oq to i32
  %i.os = or disjoint i32 %i.oo, %i.or
  %i.ot = uitofp nneg i32 %i.os to float
  %i.ou = fmul nnan float %i.ot, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil: ; preds = %bb.ba, %.lr.ph.epil.preheader
  %.0.i296.epil = phi float [ %i.ou, %bb.ba ], [ 0.000000e+00, %.lr.ph.epil.preheader ]
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.1213398.epil.init
  store float %.0.i296.epil, ptr %i.ov, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, %.loopexit.loopexit.unr-lcssa, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, %bb.at
  %.2 = phi i64 [ %.0.i256, %bb.at ], [ %i.mm, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit ], [ %i.mf, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread ], [ %i.nu, %.loopexit.loopexit.unr-lcssa ], [ %i.oj, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil ] ; 12 uses
  %i.ow = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.2, ptr noundef nonnull @.str.14)
  %.not238 = icmp eq i32 %i.ow, 0
  br i1 %.not238, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.ox = zext nneg i32 %i.mb to i64
  %i.oy = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.ox ; 8 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.oz = add i64 %.2, 10
  %i.pa = icmp ugt i64 %i.oz, %2
  br i1 %i.pa, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299:     ; preds = %bb.bb
  %i.pb = getelementptr i8, ptr %1, i64 %.2       ; 2 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 8
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !21
  %i.pe = zext i8 %i.pd to i32
  %i.pf = shl nuw nsw i32 %i.pe, 8
  %i.pg = getelementptr i8, ptr %i.pb, i64 9
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !21
  %i.pi = zext i8 %i.ph to i32
  %i.pj = or disjoint i32 %i.pf, %i.pi            ; 2 uses
  %i.pk = icmp samesign ult i32 %i.pj, 5
  br i1 %i.pk, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %.critedge243

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread: ; preds = %bb.bb, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299
  %.0.i298381 = phi i32 [ %i.pj, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 0, %bb.bb ] ; 5 uses
  %i.pl = add nuw nsw i32 %.0.i298381, 2
  store i32 %i.pl, ptr %i.oy, align 8, !tbaa !60
  %i.pm = add i64 %.2, 16                         ; 3 uses
  %i.pn = icmp ugt i64 %i.pm, %2
  br i1 %i.pn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, label %bb.bc

bb.bc:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread
  %i.po = getelementptr i8, ptr %1, i64 %.2
  %i.pp = getelementptr i8, ptr %i.po, i64 12
  %i.pq = load i32, ptr %i.pp, align 1
  %i.pr = tail call i32 @llvm.bswap.i32(i32 %i.pq)
  %i.ps = sitofp i32 %i.pr to float
  %i.pt = fmul nnan float %i.ps, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301:  ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, %bb.bc
  %.0.i.i300 = phi float [ %i.pt, %bb.bc ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread ]
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  store float %.0.i.i300, ptr %i.pu, align 8, !tbaa !61
  %.not239 = icmp eq i32 %.0.i298381, 0
  br i1 %.not239, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301
  %i.pv = add i64 %.2, 20                         ; 2 uses
  %i.pw = icmp ugt i64 %i.pv, %2
  br i1 %i.pw, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 %i.pm
  %i.py = load i32, ptr %i.px, align 1
  %i.pz = tail call i32 @llvm.bswap.i32(i32 %i.py)
  %i.qa = sitofp i32 %i.pz to float
  %i.qb = fmul nnan float %i.qa, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303:  ; preds = %bb.bd, %bb.be
  %.0.i.i302 = phi float [ %i.qb, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oy, i64 28
  store float %.0.i.i302, ptr %i.qc, align 4, !tbaa !63
  %i.qd = add i64 %.2, 24                         ; 3 uses
  %i.qe = icmp ugt i64 %i.qd, %2
  br i1 %i.qe, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 %i.pv
  %i.qg = load i32, ptr %i.qf, align 1
  %i.qh = tail call i32 @llvm.bswap.i32(i32 %i.qg)
  %i.qi = sitofp i32 %i.qh to float
  %i.qj = fmul nnan float %i.qi, f0x37800000
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %.0.i.i304 = phi float [ %i.qj, %bb.bf ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303 ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  store float %.0.i.i304, ptr %i.qk, align 8, !tbaa !64
  %.not393 = icmp eq i32 %.0.i298381, 1
  br i1 %.not393, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ql = add i64 %.2, 28                         ; 3 uses
  %i.qm = icmp ugt i64 %i.ql, %2
  br i1 %i.qm, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 %i.qd
  %i.qo = load i32, ptr %i.qn, align 1
  %i.qp = tail call i32 @llvm.bswap.i32(i32 %i.qo)
  %i.qq = sitofp i32 %i.qp to float
  %i.qr = fmul nnan float %i.qq, f0x37800000
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i306 = phi float [ %i.qr, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oy, i64 36
  store float %.0.i.i306, ptr %i.qs, align 4, !tbaa !65
  %i.qt = icmp samesign ugt i32 %.0.i298381, 2
  br i1 %i.qt, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.qu = add i64 %.2, 32                         ; 3 uses
  %i.qv = icmp ugt i64 %i.qu, %2
  br i1 %i.qv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ql
  %i.qx = load i32, ptr %i.qw, align 1
  %i.qy = tail call i32 @llvm.bswap.i32(i32 %i.qx)
  %i.qz = sitofp i32 %i.qy to float
  %i.ra = fmul nnan float %i.qz, f0x37800000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i.i308 = phi float [ %i.ra, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  store float %.0.i.i308, ptr %i.rb, align 8, !tbaa !66
  %i.rc = icmp eq i32 %.0.i298381, 4
  br i1 %i.rc, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.rd = add i64 %.2, 36                         ; 2 uses
  %i.re = icmp ugt i64 %i.rd, %2
  br i1 %i.re, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 %i.qu
  %i.rg = load i32, ptr %i.rf, align 1
  %i.rh = tail call i32 @llvm.bswap.i32(i32 %i.rg)
  %i.ri = sitofp i32 %i.rh to float
  %i.rj = fmul nnan float %i.ri, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311:  ; preds = %bb.bn, %bb.bo
  %.0.i.i310 = phi float [ %i.rj, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oy, i64 44
  store float %.0.i.i310, ptr %i.rk, align 4, !tbaa !115
  %i.rl = add i64 %.2, 40                         ; 2 uses
  %i.rm = icmp ugt i64 %i.rl, %2
  br i1 %i.rm, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, label %bb.bp

bb.bp:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 %i.rd
  %i.ro = load i32, ptr %i.rn, align 1
  %i.rp = tail call i32 @llvm.bswap.i32(i32 %i.ro)
  %i.rq = sitofp i32 %i.rp to float
  %i.rr = fmul nnan float %i.rq, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, %bb.bp
  %.0.i.i312 = phi float [ %i.rr, %bb.bp ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311 ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  store float %.0.i.i312, ptr %i.rs, align 8, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, %bb.bg, %bb.bj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, %bb.bm, %.loopexit, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, %bb.as, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266
  %.7 = phi i64 [ %.0.i256, %bb.as ], [ %.2, %.loopexit ], [ %i.fm, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266 ], [ %i.ll, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8 ], [ %i.iy, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290 ], [ %i.hu, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282 ], [ %i.gq, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274 ], [ %i.rl, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313 ], [ %i.qu, %bb.bm ], [ %i.ql, %bb.bj ], [ %i.qd, %bb.bg ], [ %i.pm, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301 ]
  %.not394 = icmp ugt i64 %.7, %2
  br i1 %.not394, label %.critedge243, label %bb.b

.critedge243:                                     ; preds = %.critedge, %bb.b, %bb.ax, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299, %bb.f, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, %.preheader, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit, %bb.a
  %.8 = phi i32 [ 1, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit ], [ 1, %bb.a ], [ 0, %.preheader ], [ 1, %bb.f ], [ 1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 1, %bb.ax ], [ 0, %bb.b ], [ 1, %.critedge ], [ 1, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259 ]
  ret i32 %.8
}

declare noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 256, 65537) %1, i64 noundef range(i64 0, 3) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
end_hunk_0
