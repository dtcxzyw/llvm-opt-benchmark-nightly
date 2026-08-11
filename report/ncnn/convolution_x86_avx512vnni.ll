inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.kd = shufflevector <16 x i16> %i.jh, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ke = shufflevector <16 x i16> %i.jj, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kf = shufflevector <16 x i16> %i.jl, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kg = shufflevector <16 x i16> %i.jn, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kh = bitcast <32 x i16> %i.kd to <16 x i32>  ; 4 uses
  %i.ki = bitcast <32 x i16> %i.ke to <16 x i32>  ; 4 uses
  %i.kj = bitcast <32 x i16> %i.kf to <16 x i32>  ; 4 uses
  %i.kk = bitcast <32 x i16> %i.kg to <16 x i32>  ; 4 uses
  %i.kl = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.km = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.kn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.174448033, <32 x i16> %i.km, <32 x i16> %i.jt)
  %i.ko = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kp = bitcast <16 x i32> %i.ko to <32 x i16>
  %i.kq = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.174468032, <32 x i16> %i.kp, <32 x i16> %i.jt)
  %i.kr = shufflevector <16 x i32> %i.kj, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ks = bitcast <16 x i32> %i.kr to <32 x i16>
  %i.kt = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.174488031, <32 x i16> %i.ks, <32 x i16> %i.jt)
  %i.ku = shufflevector <16 x i32> %i.kk, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kv = bitcast <16 x i32> %i.ku to <32 x i16>
  %i.kw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.174508030, <32 x i16> %i.kv, <32 x i16> %i.jt)
  %i.kx = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.ky = bitcast <16 x i32> %i.kx to <32 x i16>
  %i.kz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kn, <32 x i16> %i.ky, <32 x i16> %i.jw)
  %i.la = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.lb = bitcast <16 x i32> %i.la to <32 x i16>
  %i.lc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kq, <32 x i16> %i.lb, <32 x i16> %i.jw)
  %i.ld = shufflevector <16 x i32> %i.kj, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.le = bitcast <16 x i32> %i.ld to <32 x i16>
  %i.lf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kt, <32 x i16> %i.le, <32 x i16> %i.jw)
  %i.lg = shufflevector <16 x i32> %i.kk, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.lh = bitcast <16 x i32> %i.lg to <32 x i16>
  %i.li = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kw, <32 x i16> %i.lh, <32 x i16> %i.jw)
  %i.lj = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lk = bitcast <16 x i32> %i.lj to <32 x i16>
  %i.ll = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kz, <32 x i16> %i.lk, <32 x i16> %i.jz)
  %i.lm = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ln = bitcast <16 x i32> %i.lm to <32 x i16>
  %i.lo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lc, <32 x i16> %i.ln, <32 x i16> %i.jz)
  %i.lp = shufflevector <16 x i32> %i.kj, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lq = bitcast <16 x i32> %i.lp to <32 x i16>
  %i.lr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lf, <32 x i16> %i.lq, <32 x i16> %i.jz)
  %i.ls = shufflevector <16 x i32> %i.kk, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lt = bitcast <16 x i32> %i.ls to <32 x i16>
  %i.lu = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.li, <32 x i16> %i.lt, <32 x i16> %i.jz)
  %i.lv = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.lw = bitcast <16 x i32> %i.lv to <32 x i16>
  %i.lx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ll, <32 x i16> %i.lw, <32 x i16> %i.kc) ; 2 uses
  %i.ly = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.lz = bitcast <16 x i32> %i.ly to <32 x i16>
  %i.ma = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lo, <32 x i16> %i.lz, <32 x i16> %i.kc) ; 2 uses
  %i.mb = shufflevector <16 x i32> %i.kj, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.mc = bitcast <16 x i32> %i.mb to <32 x i16>
  %i.md = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lr, <32 x i16> %i.mc, <32 x i16> %i.kc) ; 2 uses
  %i.me = shufflevector <16 x i32> %i.kk, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.mf = bitcast <16 x i32> %i.me to <32 x i16>
  %i.mg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lu, <32 x i16> %i.mf, <32 x i16> %i.kc) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.127248035, i64 128
  %indvars.iv.next10156 = add nuw nsw i64 %indvars.iv10155, 1 ; 2 uses
  %exitcond10159.not = icmp eq i64 %indvars.iv.next10156, %wide.trip.count
  br i1 %exitcond10159.not, label %._crit_edge8036.loopexit, label %.lr.ph, !llvm.loop !45

._crit_edge8048.loopexit:                         ; preds = %._crit_edge8036
  %i.mi = and i32 %i.ew, 2147483632
  %.pre10754 = load i32, ptr %i.d, align 4, !tbaa !9
  br label %._crit_edge8048

._crit_edge8048:                                  ; preds = %._crit_edge8048.loopexit, %.noexc3647
  %i.mj = phi i32 [ %i.ew, %.noexc3647 ], [ %.pre10754, %._crit_edge8048.loopexit ] ; 9 uses
  %i.mk = phi <16 x i32> [ zeroinitializer, %.noexc3647 ], [ %i.hi, %._crit_edge8048.loopexit ] ; 2 uses
  %i.ml = phi <16 x i32> [ zeroinitializer, %.noexc3647 ], [ %i.hj, %._crit_edge8048.loopexit ] ; 2 uses
  %i.mm = phi <16 x i32> [ zeroinitializer, %.noexc3647 ], [ %i.hk, %._crit_edge8048.loopexit ] ; 2 uses
  %i.mn = phi <16 x i32> [ zeroinitializer, %.noexc3647 ], [ %i.hl, %._crit_edge8048.loopexit ] ; 2 uses
  %.02747.lcssa = phi i32 [ 0, %.noexc3647 ], [ %i.mi, %._crit_edge8048.loopexit ] ; 3 uses
  %.02723.lcssa = phi ptr [ %i.fn, %.noexc3647 ], [ %.12724.lcssa, %._crit_edge8048.loopexit ] ; 2 uses
  %i.mo = shufflevector <16 x i32> %i.mn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mp = shufflevector <16 x i32> %i.mn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mq = add <8 x i32> %i.mo, %i.mp
  %i.mr = bitcast <8 x i32> %i.mq to <4 x i64>    ; 2 uses
  %i.ms = shufflevector <16 x i32> %i.mm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mt = shufflevector <16 x i32> %i.mm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mu = add <8 x i32> %i.ms, %i.mt
  %i.mv = bitcast <8 x i32> %i.mu to <4 x i64>    ; 2 uses
  %i.mw = shufflevector <16 x i32> %i.ml, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mx = shufflevector <16 x i32> %i.ml, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.my = add <8 x i32> %i.mw, %i.mx
  %i.mz = bitcast <8 x i32> %i.my to <4 x i64>    ; 2 uses
  %i.na = shufflevector <16 x i32> %i.mk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nb = shufflevector <16 x i32> %i.mk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nc = add <8 x i32> %i.na, %i.nb
  %i.nd = bitcast <8 x i32> %i.nc to <4 x i64>    ; 2 uses
  %i.ne = or disjoint i32 %.02747.lcssa, 7
  %i.nf = icmp slt i32 %i.ne, %i.mj
  br i1 %i.nf, label %.noexc3637.lr.ph, label %.preheader7908

.noexc3637.lr.ph:                                 ; preds = %._crit_edge8048
  %i.ng = load i32, ptr %i.c, align 4, !tbaa !9   ; 6 uses
  %i.nh = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !46
  %i.ni = load ptr, ptr %0, align 8, !tbaa !32, !noalias !46 ; 4 uses
  %i.nj = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !46
  %i.nk = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !46 ; 2 uses
  %factor.op.mul8097 = mul i64 %i.nj, %i.nk
  %i.nl = sext i32 %i.nh to i64
  %i.nm = load i32, ptr %i.b, align 4, !tbaa !9   ; 4 uses
  %i.nn = mul nsw i32 %i.nm, %i.ey
  %i.no = sext i32 %i.nn to i64
  %i.np = mul i64 %i.nk, %i.nl                    ; 4 uses
  %i.nq = mul i64 %i.np, %i.no
  %invariant.gep8099 = getelementptr i8, ptr %i.ni, i64 %i.nq
  %i.nr = load i32, ptr %i.a, align 4, !tbaa !9   ; 4 uses
  %i.ns = mul i32 %i.ng, %i.fe
  %i.nt = mul i32 %i.ns, %i.nr
  %i.nu = sext i32 %i.nt to i64
  %invariant.gep8100 = getelementptr i8, ptr %invariant.gep8099, i64 %i.nu
  %i.nv = mul nsw i32 %i.nm, %i.fa
  %i.nw = sext i32 %i.nv to i64
  %i.nx = mul i64 %i.np, %i.nw
  %invariant.gep8104 = getelementptr i8, ptr %i.ni, i64 %i.nx
  %i.ny = mul i32 %i.ng, %i.ff
  %i.nz = mul i32 %i.ny, %i.nr
  %i.oa = sext i32 %i.nz to i64
  %invariant.gep8105 = getelementptr i8, ptr %invariant.gep8104, i64 %i.oa
  %i.ob = mul nsw i32 %i.nm, %i.fc
  %i.oc = sext i32 %i.ob to i64
  %i.od = mul i64 %i.np, %i.oc
  %invariant.gep8109 = getelementptr i8, ptr %i.ni, i64 %i.od
  %i.oe = mul i32 %i.ng, %i.fg
  %i.of = mul i32 %i.oe, %i.nr
  %i.og = sext i32 %i.of to i64
  %invariant.gep8110 = getelementptr i8, ptr %invariant.gep8109, i64 %i.og
  %i.oh = mul nsw i32 %i.nm, %i.fd
  %i.oi = sext i32 %i.oh to i64
  %i.oj = mul i64 %i.np, %i.oi
  %invariant.gep8114 = getelementptr i8, ptr %i.ni, i64 %i.oj
  %i.ok = mul i32 %i.ng, %i.fh
  %i.ol = mul i32 %i.ok, %i.nr
  %i.om = sext i32 %i.ol to i64
  %invariant.gep8115 = getelementptr i8, ptr %invariant.gep8114, i64 %i.om
  %i.on = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  %i.oo = icmp sgt i32 %i.on, 0
  %i.op = load ptr, ptr %i.g, align 8
  %i.oq = icmp eq i32 %i.ng, 8
  %i.or = add i32 %i.on, -1
  %i.os = zext i32 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 6
  %wide.trip.count10165 = zext nneg i32 %i.on to i64
  br label %.noexc3637

.preheader7908:                                   ; preds = %._crit_edge8079, %._crit_edge8048
  %.07435.lcssa = phi <4 x i64> [ %i.nd, %._crit_edge8048 ], [ %.17436.lcssa, %._crit_edge8079 ] ; 2 uses
  %.07429.lcssa = phi <4 x i64> [ %i.mz, %._crit_edge8048 ], [ %.17430.lcssa, %._crit_edge8079 ] ; 2 uses
  %.07423.lcssa = phi <4 x i64> [ %i.mv, %._crit_edge8048 ], [ %.17424.lcssa, %._crit_edge8079 ] ; 2 uses
  %.07421.lcssa = phi <4 x i64> [ %i.mr, %._crit_edge8048 ], [ %.17422.lcssa, %._crit_edge8079 ] ; 2 uses
  %.12748.lcssa = phi i32 [ %.02747.lcssa, %._crit_edge8048 ], [ %i.qp, %._crit_edge8079 ] ; 3 uses
  %.22725.lcssa = phi ptr [ %.02723.lcssa, %._crit_edge8048 ], [ %.32726.lcssa, %._crit_edge8079 ] ; 2 uses
  %i.ou = or disjoint i32 %.12748.lcssa, 1
  %i.ov = icmp slt i32 %i.ou, %i.mj
  br i1 %i.ov, label %.noexc3629.lr.ph, label %.preheader7907

.noexc3629.lr.ph:                                 ; preds = %.preheader7908
  %i.ow = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !49
  %i.ox = load ptr, ptr %0, align 8, !tbaa !32, !noalias !49 ; 4 uses
  %i.oy = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !49
  %i.oz = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !49 ; 2 uses
  %factor.op.mul8142 = mul i64 %i.oy, %i.oz
  %i.pa = sext i32 %i.ow to i64
  %i.pb = load i32, ptr %i.b, align 4, !tbaa !9   ; 4 uses
  %i.pc = mul nsw i32 %i.pb, %i.ey
  %i.pd = sext i32 %i.pc to i64
  %i.pe = mul i64 %i.oz, %i.pa                    ; 4 uses
  %i.pf = mul i64 %i.pe, %i.pd
  %invariant.gep8144 = getelementptr i8, ptr %i.ox, i64 %i.pf
  %i.pg = load i32, ptr %i.a, align 4, !tbaa !9   ; 4 uses
  %i.ph = mul nsw i32 %i.pg, %i.fe
  %i.pi = sext i32 %i.ph to i64
  %invariant.gep8145 = getelementptr i8, ptr %invariant.gep8144, i64 %i.pi
  %i.pj = mul nsw i32 %i.pb, %i.fa
  %i.pk = sext i32 %i.pj to i64
  %i.pl = mul i64 %i.pe, %i.pk
  %invariant.gep8149 = getelementptr i8, ptr %i.ox, i64 %i.pl
  %i.pm = mul nsw i32 %i.pg, %i.ff
  %i.pn = sext i32 %i.pm to i64
  %invariant.gep8150 = getelementptr i8, ptr %invariant.gep8149, i64 %i.pn
  %i.po = mul nsw i32 %i.pb, %i.fc
  %i.pp = sext i32 %i.po to i64
  %i.pq = mul i64 %i.pe, %i.pp
  %invariant.gep8154 = getelementptr i8, ptr %i.ox, i64 %i.pq
  %i.pr = mul nsw i32 %i.pg, %i.fg
  %i.ps = sext i32 %i.pr to i64
  %invariant.gep8155 = getelementptr i8, ptr %invariant.gep8154, i64 %i.ps
  %i.pt = mul nsw i32 %i.pb, %i.fd
  %i.pu = sext i32 %i.pt to i64
  %i.pv = mul i64 %i.pe, %i.pu
  %invariant.gep8159 = getelementptr i8, ptr %i.ox, i64 %i.pv
  %i.pw = mul nsw i32 %i.pg, %i.fh
  %i.px = sext i32 %i.pw to i64
  %invariant.gep8160 = getelementptr i8, ptr %invariant.gep8159, i64 %i.px
  %i.py = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  %i.pz = icmp sgt i32 %i.py, 0
  %i.qa = load ptr, ptr %i.g, align 8
  %i.qb = add i32 %i.py, -1
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = shl nuw nsw i64 %i.qc, 4
  %i.qe = zext nneg i32 %.12748.lcssa to i64
  %wide.trip.count10172 = zext nneg i32 %i.py to i64
  br label %.noexc3629

.noexc3637:                                       ; preds = %.noexc3637.lr.ph, %._crit_edge8079
  %.227258090 = phi ptr [ %.02723.lcssa, %.noexc3637.lr.ph ], [ %.32726.lcssa, %._crit_edge8079 ] ; 3 uses
  %.127488089 = phi i32 [ %.02747.lcssa, %.noexc3637.lr.ph ], [ %i.qp, %._crit_edge8079 ] ; 2 uses
  %.074218088 = phi <4 x i64> [ %i.mr, %.noexc3637.lr.ph ], [ %.17422.lcssa, %._crit_edge8079 ] ; 2 uses
  %.074238087 = phi <4 x i64> [ %i.mv, %.noexc3637.lr.ph ], [ %.17424.lcssa, %._crit_edge8079 ] ; 2 uses
  %.074298086 = phi <4 x i64> [ %i.mz, %.noexc3637.lr.ph ], [ %.17430.lcssa, %._crit_edge8079 ] ; 2 uses
  %.074358085 = phi <4 x i64> [ %i.nd, %.noexc3637.lr.ph ], [ %.17436.lcssa, %._crit_edge8079 ] ; 2 uses
  %i.qf = sdiv i32 %.127488089, %i.ng
  %i.qg = sext i32 %i.qf to i64
  %.reass8098 = mul i64 %factor.op.mul8097, %i.qg ; 4 uses
  %gep8101 = getelementptr i8, ptr %invariant.gep8100, i64 %.reass8098
  %gep8106 = getelementptr i8, ptr %invariant.gep8105, i64 %.reass8098
  %gep8111 = getelementptr i8, ptr %invariant.gep8110, i64 %.reass8098
  %gep8116 = getelementptr i8, ptr %invariant.gep8115, i64 %.reass8098
  br i1 %i.oo, label %.lr.ph8078.preheader, label %._crit_edge8079

.lr.ph8078.preheader:                             ; preds = %.noexc3637
  %i.qh = bitcast <4 x i64> %.074218088 to <8 x i32>
  %i.qi = bitcast <4 x i64> %.074238087 to <8 x i32>
  %i.qj = bitcast <4 x i64> %.074298086 to <8 x i32>
  %i.qk = bitcast <4 x i64> %.074358085 to <8 x i32>
  br label %.lr.ph8078

._crit_edge8079.loopexit:                         ; preds = %bb.h
  %i.ql = bitcast <8 x i32> %i.tj to <4 x i64>
  %i.qm = bitcast <8 x i32> %i.th to <4 x i64>
  %i.qn = bitcast <8 x i32> %i.tf to <4 x i64>
  %i.qo = bitcast <8 x i32> %i.td to <4 x i64>
  %scevgep10162 = getelementptr i8, ptr %.227258090, i64 64
  %scevgep10163 = getelementptr i8, ptr %scevgep10162, i64 %i.ot
  br label %._crit_edge8079

._crit_edge8079:                                  ; preds = %._crit_edge8079.loopexit, %.noexc3637
  %.17436.lcssa = phi <4 x i64> [ %.074358085, %.noexc3637 ], [ %i.ql, %._crit_edge8079.loopexit ] ; 2 uses
  %.17430.lcssa = phi <4 x i64> [ %.074298086, %.noexc3637 ], [ %i.qm, %._crit_edge8079.loopexit ] ; 2 uses
  %.17424.lcssa = phi <4 x i64> [ %.074238087, %.noexc3637 ], [ %i.qn, %._crit_edge8079.loopexit ] ; 2 uses
  %.17422.lcssa = phi <4 x i64> [ %.074218088, %.noexc3637 ], [ %i.qo, %._crit_edge8079.loopexit ] ; 2 uses
  %.32726.lcssa = phi ptr [ %.227258090, %.noexc3637 ], [ %scevgep10163, %._crit_edge8079.loopexit ] ; 2 uses
  %i.qp = add nuw nsw i32 %.127488089, 8          ; 3 uses
  %i.qq = or disjoint i32 %i.qp, 7
  %i.qr = icmp slt i32 %i.qq, %i.mj
  br i1 %i.qr, label %.noexc3637, label %.preheader7908, !llvm.loop !52

.lr.ph8078:                                       ; preds = %.lr.ph8078.preheader, %bb.h
  %indvars.iv10160 = phi i64 [ 0, %.lr.ph8078.preheader ], [ %indvars.iv.next10161, %bb.h ] ; 2 uses
  %.327268077 = phi ptr [ %.227258090, %.lr.ph8078.preheader ], [ %i.tk, %bb.h ] ; 3 uses
  %.174228075 = phi <8 x i32> [ %i.qh, %.lr.ph8078.preheader ], [ %i.td, %bb.h ]
  %.174248074 = phi <8 x i32> [ %i.qi, %.lr.ph8078.preheader ], [ %i.tf, %bb.h ]
  %.174308073 = phi <8 x i32> [ %i.qj, %.lr.ph8078.preheader ], [ %i.th, %bb.h ]
  %.174368072 = phi <8 x i32> [ %i.qk, %.lr.ph8078.preheader ], [ %i.tj, %bb.h ]
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv10160
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !9
  %i.qu = sext i32 %i.qt to i64                   ; 4 uses
  %i.qv = getelementptr inbounds i8, ptr %gep8101, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds i8, ptr %gep8106, i64 %i.qu ; 2 uses
  %i.qx = getelementptr inbounds i8, ptr %gep8111, i64 %i.qu ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %gep8116, i64 %i.qu ; 2 uses
  br i1 %i.oq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph8078
  %i.qz = load <8 x i8>, ptr %i.qv, align 1, !tbaa !44
  %i.ra = load <8 x i8>, ptr %i.qw, align 1, !tbaa !44
  %i.rb = load <8 x i8>, ptr %i.qx, align 1, !tbaa !44
  %i.rc = load <8 x i8>, ptr %i.qy, align 1, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph8078
  %i.rd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.qv, <8 x i32> %i.dz, <8 x i32> splat (i32 -1), i8 1)
  %i.re = trunc <8 x i32> %i.rd to <8 x i8>
  %i.rf = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.qw, <8 x i32> %i.dz, <8 x i32> splat (i32 -1), i8 1)
  %i.rg = trunc <8 x i32> %i.rf to <8 x i8>
  %i.rh = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.qx, <8 x i32> %i.dz, <8 x i32> splat (i32 -1), i8 1)
  %i.ri = trunc <8 x i32> %i.rh to <8 x i8>
  %i.rj = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.qy, <8 x i32> %i.dz, <8 x i32> splat (i32 -1), i8 1)
  %i.rk = trunc <8 x i32> %i.rj to <8 x i8>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.07549 = phi <8 x i8> [ %i.rb, %bb.f ], [ %i.ri, %bb.g ]
  %.07548 = phi <8 x i8> [ %i.ra, %bb.f ], [ %i.rg, %bb.g ]
  %.07547 = phi <8 x i8> [ %i.qz, %bb.f ], [ %i.re, %bb.g ]
  %storemerge3243 = phi <8 x i8> [ %i.rc, %bb.f ], [ %i.rk, %bb.g ]
  %i.rl = sext <8 x i8> %.07547 to <8 x i16>      ; 4 uses
  %i.rm = sext <8 x i8> %.07548 to <8 x i16>      ; 4 uses
  %i.rn = sext <8 x i8> %.07549 to <8 x i16>      ; 4 uses
  %i.ro = sext <8 x i8> %storemerge3243 to <8 x i16> ; 4 uses
  %i.rp = load <4 x i64>, ptr %.327268077, align 32, !tbaa !44 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.327268077, i64 32
  %i.rr = load <4 x i64>, ptr %i.rq, align 32, !tbaa !44 ; 2 uses
  %i.rs = bitcast <4 x i64> %i.rp to <32 x i8>
  %i.rt = shufflevector <32 x i8> %i.rs, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ru = sext <16 x i8> %i.rt to <16 x i16>      ; 4 uses
  %i.rv = bitcast <4 x i64> %i.rp to <32 x i8>
  %i.rw = shufflevector <32 x i8> %i.rv, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rx = sext <16 x i8> %i.rw to <16 x i16>      ; 4 uses
  %i.ry = bitcast <4 x i64> %i.rr to <32 x i8>
  %i.rz = shufflevector <32 x i8> %i.ry, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sa = sext <16 x i8> %i.rz to <16 x i16>      ; 4 uses
  %i.sb = bitcast <4 x i64> %i.rr to <32 x i8>
  %i.sc = shufflevector <32 x i8> %i.sb, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sd = sext <16 x i8> %i.sc to <16 x i16>      ; 4 uses
  %i.se = shufflevector <8 x i16> %i.rl, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174228075, <16 x i16> %i.se, <16 x i16> %i.ru)
  %i.sg = shufflevector <8 x i16> %i.rm, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174248074, <16 x i16> %i.sg, <16 x i16> %i.ru)
  %i.si = shufflevector <8 x i16> %i.rn, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174308073, <16 x i16> %i.si, <16 x i16> %i.ru)
  %i.sk = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174368072, <16 x i16> %i.sk, <16 x i16> %i.ru)
  %i.sm = shufflevector <8 x i16> %i.rl, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.sn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sf, <16 x i16> %i.sm, <16 x i16> %i.rx)
  %i.so = shufflevector <8 x i16> %i.rm, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.sp = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sh, <16 x i16> %i.so, <16 x i16> %i.rx)
  %i.sq = shufflevector <8 x i16> %i.rn, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.sr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sj, <16 x i16> %i.sq, <16 x i16> %i.rx)
  %i.ss = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.st = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sl, <16 x i16> %i.ss, <16 x i16> %i.rx)
  %i.su = shufflevector <8 x i16> %i.rl, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.sv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sn, <16 x i16> %i.su, <16 x i16> %i.sa)
  %i.sw = shufflevector <8 x i16> %i.rm, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.sx = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sp, <16 x i16> %i.sw, <16 x i16> %i.sa)
  %i.sy = shufflevector <8 x i16> %i.rn, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.sz = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sr, <16 x i16> %i.sy, <16 x i16> %i.sa)
  %i.ta = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.tb = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.st, <16 x i16> %i.ta, <16 x i16> %i.sa)
  %i.tc = shufflevector <8 x i16> %i.rl, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.td = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sv, <16 x i16> %i.tc, <16 x i16> %i.sd) ; 2 uses
  %i.te = shufflevector <8 x i16> %i.rm, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.tf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sx, <16 x i16> %i.te, <16 x i16> %i.sd) ; 2 uses
  %i.tg = shufflevector <8 x i16> %i.rn, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.th = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sz, <16 x i16> %i.tg, <16 x i16> %i.sd) ; 2 uses
  %i.ti = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.tj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.tb, <16 x i16> %i.ti, <16 x i16> %i.sd) ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.327268077, i64 64
  %indvars.iv.next10161 = add nuw nsw i64 %indvars.iv10160, 1 ; 2 uses
  %exitcond10166.not = icmp eq i64 %indvars.iv.next10161, %wide.trip.count10165
  br i1 %exitcond10166.not, label %._crit_edge8079.loopexit, label %.lr.ph8078, !llvm.loop !53

.preheader7907.loopexit:                          ; preds = %._crit_edge8124
  %i.tl = trunc nuw i64 %indvars.iv.next10175 to i32
  br label %.preheader7907

.preheader7907:                                   ; preds = %.preheader7907.loopexit, %.preheader7908
  %.27437.lcssa = phi <4 x i64> [ %.07435.lcssa, %.preheader7908 ], [ %.37438.lcssa, %.preheader7907.loopexit ] ; 3 uses
  %.27431.lcssa = phi <4 x i64> [ %.07429.lcssa, %.preheader7908 ], [ %.37432.lcssa, %.preheader7907.loopexit ] ; 3 uses
  %.27425.lcssa = phi <4 x i64> [ %.07423.lcssa, %.preheader7908 ], [ %.37426.lcssa, %.preheader7907.loopexit ] ; 3 uses
  %.2.lcssa = phi <4 x i64> [ %.07421.lcssa, %.preheader7908 ], [ %.3.lcssa, %.preheader7907.loopexit ] ; 3 uses
  %.22749.lcssa = phi i32 [ %.12748.lcssa, %.preheader7908 ], [ %i.tl, %.preheader7907.loopexit ] ; 2 uses
  %.42727.lcssa = phi ptr [ %.22725.lcssa, %.preheader7908 ], [ %.52728.lcssa, %.preheader7907.loopexit ]
  %i.tm = icmp slt i32 %.22749.lcssa, %i.mj
  br i1 %i.tm, label %.noexc3621.lr.ph, label %._crit_edge8181

.noexc3621.lr.ph:                                 ; preds = %.preheader7907
  %i.tn = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !54
  %i.to = load ptr, ptr %0, align 8, !tbaa !32, !noalias !54 ; 4 uses
  %i.tp = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !54
  %i.tq = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !54 ; 2 uses
  %factor.op.mul8186 = mul i64 %i.tp, %i.tq
  %i.tr = sext i32 %i.tn to i64
  %i.ts = load i32, ptr %i.b, align 4, !tbaa !9   ; 4 uses
  %i.tt = mul nsw i32 %i.ts, %i.ey
  %i.tu = sext i32 %i.tt to i64
  %i.tv = mul i64 %i.tq, %i.tr                    ; 4 uses
  %i.tw = mul i64 %i.tv, %i.tu
  %invariant.gep8188 = getelementptr i8, ptr %i.to, i64 %i.tw
  %i.tx = load i32, ptr %i.a, align 4, !tbaa !9   ; 4 uses
  %i.ty = mul nsw i32 %i.tx, %i.fe
  %i.tz = sext i32 %i.ty to i64
  %invariant.gep8189 = getelementptr i8, ptr %invariant.gep8188, i64 %i.tz
  %i.ua = mul nsw i32 %i.ts, %i.fa
  %i.ub = sext i32 %i.ua to i64
  %i.uc = mul i64 %i.tv, %i.ub
  %invariant.gep8193 = getelementptr i8, ptr %i.to, i64 %i.uc
  %i.ud = mul nsw i32 %i.tx, %i.ff
  %i.ue = sext i32 %i.ud to i64
  %invariant.gep8194 = getelementptr i8, ptr %invariant.gep8193, i64 %i.ue
  %i.uf = mul nsw i32 %i.ts, %i.fc
  %i.ug = sext i32 %i.uf to i64
  %i.uh = mul i64 %i.tv, %i.ug
  %invariant.gep8198 = getelementptr i8, ptr %i.to, i64 %i.uh
  %i.ui = mul nsw i32 %i.tx, %i.fg
  %i.uj = sext i32 %i.ui to i64
  %invariant.gep8199 = getelementptr i8, ptr %invariant.gep8198, i64 %i.uj
  %i.uk = mul nsw i32 %i.ts, %i.fd
  %i.ul = sext i32 %i.uk to i64
  %i.um = mul i64 %i.tv, %i.ul
  %invariant.gep8203 = getelementptr i8, ptr %i.to, i64 %i.um
  %i.un = mul nsw i32 %i.tx, %i.fh
  %i.uo = sext i32 %i.un to i64
  %invariant.gep8204 = getelementptr i8, ptr %invariant.gep8203, i64 %i.uo
  %i.up = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  %i.uq = icmp sgt i32 %i.up, 0
  %i.ur = load ptr, ptr %i.g, align 8
  br i1 %i.uq, label %.noexc3621.us.preheader, label %._crit_edge8181

end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.brs = bitcast <8 x i16> %i.brh to <4 x i32>  ; 2 uses
  %i.brt = bitcast <8 x i16> %i.bri to <4 x i32>  ; 2 uses
  %i.bru = bitcast <8 x i16> %i.brj to <4 x i32>  ; 2 uses
  %i.brv = bitcast <8 x i16> %i.brg to <4 x i32>  ; 2 uses
  %i.brw = shufflevector <4 x i32> %i.brv, <4 x i32> %i.brr, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.brx = bitcast <8 x i32> %i.brw to <16 x i16>
  %i.bry = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177828485.us, <16 x i16> %i.brx, <16 x i16> %i.brn)
  %i.brz = bitcast <8 x i16> %i.brh to <4 x i32>  ; 2 uses
  %i.bsa = shufflevector <4 x i32> %i.brz, <4 x i32> %i.brs, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bsb = bitcast <8 x i32> %i.bsa to <16 x i16>
  %i.bsc = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177808486.us, <16 x i16> %i.bsb, <16 x i16> %i.brn)
  %i.bsd = bitcast <8 x i16> %i.bri to <4 x i32>  ; 2 uses
  %i.bse = shufflevector <4 x i32> %i.bsd, <4 x i32> %i.brt, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bsf = bitcast <8 x i32> %i.bse to <16 x i16>
  %i.bsg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177788487.us, <16 x i16> %i.bsf, <16 x i16> %i.brn)
  %i.bsh = bitcast <8 x i16> %i.brj to <4 x i32>  ; 2 uses
  %i.bsi = shufflevector <4 x i32> %i.bsh, <4 x i32> %i.bru, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bsj = bitcast <8 x i32> %i.bsi to <16 x i16>
  %i.bsk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177768488.us, <16 x i16> %i.bsj, <16 x i16> %i.brn)
  %i.bsl = shufflevector <4 x i32> %i.brv, <4 x i32> %i.brr, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bsm = bitcast <8 x i32> %i.bsl to <16 x i16>
  %i.bsn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bry, <16 x i16> %i.bsm, <16 x i16> %i.brq) ; 2 uses
  %i.bso = shufflevector <4 x i32> %i.brz, <4 x i32> %i.brs, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bsp = bitcast <8 x i32> %i.bso to <16 x i16>
  %i.bsq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bsc, <16 x i16> %i.bsp, <16 x i16> %i.brq) ; 2 uses
  %i.bsr = shufflevector <4 x i32> %i.bsd, <4 x i32> %i.brt, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bss = bitcast <8 x i32> %i.bsr to <16 x i16>
  %i.bst = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bsg, <16 x i16> %i.bss, <16 x i16> %i.brq) ; 2 uses
  %i.bsu = shufflevector <4 x i32> %i.bsh, <4 x i32> %i.bru, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bsv = bitcast <8 x i32> %i.bsu to <16 x i16>
  %i.bsw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bsk, <16 x i16> %i.bsv, <16 x i16> %i.brq) ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.328368490.us, i64 32
  %indvars.iv.next10286 = add nuw nsw i64 %indvars.iv10285, 1 ; 2 uses
  %exitcond10291.not = icmp eq i64 %indvars.iv.next10286, %wide.trip.count10290
  br i1 %exitcond10291.not, label %._crit_edge8492.loopexit, label %.lr.ph8491.split.us, !llvm.loop !125

._crit_edge8492.loopexit:                         ; preds = %.lr.ph8491.split.us
  %scevgep10287 = getelementptr i8, ptr %.228358508, i64 32
  %scevgep10288 = getelementptr i8, ptr %scevgep10287, i64 %i.bqo
  br label %._crit_edge8492

._crit_edge8492.loopexit9804:                     ; preds = %.lr.ph8491.split
  %scevgep10280 = getelementptr i8, ptr %.228358508, i64 32
  %scevgep10281 = getelementptr i8, ptr %scevgep10280, i64 %i.bqo
  br label %._crit_edge8492

._crit_edge8492:                                  ; preds = %._crit_edge8492.loopexit9804, %._crit_edge8492.loopexit, %.noexc3575
  %i.bsy = phi <8 x i32> [ %i.bqs, %.noexc3575 ], [ %i.bsn, %._crit_edge8492.loopexit ], [ %i.bvb, %._crit_edge8492.loopexit9804 ] ; 2 uses
  %i.bsz = phi <8 x i32> [ %i.bqr, %.noexc3575 ], [ %i.bsq, %._crit_edge8492.loopexit ], [ %i.bve, %._crit_edge8492.loopexit9804 ] ; 2 uses
  %i.bta = phi <8 x i32> [ %i.bqq, %.noexc3575 ], [ %i.bst, %._crit_edge8492.loopexit ], [ %i.bvh, %._crit_edge8492.loopexit9804 ] ; 2 uses
  %i.btb = phi <8 x i32> [ %i.bqp, %.noexc3575 ], [ %i.bsw, %._crit_edge8492.loopexit ], [ %i.bvk, %._crit_edge8492.loopexit9804 ] ; 2 uses
  %.32836.lcssa = phi ptr [ %.228358508, %.noexc3575 ], [ %scevgep10288, %._crit_edge8492.loopexit ], [ %scevgep10281, %._crit_edge8492.loopexit9804 ] ; 2 uses
  %i.btc = add nuw nsw i32 %.128428507, 8         ; 3 uses
  %i.btd = or disjoint i32 %i.btc, 7
  %i.bte = icmp slt i32 %i.btd, %i.boa
  br i1 %i.bte, label %.noexc3575, label %._crit_edge8509, !llvm.loop !126

.lr.ph8491.split:                                 ; preds = %.lr.ph8491, %.lr.ph8491.split
  %indvars.iv10278 = phi i64 [ %indvars.iv.next10279, %.lr.ph8491.split ], [ 0, %.lr.ph8491 ] ; 2 uses
  %.328368490 = phi ptr [ %i.bvl, %.lr.ph8491.split ], [ %.228358508, %.lr.ph8491 ] ; 2 uses
  %.177768488 = phi <8 x i32> [ %i.bvk, %.lr.ph8491.split ], [ %i.bqp, %.lr.ph8491 ]
  %.177788487 = phi <8 x i32> [ %i.bvh, %.lr.ph8491.split ], [ %i.bqq, %.lr.ph8491 ]
  %.177808486 = phi <8 x i32> [ %i.bve, %.lr.ph8491.split ], [ %i.bqr, %.lr.ph8491 ]
  %.177828485 = phi <8 x i32> [ %i.bvb, %.lr.ph8491.split ], [ %i.bqs, %.lr.ph8491 ]
  %i.btf = getelementptr inbounds nuw [4 x i8], ptr %i.bqk, i64 %indvars.iv10278
  %i.btg = load i32, ptr %i.btf, align 4, !tbaa !9
  %i.bth = sext i32 %i.btg to i64                 ; 4 uses
  %i.bti = getelementptr inbounds i8, ptr %gep8520, i64 %i.bth
  %i.btj = getelementptr inbounds i8, ptr %gep8525, i64 %i.bth
  %i.btk = getelementptr inbounds i8, ptr %gep8530, i64 %i.bth
  %i.btl = getelementptr inbounds i8, ptr %gep8535, i64 %i.bth
  %i.btm = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bti, <8 x i32> %i.bgq, <8 x i32> splat (i32 -1), i8 1)
  %i.btn = trunc <8 x i32> %i.btm to <8 x i8>
  %i.bto = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.btj, <8 x i32> %i.bgq, <8 x i32> splat (i32 -1), i8 1)
  %i.btp = trunc <8 x i32> %i.bto to <8 x i8>
  %i.btq = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.btk, <8 x i32> %i.bgq, <8 x i32> splat (i32 -1), i8 1)
  %i.btr = trunc <8 x i32> %i.btq to <8 x i8>
  %i.bts = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.btl, <8 x i32> %i.bgq, <8 x i32> splat (i32 -1), i8 1)
  %i.btt = trunc <8 x i32> %i.bts to <8 x i8>
  %i.btu = sext <8 x i8> %i.btn to <8 x i16>      ; 2 uses
  %i.btv = sext <8 x i8> %i.btp to <8 x i16>      ; 2 uses
  %i.btw = sext <8 x i8> %i.btr to <8 x i16>      ; 2 uses
  %i.btx = sext <8 x i8> %i.btt to <8 x i16>      ; 2 uses
  %i.bty = load <4 x i64>, ptr %.328368490, align 32, !tbaa !44 ; 2 uses
  %i.btz = bitcast <4 x i64> %i.bty to <32 x i8>
  %i.bua = shufflevector <32 x i8> %i.btz, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bub = sext <16 x i8> %i.bua to <16 x i16>    ; 4 uses
  %i.buc = bitcast <4 x i64> %i.bty to <32 x i8>
  %i.bud = shufflevector <32 x i8> %i.buc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bue = sext <16 x i8> %i.bud to <16 x i16>    ; 4 uses
  %i.buf = bitcast <8 x i16> %i.btu to <4 x i32>  ; 2 uses
  %i.bug = bitcast <8 x i16> %i.btv to <4 x i32>  ; 2 uses
  %i.buh = bitcast <8 x i16> %i.btw to <4 x i32>  ; 2 uses
  %i.bui = bitcast <8 x i16> %i.btx to <4 x i32>  ; 2 uses
  %i.buj = bitcast <8 x i16> %i.btu to <4 x i32>  ; 2 uses
  %i.buk = shufflevector <4 x i32> %i.buj, <4 x i32> %i.buf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bul = bitcast <8 x i32> %i.buk to <16 x i16>
  %i.bum = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177828485, <16 x i16> %i.bul, <16 x i16> %i.bub)
  %i.bun = bitcast <8 x i16> %i.btv to <4 x i32>  ; 2 uses
  %i.buo = shufflevector <4 x i32> %i.bun, <4 x i32> %i.bug, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bup = bitcast <8 x i32> %i.buo to <16 x i16>
  %i.buq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177808486, <16 x i16> %i.bup, <16 x i16> %i.bub)
  %i.bur = bitcast <8 x i16> %i.btw to <4 x i32>  ; 2 uses
  %i.bus = shufflevector <4 x i32> %i.bur, <4 x i32> %i.buh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.but = bitcast <8 x i32> %i.bus to <16 x i16>
  %i.buu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177788487, <16 x i16> %i.but, <16 x i16> %i.bub)
  %i.buv = bitcast <8 x i16> %i.btx to <4 x i32>  ; 2 uses
  %i.buw = shufflevector <4 x i32> %i.buv, <4 x i32> %i.bui, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bux = bitcast <8 x i32> %i.buw to <16 x i16>
  %i.buy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.177768488, <16 x i16> %i.bux, <16 x i16> %i.bub)
  %i.buz = shufflevector <4 x i32> %i.buj, <4 x i32> %i.buf, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bva = bitcast <8 x i32> %i.buz to <16 x i16>
  %i.bvb = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bum, <16 x i16> %i.bva, <16 x i16> %i.bue) ; 2 uses
  %i.bvc = shufflevector <4 x i32> %i.bun, <4 x i32> %i.bug, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bvd = bitcast <8 x i32> %i.bvc to <16 x i16>
  %i.bve = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.buq, <16 x i16> %i.bvd, <16 x i16> %i.bue) ; 2 uses
  %i.bvf = shufflevector <4 x i32> %i.bur, <4 x i32> %i.buh, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bvg = bitcast <8 x i32> %i.bvf to <16 x i16>
  %i.bvh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.buu, <16 x i16> %i.bvg, <16 x i16> %i.bue) ; 2 uses
  %i.bvi = shufflevector <4 x i32> %i.buv, <4 x i32> %i.bui, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bvj = bitcast <8 x i32> %i.bvi to <16 x i16>
  %i.bvk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.buy, <16 x i16> %i.bvj, <16 x i16> %i.bue) ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %.328368490, i64 32
  %indvars.iv.next10279 = add nuw nsw i64 %indvars.iv10278, 1 ; 2 uses
  %exitcond10284.not = icmp eq i64 %indvars.iv.next10279, %wide.trip.count10283
  br i1 %exitcond10284.not, label %._crit_edge8492.loopexit9804, label %.lr.ph8491.split, !llvm.loop !125

._crit_edge8509:                                  ; preds = %._crit_edge8492, %._crit_edge8458
  %i.bvm = phi <8 x i32> [ zeroinitializer, %._crit_edge8458 ], [ %i.bsy, %._crit_edge8492 ] ; 2 uses
  %i.bvn = phi <8 x i32> [ zeroinitializer, %._crit_edge8458 ], [ %i.bsz, %._crit_edge8492 ] ; 2 uses
  %i.bvo = phi <8 x i32> [ zeroinitializer, %._crit_edge8458 ], [ %i.bta, %._crit_edge8492 ] ; 2 uses
  %i.bvp = phi <8 x i32> [ zeroinitializer, %._crit_edge8458 ], [ %i.btb, %._crit_edge8492 ] ; 2 uses
  %.12842.lcssa = phi i32 [ %.02841.lcssa, %._crit_edge8458 ], [ %i.btc, %._crit_edge8492 ] ; 3 uses
  %.22835.lcssa = phi ptr [ %.02833.lcssa, %._crit_edge8458 ], [ %.32836.lcssa, %._crit_edge8492 ] ; 2 uses
  %i.bvq = shufflevector <8 x i32> %i.bvm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvr = shufflevector <8 x i32> %i.bvm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvs = shufflevector <8 x i32> %i.bvn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvt = shufflevector <8 x i32> %i.bvn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvu = shufflevector <8 x i32> %i.bvo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvv = shufflevector <8 x i32> %i.bvo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvw = shufflevector <8 x i32> %i.bvp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvx = shufflevector <8 x i32> %i.bvp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvy = add <4 x i32> %i.bor, %i.bos
  %i.bvz = add <4 x i32> %i.bvy, %i.bvr
  %i.bwa = add <4 x i32> %i.bvz, %i.bvq           ; 2 uses
  %i.bwb = add <4 x i32> %i.bot, %i.bou
  %i.bwc = add <4 x i32> %i.bwb, %i.bvt
  %i.bwd = add <4 x i32> %i.bwc, %i.bvs           ; 2 uses
  %i.bwe = add <4 x i32> %i.bov, %i.bow
  %i.bwf = add <4 x i32> %i.bwe, %i.bvv
  %i.bwg = add <4 x i32> %i.bwf, %i.bvu           ; 2 uses
  %i.bwh = add <4 x i32> %i.box, %i.boy
  %i.bwi = add <4 x i32> %i.bwh, %i.bvx
  %i.bwj = add <4 x i32> %i.bwi, %i.bvw           ; 2 uses
  %i.bwk = or disjoint i32 %.12842.lcssa, 1
  %i.bwl = icmp slt i32 %i.bwk, %i.boa
  br i1 %i.bwl, label %.noexc3567.lr.ph, label %.preheader7901

.noexc3567.lr.ph:                                 ; preds = %._crit_edge8509
  %i.bwm = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !127
  %i.bwn = load ptr, ptr %0, align 8, !tbaa !32, !noalias !127 ; 4 uses
  %i.bwo = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !127
  %i.bwp = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !127 ; 2 uses
  %factor.op.mul8553 = mul i64 %i.bwo, %i.bwp
  %i.bwq = sext i32 %i.bwm to i64
  %i.bwr = load i32, ptr %i.b, align 4, !tbaa !9  ; 4 uses
  %i.bws = mul nsw i32 %i.bwr, %i.bhv
  %i.bwt = sext i32 %i.bws to i64
  %i.bwu = mul i64 %i.bwp, %i.bwq                 ; 4 uses
  %i.bwv = mul i64 %i.bwu, %i.bwt
  %invariant.gep8555 = getelementptr i8, ptr %i.bwn, i64 %i.bwv
  %i.bww = load i32, ptr %i.a, align 4, !tbaa !9  ; 4 uses
  %i.bwx = mul nsw i32 %i.bww, %i.bib
  %i.bwy = sext i32 %i.bwx to i64
  %invariant.gep8556 = getelementptr i8, ptr %invariant.gep8555, i64 %i.bwy
  %i.bwz = mul nsw i32 %i.bwr, %i.bhx
  %i.bxa = sext i32 %i.bwz to i64
  %i.bxb = mul i64 %i.bwu, %i.bxa
  %invariant.gep8560 = getelementptr i8, ptr %i.bwn, i64 %i.bxb
  %i.bxc = mul nsw i32 %i.bww, %i.bic
  %i.bxd = sext i32 %i.bxc to i64
  %invariant.gep8561 = getelementptr i8, ptr %invariant.gep8560, i64 %i.bxd
  %i.bxe = mul nsw i32 %i.bwr, %i.bhz
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = mul i64 %i.bwu, %i.bxf
  %invariant.gep8565 = getelementptr i8, ptr %i.bwn, i64 %i.bxg
  %i.bxh = mul nsw i32 %i.bww, %i.bid
  %i.bxi = sext i32 %i.bxh to i64
  %invariant.gep8566 = getelementptr i8, ptr %invariant.gep8565, i64 %i.bxi
  %i.bxj = mul nsw i32 %i.bwr, %i.bia
  %i.bxk = sext i32 %i.bxj to i64
  %i.bxl = mul i64 %i.bwu, %i.bxk
  %invariant.gep8570 = getelementptr i8, ptr %i.bwn, i64 %i.bxl
  %i.bxm = mul nsw i32 %i.bww, %i.bie
  %i.bxn = sext i32 %i.bxm to i64
  %invariant.gep8571 = getelementptr i8, ptr %invariant.gep8570, i64 %i.bxn
  %i.bxo = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.bxp = icmp sgt i32 %i.bxo, 0
  %i.bxq = load ptr, ptr %i.g, align 8
  %i.bxr = add i32 %i.bxo, -1
  %i.bxs = zext nneg i32 %i.bxr to i64
  %i.bxt = shl nuw nsw i64 %i.bxs, 3
  %i.bxu = zext nneg i32 %.12842.lcssa to i64
  %wide.trip.count10297 = zext nneg i32 %i.bxo to i64
  br label %.noexc3567

.preheader7901.loopexit:                          ; preds = %._crit_edge8539
  %i.bxv = trunc nuw i64 %indvars.iv.next10300 to i32
  br label %.preheader7901

.preheader7901:                                   ; preds = %.preheader7901.loopexit, %._crit_edge8509
  %.lcssa7957 = phi <4 x i32> [ %i.bwa, %._crit_edge8509 ], [ %.lcssa7953, %.preheader7901.loopexit ] ; 3 uses
  %.lcssa7956 = phi <4 x i32> [ %i.bwd, %._crit_edge8509 ], [ %.lcssa7952, %.preheader7901.loopexit ] ; 3 uses
  %.lcssa7955 = phi <4 x i32> [ %i.bwg, %._crit_edge8509 ], [ %.lcssa7951, %.preheader7901.loopexit ] ; 3 uses
  %.lcssa7954 = phi <4 x i32> [ %i.bwj, %._crit_edge8509 ], [ %.lcssa7950, %.preheader7901.loopexit ] ; 3 uses
  %.22843.lcssa = phi i32 [ %.12842.lcssa, %._crit_edge8509 ], [ %i.bxv, %.preheader7901.loopexit ] ; 2 uses
  %.42837.lcssa = phi ptr [ %.22835.lcssa, %._crit_edge8509 ], [ %.52838.lcssa, %.preheader7901.loopexit ]
  %i.bxw = icmp slt i32 %.22843.lcssa, %i.boa
  br i1 %i.bxw, label %.noexc3559.lr.ph, label %._crit_edge8584

.noexc3559.lr.ph:                                 ; preds = %.preheader7901
  %i.bxx = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !130
  %i.bxy = load ptr, ptr %0, align 8, !tbaa !32, !noalias !130 ; 4 uses
  %i.bxz = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !130
  %i.bya = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !130 ; 2 uses
  %factor.op.mul8589 = mul i64 %i.bxz, %i.bya
  %i.byb = sext i32 %i.bxx to i64
  %i.byc = load i32, ptr %i.b, align 4, !tbaa !9  ; 4 uses
  %i.byd = mul nsw i32 %i.byc, %i.bhv
  %i.bye = sext i32 %i.byd to i64
  %i.byf = mul i64 %i.bya, %i.byb                 ; 4 uses
  %i.byg = mul i64 %i.byf, %i.bye
  %invariant.gep8591 = getelementptr i8, ptr %i.bxy, i64 %i.byg
  %i.byh = load i32, ptr %i.a, align 4, !tbaa !9  ; 4 uses
  %i.byi = mul nsw i32 %i.byh, %i.bib
  %i.byj = sext i32 %i.byi to i64
  %invariant.gep8592 = getelementptr i8, ptr %invariant.gep8591, i64 %i.byj
  %i.byk = mul nsw i32 %i.byc, %i.bhx
  %i.byl = sext i32 %i.byk to i64
  %i.bym = mul i64 %i.byf, %i.byl
  %invariant.gep8596 = getelementptr i8, ptr %i.bxy, i64 %i.bym
  %i.byn = mul nsw i32 %i.byh, %i.bic
  %i.byo = sext i32 %i.byn to i64
  %invariant.gep8597 = getelementptr i8, ptr %invariant.gep8596, i64 %i.byo
  %i.byp = mul nsw i32 %i.byc, %i.bhz
  %i.byq = sext i32 %i.byp to i64
  %i.byr = mul i64 %i.byf, %i.byq
  %invariant.gep8601 = getelementptr i8, ptr %i.bxy, i64 %i.byr
  %i.bys = mul nsw i32 %i.byh, %i.bid
  %i.byt = sext i32 %i.bys to i64
  %invariant.gep8602 = getelementptr i8, ptr %invariant.gep8601, i64 %i.byt
  %i.byu = mul nsw i32 %i.byc, %i.bia
  %i.byv = sext i32 %i.byu to i64
  %i.byw = mul i64 %i.byf, %i.byv
  %invariant.gep8606 = getelementptr i8, ptr %i.bxy, i64 %i.byw
  %i.byx = mul nsw i32 %i.byh, %i.bie
  %i.byy = sext i32 %i.byx to i64
  %invariant.gep8607 = getelementptr i8, ptr %invariant.gep8606, i64 %i.byy
  %i.byz = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.bza = icmp sgt i32 %i.byz, 0
  %i.bzb = load ptr, ptr %i.g, align 8
  br i1 %i.bza, label %.noexc3559.us.preheader, label %._crit_edge8584

.noexc3559.us.preheader:                          ; preds = %.noexc3559.lr.ph
  %i.bzc = add nsw i32 %i.byz, -1
  %i.bzd = zext nneg i32 %i.bzc to i64
  %i.bze = shl nuw nsw i64 %i.bzd, 2
  %i.bzf = zext i32 %.22843.lcssa to i64
  %wide.trip.count10307 = zext nneg i32 %i.byz to i64
  br label %.noexc3559.us

.noexc3559.us:                                    ; preds = %.noexc3559.us.preheader, %._crit_edge8576.us
  %indvars.iv10309 = phi i64 [ %i.bzf, %.noexc3559.us.preheader ], [ %indvars.iv.next10310, %._crit_edge8576.us ] ; 2 uses
  %.628398583.us = phi ptr [ %.42837.lcssa, %.noexc3559.us.preheader ], [ %scevgep10305, %._crit_edge8576.us ] ; 2 uses
  %i.bzg = phi <4 x i32> [ %.lcssa7954, %.noexc3559.us.preheader ], [ %i.cbg, %._crit_edge8576.us ]
  %i.bzh = phi <4 x i32> [ %.lcssa7955, %.noexc3559.us.preheader ], [ %i.cbe, %._crit_edge8576.us ]
  %i.bzi = phi <4 x i32> [ %.lcssa7956, %.noexc3559.us.preheader ], [ %i.cbc, %._crit_edge8576.us ]
  %i.bzj = phi <4 x i32> [ %.lcssa7957, %.noexc3559.us.preheader ], [ %i.cba, %._crit_edge8576.us ]
  %.reass8590.us = mul i64 %factor.op.mul8589, %indvars.iv10309 ; 4 uses
  %gep8593.us = getelementptr i8, ptr %invariant.gep8592, i64 %.reass8590.us
  %gep8598.us = getelementptr i8, ptr %invariant.gep8597, i64 %.reass8590.us
  %gep8603.us = getelementptr i8, ptr %invariant.gep8602, i64 %.reass8590.us
  %gep8608.us = getelementptr i8, ptr %invariant.gep8607, i64 %.reass8590.us
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc3559.us, %bb.ae
  %indvars.iv10302 = phi i64 [ 0, %.noexc3559.us ], [ %indvars.iv.next10303, %bb.ae ] ; 2 uses
  %.728408574.us = phi ptr [ %.628398583.us, %.noexc3559.us ], [ %i.cbh, %bb.ae ] ; 2 uses
  %i.bzk = phi <4 x i32> [ %i.bzg, %.noexc3559.us ], [ %i.cbg, %bb.ae ]
  %i.bzl = phi <4 x i32> [ %i.bzh, %.noexc3559.us ], [ %i.cbe, %bb.ae ]
  %i.bzm = phi <4 x i32> [ %i.bzi, %.noexc3559.us ], [ %i.cbc, %bb.ae ]
  %i.bzn = phi <4 x i32> [ %i.bzj, %.noexc3559.us ], [ %i.cba, %bb.ae ]
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr %i.bzb, i64 %indvars.iv10302
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !9
  %i.bzq = sext i32 %i.bzp to i64                 ; 4 uses
  %i.bzr = getelementptr inbounds i8, ptr %gep8593.us, i64 %i.bzq
  %i.bzs = getelementptr inbounds i8, ptr %gep8598.us, i64 %i.bzq
  %i.bzt = getelementptr inbounds i8, ptr %gep8603.us, i64 %i.bzq
  %i.bzu = getelementptr inbounds i8, ptr %gep8608.us, i64 %i.bzq
  %i.bzv = load i8, ptr %i.bzr, align 1, !tbaa !44
  %i.bzw = sext i8 %i.bzv to i16
  %i.bzx = insertelement <8 x i16> poison, i16 %i.bzw, i64 0
  %i.bzy = shufflevector <8 x i16> %i.bzx, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bzz = load i8, ptr %i.bzs, align 1, !tbaa !44
  %i.caa = sext i8 %i.bzz to i16
  %i.cab = insertelement <8 x i16> poison, i16 %i.caa, i64 0
  %i.cac = shufflevector <8 x i16> %i.cab, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cad = load i8, ptr %i.bzt, align 1, !tbaa !44
  %i.cae = sext i8 %i.cad to i16
  %i.caf = insertelement <8 x i16> poison, i16 %i.cae, i64 0
  %i.cag = shufflevector <8 x i16> %i.caf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cah = load i8, ptr %i.bzu, align 1, !tbaa !44
  %i.cai = sext i8 %i.cah to i16
  %i.caj = insertelement <8 x i16> poison, i16 %i.cai, i64 0
  %i.cak = shufflevector <8 x i16> %i.caj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cal = load <8 x i8>, ptr %.728408574.us, align 1, !tbaa !44
  %i.cam = sext <8 x i8> %i.cal to <8 x i16>      ; 8 uses
  %i.can = mul <8 x i16> %i.bzy, %i.cam
  %i.cao = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bzy, <8 x i16> %i.cam)
  %i.cap = mul <8 x i16> %i.cac, %i.cam
  %i.caq = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cac, <8 x i16> %i.cam)
  %i.car = mul <8 x i16> %i.cag, %i.cam
  %i.cas = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cag, <8 x i16> %i.cam)
  %i.cat = mul <8 x i16> %i.cak, %i.cam
  %i.cau = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cak, <8 x i16> %i.cam)
  %i.cav = shufflevector <8 x i16> %i.can, <8 x i16> %i.cao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.caw = shufflevector <8 x i16> %i.cap, <8 x i16> %i.caq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cax = shufflevector <8 x i16> %i.car, <8 x i16> %i.cas, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cay = shufflevector <8 x i16> %i.cat, <8 x i16> %i.cau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.caz = bitcast <8 x i16> %i.cav to <4 x i32>
  %i.cba = add <4 x i32> %i.bzn, %i.caz           ; 3 uses
  %i.cbb = bitcast <8 x i16> %i.caw to <4 x i32>
  %i.cbc = add <4 x i32> %i.bzm, %i.cbb           ; 3 uses
  %i.cbd = bitcast <8 x i16> %i.cax to <4 x i32>
  %i.cbe = add <4 x i32> %i.bzl, %i.cbd           ; 3 uses
  %i.cbf = bitcast <8 x i16> %i.cay to <4 x i32>
  %i.cbg = add <4 x i32> %i.bzk, %i.cbf           ; 3 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %.728408574.us, i64 4
  %indvars.iv.next10303 = add nuw nsw i64 %indvars.iv10302, 1 ; 2 uses
  %exitcond10308.not = icmp eq i64 %indvars.iv.next10303, %wide.trip.count10307
  br i1 %exitcond10308.not, label %._crit_edge8576.us, label %bb.ae, !llvm.loop !133

._crit_edge8576.us:                               ; preds = %bb.ae
  %scevgep10304 = getelementptr i8, ptr %.628398583.us, i64 4
  %scevgep10305 = getelementptr i8, ptr %scevgep10304, i64 %i.bze
  %indvars.iv.next10310 = add nuw nsw i64 %indvars.iv10309, 1 ; 2 uses
  %i.cbi = trunc nuw i64 %indvars.iv.next10310 to i32
  %i.cbj = icmp sgt i32 %i.boa, %i.cbi
  br i1 %i.cbj, label %.noexc3559.us, label %._crit_edge8584, !llvm.loop !134

.noexc3567:                                       ; preds = %.noexc3567.lr.ph, %._crit_edge8539
  %indvars.iv10299 = phi i64 [ %i.bxu, %.noexc3567.lr.ph ], [ %indvars.iv.next10300, %._crit_edge8539 ] ; 2 uses
  %.428378546 = phi ptr [ %.22835.lcssa, %.noexc3567.lr.ph ], [ %.52838.lcssa, %._crit_edge8539 ] ; 3 uses
  %i.cbk = phi <4 x i32> [ %i.bwj, %.noexc3567.lr.ph ], [ %.lcssa7950, %._crit_edge8539 ] ; 2 uses
  %i.cbl = phi <4 x i32> [ %i.bwg, %.noexc3567.lr.ph ], [ %.lcssa7951, %._crit_edge8539 ] ; 2 uses
  %i.cbm = phi <4 x i32> [ %i.bwd, %.noexc3567.lr.ph ], [ %.lcssa7952, %._crit_edge8539 ] ; 2 uses
  %i.cbn = phi <4 x i32> [ %i.bwa, %.noexc3567.lr.ph ], [ %.lcssa7953, %._crit_edge8539 ] ; 2 uses
  %.reass8554 = mul i64 %factor.op.mul8553, %indvars.iv10299 ; 4 uses
  %gep8557 = getelementptr i8, ptr %invariant.gep8556, i64 %.reass8554
  %gep8562 = getelementptr i8, ptr %invariant.gep8561, i64 %.reass8554
  %gep8567 = getelementptr i8, ptr %invariant.gep8566, i64 %.reass8554
  %gep8572 = getelementptr i8, ptr %invariant.gep8571, i64 %.reass8554
  br i1 %i.bxp, label %.lr.ph8538, label %._crit_edge8539

._crit_edge8539.loopexit:                         ; preds = %.lr.ph8538
  %scevgep10294 = getelementptr i8, ptr %.428378546, i64 8
  %scevgep10295 = getelementptr i8, ptr %scevgep10294, i64 %i.bxt
  br label %._crit_edge8539

._crit_edge8539:                                  ; preds = %._crit_edge8539.loopexit, %.noexc3567
  %.lcssa7953 = phi <4 x i32> [ %i.cbn, %.noexc3567 ], [ %i.cdg, %._crit_edge8539.loopexit ] ; 2 uses
  %.lcssa7952 = phi <4 x i32> [ %i.cbm, %.noexc3567 ], [ %i.cdh, %._crit_edge8539.loopexit ] ; 2 uses
  %.lcssa7951 = phi <4 x i32> [ %i.cbl, %.noexc3567 ], [ %i.cdi, %._crit_edge8539.loopexit ] ; 2 uses
  %.lcssa7950 = phi <4 x i32> [ %i.cbk, %.noexc3567 ], [ %i.cdj, %._crit_edge8539.loopexit ] ; 2 uses
  %.52838.lcssa = phi ptr [ %.428378546, %.noexc3567 ], [ %scevgep10295, %._crit_edge8539.loopexit ] ; 2 uses
  %indvars.iv.next10300 = add nuw nsw i64 %indvars.iv10299, 2 ; 3 uses
  %i.cbo = trunc i64 %indvars.iv.next10300 to i32
  %i.cbp = or i32 %i.cbo, 1
  %i.cbq = icmp slt i32 %i.cbp, %i.boa
  br i1 %i.cbq, label %.noexc3567, label %.preheader7901.loopexit, !llvm.loop !135

.lr.ph8538:                                       ; preds = %.noexc3567, %.lr.ph8538
  %indvars.iv10292 = phi i64 [ %indvars.iv.next10293, %.lr.ph8538 ], [ 0, %.noexc3567 ] ; 2 uses
  %.528388537 = phi ptr [ %i.cdk, %.lr.ph8538 ], [ %.428378546, %.noexc3567 ] ; 2 uses
  %i.cbr = phi <4 x i32> [ %i.cdj, %.lr.ph8538 ], [ %i.cbk, %.noexc3567 ]
  %i.cbs = phi <4 x i32> [ %i.cdi, %.lr.ph8538 ], [ %i.cbl, %.noexc3567 ]
  %i.cbt = phi <4 x i32> [ %i.cdh, %.lr.ph8538 ], [ %i.cbm, %.noexc3567 ]
  %i.cbu = phi <4 x i32> [ %i.cdg, %.lr.ph8538 ], [ %i.cbn, %.noexc3567 ]
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %indvars.iv10292
  %i.cbw = load i32, ptr %i.cbv, align 4, !tbaa !9
  %i.cbx = sext i32 %i.cbw to i64                 ; 4 uses
  %i.cby = getelementptr inbounds i8, ptr %gep8557, i64 %i.cbx ; 2 uses
  %i.cbz = getelementptr inbounds i8, ptr %gep8567, i64 %i.cbx ; 2 uses
  %i.cca = getelementptr inbounds i8, ptr %gep8572, i64 %i.cbx ; 2 uses
  %i.ccb = load i8, ptr %i.cby, align 1, !tbaa !44
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cby, i64 %i.bfl
  %i.ccd = load i8, ptr %i.ccc, align 1, !tbaa !44
  %i.cce = insertelement <2 x i8> poison, i8 %i.ccb, i64 0
  %i.ccf = insertelement <2 x i8> %i.cce, i8 %i.ccd, i64 1
  %i.ccg = shufflevector <2 x i8> %i.ccf, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cch = sext <8 x i8> %i.ccg to <8 x i16>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.hp = bitcast <2 x i64> %.0742 to <16 x i8>
  %i.hq = sext <16 x i8> %i.hp to <16 x i16>      ; 2 uses
  %i.hr = bitcast <2 x i64> %.0743 to <16 x i8>
  %i.hs = sext <16 x i8> %i.hr to <16 x i16>      ; 2 uses
  %i.ht = bitcast <2 x i64> %.0744 to <16 x i8>
  %i.hu = sext <16 x i8> %i.ht to <16 x i16>      ; 2 uses
  %i.hv = bitcast <2 x i64> %.0745 to <16 x i8>
  %i.hw = sext <16 x i8> %i.hv to <16 x i16>      ; 2 uses
  %i.hx = load <8 x i64>, ptr %.17282561, align 64, !tbaa !44 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.17282561, i64 64
  %i.hz = load <8 x i64>, ptr %i.hy, align 64, !tbaa !44 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.17282561, i64 128
  %i.ib = load <8 x i64>, ptr %i.ia, align 64, !tbaa !44 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.17282561, i64 192
  %i.id = load <8 x i64>, ptr %i.ic, align 64, !tbaa !44 ; 2 uses
  %i.ie = bitcast <8 x i64> %i.hx to <64 x i8>
  %i.if = shufflevector <64 x i8> %i.ie, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ig = sext <32 x i8> %i.if to <32 x i16>      ; 4 uses
  %i.ih = bitcast <8 x i64> %i.hx to <64 x i8>
  %i.ii = shufflevector <64 x i8> %i.ih, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ij = sext <32 x i8> %i.ii to <32 x i16>      ; 4 uses
  %i.ik = bitcast <8 x i64> %i.hz to <64 x i8>
  %i.il = shufflevector <64 x i8> %i.ik, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.im = sext <32 x i8> %i.il to <32 x i16>      ; 4 uses
  %i.in = bitcast <8 x i64> %i.hz to <64 x i8>
  %i.io = shufflevector <64 x i8> %i.in, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ip = sext <32 x i8> %i.io to <32 x i16>      ; 4 uses
  %i.iq = bitcast <8 x i64> %i.ib to <64 x i8>
  %i.ir = shufflevector <64 x i8> %i.iq, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.is = sext <32 x i8> %i.ir to <32 x i16>      ; 4 uses
  %i.it = bitcast <8 x i64> %i.ib to <64 x i8>
  %i.iu = shufflevector <64 x i8> %i.it, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.iv = sext <32 x i8> %i.iu to <32 x i16>      ; 4 uses
  %i.iw = bitcast <8 x i64> %i.id to <64 x i8>
  %i.ix = shufflevector <64 x i8> %i.iw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iy = sext <32 x i8> %i.ix to <32 x i16>      ; 4 uses
  %i.iz = bitcast <8 x i64> %i.id to <64 x i8>
  %i.ja = shufflevector <64 x i8> %i.iz, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jb = sext <32 x i8> %i.ja to <32 x i16>      ; 4 uses
  %i.jc = bitcast <16 x i16> %i.hq to <8 x i32>   ; 4 uses
  %i.jd = bitcast <16 x i16> %i.hq to <8 x i32>   ; 4 uses
  %i.je = bitcast <16 x i16> %i.hs to <8 x i32>   ; 4 uses
  %i.jf = bitcast <16 x i16> %i.hs to <8 x i32>   ; 4 uses
  %i.jg = bitcast <16 x i16> %i.hu to <8 x i32>   ; 4 uses
  %i.jh = bitcast <16 x i16> %i.hu to <8 x i32>   ; 4 uses
  %i.ji = bitcast <16 x i16> %i.hw to <8 x i32>   ; 4 uses
  %i.jj = bitcast <16 x i16> %i.hw to <8 x i32>   ; 4 uses
  %i.jk = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jl = bitcast <16 x i32> %i.jk to <32 x i16>
  %i.jm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.fu, <32 x i16> %i.jl, <32 x i16> %i.ig)
  %i.jn = shufflevector <8 x i32> %i.je, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jo = bitcast <16 x i32> %i.jn to <32 x i16>
  %i.jp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.fv, <32 x i16> %i.jo, <32 x i16> %i.ig)
  %i.jq = shufflevector <8 x i32> %i.jg, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jr = bitcast <16 x i32> %i.jq to <32 x i16>
  %i.js = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.fw, <32 x i16> %i.jr, <32 x i16> %i.ig)
  %i.jt = shufflevector <8 x i32> %i.ji, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.ju = bitcast <16 x i32> %i.jt to <32 x i16>
  %i.jv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.fx, <32 x i16> %i.ju, <32 x i16> %i.ig)
  %i.jw = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.jx = bitcast <16 x i32> %i.jw to <32 x i16>
  %i.jy = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.jm, <32 x i16> %i.jx, <32 x i16> %i.ij)
  %i.jz = shufflevector <8 x i32> %i.je, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ka = bitcast <16 x i32> %i.jz to <32 x i16>
  %i.kb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.jp, <32 x i16> %i.ka, <32 x i16> %i.ij)
  %i.kc = shufflevector <8 x i32> %i.jg, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kd = bitcast <16 x i32> %i.kc to <32 x i16>
  %i.ke = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.js, <32 x i16> %i.kd, <32 x i16> %i.ij)
  %i.kf = shufflevector <8 x i32> %i.ji, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kg = bitcast <16 x i32> %i.kf to <32 x i16>
  %i.kh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.jv, <32 x i16> %i.kg, <32 x i16> %i.ij)
  %i.ki = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kj = bitcast <16 x i32> %i.ki to <32 x i16>
  %i.kk = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.jy, <32 x i16> %i.kj, <32 x i16> %i.im)
  %i.kl = shufflevector <8 x i32> %i.je, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.km = bitcast <16 x i32> %i.kl to <32 x i16>
  %i.kn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kb, <32 x i16> %i.km, <32 x i16> %i.im)
  %i.ko = shufflevector <8 x i32> %i.jg, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kp = bitcast <16 x i32> %i.ko to <32 x i16>
  %i.kq = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ke, <32 x i16> %i.kp, <32 x i16> %i.im)
  %i.kr = shufflevector <8 x i32> %i.ji, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ks = bitcast <16 x i32> %i.kr to <32 x i16>
  %i.kt = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kh, <32 x i16> %i.ks, <32 x i16> %i.im)
  %i.ku = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.kv = bitcast <16 x i32> %i.ku to <32 x i16>
  %i.kw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kk, <32 x i16> %i.kv, <32 x i16> %i.ip)
  %i.kx = shufflevector <8 x i32> %i.je, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ky = bitcast <16 x i32> %i.kx to <32 x i16>
  %i.kz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kn, <32 x i16> %i.ky, <32 x i16> %i.ip)
  %i.la = shufflevector <8 x i32> %i.jg, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.lb = bitcast <16 x i32> %i.la to <32 x i16>
  %i.lc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kq, <32 x i16> %i.lb, <32 x i16> %i.ip)
  %i.ld = shufflevector <8 x i32> %i.ji, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.le = bitcast <16 x i32> %i.ld to <32 x i16>
  %i.lf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kt, <32 x i16> %i.le, <32 x i16> %i.ip)
  %i.lg = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lh = bitcast <16 x i32> %i.lg to <32 x i16>
  %i.li = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kw, <32 x i16> %i.lh, <32 x i16> %i.is)
  %i.lj = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lk = bitcast <16 x i32> %i.lj to <32 x i16>
  %i.ll = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.kz, <32 x i16> %i.lk, <32 x i16> %i.is)
  %i.lm = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ln = bitcast <16 x i32> %i.lm to <32 x i16>
  %i.lo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lc, <32 x i16> %i.ln, <32 x i16> %i.is)
  %i.lp = shufflevector <8 x i32> %i.jj, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lq = bitcast <16 x i32> %i.lp to <32 x i16>
  %i.lr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lf, <32 x i16> %i.lq, <32 x i16> %i.is)
  %i.ls = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lt = bitcast <16 x i32> %i.ls to <32 x i16>
  %i.lu = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.li, <32 x i16> %i.lt, <32 x i16> %i.iv)
  %i.lv = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lw = bitcast <16 x i32> %i.lv to <32 x i16>
  %i.lx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ll, <32 x i16> %i.lw, <32 x i16> %i.iv)
  %i.ly = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lz = bitcast <16 x i32> %i.ly to <32 x i16>
  %i.ma = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lo, <32 x i16> %i.lz, <32 x i16> %i.iv)
  %i.mb = shufflevector <8 x i32> %i.jj, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.mc = bitcast <16 x i32> %i.mb to <32 x i16>
  %i.md = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lr, <32 x i16> %i.mc, <32 x i16> %i.iv)
  %i.me = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.mf = bitcast <16 x i32> %i.me to <32 x i16>
  %i.mg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lu, <32 x i16> %i.mf, <32 x i16> %i.iy)
  %i.mh = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.mi = bitcast <16 x i32> %i.mh to <32 x i16>
  %i.mj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.lx, <32 x i16> %i.mi, <32 x i16> %i.iy)
  %i.mk = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ml = bitcast <16 x i32> %i.mk to <32 x i16>
  %i.mm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ma, <32 x i16> %i.ml, <32 x i16> %i.iy)
  %i.mn = shufflevector <8 x i32> %i.jj, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.mo = bitcast <16 x i32> %i.mn to <32 x i16>
  %i.mp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.md, <32 x i16> %i.mo, <32 x i16> %i.iy)
  %i.mq = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.mr = bitcast <16 x i32> %i.mq to <32 x i16>
  %i.ms = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.mg, <32 x i16> %i.mr, <32 x i16> %i.jb) ; 2 uses
  %i.mt = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.mu = bitcast <16 x i32> %i.mt to <32 x i16>
  %i.mv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.mj, <32 x i16> %i.mu, <32 x i16> %i.jb) ; 2 uses
  %i.mw = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.mx = bitcast <16 x i32> %i.mw to <32 x i16>
  %i.my = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.mm, <32 x i16> %i.mx, <32 x i16> %i.jb) ; 2 uses
  %i.mz = shufflevector <8 x i32> %i.jj, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.na = bitcast <16 x i32> %i.mz to <32 x i16>
  %i.nb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.mp, <32 x i16> %i.na, <32 x i16> %i.jb) ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.17282561, i64 256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !371

.preheader2480:                                   ; preds = %._crit_edge2594, %.preheader2481
  %.lcssa2498 = phi <16 x i32> [ %.lcssa2490, %.preheader2481 ], [ %.lcssa2494, %._crit_edge2594 ] ; 2 uses
  %.lcssa2497 = phi <16 x i32> [ %.lcssa2489, %.preheader2481 ], [ %.lcssa2493, %._crit_edge2594 ] ; 2 uses
  %.lcssa2496 = phi <16 x i32> [ %.lcssa2488, %.preheader2481 ], [ %.lcssa2492, %._crit_edge2594 ] ; 2 uses
  %.lcssa2495 = phi <16 x i32> [ %.lcssa2487, %.preheader2481 ], [ %.lcssa2491, %._crit_edge2594 ] ; 2 uses
  %.1737.lcssa = phi i32 [ %.0736.lcssa, %.preheader2481 ], [ %i.rj, %._crit_edge2594 ] ; 3 uses
  %.2729.lcssa = phi ptr [ %.0727.lcssa, %.preheader2481 ], [ %.3730.lcssa, %._crit_edge2594 ] ; 2 uses
  %i.nd = or disjoint i32 %.1737.lcssa, 1
  %i.ne = icmp slt i32 %i.nd, %i.dt
  br i1 %i.ne, label %.noexc871.lr.ph, label %.preheader2479

.noexc871.lr.ph:                                  ; preds = %.preheader2480
  %i.nf = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !372
  %i.ng = load ptr, ptr %4, align 8, !tbaa !32, !noalias !372 ; 4 uses
  %i.nh = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !372
  %i.ni = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !372 ; 2 uses
  %factor.op.mul2649 = mul i64 %i.nh, %i.ni
  %i.nj = sext i32 %i.nf to i64
  %i.nk = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.nl = mul nsw i32 %i.nk, %i.bo
  %i.nm = sext i32 %i.nl to i64
  %i.nn = mul i64 %i.ni, %i.nj                    ; 4 uses
  %i.no = mul i64 %i.nn, %i.nm
  %invariant.gep2651 = getelementptr i8, ptr %i.ng, i64 %i.no
  %i.np = load i32, ptr %10, align 4, !tbaa !9    ; 4 uses
  %i.nq = mul nsw i32 %i.np, %i.bu
  %i.nr = sext i32 %i.nq to i64
  %invariant.gep2652 = getelementptr i8, ptr %invariant.gep2651, i64 %i.nr
  %i.ns = mul nsw i32 %i.nk, %i.bq
  %i.nt = sext i32 %i.ns to i64
  %i.nu = mul i64 %i.nn, %i.nt
  %invariant.gep2656 = getelementptr i8, ptr %i.ng, i64 %i.nu
  %i.nv = mul nsw i32 %i.np, %i.bv
  %i.nw = sext i32 %i.nv to i64
  %invariant.gep2657 = getelementptr i8, ptr %invariant.gep2656, i64 %i.nw
  %i.nx = mul nsw i32 %i.nk, %i.bs
  %i.ny = sext i32 %i.nx to i64
  %i.nz = mul i64 %i.nn, %i.ny
  %invariant.gep2661 = getelementptr i8, ptr %i.ng, i64 %i.nz
  %i.oa = mul nsw i32 %i.np, %i.bw
  %i.ob = sext i32 %i.oa to i64
  %invariant.gep2662 = getelementptr i8, ptr %invariant.gep2661, i64 %i.ob
  %i.oc = mul nsw i32 %i.nk, %i.bt
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul i64 %i.nn, %i.od
  %invariant.gep2666 = getelementptr i8, ptr %i.ng, i64 %i.oe
  %i.of = mul nsw i32 %i.np, %i.bx
  %i.og = sext i32 %i.of to i64
  %invariant.gep2667 = getelementptr i8, ptr %invariant.gep2666, i64 %i.og
  %i.oh = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  %i.oj = add i32 %i.oh, -1
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 5
  %i.om = zext nneg i32 %.1737.lcssa to i64
  %wide.trip.count3033 = zext nneg i32 %i.oh to i64
  br label %.noexc871

.noexc879:                                        ; preds = %.noexc879.lr.ph, %._crit_edge2594
  %.27292605 = phi ptr [ %.0727.lcssa, %.noexc879.lr.ph ], [ %.3730.lcssa, %._crit_edge2594 ] ; 5 uses
  %.17372604 = phi i32 [ %.0736.lcssa, %.noexc879.lr.ph ], [ %i.rj, %._crit_edge2594 ] ; 2 uses
  %i.on = phi <16 x i32> [ %.lcssa2487, %.noexc879.lr.ph ], [ %.lcssa2491, %._crit_edge2594 ] ; 3 uses
  %i.oo = phi <16 x i32> [ %.lcssa2488, %.noexc879.lr.ph ], [ %.lcssa2492, %._crit_edge2594 ] ; 3 uses
  %i.op = phi <16 x i32> [ %.lcssa2489, %.noexc879.lr.ph ], [ %.lcssa2493, %._crit_edge2594 ] ; 3 uses
  %i.oq = phi <16 x i32> [ %.lcssa2490, %.noexc879.lr.ph ], [ %.lcssa2494, %._crit_edge2594 ] ; 3 uses
  %i.or = sdiv i32 %.17372604, %i.dw
  %i.os = sext i32 %i.or to i64
  %.reass2613 = mul i64 %factor.op.mul2612, %i.os ; 4 uses
  %gep2616 = getelementptr i8, ptr %invariant.gep2615, i64 %.reass2613 ; 2 uses
  %gep2621 = getelementptr i8, ptr %invariant.gep2620, i64 %.reass2613 ; 2 uses
  %gep2626 = getelementptr i8, ptr %invariant.gep2625, i64 %.reass2613 ; 2 uses
  %gep2631 = getelementptr i8, ptr %invariant.gep2630, i64 %.reass2613 ; 2 uses
  br i1 %i.fe, label %.lr.ph2593, label %._crit_edge2594

.lr.ph2593:                                       ; preds = %.noexc879
  %i.ot = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  br i1 %i.fi, label %.lr.ph2593.split.us, label %.lr.ph2593.split

.lr.ph2593.split.us:                              ; preds = %.lr.ph2593, %.lr.ph2593.split.us
  %indvars.iv3021 = phi i64 [ %indvars.iv.next3022, %.lr.ph2593.split.us ], [ 0, %.lr.ph2593 ] ; 2 uses
  %.37302592.us = phi ptr [ %i.ri, %.lr.ph2593.split.us ], [ %.27292605, %.lr.ph2593 ] ; 3 uses
  %i.ou = phi <16 x i32> [ %i.rb, %.lr.ph2593.split.us ], [ %i.on, %.lr.ph2593 ]
  %i.ov = phi <16 x i32> [ %i.rd, %.lr.ph2593.split.us ], [ %i.oo, %.lr.ph2593 ]
  %i.ow = phi <16 x i32> [ %i.rf, %.lr.ph2593.split.us ], [ %i.op, %.lr.ph2593 ]
  %i.ox = phi <16 x i32> [ %i.rh, %.lr.ph2593.split.us ], [ %i.oq, %.lr.ph2593 ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv3021
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !9
  %i.pa = sext i32 %i.oz to i64                   ; 4 uses
  %i.pb = getelementptr inbounds i8, ptr %gep2616, i64 %i.pa
  %i.pc = getelementptr inbounds i8, ptr %gep2621, i64 %i.pa
  %i.pd = getelementptr inbounds i8, ptr %gep2626, i64 %i.pa
  %i.pe = getelementptr inbounds i8, ptr %gep2631, i64 %i.pa
  %i.pf = load <8 x i8>, ptr %i.pb, align 1, !tbaa !44
  %i.pg = load <8 x i8>, ptr %i.pc, align 1, !tbaa !44
  %i.ph = load <8 x i8>, ptr %i.pd, align 1, !tbaa !44
  %i.pi = load <8 x i8>, ptr %i.pe, align 1, !tbaa !44
  %i.pj = sext <8 x i8> %i.pf to <8 x i16>        ; 4 uses
  %i.pk = sext <8 x i8> %i.pg to <8 x i16>        ; 4 uses
  %i.pl = sext <8 x i8> %i.ph to <8 x i16>        ; 4 uses
  %i.pm = sext <8 x i8> %i.pi to <8 x i16>        ; 4 uses
  %i.pn = load <8 x i64>, ptr %.37302592.us, align 64, !tbaa !44 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.37302592.us, i64 64
  %i.pp = load <8 x i64>, ptr %i.po, align 64, !tbaa !44 ; 2 uses
  %i.pq = bitcast <8 x i64> %i.pn to <64 x i8>
  %i.pr = shufflevector <64 x i8> %i.pq, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ps = sext <32 x i8> %i.pr to <32 x i16>      ; 4 uses
  %i.pt = bitcast <8 x i64> %i.pn to <64 x i8>
  %i.pu = shufflevector <64 x i8> %i.pt, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.pv = sext <32 x i8> %i.pu to <32 x i16>      ; 4 uses
  %i.pw = bitcast <8 x i64> %i.pp to <64 x i8>
  %i.px = shufflevector <64 x i8> %i.pw, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.py = sext <32 x i8> %i.px to <32 x i16>      ; 4 uses
  %i.pz = bitcast <8 x i64> %i.pp to <64 x i8>
  %i.qa = shufflevector <64 x i8> %i.pz, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qb = sext <32 x i8> %i.qa to <32 x i16>      ; 4 uses
  %i.qc = shufflevector <8 x i16> %i.pj, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.qd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ou, <32 x i16> %i.qc, <32 x i16> %i.ps)
  %i.qe = shufflevector <8 x i16> %i.pk, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.qf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ov, <32 x i16> %i.qe, <32 x i16> %i.ps)
  %i.qg = shufflevector <8 x i16> %i.pl, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.qh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ow, <32 x i16> %i.qg, <32 x i16> %i.ps)
  %i.qi = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.qj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ox, <32 x i16> %i.qi, <32 x i16> %i.ps)
  %i.qk = shufflevector <8 x i16> %i.pj, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ql = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qd, <32 x i16> %i.qk, <32 x i16> %i.pv)
  %i.qm = shufflevector <8 x i16> %i.pk, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.qn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qf, <32 x i16> %i.qm, <32 x i16> %i.pv)
  %i.qo = shufflevector <8 x i16> %i.pl, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.qp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qh, <32 x i16> %i.qo, <32 x i16> %i.pv)
  %i.qq = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.qr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qj, <32 x i16> %i.qq, <32 x i16> %i.pv)
  %i.qs = shufflevector <8 x i16> %i.pj, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.qt = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ql, <32 x i16> %i.qs, <32 x i16> %i.py)
  %i.qu = shufflevector <8 x i16> %i.pk, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.qv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qn, <32 x i16> %i.qu, <32 x i16> %i.py)
  %i.qw = shufflevector <8 x i16> %i.pl, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.qx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qp, <32 x i16> %i.qw, <32 x i16> %i.py)
  %i.qy = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.qz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qr, <32 x i16> %i.qy, <32 x i16> %i.py)
  %i.ra = shufflevector <8 x i16> %i.pj, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.rb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qt, <32 x i16> %i.ra, <32 x i16> %i.qb) ; 2 uses
  %i.rc = shufflevector <8 x i16> %i.pk, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.rd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qv, <32 x i16> %i.rc, <32 x i16> %i.qb) ; 2 uses
  %i.re = shufflevector <8 x i16> %i.pl, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.rf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qx, <32 x i16> %i.re, <32 x i16> %i.qb) ; 2 uses
  %i.rg = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.rh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.qz, <32 x i16> %i.rg, <32 x i16> %i.qb) ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.37302592.us, i64 128
  %indvars.iv.next3022 = add nuw nsw i64 %indvars.iv3021, 1 ; 2 uses
  %exitcond3027.not = icmp eq i64 %indvars.iv.next3022, %wide.trip.count3026
  br i1 %exitcond3027.not, label %._crit_edge2594.loopexit, label %.lr.ph2593.split.us, !llvm.loop !375

._crit_edge2594.loopexit:                         ; preds = %.lr.ph2593.split.us
  %scevgep3023 = getelementptr i8, ptr %.27292605, i64 128
  %scevgep3024 = getelementptr i8, ptr %scevgep3023, i64 %i.fh
  br label %._crit_edge2594

._crit_edge2594.loopexit2926:                     ; preds = %.lr.ph2593.split
  %scevgep3016 = getelementptr i8, ptr %.27292605, i64 128
  %scevgep3017 = getelementptr i8, ptr %scevgep3016, i64 %i.fh
  br label %._crit_edge2594

._crit_edge2594:                                  ; preds = %._crit_edge2594.loopexit2926, %._crit_edge2594.loopexit, %.noexc879
  %.lcssa2494 = phi <16 x i32> [ %i.oq, %.noexc879 ], [ %i.rh, %._crit_edge2594.loopexit ], [ %i.ud, %._crit_edge2594.loopexit2926 ] ; 2 uses
  %.lcssa2493 = phi <16 x i32> [ %i.op, %.noexc879 ], [ %i.rf, %._crit_edge2594.loopexit ], [ %i.ub, %._crit_edge2594.loopexit2926 ] ; 2 uses
  %.lcssa2492 = phi <16 x i32> [ %i.oo, %.noexc879 ], [ %i.rd, %._crit_edge2594.loopexit ], [ %i.tz, %._crit_edge2594.loopexit2926 ] ; 2 uses
  %.lcssa2491 = phi <16 x i32> [ %i.on, %.noexc879 ], [ %i.rb, %._crit_edge2594.loopexit ], [ %i.tx, %._crit_edge2594.loopexit2926 ] ; 2 uses
  %.3730.lcssa = phi ptr [ %.27292605, %.noexc879 ], [ %scevgep3024, %._crit_edge2594.loopexit ], [ %scevgep3017, %._crit_edge2594.loopexit2926 ] ; 2 uses
  %i.rj = add nuw nsw i32 %.17372604, 8           ; 3 uses
  %i.rk = or disjoint i32 %i.rj, 7
  %i.rl = icmp slt i32 %i.rk, %i.dt
  br i1 %i.rl, label %.noexc879, label %.preheader2480, !llvm.loop !376

.lr.ph2593.split:                                 ; preds = %.lr.ph2593, %.lr.ph2593.split
  %indvars.iv3014 = phi i64 [ %indvars.iv.next3015, %.lr.ph2593.split ], [ 0, %.lr.ph2593 ] ; 2 uses
  %.37302592 = phi ptr [ %i.ue, %.lr.ph2593.split ], [ %.27292605, %.lr.ph2593 ] ; 3 uses
  %i.rm = phi <16 x i32> [ %i.tx, %.lr.ph2593.split ], [ %i.on, %.lr.ph2593 ]
  %i.rn = phi <16 x i32> [ %i.tz, %.lr.ph2593.split ], [ %i.oo, %.lr.ph2593 ]
  %i.ro = phi <16 x i32> [ %i.ub, %.lr.ph2593.split ], [ %i.op, %.lr.ph2593 ]
  %i.rp = phi <16 x i32> [ %i.ud, %.lr.ph2593.split ], [ %i.oq, %.lr.ph2593 ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv3014
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !9
  %i.rs = sext i32 %i.rr to i64                   ; 4 uses
  %i.rt = getelementptr inbounds i8, ptr %gep2616, i64 %i.rs
  %i.ru = getelementptr inbounds i8, ptr %gep2621, i64 %i.rs
  %i.rv = getelementptr inbounds i8, ptr %gep2626, i64 %i.rs
  %i.rw = getelementptr inbounds i8, ptr %gep2631, i64 %i.rs
  %i.rx = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rt, <8 x i32> %i.av, <8 x i32> splat (i32 -1), i8 1)
  %i.ry = trunc <8 x i32> %i.rx to <8 x i8>
  %i.rz = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ru, <8 x i32> %i.av, <8 x i32> splat (i32 -1), i8 1)
  %i.sa = trunc <8 x i32> %i.rz to <8 x i8>
  %i.sb = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rv, <8 x i32> %i.av, <8 x i32> splat (i32 -1), i8 1)
  %i.sc = trunc <8 x i32> %i.sb to <8 x i8>
  %i.sd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rw, <8 x i32> %i.av, <8 x i32> splat (i32 -1), i8 1)
  %i.se = trunc <8 x i32> %i.sd to <8 x i8>
  %i.sf = sext <8 x i8> %i.ry to <8 x i16>        ; 4 uses
  %i.sg = sext <8 x i8> %i.sa to <8 x i16>        ; 4 uses
  %i.sh = sext <8 x i8> %i.sc to <8 x i16>        ; 4 uses
  %i.si = sext <8 x i8> %i.se to <8 x i16>        ; 4 uses
  %i.sj = load <8 x i64>, ptr %.37302592, align 64, !tbaa !44 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.37302592, i64 64
  %i.sl = load <8 x i64>, ptr %i.sk, align 64, !tbaa !44 ; 2 uses
  %i.sm = bitcast <8 x i64> %i.sj to <64 x i8>
  %i.sn = shufflevector <64 x i8> %i.sm, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.so = sext <32 x i8> %i.sn to <32 x i16>      ; 4 uses
  %i.sp = bitcast <8 x i64> %i.sj to <64 x i8>
  %i.sq = shufflevector <64 x i8> %i.sp, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.sr = sext <32 x i8> %i.sq to <32 x i16>      ; 4 uses
  %i.ss = bitcast <8 x i64> %i.sl to <64 x i8>
  %i.st = shufflevector <64 x i8> %i.ss, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.su = sext <32 x i8> %i.st to <32 x i16>      ; 4 uses
  %i.sv = bitcast <8 x i64> %i.sl to <64 x i8>
  %i.sw = shufflevector <64 x i8> %i.sv, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.sx = sext <32 x i8> %i.sw to <32 x i16>      ; 4 uses
  %i.sy = shufflevector <8 x i16> %i.sf, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.rm, <32 x i16> %i.sy, <32 x i16> %i.so)
  %i.ta = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.tb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.rn, <32 x i16> %i.ta, <32 x i16> %i.so)
  %i.tc = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.td = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ro, <32 x i16> %i.tc, <32 x i16> %i.so)
  %i.te = shufflevector <8 x i16> %i.si, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.tf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.rp, <32 x i16> %i.te, <32 x i16> %i.so)
  %i.tg = shufflevector <8 x i16> %i.sf, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.th = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.sz, <32 x i16> %i.tg, <32 x i16> %i.sr)
  %i.ti = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.tj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tb, <32 x i16> %i.ti, <32 x i16> %i.sr)
  %i.tk = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.tl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.td, <32 x i16> %i.tk, <32 x i16> %i.sr)
  %i.tm = shufflevector <8 x i16> %i.si, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.tn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tf, <32 x i16> %i.tm, <32 x i16> %i.sr)
  %i.to = shufflevector <8 x i16> %i.sf, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.tp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.th, <32 x i16> %i.to, <32 x i16> %i.su)
  %i.tq = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.tr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tj, <32 x i16> %i.tq, <32 x i16> %i.su)
  %i.ts = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.tt = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tl, <32 x i16> %i.ts, <32 x i16> %i.su)
  %i.tu = shufflevector <8 x i16> %i.si, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.tv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tn, <32 x i16> %i.tu, <32 x i16> %i.su)
  %i.tw = shufflevector <8 x i16> %i.sf, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.tx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tp, <32 x i16> %i.tw, <32 x i16> %i.sx) ; 2 uses
  %i.ty = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.tz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tr, <32 x i16> %i.ty, <32 x i16> %i.sx) ; 2 uses
  %i.ua = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.ub = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tt, <32 x i16> %i.ua, <32 x i16> %i.sx) ; 2 uses
  %i.uc = shufflevector <8 x i16> %i.si, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.ud = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.tv, <32 x i16> %i.uc, <32 x i16> %i.sx) ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.37302592, i64 128
  %indvars.iv.next3015 = add nuw nsw i64 %indvars.iv3014, 1 ; 2 uses
  %exitcond3020.not = icmp eq i64 %indvars.iv.next3015, %wide.trip.count3019
  br i1 %exitcond3020.not, label %._crit_edge2594.loopexit2926, label %.lr.ph2593.split, !llvm.loop !375

.preheader2479.loopexit:                          ; preds = %._crit_edge2635
  %i.uf = trunc nuw i64 %indvars.iv.next3036 to i32
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
._crit_edge2905.us:                               ; preds = %._crit_edge2905.us.unr-lcssa, %.epil.preheader3346
  %.lcssa3343 = phi <16 x i32> [ %i.bia, %._crit_edge2905.us.unr-lcssa ], [ %i.bio, %.epil.preheader3346 ] ; 2 uses
  %scevgep3123 = getelementptr i8, ptr %.67832908.us, i64 16
  %scevgep3124 = getelementptr i8, ptr %scevgep3123, i64 %i.bgu
  %indvars.iv.next3129 = add nuw nsw i64 %indvars.iv3128, 1 ; 2 uses
  %i.bip = trunc nuw i64 %indvars.iv.next3129 to i32
  %i.biq = icmp sgt i32 %i.aur, %i.bip
  br i1 %i.biq, label %.noexc830.us, label %._crit_edge2910, !llvm.loop !431

._crit_edge2910:                                  ; preds = %._crit_edge2905.us, %.noexc830.lr.ph, %.preheader
  %.lcssa2559 = phi <16 x i32> [ %.lcssa2557, %.preheader ], [ %.lcssa2557, %.noexc830.lr.ph ], [ %.lcssa3343, %._crit_edge2905.us ]
  %i.bir = add <16 x i32> %.lcssa2553, %.lcssa2554
  %i.bis = add <16 x i32> %i.bir, %.lcssa2552
  %i.bit = add <16 x i32> %i.bis, %.lcssa2559     ; 8 uses
  %i.biu = load i32, ptr %6, align 4, !tbaa !9    ; 2 uses
  %i.biv = icmp eq i32 %i.biu, 16
  br i1 %i.biv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge2910
  store <16 x i32> %i.bit, ptr %.102919, align 64, !tbaa !44
  %i.biw = getelementptr inbounds nuw i8, ptr %.102919, i64 64
  %.pr2472 = load i32, ptr %6, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge2910
  %i.bix = phi i32 [ %.pr2472, %bb.al ], [ %i.biu, %._crit_edge2910 ] ; 2 uses
  %.11 = phi ptr [ %i.biw, %bb.al ], [ %.102919, %._crit_edge2910 ] ; 4 uses
  %i.biy = icmp eq i32 %i.bix, 8
  br i1 %i.biy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.biz = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.biz, ptr %.11, align 32, !tbaa !44
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.11, i64 %i.ae
  %i.bjb = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bjb, ptr %i.bja, align 32, !tbaa !44
  %i.bjc = getelementptr inbounds nuw i8, ptr %.11, i64 32
  %.pre3137 = load i32, ptr %6, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bjd = phi i32 [ %.pre3137, %bb.an ], [ %i.bix, %bb.am ] ; 2 uses
  %.12 = phi ptr [ %i.bjc, %bb.an ], [ %.11, %bb.am ] ; 6 uses
  %i.bje = icmp eq i32 %i.bjd, 4
  br i1 %i.bje, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.bjf = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bjf, ptr %.12, align 16, !tbaa !44
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %.12, i64 %i.ae
  %i.bjh = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.bjh, ptr %i.bjg, align 16, !tbaa !44
  %i.bji = getelementptr inbounds nuw i8, ptr %.12, i64 %.idx
  %i.bjj = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.bjj, ptr %i.bji, align 16, !tbaa !44
  %i.bjk = getelementptr inbounds nuw i8, ptr %.12, i64 %.idx794
  %i.bjl = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.bjl, ptr %i.bjk, align 16, !tbaa !44
  %i.bjm = getelementptr inbounds nuw i8, ptr %.12, i64 16
  %.pr2473 = load i32, ptr %6, align 4, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bjn = phi i32 [ %.pr2473, %bb.ap ], [ %i.bjd, %bb.ao ]
  %.13 = phi ptr [ %i.bjm, %bb.ap ], [ %.12, %bb.ao ] ; 3 uses
  %i.bjo = icmp eq i32 %i.bjn, 1
  br i1 %i.bjo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.13, <16 x i1> splat (i1 true), <16 x i32> %i.acs, <16 x i32> %i.bit, i32 4)
  %i.bjp = getelementptr inbounds nuw i8, ptr %.13, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.14 = phi ptr [ %i.bjp, %bb.ar ], [ %.13, %bb.aq ]
  %i.bjq = add i32 %.27262918, 1                  ; 2 uses
  %exitcond3131.not = icmp eq i32 %i.bjq, %i.an
  br i1 %exitcond3131.not, label %._crit_edge2920, label %.noexc837, !llvm.loop !432

._crit_edge2920:                                  ; preds = %bb.as, %.preheader2482
  %indvars.iv.next3133 = add nsw i64 %indvars.iv3132, 1
  %i.bjr = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bjs = sext i32 %i.bjr to i64
  %.not.not = icmp slt i64 %indvars.iv3132, %i.bjs
  br i1 %.not.not, label %.noexc, label %._crit_edge2923

._crit_edge2923:                                  ; preds = %._crit_edge2920, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge2923, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #7

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dpi.512(ptr, <16 x i1>, <16 x i32>, <16 x i32>, i32 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !433 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv8.si(ptr, <8 x i1>, <8 x i32>, <8 x i32>, i32 immarg) #4

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.si(ptr, <4 x i1>, <4 x i32>, <4 x i32>, i32 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32>, <32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.a = icmp eq i32 %6, 1                        ; 2 uses
  %i.b = icmp eq i32 %7, 1
  %i.c = icmp eq i32 %8, 1
  %i.d = and i1 %i.b, %i.c
  %i.e = icmp eq i32 %9, 1
  %i.f = and i1 %i.d, %i.e
  %i.g = icmp eq i32 %10, 1                       ; 5 uses
  %i.h = icmp eq i32 %11, 1
  %i.i = and i1 %i.f, %i.h
  %i.j = and i1 %i.a, %i.i
  %or.cond9.i = and i1 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 91 uses
  br i1 %or.cond9.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 5 uses
  %i.o = icmp sgt i32 %3, 15
  br i1 %i.o, label %.lr.ph210.i.i, label %.preheader181.i.i

.lr.ph210.i.i:                                    ; preds = %bb.b
  %i.p = sdiv i32 %4, 8
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = lshr i32 %5, 3
  %i.s = icmp sgt i32 %5, 7
  %i.t = shl i64 %i.l, 3
  %i.u = sext i32 %4 to i64
  %i.v = icmp sgt i32 %5, 3
  %i.w = shl i64 %i.l, 1                          ; 2 uses
  %i.x = mul i64 %i.l, 3
  %i.y = shl i64 %i.l, 2
  %i.z = and i32 %5, -4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = sext i32 %2 to i64                      ; 2 uses
  br label %bb.c

.preheader181.loopexit.i.i:                       ; preds = %.loopexit183.i.i
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader181.i.i

.preheader181.i.i:                                ; preds = %.preheader181.loopexit.i.i, %bb.b
  %.0504.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.ac, %.preheader181.loopexit.i.i ] ; 3 uses
  %.0502.lcssa.i.i = phi ptr [ %.val, %bb.b ], [ %.6.i.i, %.preheader181.loopexit.i.i ] ; 5 uses
  %i.ad = or disjoint i32 %.0504.lcssa.i.i, 7
  %i.ae = icmp slt i32 %i.ad, %3
  br i1 %i.ae, label %.lr.ph239.i.i, label %.preheader176.i.i

.lr.ph239.i.i:                                    ; preds = %.preheader181.i.i
  %i.af = sdiv i32 %4, 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = lshr i32 %5, 3
  %i.ai = shl i64 %i.l, 3
  %i.aj = sext i32 %4 to i64
  %i.ak = icmp sgt i32 %5, 3
  %i.al = shl i64 %i.l, 1                         ; 2 uses
  %i.am = mul i64 %i.l, 3
  %i.an = shl i64 %i.l, 2
  %i.ao = and i32 %5, -4
  %i.ap = zext i32 %.0504.lcssa.i.i to i64        ; 6 uses
  %i.aq = sext i32 %3 to i64
  %i.ar = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.aq, -7       ; 4 uses
  switch i32 %i.n, label %.loopexit178.i.preheader.i [
    i32 8, label %.lr.ph239.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit548.i.us.i
  ]

.loopexit178.i.preheader.i:                       ; preds = %.lr.ph239.i.i
  %i.as = add nuw nsw i64 %i.ap, 8                ; 2 uses
  %smax248.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.as)
  %i.at = xor i64 %i.ap, -1
  %i.au = add nsw i64 %smax248.i, %i.at
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.as, %i.av
  br label %.preheader176.loopexit.i.i

.lr.ph239.i.split.us.i:                           ; preds = %.lr.ph239.i.i
  %i.ax = icmp sgt i32 %5, 7
  br i1 %i.ax, label %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i:        ; preds = %.lr.ph239.i.split.us.i
  %i.ay = add nuw nsw i64 %i.ap, 8                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ay)
  %i.az = xor i64 %i.ap, -1
  %i.ba = add nsw i64 %smax.i, %i.az
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.ay, %i.bb
  br label %.preheader176.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit549.i.us.us.i:               ; preds = %.lr.ph239.i.split.us.i, %.loopexit178.i.loopexit.us.us.i
  %indvars.iv364.i.us.us.i = phi i64 [ %indvars.iv.next365.i.us.us.i, %.loopexit178.i.loopexit.us.us.i ], [ %i.ap, %.lr.ph239.i.split.us.i ] ; 2 uses
  %.7238.i.us.us.i = phi ptr [ %i.ci, %.loopexit178.i.loopexit.us.us.i ], [ %.0502.lcssa.i.i, %.lr.ph239.i.split.us.i ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !32, !noalias !435
  %i.be = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !435
  %i.bf = mul i64 %i.be, %i.ag
  %i.bg = load i64, ptr %i.ah, align 8, !tbaa !36, !noalias !435
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = add nsw i64 %indvars.iv364.i.us.us.i, %i.ar
  %i.bk = shl nsw i64 %i.bj, 3
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk
  br label %.lr.ph216.i.us.us.i

.lr.ph216.i.us.us.i:                              ; preds = %.lr.ph216.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i
  %.8215.i.us.us.i = phi ptr [ %i.ci, %.lr.ph216.i.us.us.i ], [ %.7238.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ] ; 5 uses
  %.0533214.i.us.us.i = phi ptr [ %i.cj, %.lr.ph216.i.us.us.i ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ] ; 5 uses
  %.0534213.i.us.us.i = phi i32 [ %i.ck, %.lr.ph216.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ]
  %i.bm = load <4 x i32>, ptr %.0533214.i.us.us.i, align 1, !tbaa !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 16
  %i.bo = load <4 x i32>, ptr %i.bn, align 1, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 32
  %i.bq = load <4 x i32>, ptr %i.bp, align 1, !tbaa !44 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 48
  %i.bs = load <4 x i32>, ptr %i.br, align 1, !tbaa !44 ; 2 uses
  %i.bt = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bo, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bu = shufflevector <4 x i32> %i.bq, <4 x i32> %i.bs, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bv = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bo, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bw = shufflevector <4 x i32> %i.bq, <4 x i32> %i.bs, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bx = bitcast <4 x i32> %i.bt to <16 x i8>
  %i.by = add <16 x i8> %i.bx, splat (i8 127)
  %i.bz = bitcast <4 x i32> %i.bu to <16 x i8>
  %i.ca = add <16 x i8> %i.bz, splat (i8 127)
  %i.cb = bitcast <4 x i32> %i.bv to <16 x i8>
  %i.cc = add <16 x i8> %i.cb, splat (i8 127)
  %i.cd = bitcast <4 x i32> %i.bw to <16 x i8>
  %i.ce = add <16 x i8> %i.cd, splat (i8 127)
  store <16 x i8> %i.by, ptr %.8215.i.us.us.i, align 16, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 16
  store <16 x i8> %i.ca, ptr %i.cf, align 16, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 32
  store <16 x i8> %i.cc, ptr %i.cg, align 16, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 48
  store <16 x i8> %i.ce, ptr %i.ch, align 16, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 64 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 %i.ai
  %i.ck = add nuw nsw i32 %.0534213.i.us.us.i, 1  ; 2 uses
  %exitcond362.not.i.us.us.i = icmp eq i32 %i.ck, %13
  br i1 %exitcond362.not.i.us.us.i, label %.loopexit178.i.loopexit.us.us.i, label %.lr.ph216.i.us.us.i, !llvm.loop !438

.loopexit178.i.loopexit.us.us.i:                  ; preds = %.lr.ph216.i.us.us.i
  %indvars.iv.next365.i.us.us.i = add nuw nsw i64 %indvars.iv364.i.us.us.i, 8 ; 3 uses
  %i.cl = icmp slt i64 %indvars.iv.next365.i.us.us.i, %invariant.op.i.i
  br i1 %i.cl, label %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i, label %.preheader176.loopexit.i.i, !llvm.loop !439

_ZN4ncnn3MatD2Ev.exit548.i.us.i:                  ; preds = %.lr.ph239.i.i, %.loopexit178.i.us113.i
  %indvars.iv364.i.us111.i = phi i64 [ %indvars.iv.next365.i.us115.i, %.loopexit178.i.us113.i ], [ %i.ap, %.lr.ph239.i.i ] ; 2 uses
  %.7238.i.us112.i = phi ptr [ %.13.i.us114.i, %.loopexit178.i.us113.i ], [ %.0502.lcssa.i.i, %.lr.ph239.i.i ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !32, !noalias !440
  %i.cn = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !440
  %i.co = mul i64 %i.cn, %i.aj
  %i.cp = load i64, ptr %i.ah, align 8, !tbaa !36, !noalias !440
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %indvars.iv364.i.us111.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.ar  ; 2 uses
  br i1 %i.ak, label %.lr.ph221.i.us.i, label %.preheader179.i.us.i

.lr.ph221.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit548.i.us.i, %.lr.ph221.i.us.i
  %.10220.i.us.i = phi ptr [ %i.du, %.lr.ph221.i.us.i ], [ %.7238.i.us112.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ] ; 3 uses
  %.0535219.i.us.i = phi ptr [ %i.dv, %.lr.ph221.i.us.i ], [ %i.ct, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ] ; 5 uses
  %.0538218.i.us.i = phi i32 [ %i.dw, %.lr.ph221.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ]
  %i.cu = load i64, ptr %.0535219.i.us.i, align 1, !tbaa !44
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.l
  %i.cx = load i64, ptr %i.cw, align 1, !tbaa !44
  %i.cy = insertelement <2 x i64> poison, i64 %i.cx, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.al
  %i.da = load i64, ptr %i.cz, align 1, !tbaa !44
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.am
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !44
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = bitcast <2 x i64> %i.cv to <16 x i8>
  %i.dg = bitcast <2 x i64> %i.cy to <16 x i8>
  %i.dh = shufflevector <16 x i8> %i.df, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.di = bitcast <2 x i64> %i.db to <16 x i8>
  %i.dj = bitcast <2 x i64> %i.de to <16 x i8>
  %i.dk = shufflevector <16 x i8> %i.di, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = bitcast <16 x i8> %i.dh to <8 x i16>    ; 2 uses
  %i.dm = bitcast <16 x i8> %i.dk to <8 x i16>    ; 2 uses
  %i.dn = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.do = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dp = bitcast <8 x i16> %i.dn to <16 x i8>
  %i.dq = add <16 x i8> %i.dp, splat (i8 127)
  %i.dr = bitcast <8 x i16> %i.do to <16 x i8>
  %i.ds = add <16 x i8> %i.dr, splat (i8 127)
  store <16 x i8> %i.dq, ptr %.10220.i.us.i, align 1, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %.10220.i.us.i, i64 16
  store <16 x i8> %i.ds, ptr %i.dt, align 1, !tbaa !44
  %i.du = getelementptr inbounds nuw i8, ptr %.10220.i.us.i, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.an ; 2 uses
  %i.dw = add nuw nsw i32 %.0538218.i.us.i, 4     ; 2 uses
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = icmp slt i32 %i.dx, %5
  br i1 %i.dy, label %.lr.ph221.i.us.i, label %.preheader179.i.us.i, !llvm.loop !443

.preheader179.i.us.i:                             ; preds = %.lr.ph221.i.us.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i
  %.0538.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.ao, %.lr.ph221.i.us.i ] ; 3 uses
  %.0535.lcssa.i.us.i = phi ptr [ %i.ct, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.dv, %.lr.ph221.i.us.i ] ; 2 uses
  %.10.lcssa.i.us.i = phi ptr [ %.7238.i.us112.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.du, %.lr.ph221.i.us.i ] ; 2 uses
  %i.dz = or disjoint i32 %.0538.lcssa.i.us.i, 1
  %i.ea = icmp slt i32 %i.dz, %5
  br i1 %i.ea, label %.lr.ph228.i.us.i, label %.preheader177.i.us.i

.lr.ph228.i.us.i:                                 ; preds = %.preheader179.i.us.i, %.lr.ph228.i.us.i
  %.11227.i.us.i = phi ptr [ %i.ej, %.lr.ph228.i.us.i ], [ %.10.lcssa.i.us.i, %.preheader179.i.us.i ] ; 2 uses
  %.1536226.i.us.i = phi ptr [ %i.ek, %.lr.ph228.i.us.i ], [ %.0535.lcssa.i.us.i, %.preheader179.i.us.i ] ; 3 uses
  %.1539225.i.us.i = phi i32 [ %i.el, %.lr.ph228.i.us.i ], [ %.0538.lcssa.i.us.i, %.preheader179.i.us.i ]
  %i.eb = load i64, ptr %.1536226.i.us.i, align 1, !tbaa !44
  %i.ec = insertelement <2 x i64> poison, i64 %i.eb, i64 0
  %i.ed = getelementptr inbounds nuw i8, ptr %.1536226.i.us.i, i64 %i.l
  %i.ee = load i64, ptr %i.ed, align 1, !tbaa !44
  %i.ef = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eg = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.eh = bitcast <2 x i64> %i.ef to <16 x i8>
  %i.ei = shufflevector <16 x i8> %i.eg, <16 x i8> %i.eh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ei, ptr %.11227.i.us.i, align 1, !tbaa !44
  %i.ej = getelementptr inbounds nuw i8, ptr %.11227.i.us.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1536226.i.us.i, i64 %i.al ; 2 uses
  %i.el = add nuw nsw i32 %.1539225.i.us.i, 2     ; 3 uses
  %i.em = or disjoint i32 %i.el, 1
  %i.en = icmp slt i32 %i.em, %5
  br i1 %i.en, label %.lr.ph228.i.us.i, label %.preheader177.i.us.i, !llvm.loop !444

.preheader177.i.us.i:                             ; preds = %.lr.ph228.i.us.i, %.preheader179.i.us.i
  %.1539.lcssa.i.us.i = phi i32 [ %.0538.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.el, %.lr.ph228.i.us.i ] ; 5 uses
  %.1536.lcssa.i.us.i = phi ptr [ %.0535.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.ek, %.lr.ph228.i.us.i ] ; 2 uses
  %.11.lcssa.i.us.i = phi ptr [ %.10.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.ej, %.lr.ph228.i.us.i ] ; 3 uses
  %i.eo = icmp slt i32 %.1539.lcssa.i.us.i, %5
  br i1 %i.eo, label %.lr.ph235.i.us.i.preheader, label %.loopexit178.i.us113.i

.lr.ph235.i.us.i.preheader:                       ; preds = %.preheader177.i.us.i
  %i.ep = sub i32 %5, %.1539.lcssa.i.us.i
  %xtraiter612 = and i32 %i.ep, 7                 ; 2 uses
  %lcmp.mod613.not = icmp eq i32 %xtraiter612, 0
  br i1 %lcmp.mod613.not, label %.lr.ph235.i.us.i.prol.loopexit, label %.lr.ph235.i.us.i.prol

.lr.ph235.i.us.i.prol:                            ; preds = %.lr.ph235.i.us.i.preheader, %.lr.ph235.i.us.i.prol
  %.12234.i.us.i.prol = phi ptr [ %i.er, %.lr.ph235.i.us.i.prol ], [ %.11.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ] ; 2 uses
  %.2537233.i.us.i.prol = phi ptr [ %i.es, %.lr.ph235.i.us.i.prol ], [ %.1536.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ] ; 2 uses
  %.2540232.i.us.i.prol = phi i32 [ %i.et, %.lr.ph235.i.us.i.prol ], [ %.1539.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ]
  %prol.iter614 = phi i32 [ %prol.iter614.next, %.lr.ph235.i.us.i.prol ], [ 0, %.lr.ph235.i.us.i.preheader ]
  %i.eq = load i64, ptr %.2537233.i.us.i.prol, align 1, !tbaa !44
  store i64 %i.eq, ptr %.12234.i.us.i.prol, align 1, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %.12234.i.us.i.prol, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2537233.i.us.i.prol, i64 %i.l ; 2 uses
  %i.et = add nuw nsw i32 %.2540232.i.us.i.prol, 1 ; 2 uses
  %prol.iter614.next = add i32 %prol.iter614, 1   ; 2 uses
  %prol.iter614.cmp.not = icmp eq i32 %prol.iter614.next, %xtraiter612
  br i1 %prol.iter614.cmp.not, label %.lr.ph235.i.us.i.prol.loopexit, label %.lr.ph235.i.us.i.prol, !llvm.loop !445

end_hunk_3
begin_hunk_4_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  store <16 x i8> %i.hh, ptr %i.ht, align 16, !tbaa !44
  %i.hu = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 48
  store <16 x i8> %i.hj, ptr %i.hu, align 16, !tbaa !44
  %i.hv = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 64
  store <16 x i8> %i.hl, ptr %i.hv, align 16, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 80
  store <16 x i8> %i.hn, ptr %i.hw, align 16, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 96
  store <16 x i8> %i.hp, ptr %i.hx, align 16, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 112
  store <16 x i8> %i.hr, ptr %i.hy, align 16, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %.1503188.i.i, i64 128 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0517187.i.i, i64 %i.t
  %i.ib = add nuw nsw i32 %.0518186.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ib, %12
  br i1 %exitcond.not.i.i, label %.loopexit183.i.i, label %.lr.ph.i.i, !llvm.loop !451

_ZN4ncnn3MatD2Ev.exit550.i.i:                     ; preds = %bb.c
  %i.ic = load ptr, ptr %0, align 8, !tbaa !32, !noalias !452
  %i.id = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !452
  %i.ie = mul i64 %i.id, %i.u
  %i.if = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !452
  %i.ig = mul i64 %i.ie, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 %indvars.iv.i.i
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ab  ; 2 uses
  br i1 %i.v, label %.lr.ph192.i.i, label %.preheader184.i.i

.preheader184.i.i:                                ; preds = %.lr.ph192.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i
  %.0530.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.z, %.lr.ph192.i.i ] ; 3 uses
  %.0519.lcssa.i.i = phi ptr [ %i.ij, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.jr, %.lr.ph192.i.i ] ; 2 uses
  %.3.lcssa.i.i = phi ptr [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.jq, %.lr.ph192.i.i ] ; 2 uses
  %i.ik = or disjoint i32 %.0530.lcssa.i.i, 1
  %i.il = icmp slt i32 %i.ik, %5
  br i1 %i.il, label %.lr.ph199.i.i, label %.preheader182.i.i

.lr.ph192.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit550.i.i, %.lr.ph192.i.i
  %.3191.i.i = phi ptr [ %i.jq, %.lr.ph192.i.i ], [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i ] ; 5 uses
  %.0519190.i.i = phi ptr [ %i.jr, %.lr.ph192.i.i ], [ %i.ij, %_ZN4ncnn3MatD2Ev.exit550.i.i ] ; 5 uses
  %.0530189.i.i = phi i32 [ %i.js, %.lr.ph192.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit550.i.i ]
  %i.im = load <16 x i8>, ptr %.0519190.i.i, align 1, !tbaa !44 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.l
  %i.io = load <16 x i8>, ptr %i.in, align 1, !tbaa !44 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.w
  %i.iq = load <16 x i8>, ptr %i.ip, align 1, !tbaa !44 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.x
  %i.is = load <16 x i8>, ptr %i.ir, align 1, !tbaa !44 ; 2 uses
  %i.it = shufflevector <16 x i8> %i.im, <16 x i8> %i.io, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.iu = shufflevector <16 x i8> %i.im, <16 x i8> %i.io, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.iv = shufflevector <16 x i8> %i.iq, <16 x i8> %i.is, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.iw = shufflevector <16 x i8> %i.iq, <16 x i8> %i.is, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ix = bitcast <16 x i8> %i.it to <8 x i16>    ; 2 uses
  %i.iy = bitcast <16 x i8> %i.iv to <8 x i16>    ; 2 uses
  %i.iz = shufflevector <8 x i16> %i.ix, <8 x i16> %i.iy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ja = shufflevector <8 x i16> %i.ix, <8 x i16> %i.iy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jb = bitcast <16 x i8> %i.iu to <8 x i16>    ; 2 uses
  %i.jc = bitcast <16 x i8> %i.iw to <8 x i16>    ; 2 uses
  %i.jd = shufflevector <8 x i16> %i.jb, <8 x i16> %i.jc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.je = shufflevector <8 x i16> %i.jb, <8 x i16> %i.jc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jf = bitcast <8 x i16> %i.iz to <16 x i8>
  %i.jg = add <16 x i8> %i.jf, splat (i8 127)
  %i.jh = bitcast <8 x i16> %i.ja to <16 x i8>
  %i.ji = add <16 x i8> %i.jh, splat (i8 127)
  %i.jj = bitcast <8 x i16> %i.jd to <16 x i8>
  %i.jk = add <16 x i8> %i.jj, splat (i8 127)
  %i.jl = bitcast <8 x i16> %i.je to <16 x i8>
  %i.jm = add <16 x i8> %i.jl, splat (i8 127)
  store <16 x i8> %i.jg, ptr %.3191.i.i, align 1, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 16
  store <16 x i8> %i.ji, ptr %i.jn, align 1, !tbaa !44
  %i.jo = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 32
  store <16 x i8> %i.jk, ptr %i.jo, align 1, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 48
  store <16 x i8> %i.jm, ptr %i.jp, align 1, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 64 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.y ; 2 uses
  %i.js = add nuw nsw i32 %.0530189.i.i, 4        ; 2 uses
  %i.jt = or disjoint i32 %i.js, 3
  %i.ju = icmp slt i32 %i.jt, %5
  br i1 %i.ju, label %.lr.ph192.i.i, label %.preheader184.i.i, !llvm.loop !455

.preheader182.i.i:                                ; preds = %.lr.ph199.i.i, %.preheader184.i.i
  %.1531.lcssa.i.i = phi i32 [ %.0530.lcssa.i.i, %.preheader184.i.i ], [ %i.kl, %.lr.ph199.i.i ] ; 5 uses
  %.1520.lcssa.i.i = phi ptr [ %.0519.lcssa.i.i, %.preheader184.i.i ], [ %i.kk, %.lr.ph199.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi ptr [ %.3.lcssa.i.i, %.preheader184.i.i ], [ %i.kj, %.lr.ph199.i.i ] ; 3 uses
  %i.jv = icmp slt i32 %.1531.lcssa.i.i, %5
  br i1 %i.jv, label %.lr.ph206.i.i.preheader, label %.loopexit183.i.i

.lr.ph206.i.i.preheader:                          ; preds = %.preheader182.i.i
  %i.jw = sub i32 %5, %.1531.lcssa.i.i
  %xtraiter = and i32 %i.jw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph206.i.i.prol.loopexit, label %.lr.ph206.i.i.prol

.lr.ph206.i.i.prol:                               ; preds = %.lr.ph206.i.i.preheader, %.lr.ph206.i.i.prol
  %.5205.i.i.prol = phi ptr [ %i.jy, %.lr.ph206.i.i.prol ], [ %.4.lcssa.i.i, %.lr.ph206.i.i.preheader ] ; 2 uses
  %.2521204.i.i.prol = phi ptr [ %i.jz, %.lr.ph206.i.i.prol ], [ %.1520.lcssa.i.i, %.lr.ph206.i.i.preheader ] ; 2 uses
  %.2532203.i.i.prol = phi i32 [ %i.ka, %.lr.ph206.i.i.prol ], [ %.1531.lcssa.i.i, %.lr.ph206.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph206.i.i.prol ], [ 0, %.lr.ph206.i.i.preheader ]
  %i.jx = load <2 x i64>, ptr %.2521204.i.i.prol, align 1, !tbaa !44
  store <2 x i64> %i.jx, ptr %.5205.i.i.prol, align 1, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %.5205.i.i.prol, i64 16 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.2521204.i.i.prol, i64 %i.l ; 2 uses
  %i.ka = add nuw nsw i32 %.2532203.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph206.i.i.prol.loopexit, label %.lr.ph206.i.i.prol, !llvm.loop !456

.lr.ph206.i.i.prol.loopexit:                      ; preds = %.lr.ph206.i.i.prol, %.lr.ph206.i.i.preheader
  %.lcssa538.unr = phi ptr [ poison, %.lr.ph206.i.i.preheader ], [ %i.jy, %.lr.ph206.i.i.prol ]
  %.5205.i.i.unr = phi ptr [ %.4.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.jy, %.lr.ph206.i.i.prol ]
  %.2521204.i.i.unr = phi ptr [ %.1520.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.jz, %.lr.ph206.i.i.prol ]
  %.2532203.i.i.unr = phi i32 [ %.1531.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.ka, %.lr.ph206.i.i.prol ]
  %i.kb = sub i32 %.1531.lcssa.i.i, %5
  %i.kc = icmp ugt i32 %i.kb, -8
  br i1 %i.kc, label %.loopexit183.i.i, label %.lr.ph206.i.i

.lr.ph199.i.i:                                    ; preds = %.preheader184.i.i, %.lr.ph199.i.i
  %.4198.i.i = phi ptr [ %i.kj, %.lr.ph199.i.i ], [ %.3.lcssa.i.i, %.preheader184.i.i ] ; 3 uses
  %.1520197.i.i = phi ptr [ %i.kk, %.lr.ph199.i.i ], [ %.0519.lcssa.i.i, %.preheader184.i.i ] ; 3 uses
  %.1531196.i.i = phi i32 [ %i.kl, %.lr.ph199.i.i ], [ %.0530.lcssa.i.i, %.preheader184.i.i ]
  %i.kd = load <16 x i8>, ptr %.1520197.i.i, align 1, !tbaa !44 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.1520197.i.i, i64 %i.l
  %i.kf = load <16 x i8>, ptr %i.ke, align 1, !tbaa !44 ; 2 uses
  %i.kg = shufflevector <16 x i8> %i.kd, <16 x i8> %i.kf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kh = shufflevector <16 x i8> %i.kd, <16 x i8> %i.kf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.kg, ptr %.4198.i.i, align 1, !tbaa !44
  %i.ki = getelementptr inbounds nuw i8, ptr %.4198.i.i, i64 16
  store <16 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !44
  %i.kj = getelementptr inbounds nuw i8, ptr %.4198.i.i, i64 32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.1520197.i.i, i64 %i.w ; 2 uses
  %i.kl = add nuw nsw i32 %.1531196.i.i, 2        ; 3 uses
  %i.km = or disjoint i32 %i.kl, 1
  %i.kn = icmp slt i32 %i.km, %5
  br i1 %i.kn, label %.lr.ph199.i.i, label %.preheader182.i.i, !llvm.loop !457

.lr.ph206.i.i:                                    ; preds = %.lr.ph206.i.i.prol.loopexit, %.lr.ph206.i.i
  %.5205.i.i = phi ptr [ %i.lk, %.lr.ph206.i.i ], [ %.5205.i.i.unr, %.lr.ph206.i.i.prol.loopexit ] ; 9 uses
  %.2521204.i.i = phi ptr [ %i.ll, %.lr.ph206.i.i ], [ %.2521204.i.i.unr, %.lr.ph206.i.i.prol.loopexit ] ; 2 uses
  %.2532203.i.i = phi i32 [ %i.lm, %.lr.ph206.i.i ], [ %.2532203.i.i.unr, %.lr.ph206.i.i.prol.loopexit ]
  %i.ko = load <2 x i64>, ptr %.2521204.i.i, align 1, !tbaa !44
  store <2 x i64> %i.ko, ptr %.5205.i.i, align 1, !tbaa !44
  %i.kp = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %.2521204.i.i, i64 %i.l ; 2 uses
  %i.kr = load <2 x i64>, ptr %i.kq, align 1, !tbaa !44
  store <2 x i64> %i.kr, ptr %i.kp, align 1, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.l ; 2 uses
  %i.ku = load <2 x i64>, ptr %i.kt, align 1, !tbaa !44
  store <2 x i64> %i.ku, ptr %i.ks, align 1, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 48
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.l ; 2 uses
  %i.kx = load <2 x i64>, ptr %i.kw, align 1, !tbaa !44
  store <2 x i64> %i.kx, ptr %i.kv, align 1, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.l ; 2 uses
  %i.la = load <2 x i64>, ptr %i.kz, align 1, !tbaa !44
  store <2 x i64> %i.la, ptr %i.ky, align 1, !tbaa !44
  %i.lb = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 80
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.l ; 2 uses
  %i.ld = load <2 x i64>, ptr %i.lc, align 1, !tbaa !44
  store <2 x i64> %i.ld, ptr %i.lb, align 1, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 96
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.l ; 2 uses
  %i.lg = load <2 x i64>, ptr %i.lf, align 1, !tbaa !44
  store <2 x i64> %i.lg, ptr %i.le, align 1, !tbaa !44
  %i.lh = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 112
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.l ; 2 uses
  %i.lj = load <2 x i64>, ptr %i.li, align 1, !tbaa !44
  store <2 x i64> %i.lj, ptr %i.lh, align 1, !tbaa !44
  %i.lk = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 128 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.l
  %i.lm = add nuw nsw i32 %.2532203.i.i, 8        ; 2 uses
  %exitcond360.not.i.i.7 = icmp eq i32 %i.lm, %5
  br i1 %exitcond360.not.i.i.7, label %.loopexit183.i.i, label %.lr.ph206.i.i, !llvm.loop !458

.loopexit183.i.i:                                 ; preds = %.lr.ph206.i.i.prol.loopexit, %.lr.ph206.i.i, %.lr.ph.i.i, %.preheader182.i.i, %_ZN4ncnn3MatD2Ev.exit551.i.i, %bb.c
  %.6.i.i = phi ptr [ %.0502209.i.i, %bb.c ], [ %.4.lcssa.i.i, %.preheader182.i.i ], [ %i.hz, %.lr.ph.i.i ], [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit551.i.i ], [ %.lcssa538.unr, %.lr.ph206.i.i.prol.loopexit ], [ %i.lk, %.lr.ph206.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.ln = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.lo = icmp samesign ult i64 %i.ln, %i.aa
  br i1 %i.lo, label %bb.c, label %.preheader181.loopexit.i.i, !llvm.loop !459

.preheader176.loopexit.i.i:                       ; preds = %.loopexit178.i.us113.i, %.loopexit178.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i, %.loopexit178.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ci, %.loopexit178.i.loopexit.us.us.i ], [ %.0502.lcssa.i.i, %.loopexit178.i.preheader.i ], [ %.0502.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i ], [ %.13.i.us114.i, %.loopexit178.i.us113.i ]
  %.us-phi109.i = phi i64 [ %indvars.iv.next365.i.us.us.i, %.loopexit178.i.loopexit.us.us.i ], [ %i.aw, %.loopexit178.i.preheader.i ], [ %i.bc, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i ], [ %indvars.iv.next365.i.us115.i, %.loopexit178.i.us113.i ]
  %i.lp = trunc nuw nsw i64 %.us-phi109.i to i32
  br label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.loopexit.i.i, %.preheader181.i.i
  %.1505.lcssa.i.i = phi i32 [ %.0504.lcssa.i.i, %.preheader181.i.i ], [ %i.lp, %.preheader176.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0502.lcssa.i.i, %.preheader181.i.i ], [ %.us-phi.i, %.preheader176.loopexit.i.i ] ; 5 uses
  %i.lq = or disjoint i32 %.1505.lcssa.i.i, 3
  %i.lr = icmp slt i32 %i.lq, %3
  br i1 %i.lr, label %.lr.ph268.i.i, label %.preheader171.i.i

.lr.ph268.i.i:                                    ; preds = %.preheader176.i.i
  %i.ls = sdiv i32 %4, 8
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %14 = lshr i32 %5, 3                            ; 3 uses
  %i.lv = shl i64 %i.l, 3                         ; 2 uses
  %i.lw = sext i32 %4 to i64
  %i.lx = icmp sgt i32 %5, 3
  %i.ly = shl i64 %i.l, 1                         ; 2 uses
  %i.lz = mul i64 %i.l, 3
  %i.ma = shl i64 %i.l, 2
  %i.mb = and i32 %5, -4
  %i.mc = zext i32 %.1505.lcssa.i.i to i64        ; 6 uses
  %i.md = sext i32 %3 to i64
  %i.me = sext i32 %2 to i64                      ; 2 uses
  %invariant.op433.i.i = add nsw i64 %i.md, -3    ; 4 uses
  switch i32 %i.n, label %.loopexit173.i.preheader.i [
    i32 8, label %.lr.ph268.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit546.i.us.i
  ]

.loopexit173.i.preheader.i:                       ; preds = %.lr.ph268.i.i
  %i.mf = add nuw nsw i64 %i.mc, 4                ; 2 uses
  %smax250.i = tail call i64 @llvm.smax.i64(i64 %invariant.op433.i.i, i64 %i.mf)
  %i.mg = xor i64 %i.mc, -1
  %i.mh = add nsw i64 %smax250.i, %i.mg
  %i.mi = and i64 %i.mh, -4
  %i.mj = add i64 %i.mf, %i.mi
  br label %.preheader171.loopexit.i.i

.lr.ph268.i.split.us.i:                           ; preds = %.lr.ph268.i.i
  %i.mk = icmp sgt i32 %5, 7
  br i1 %i.mk, label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader:     ; preds = %.lr.ph268.i.split.us.i
  %15 = icmp eq i32 %14, 1
  %i.ml = and i32 %14, 268435454
  %unroll_iter = and i32 %5, 8
  %lcmp.mod619.not = icmp eq i32 %unroll_iter, 0
  %lcmp.mod621 = trunc i32 %14 to i1
  br label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i

_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i:        ; preds = %.lr.ph268.i.split.us.i
  %i.mm = add nuw nsw i64 %i.mc, 4                ; 2 uses
  %smax249.i = tail call i64 @llvm.smax.i64(i64 %invariant.op433.i.i, i64 %i.mm)
  %i.mn = xor i64 %i.mc, -1
  %i.mo = add nsw i64 %smax249.i, %i.mn
  %i.mp = and i64 %i.mo, -4
  %i.mq = add i64 %i.mm, %i.mp
  br label %.preheader171.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit547.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader, %.loopexit173.i.loopexit.us.us.i
  %indvars.iv369.i.us.us.i = phi i64 [ %indvars.iv.next370.i.us.us.i, %.loopexit173.i.loopexit.us.us.i ], [ %i.mc, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader ] ; 2 uses
  %.14267.i.us.us.i = phi ptr [ %.lcssa516, %.loopexit173.i.loopexit.us.us.i ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader ] ; 2 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !32, !noalias !460
  %i.ms = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !460
  %i.mt = mul i64 %i.ms, %i.lt
  %i.mu = load i64, ptr %i.lu, align 8, !tbaa !36, !noalias !460
  %i.mv = mul i64 %i.mt, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mv
  %i.mx = add nsw i64 %indvars.iv369.i.us.us.i, %i.me
  %i.my = shl nsw i64 %i.mx, 3
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 %i.my ; 2 uses
  br i1 %15, label %.lr.ph245.i.us.us.i.epil.preheader, label %.lr.ph245.i.us.us.i

.lr.ph245.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i, %.lr.ph245.i.us.us.i
  %.15244.i.us.us.i = phi ptr [ %i.nw, %.lr.ph245.i.us.us.i ], [ %.14267.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ] ; 5 uses
  %.0541243.i.us.us.i = phi ptr [ %i.nx, %.lr.ph245.i.us.us.i ], [ %i.mz, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph245.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ]
  %i.na = load <4 x i32>, ptr %.0541243.i.us.us.i, align 1, !tbaa !44 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i, i64 16
  %i.nc = load <4 x i32>, ptr %i.nb, align 1, !tbaa !44 ; 2 uses
  %i.nd = shufflevector <4 x i32> %i.na, <4 x i32> %i.nc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ne = shufflevector <4 x i32> %i.na, <4 x i32> %i.nc, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nf = bitcast <4 x i32> %i.nd to <16 x i8>
  %i.ng = add <16 x i8> %i.nf, splat (i8 127)
  %i.nh = bitcast <4 x i32> %i.ne to <16 x i8>
  %i.ni = add <16 x i8> %i.nh, splat (i8 127)
  store <16 x i8> %i.ng, ptr %.15244.i.us.us.i, align 16, !tbaa !44
  %i.nj = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 16
  store <16 x i8> %i.ni, ptr %i.nj, align 16, !tbaa !44
  %i.nk = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i, i64 %i.lv ; 3 uses
  %i.nm = load <4 x i32>, ptr %i.nl, align 1, !tbaa !44 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.no = load <4 x i32>, ptr %i.nn, align 1, !tbaa !44 ; 2 uses
  %i.np = shufflevector <4 x i32> %i.nm, <4 x i32> %i.no, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nq = shufflevector <4 x i32> %i.nm, <4 x i32> %i.no, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nr = bitcast <4 x i32> %i.np to <16 x i8>
  %i.ns = add <16 x i8> %i.nr, splat (i8 127)
  %i.nt = bitcast <4 x i32> %i.nq to <16 x i8>
  %i.nu = add <16 x i8> %i.nt, splat (i8 127)
  store <16 x i8> %i.ns, ptr %i.nk, align 16, !tbaa !44
  %i.nv = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 48
  store <16 x i8> %i.nu, ptr %i.nv, align 16, !tbaa !44
  %i.nw = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 64 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.lv ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %i.ml
  br i1 %niter.ncmp.1, label %.loopexit173.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph245.i.us.us.i, !llvm.loop !463

.loopexit173.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph245.i.us.us.i
  br i1 %lcmp.mod619.not, label %.loopexit173.i.loopexit.us.us.i, label %.lr.ph245.i.us.us.i.epil.preheader

.lr.ph245.i.us.us.i.epil.preheader:               ; preds = %.loopexit173.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i
  %.15244.i.us.us.i.epil.init = phi ptr [ %.14267.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ], [ %i.nw, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0541243.i.us.us.i.epil.init = phi ptr [ %i.mz, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ], [ %i.nx, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod621)
  %i.ny = load <4 x i32>, ptr %.0541243.i.us.us.i.epil.init, align 1, !tbaa !44 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i.epil.init, i64 16
  %i.oa = load <4 x i32>, ptr %i.nz, align 1, !tbaa !44 ; 2 uses
  %i.ob = shufflevector <4 x i32> %i.ny, <4 x i32> %i.oa, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oc = shufflevector <4 x i32> %i.ny, <4 x i32> %i.oa, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.od = bitcast <4 x i32> %i.ob to <16 x i8>
  %i.oe = add <16 x i8> %i.od, splat (i8 127)
  %i.of = bitcast <4 x i32> %i.oc to <16 x i8>
  %i.og = add <16 x i8> %i.of, splat (i8 127)
  store <16 x i8> %i.oe, ptr %.15244.i.us.us.i.epil.init, align 16, !tbaa !44
  %i.oh = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i.epil.init, i64 16
  store <16 x i8> %i.og, ptr %i.oh, align 16, !tbaa !44
  %i.oi = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i.epil.init, i64 32
  br label %.loopexit173.i.loopexit.us.us.i

.loopexit173.i.loopexit.us.us.i:                  ; preds = %.loopexit173.i.loopexit.us.us.i.unr-lcssa, %.lr.ph245.i.us.us.i.epil.preheader
  %.lcssa516 = phi ptr [ %i.nw, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ], [ %i.oi, %.lr.ph245.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next370.i.us.us.i = add nuw nsw i64 %indvars.iv369.i.us.us.i, 4 ; 3 uses
  %i.oj = icmp slt i64 %indvars.iv.next370.i.us.us.i, %invariant.op433.i.i
  br i1 %i.oj, label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i, label %.preheader171.loopexit.i.i, !llvm.loop !464

_ZN4ncnn3MatD2Ev.exit546.i.us.i:                  ; preds = %.lr.ph268.i.i, %.loopexit173.i.us127.i
  %indvars.iv369.i.us125.i = phi i64 [ %indvars.iv.next370.i.us129.i, %.loopexit173.i.us127.i ], [ %i.mc, %.lr.ph268.i.i ] ; 2 uses
  %.14267.i.us126.i = phi ptr [ %.20.i.us128.i, %.loopexit173.i.us127.i ], [ %.7.lcssa.i.i, %.lr.ph268.i.i ] ; 2 uses
  %i.ok = load ptr, ptr %0, align 8, !tbaa !32, !noalias !465
  %i.ol = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !465
  %i.om = mul i64 %i.ol, %i.lw
  %i.on = load i64, ptr %i.lu, align 8, !tbaa !36, !noalias !465
  %i.oo = mul i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 %indvars.iv369.i.us125.i
  %i.or = getelementptr i8, ptr %i.oq, i64 %i.me  ; 2 uses
  br i1 %i.lx, label %.lr.ph250.i.us.i, label %.preheader174.i.us.i

.lr.ph250.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit546.i.us.i, %.lr.ph250.i.us.i
  %.17249.i.us.i = phi ptr [ %i.rc, %.lr.ph250.i.us.i ], [ %.14267.i.us126.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ] ; 17 uses
  %.0524248.i.us.i = phi i32 [ %i.re, %.lr.ph250.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ]
  %.0527247.i.us.i = phi ptr [ %i.rd, %.lr.ph250.i.us.i ], [ %i.or, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ] ; 8 uses
  %i.os = load i8, ptr %.0527247.i.us.i, align 1, !tbaa !44
  %i.ot = add i8 %i.os, 127
  store i8 %i.ot, ptr %.17249.i.us.i, align 1, !tbaa !44
  %i.ou = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.l ; 4 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !44
  %i.ow = add i8 %i.ov, 127
  %i.ox = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 1
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !44
  %i.oy = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.ly ; 4 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !44
  %i.pa = add i8 %i.oz, 127
  %i.pb = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 2
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !44
  %i.pc = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.lz ; 4 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !44
  %i.pe = add i8 %i.pd, 127
  %i.pf = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 3
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !44
  %i.pg = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !44
  %i.pi = add i8 %i.ph, 127
  %i.pj = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 4
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !44
  %i.pk = getelementptr i8, ptr %i.ou, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !44
  %i.pm = add i8 %i.pl, 127
  %i.pn = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 5
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !44
  %i.pq = add i8 %i.pp, 127
  %i.pr = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 6
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !44
  %i.ps = getelementptr i8, ptr %i.pc, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !44
  %i.pu = add i8 %i.pt, 127
  %i.pv = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 7
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !44
  %i.pw = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !44
  %i.py = add i8 %i.px, 127
  %i.pz = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 8
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !44
  %i.qa = getelementptr i8, ptr %i.ou, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !44
  %i.qc = add i8 %i.qb, 127
  %i.qd = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 9
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !44
  %i.qe = getelementptr i8, ptr %i.oy, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !44
  %i.qg = add i8 %i.qf, 127
  %i.qh = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 10
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !44
  %i.qi = getelementptr i8, ptr %i.pc, i64 2
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !44
  %i.qk = add i8 %i.qj, 127
  %i.ql = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 11
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !44
  %i.qm = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !44
  %i.qo = add i8 %i.qn, 127
  %i.qp = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 12
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !44
  %i.qq = getelementptr i8, ptr %i.ou, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !44
  %i.qs = add i8 %i.qr, 127
  %i.qt = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 13
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !44
  %i.qu = getelementptr i8, ptr %i.oy, i64 3
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !44
  %i.qw = add i8 %i.qv, 127
  %i.qx = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 14
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !44
  %i.qy = getelementptr i8, ptr %i.pc, i64 3
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !44
  %i.ra = add i8 %i.qz, 127
  %i.rb = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 15
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !44
  %i.rc = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.ma ; 2 uses
  %i.re = add nuw nsw i32 %.0524248.i.us.i, 4     ; 2 uses
  %i.rf = or disjoint i32 %i.re, 3
  %i.rg = icmp slt i32 %i.rf, %5
  br i1 %i.rg, label %.lr.ph250.i.us.i, label %.preheader174.i.us.i, !llvm.loop !468

.preheader174.i.us.i:                             ; preds = %.lr.ph250.i.us.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i
  %.0527.lcssa.i.us.i = phi ptr [ %i.or, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.rd, %.lr.ph250.i.us.i ] ; 2 uses
  %.0524.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.mb, %.lr.ph250.i.us.i ] ; 3 uses
  %.17.lcssa.i.us.i = phi ptr [ %.14267.i.us126.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.rc, %.lr.ph250.i.us.i ] ; 2 uses
  %i.rh = or disjoint i32 %.0524.lcssa.i.us.i, 1
  %i.ri = icmp slt i32 %i.rh, %5
  br i1 %i.ri, label %.lr.ph257.i.us.i, label %.preheader172.i.us.i

.lr.ph257.i.us.i:                                 ; preds = %.preheader174.i.us.i, %.lr.ph257.i.us.i
  %.18256.i.us.i = phi ptr [ %i.sf, %.lr.ph257.i.us.i ], [ %.17.lcssa.i.us.i, %.preheader174.i.us.i ] ; 9 uses
  %.1525255.i.us.i = phi i32 [ %i.sh, %.lr.ph257.i.us.i ], [ %.0524.lcssa.i.us.i, %.preheader174.i.us.i ]
  %.1528254.i.us.i = phi ptr [ %i.sg, %.lr.ph257.i.us.i ], [ %.0527.lcssa.i.us.i, %.preheader174.i.us.i ] ; 6 uses
  %i.rj = load i8, ptr %.1528254.i.us.i, align 1, !tbaa !44
  store i8 %i.rj, ptr %.18256.i.us.i, align 1, !tbaa !44
  %i.rk = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 %i.l ; 4 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !44
  %i.rm = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 1
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !44
  %i.rn = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !44
  %i.rp = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 2
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !44
  %i.rq = getelementptr i8, ptr %i.rk, i64 1
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !44
  %i.rs = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 3
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !44
  %i.rt = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 2
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !44
  %i.rv = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 4
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !44
  %i.rw = getelementptr i8, ptr %i.rk, i64 2
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !44
  %i.ry = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 5
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !44
  %i.rz = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !44
  %i.sb = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 6
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !44
  %i.sc = getelementptr i8, ptr %i.rk, i64 3
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !44
  %i.se = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 7
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !44
  %i.sf = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 8 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 %i.ly ; 2 uses
  %i.sh = add nuw nsw i32 %.1525255.i.us.i, 2     ; 3 uses
  %i.si = or disjoint i32 %i.sh, 1
  %i.sj = icmp slt i32 %i.si, %5
  br i1 %i.sj, label %.lr.ph257.i.us.i, label %.preheader172.i.us.i, !llvm.loop !469

.preheader172.i.us.i:                             ; preds = %.lr.ph257.i.us.i, %.preheader174.i.us.i
  %.1528.lcssa.i.us.i = phi ptr [ %.0527.lcssa.i.us.i, %.preheader174.i.us.i ], [ %i.sg, %.lr.ph257.i.us.i ] ; 6 uses
  %.1525.lcssa.i.us.i = phi i32 [ %.0524.lcssa.i.us.i, %.preheader174.i.us.i ], [ %i.sh, %.lr.ph257.i.us.i ] ; 5 uses
  %.18.lcssa.i.us.i = phi ptr [ %.17.lcssa.i.us.i, %.preheader174.i.us.i ], [ %i.sf, %.lr.ph257.i.us.i ] ; 7 uses
  %i.sk = icmp slt i32 %.1525.lcssa.i.us.i, %5
  br i1 %i.sk, label %.lr.ph264.i.us.i.preheader, label %.loopexit173.i.us127.i

.lr.ph264.i.us.i.preheader:                       ; preds = %.preheader172.i.us.i
  %i.sl = sub i32 %5, %.1525.lcssa.i.us.i
  %.neg = add i32 %.1525.lcssa.i.us.i, 1
  %xtraiter615 = and i32 %i.sl, 1
  %lcmp.mod616.not = icmp eq i32 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.lr.ph264.i.us.i.prol.loopexit, label %.lr.ph264.i.us.i.prol

.lr.ph264.i.us.i.prol:                            ; preds = %.lr.ph264.i.us.i.preheader
  %i.sm = load i8, ptr %.1528.lcssa.i.us.i, align 1, !tbaa !44
  store i8 %i.sm, ptr %.18.lcssa.i.us.i, align 1, !tbaa !44
  %i.sn = getelementptr inbounds nuw i8, ptr %.1528.lcssa.i.us.i, i64 1
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !44
  %i.sp = getelementptr inbounds nuw i8, ptr %.18.lcssa.i.us.i, i64 1
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !44
  %i.sq = getelementptr inbounds nuw i8, ptr %.1528.lcssa.i.us.i, i64 2
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !44
  %i.ss = getelementptr inbounds nuw i8, ptr %.18.lcssa.i.us.i, i64 2
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !44
  %i.st = getelementptr inbounds nuw i8, ptr %.1528.lcssa.i.us.i, i64 3
  %i.su = load i8, ptr %i.st, align 1, !tbaa !44
  %i.sv = getelementptr inbounds nuw i8, ptr %.18.lcssa.i.us.i, i64 3
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !44
  %i.sw = getelementptr inbounds nuw i8, ptr %.18.lcssa.i.us.i, i64 4 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1528.lcssa.i.us.i, i64 %i.l
  %i.sy = add nuw nsw i32 %.1525.lcssa.i.us.i, 1
  br label %.lr.ph264.i.us.i.prol.loopexit

.lr.ph264.i.us.i.prol.loopexit:                   ; preds = %.lr.ph264.i.us.i.prol, %.lr.ph264.i.us.i.preheader
  %.lcssa523.unr = phi ptr [ poison, %.lr.ph264.i.us.i.preheader ], [ %i.sw, %.lr.ph264.i.us.i.prol ]
  %.19263.i.us.i.unr = phi ptr [ %.18.lcssa.i.us.i, %.lr.ph264.i.us.i.preheader ], [ %i.sw, %.lr.ph264.i.us.i.prol ]
  %.2526262.i.us.i.unr = phi i32 [ %.1525.lcssa.i.us.i, %.lr.ph264.i.us.i.preheader ], [ %i.sy, %.lr.ph264.i.us.i.prol ]
  %.2529261.i.us.i.unr = phi ptr [ %.1528.lcssa.i.us.i, %.lr.ph264.i.us.i.preheader ], [ %i.sx, %.lr.ph264.i.us.i.prol ]
  %i.sz = icmp eq i32 %5, %.neg
  br i1 %i.sz, label %.loopexit173.i.us127.i, label %.lr.ph264.i.us.i

.lr.ph264.i.us.i:                                 ; preds = %.lr.ph264.i.us.i.prol.loopexit, %.lr.ph264.i.us.i
  %.19263.i.us.i = phi ptr [ %i.tw, %.lr.ph264.i.us.i ], [ %.19263.i.us.i.unr, %.lr.ph264.i.us.i.prol.loopexit ] ; 9 uses
  %.2526262.i.us.i = phi i32 [ %i.ty, %.lr.ph264.i.us.i ], [ %.2526262.i.us.i.unr, %.lr.ph264.i.us.i.prol.loopexit ]
  %.2529261.i.us.i = phi ptr [ %i.tx, %.lr.ph264.i.us.i ], [ %.2529261.i.us.i.unr, %.lr.ph264.i.us.i.prol.loopexit ] ; 5 uses
  %i.ta = load i8, ptr %.2529261.i.us.i, align 1, !tbaa !44
  store i8 %i.ta, ptr %.19263.i.us.i, align 1, !tbaa !44
  %i.tb = getelementptr inbounds nuw i8, ptr %.2529261.i.us.i, i64 1
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !44
  %i.td = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 1
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !44
  %i.te = getelementptr inbounds nuw i8, ptr %.2529261.i.us.i, i64 2
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !44
  %i.tg = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 2
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !44
  %i.th = getelementptr inbounds nuw i8, ptr %.2529261.i.us.i, i64 3
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !44
  %i.tj = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 3
  store i8 %i.ti, ptr %i.tj, align 1, !tbaa !44
  %i.tk = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 4
  %i.tl = getelementptr inbounds nuw i8, ptr %.2529261.i.us.i, i64 %i.l ; 5 uses
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !44
  store i8 %i.tm, ptr %i.tk, align 1, !tbaa !44
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !44
  %i.tp = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 5
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !44
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !44
  %i.ts = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 6
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !44
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 3
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !44
  %i.tv = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 7
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %.19263.i.us.i, i64 8 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.l
  %i.ty = add nuw nsw i32 %.2526262.i.us.i, 2     ; 2 uses
  %exitcond368.not.i.us.i.1 = icmp eq i32 %i.ty, %5
  br i1 %exitcond368.not.i.us.i.1, label %.loopexit173.i.us127.i, label %.lr.ph264.i.us.i, !llvm.loop !470

.loopexit173.i.us127.i:                           ; preds = %.lr.ph264.i.us.i.prol.loopexit, %.lr.ph264.i.us.i, %.preheader172.i.us.i
  %.20.i.us128.i = phi ptr [ %.18.lcssa.i.us.i, %.preheader172.i.us.i ], [ %.lcssa523.unr, %.lr.ph264.i.us.i.prol.loopexit ], [ %i.tw, %.lr.ph264.i.us.i ] ; 2 uses
  %indvars.iv.next370.i.us129.i = add nuw nsw i64 %indvars.iv369.i.us125.i, 4 ; 3 uses
  %i.tz = icmp slt i64 %indvars.iv.next370.i.us129.i, %invariant.op433.i.i
  br i1 %i.tz, label %_ZN4ncnn3MatD2Ev.exit546.i.us.i, label %.preheader171.loopexit.i.i, !llvm.loop !464

.preheader171.loopexit.i.i:                       ; preds = %.loopexit173.i.us127.i, %.loopexit173.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i, %.loopexit173.i.preheader.i
  %.us-phi122.i = phi ptr [ %.lcssa516, %.loopexit173.i.loopexit.us.us.i ], [ %.7.lcssa.i.i, %.loopexit173.i.preheader.i ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i ], [ %.20.i.us128.i, %.loopexit173.i.us127.i ]
  %.us-phi123.i = phi i64 [ %indvars.iv.next370.i.us.us.i, %.loopexit173.i.loopexit.us.us.i ], [ %i.mj, %.loopexit173.i.preheader.i ], [ %i.mq, %_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i ], [ %indvars.iv.next370.i.us129.i, %.loopexit173.i.us127.i ]
  %i.ua = trunc nsw i64 %.us-phi123.i to i32
  br label %.preheader171.i.i

.preheader171.i.i:                                ; preds = %.preheader171.loopexit.i.i, %.preheader176.i.i
  %.2506.lcssa.i.i = phi i32 [ %.1505.lcssa.i.i, %.preheader176.i.i ], [ %i.ua, %.preheader171.loopexit.i.i ] ; 3 uses
  %.14.lcssa.i.i = phi ptr [ %.7.lcssa.i.i, %.preheader176.i.i ], [ %.us-phi122.i, %.preheader171.loopexit.i.i ] ; 5 uses
  %i.ub = or disjoint i32 %.2506.lcssa.i.i, 1
  %i.uc = icmp slt i32 %i.ub, %3
  br i1 %i.uc, label %.lr.ph297.i.i, label %.preheader166.i.i

.lr.ph297.i.i:                                    ; preds = %.preheader171.i.i
  %i.ud = sdiv i32 %4, 8
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %16 = lshr i32 %5, 3                            ; 3 uses
  %i.ug = shl i64 %i.l, 3                         ; 5 uses
  %i.uh = sext i32 %4 to i64
  %i.ui = icmp sgt i32 %5, 3
  %i.uj = shl i64 %i.l, 1                         ; 2 uses
  %i.uk = mul i64 %i.l, 3
  %i.ul = shl i64 %i.l, 2
  %i.um = and i32 %5, -4
  %i.un = sext i32 %.2506.lcssa.i.i to i64        ; 8 uses
  %i.uo = sext i32 %3 to i64
  %i.up = sext i32 %2 to i64                      ; 2 uses
  %invariant.op434.i.i = add nsw i64 %i.uo, -1    ; 4 uses
  switch i32 %i.n, label %.loopexit168.i.i.preheader [
    i32 8, label %.lr.ph297.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit544.i.i.us
  ]

.loopexit168.i.i.preheader:                       ; preds = %.lr.ph297.i.i
  %i.uq = add nsw i64 %i.un, 2
  %smax242 = tail call i64 @llvm.smax.i64(i64 %invariant.op434.i.i, i64 %i.uq)
  %i.ur = xor i64 %i.un, -1
  %i.us = add nsw i64 %smax242, %i.ur
  %i.ut = and i64 %i.us, -2
  %i.uu = add i64 %i.ut, %i.un
  %i.uv = add i64 %i.uu, 2
  br label %.preheader166.loopexit.i.i

.lr.ph297.i.i.split.us:                           ; preds = %.lr.ph297.i.i
  %i.uw = icmp sgt i32 %5, 7
  br i1 %i.uw, label %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us.preheader, label %_ZN4ncnn3MatD2Ev.exit545.i.i.us.preheader

_ZN4ncnn3MatD2Ev.exit545.i.i.us.us.preheader:     ; preds = %.lr.ph297.i.i.split.us
  %i.ux = add nsw i32 %16, -1
  %xtraiter625 = and i32 %16, 3                   ; 3 uses
  %i.uy = icmp ult i32 %i.ux, 3
  %unroll_iter629 = and i32 %16, 268435452
  %lcmp.mod626.not = icmp eq i32 %xtraiter625, 0
  %lcmp.mod628 = icmp ne i32 %xtraiter625, 0
  br label %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us

_ZN4ncnn3MatD2Ev.exit545.i.i.us.preheader:        ; preds = %.lr.ph297.i.i.split.us
  %i.uz = add nsw i64 %i.un, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op434.i.i, i64 %i.uz)
  %i.va = xor i64 %i.un, -1
  %i.vb = add nsw i64 %smax, %i.va
  %i.vc = and i64 %i.vb, -2
  %i.vd = add i64 %i.vc, %i.un
  %i.ve = add i64 %i.vd, 2
  br label %.preheader166.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit545.i.i.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us.preheader, %.loopexit168.i.i.loopexit.us.us
  %indvars.iv374.i.i.us.us = phi i64 [ %indvars.iv.next375.i.i.us.us, %.loopexit168.i.i.loopexit.us.us ], [ %i.un, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us.preheader ] ; 2 uses
  %.21296.i.i.us.us = phi ptr [ %.lcssa508, %.loopexit168.i.i.loopexit.us.us ], [ %.14.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us.preheader ] ; 2 uses
  %i.vf = load ptr, ptr %0, align 8, !tbaa !32, !noalias !471
  %i.vg = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !471
  %i.vh = mul i64 %i.vg, %i.ue
  %i.vi = load i64, ptr %i.uf, align 8, !tbaa !36, !noalias !471
  %i.vj = mul i64 %i.vh, %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vj
  %i.vl = add nsw i64 %indvars.iv374.i.i.us.us, %i.up
  %i.vm = shl nsw i64 %i.vl, 3
  %i.vn = getelementptr inbounds i8, ptr %i.vk, i64 %i.vm ; 2 uses
  br i1 %i.uy, label %.lr.ph274.i.i.us.us.epil.preheader, label %.lr.ph274.i.i.us.us

.lr.ph274.i.i.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us, %.lr.ph274.i.i.us.us
  %.22273.i.i.us.us = phi ptr [ %i.xi, %.lr.ph274.i.i.us.us ], [ %.21296.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us ] ; 5 uses
  %.0523271.i.i.us.us = phi ptr [ %i.xj, %.lr.ph274.i.i.us.us ], [ %i.vn, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us ] ; 3 uses
  %niter630 = phi i32 [ %niter630.next.3, %.lr.ph274.i.i.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us ]
  %i.vo = load i64, ptr %.0523271.i.i.us.us, align 1, !tbaa !44
  %i.vp = insertelement <2 x i64> poison, i64 %i.vo, i64 0
  %i.vq = getelementptr inbounds nuw i8, ptr %.0523271.i.i.us.us, i64 8
  %i.vr = load i64, ptr %i.vq, align 1, !tbaa !44
  %i.vs = insertelement <2 x i64> poison, i64 %i.vr, i64 0
  %i.vt = bitcast <2 x i64> %i.vp to <4 x i32>
  %i.vu = bitcast <2 x i64> %i.vs to <4 x i32>
  %i.vv = shufflevector <4 x i32> %i.vt, <4 x i32> %i.vu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vw = bitcast <4 x i32> %i.vv to <16 x i8>
  %i.vx = add <16 x i8> %i.vw, splat (i8 127)
  store <16 x i8> %i.vx, ptr %.22273.i.i.us.us, align 1, !tbaa !44
  %i.vy = getelementptr inbounds nuw i8, ptr %.22273.i.i.us.us, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %.0523271.i.i.us.us, i64 %i.ug ; 3 uses
  %i.wa = load i64, ptr %i.vz, align 1, !tbaa !44
  %i.wb = insertelement <2 x i64> poison, i64 %i.wa, i64 0
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wd = load i64, ptr %i.wc, align 1, !tbaa !44
  %i.we = insertelement <2 x i64> poison, i64 %i.wd, i64 0
  %i.wf = bitcast <2 x i64> %i.wb to <4 x i32>
  %i.wg = bitcast <2 x i64> %i.we to <4 x i32>
  %i.wh = shufflevector <4 x i32> %i.wf, <4 x i32> %i.wg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wi = bitcast <4 x i32> %i.wh to <16 x i8>
  %i.wj = add <16 x i8> %i.wi, splat (i8 127)
  store <16 x i8> %i.wj, ptr %i.vy, align 1, !tbaa !44
  %i.wk = getelementptr inbounds nuw i8, ptr %.22273.i.i.us.us, i64 32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.ug ; 3 uses
  %i.wm = load i64, ptr %i.wl, align 1, !tbaa !44
  %i.wn = insertelement <2 x i64> poison, i64 %i.wm, i64 0
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wp = load i64, ptr %i.wo, align 1, !tbaa !44
  %i.wq = insertelement <2 x i64> poison, i64 %i.wp, i64 0
  %i.wr = bitcast <2 x i64> %i.wn to <4 x i32>
  %i.ws = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.wt = shufflevector <4 x i32> %i.wr, <4 x i32> %i.ws, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wu = bitcast <4 x i32> %i.wt to <16 x i8>
  %i.wv = add <16 x i8> %i.wu, splat (i8 127)
  store <16 x i8> %i.wv, ptr %i.wk, align 1, !tbaa !44
  %i.ww = getelementptr inbounds nuw i8, ptr %.22273.i.i.us.us, i64 48
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.ug ; 3 uses
  %i.wy = load i64, ptr %i.wx, align 1, !tbaa !44
  %i.wz = insertelement <2 x i64> poison, i64 %i.wy, i64 0
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xb = load i64, ptr %i.xa, align 1, !tbaa !44
  %i.xc = insertelement <2 x i64> poison, i64 %i.xb, i64 0
  %i.xd = bitcast <2 x i64> %i.wz to <4 x i32>
  %i.xe = bitcast <2 x i64> %i.xc to <4 x i32>
  %i.xf = shufflevector <4 x i32> %i.xd, <4 x i32> %i.xe, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xg = bitcast <4 x i32> %i.xf to <16 x i8>
  %i.xh = add <16 x i8> %i.xg, splat (i8 127)
  store <16 x i8> %i.xh, ptr %i.ww, align 1, !tbaa !44
  %i.xi = getelementptr inbounds nuw i8, ptr %.22273.i.i.us.us, i64 64 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.ug ; 2 uses
  %niter630.next.3 = add i32 %niter630, 4         ; 2 uses
  %niter630.ncmp.3 = icmp eq i32 %niter630.next.3, %unroll_iter629
  br i1 %niter630.ncmp.3, label %.loopexit168.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph274.i.i.us.us, !llvm.loop !474

.loopexit168.i.i.loopexit.us.us.unr-lcssa:        ; preds = %.lr.ph274.i.i.us.us
  br i1 %lcmp.mod626.not, label %.loopexit168.i.i.loopexit.us.us, label %.lr.ph274.i.i.us.us.epil.preheader

.lr.ph274.i.i.us.us.epil.preheader:               ; preds = %.loopexit168.i.i.loopexit.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us
  %.22273.i.i.us.us.epil.init = phi ptr [ %.21296.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us ], [ %i.xi, %.loopexit168.i.i.loopexit.us.us.unr-lcssa ]
  %.0523271.i.i.us.us.epil.init = phi ptr [ %i.vn, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us ], [ %i.xj, %.loopexit168.i.i.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod628)
  br label %.lr.ph274.i.i.us.us.epil

.lr.ph274.i.i.us.us.epil:                         ; preds = %.lr.ph274.i.i.us.us.epil, %.lr.ph274.i.i.us.us.epil.preheader
  %.22273.i.i.us.us.epil = phi ptr [ %i.xu, %.lr.ph274.i.i.us.us.epil ], [ %.22273.i.i.us.us.epil.init, %.lr.ph274.i.i.us.us.epil.preheader ] ; 2 uses
  %.0523271.i.i.us.us.epil = phi ptr [ %i.xv, %.lr.ph274.i.i.us.us.epil ], [ %.0523271.i.i.us.us.epil.init, %.lr.ph274.i.i.us.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph274.i.i.us.us.epil ], [ 0, %.lr.ph274.i.i.us.us.epil.preheader ]
  %i.xk = load i64, ptr %.0523271.i.i.us.us.epil, align 1, !tbaa !44
  %i.xl = insertelement <2 x i64> poison, i64 %i.xk, i64 0
  %i.xm = getelementptr inbounds nuw i8, ptr %.0523271.i.i.us.us.epil, i64 8
  %i.xn = load i64, ptr %i.xm, align 1, !tbaa !44
  %i.xo = insertelement <2 x i64> poison, i64 %i.xn, i64 0
  %i.xp = bitcast <2 x i64> %i.xl to <4 x i32>
  %i.xq = bitcast <2 x i64> %i.xo to <4 x i32>
  %i.xr = shufflevector <4 x i32> %i.xp, <4 x i32> %i.xq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xs = bitcast <4 x i32> %i.xr to <16 x i8>
  %i.xt = add <16 x i8> %i.xs, splat (i8 127)
  store <16 x i8> %i.xt, ptr %.22273.i.i.us.us.epil, align 1, !tbaa !44
  %i.xu = getelementptr inbounds nuw i8, ptr %.22273.i.i.us.us.epil, i64 16 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.0523271.i.i.us.us.epil, i64 %i.ug
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter625
  br i1 %epil.iter.cmp.not, label %.loopexit168.i.i.loopexit.us.us, label %.lr.ph274.i.i.us.us.epil, !llvm.loop !475

.loopexit168.i.i.loopexit.us.us:                  ; preds = %.lr.ph274.i.i.us.us.epil, %.loopexit168.i.i.loopexit.us.us.unr-lcssa
  %.lcssa508 = phi ptr [ %i.xi, %.loopexit168.i.i.loopexit.us.us.unr-lcssa ], [ %i.xu, %.lr.ph274.i.i.us.us.epil ] ; 2 uses
  %indvars.iv.next375.i.i.us.us = add nuw nsw i64 %indvars.iv374.i.i.us.us, 2 ; 3 uses
  %i.xw = icmp slt i64 %indvars.iv.next375.i.i.us.us, %invariant.op434.i.i
  br i1 %i.xw, label %_ZN4ncnn3MatD2Ev.exit545.i.i.us.us, label %.preheader166.loopexit.i.i, !llvm.loop !476

_ZN4ncnn3MatD2Ev.exit544.i.i.us:                  ; preds = %.lr.ph297.i.i, %.loopexit168.i.i.us123
  %indvars.iv374.i.i.us121 = phi i64 [ %indvars.iv.next375.i.i.us125, %.loopexit168.i.i.us123 ], [ %i.un, %.lr.ph297.i.i ] ; 2 uses
  %.21296.i.i.us122 = phi ptr [ %.27.i.i.us124, %.loopexit168.i.i.us123 ], [ %.14.lcssa.i.i, %.lr.ph297.i.i ] ; 2 uses
  %i.xx = load ptr, ptr %0, align 8, !tbaa !32, !noalias !477
  %i.xy = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !477
  %i.xz = mul i64 %i.xy, %i.uh
  %i.ya = load i64, ptr %i.uf, align 8, !tbaa !36, !noalias !477
  %i.yb = mul i64 %i.xz, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yb
  %i.yd = getelementptr i8, ptr %i.yc, i64 %indvars.iv374.i.i.us121
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.up  ; 2 uses
  br i1 %i.ui, label %.lr.ph279.i.i.us, label %.preheader169.i.i.us

.lr.ph279.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit544.i.i.us, %.lr.ph279.i.i.us
  %.24278.i.i.us = phi ptr [ %i.zj, %.lr.ph279.i.i.us ], [ %.21296.i.i.us122, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ] ; 9 uses
  %.0511277.i.i.us = phi i32 [ %i.zl, %.lr.ph279.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ]
  %.0514276.i.i.us = phi ptr [ %i.zk, %.lr.ph279.i.i.us ], [ %i.ye, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ] ; 6 uses
  %i.yf = load i8, ptr %.0514276.i.i.us, align 1, !tbaa !44
  %i.yg = add i8 %i.yf, 127
  store i8 %i.yg, ptr %.24278.i.i.us, align 1, !tbaa !44
  %i.yh = getelementptr inbounds nuw i8, ptr %.0514276.i.i.us, i64 %i.l ; 2 uses
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !44
  %i.yj = add i8 %i.yi, 127
  %i.yk = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 1
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !44
  %i.yl = getelementptr inbounds nuw i8, ptr %.0514276.i.i.us, i64 %i.uj ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !44
  %i.yn = add i8 %i.ym, 127
  %i.yo = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 2
  store i8 %i.yn, ptr %i.yo, align 1, !tbaa !44
  %i.yp = getelementptr inbounds nuw i8, ptr %.0514276.i.i.us, i64 %i.uk ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !44
  %i.yr = add i8 %i.yq, 127
  %i.ys = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 3
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !44
  %i.yt = getelementptr inbounds nuw i8, ptr %.0514276.i.i.us, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !44
  %i.yv = add i8 %i.yu, 127
  %i.yw = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 4
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !44
  %i.yx = getelementptr i8, ptr %i.yh, i64 1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !44
  %i.yz = add i8 %i.yy, 127
  %i.za = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 5
  store i8 %i.yz, ptr %i.za, align 1, !tbaa !44
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !44
  %i.zd = add i8 %i.zc, 127
  %i.ze = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 6
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !44
  %i.zf = getelementptr i8, ptr %i.yp, i64 1
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !44
  %i.zh = add i8 %i.zg, 127
  %i.zi = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 7
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !44
  %i.zj = getelementptr inbounds nuw i8, ptr %.24278.i.i.us, i64 8 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0514276.i.i.us, i64 %i.ul ; 2 uses
  %i.zl = add nuw nsw i32 %.0511277.i.i.us, 4     ; 2 uses
  %i.zm = or disjoint i32 %i.zl, 3
  %i.zn = icmp slt i32 %i.zm, %5
  br i1 %i.zn, label %.lr.ph279.i.i.us, label %.preheader169.i.i.us, !llvm.loop !480

.preheader169.i.i.us:                             ; preds = %.lr.ph279.i.i.us, %_ZN4ncnn3MatD2Ev.exit544.i.i.us
  %.0514.lcssa.i.i.us = phi ptr [ %i.ye, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ], [ %i.zk, %.lr.ph279.i.i.us ] ; 2 uses
  %.0511.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ], [ %i.um, %.lr.ph279.i.i.us ] ; 3 uses
  %.24.lcssa.i.i.us = phi ptr [ %.21296.i.i.us122, %_ZN4ncnn3MatD2Ev.exit544.i.i.us ], [ %i.zj, %.lr.ph279.i.i.us ] ; 2 uses
  %i.zo = or disjoint i32 %.0511.lcssa.i.i.us, 1
  %i.zp = icmp slt i32 %i.zo, %5
  br i1 %i.zp, label %.lr.ph286.i.i.us, label %.preheader167.i.i.us

.lr.ph286.i.i.us:                                 ; preds = %.preheader169.i.i.us, %.lr.ph286.i.i.us
  %.25285.i.i.us = phi ptr [ %i.aaa, %.lr.ph286.i.i.us ], [ %.24.lcssa.i.i.us, %.preheader169.i.i.us ] ; 5 uses
  %.1512284.i.i.us = phi i32 [ %i.aac, %.lr.ph286.i.i.us ], [ %.0511.lcssa.i.i.us, %.preheader169.i.i.us ]
  %.1515283.i.i.us = phi ptr [ %i.aab, %.lr.ph286.i.i.us ], [ %.0514.lcssa.i.i.us, %.preheader169.i.i.us ] ; 4 uses
  %i.zq = load i8, ptr %.1515283.i.i.us, align 1, !tbaa !44
  store i8 %i.zq, ptr %.25285.i.i.us, align 1, !tbaa !44
  %i.zr = getelementptr inbounds nuw i8, ptr %.1515283.i.i.us, i64 %i.l ; 2 uses
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !44
  %i.zt = getelementptr inbounds nuw i8, ptr %.25285.i.i.us, i64 1
  store i8 %i.zs, ptr %i.zt, align 1, !tbaa !44
  %i.zu = getelementptr inbounds nuw i8, ptr %.1515283.i.i.us, i64 1
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !44
  %i.zw = getelementptr inbounds nuw i8, ptr %.25285.i.i.us, i64 2
  store i8 %i.zv, ptr %i.zw, align 1, !tbaa !44
  %i.zx = getelementptr i8, ptr %i.zr, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !44
  %i.zz = getelementptr inbounds nuw i8, ptr %.25285.i.i.us, i64 3
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !44
  %i.aaa = getelementptr inbounds nuw i8, ptr %.25285.i.i.us, i64 4 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.1515283.i.i.us, i64 %i.uj ; 2 uses
  %i.aac = add nuw nsw i32 %.1512284.i.i.us, 2    ; 3 uses
  %i.aad = or disjoint i32 %i.aac, 1
  %i.aae = icmp slt i32 %i.aad, %5
  br i1 %i.aae, label %.lr.ph286.i.i.us, label %.preheader167.i.i.us, !llvm.loop !481

.preheader167.i.i.us:                             ; preds = %.lr.ph286.i.i.us, %.preheader169.i.i.us
  %.1515.lcssa.i.i.us = phi ptr [ %.0514.lcssa.i.i.us, %.preheader169.i.i.us ], [ %i.aab, %.lr.ph286.i.i.us ] ; 2 uses
  %.1512.lcssa.i.i.us = phi i32 [ %.0511.lcssa.i.i.us, %.preheader169.i.i.us ], [ %i.aac, %.lr.ph286.i.i.us ] ; 5 uses
  %.25.lcssa.i.i.us = phi ptr [ %.24.lcssa.i.i.us, %.preheader169.i.i.us ], [ %i.aaa, %.lr.ph286.i.i.us ] ; 3 uses
  %i.aaf = icmp slt i32 %.1512.lcssa.i.i.us, %5
  br i1 %i.aaf, label %.lr.ph293.i.i.us.preheader, label %.loopexit168.i.i.us123

.lr.ph293.i.i.us.preheader:                       ; preds = %.preheader167.i.i.us
  %i.aag = sub i32 %5, %.1512.lcssa.i.i.us
  %xtraiter622 = and i32 %i.aag, 3                ; 2 uses
  %lcmp.mod623.not = icmp eq i32 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %.lr.ph293.i.i.us.prol.loopexit, label %.lr.ph293.i.i.us.prol

.lr.ph293.i.i.us.prol:                            ; preds = %.lr.ph293.i.i.us.preheader, %.lr.ph293.i.i.us.prol
  %.26292.i.i.us.prol = phi ptr [ %i.aal, %.lr.ph293.i.i.us.prol ], [ %.25.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ] ; 3 uses
  %.2513291.i.i.us.prol = phi i32 [ %i.aan, %.lr.ph293.i.i.us.prol ], [ %.1512.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ]
  %.2516290.i.i.us.prol = phi ptr [ %i.aam, %.lr.ph293.i.i.us.prol ], [ %.1515.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ] ; 3 uses
  %prol.iter624 = phi i32 [ %prol.iter624.next, %.lr.ph293.i.i.us.prol ], [ 0, %.lr.ph293.i.i.us.preheader ]
  %i.aah = load i8, ptr %.2516290.i.i.us.prol, align 1, !tbaa !44
  store i8 %i.aah, ptr %.26292.i.i.us.prol, align 1, !tbaa !44
  %i.aai = getelementptr inbounds nuw i8, ptr %.2516290.i.i.us.prol, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !44
  %i.aak = getelementptr inbounds nuw i8, ptr %.26292.i.i.us.prol, i64 1
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !44
  %i.aal = getelementptr inbounds nuw i8, ptr %.26292.i.i.us.prol, i64 2 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.2516290.i.i.us.prol, i64 %i.l ; 2 uses
  %i.aan = add nuw nsw i32 %.2513291.i.i.us.prol, 1 ; 2 uses
  %prol.iter624.next = add i32 %prol.iter624, 1   ; 2 uses
  %prol.iter624.cmp.not = icmp eq i32 %prol.iter624.next, %xtraiter622
  br i1 %prol.iter624.cmp.not, label %.lr.ph293.i.i.us.prol.loopexit, label %.lr.ph293.i.i.us.prol, !llvm.loop !482

.lr.ph293.i.i.us.prol.loopexit:                   ; preds = %.lr.ph293.i.i.us.prol, %.lr.ph293.i.i.us.preheader
  %.lcssa515.unr = phi ptr [ poison, %.lr.ph293.i.i.us.preheader ], [ %i.aal, %.lr.ph293.i.i.us.prol ]
  %.26292.i.i.us.unr = phi ptr [ %.25.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ], [ %i.aal, %.lr.ph293.i.i.us.prol ]
  %.2513291.i.i.us.unr = phi i32 [ %.1512.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ], [ %i.aan, %.lr.ph293.i.i.us.prol ]
  %.2516290.i.i.us.unr = phi ptr [ %.1515.lcssa.i.i.us, %.lr.ph293.i.i.us.preheader ], [ %i.aam, %.lr.ph293.i.i.us.prol ]
  %i.aao = sub i32 %.1512.lcssa.i.i.us, %5
  %i.aap = icmp ugt i32 %i.aao, -4
  br i1 %i.aap, label %.loopexit168.i.i.us123, label %.lr.ph293.i.i.us

.lr.ph293.i.i.us:                                 ; preds = %.lr.ph293.i.i.us.prol.loopexit, %.lr.ph293.i.i.us
  %.26292.i.i.us = phi ptr [ %i.abm, %.lr.ph293.i.i.us ], [ %.26292.i.i.us.unr, %.lr.ph293.i.i.us.prol.loopexit ] ; 9 uses
  %.2513291.i.i.us = phi i32 [ %i.abo, %.lr.ph293.i.i.us ], [ %.2513291.i.i.us.unr, %.lr.ph293.i.i.us.prol.loopexit ]
  %.2516290.i.i.us = phi ptr [ %i.abn, %.lr.ph293.i.i.us ], [ %.2516290.i.i.us.unr, %.lr.ph293.i.i.us.prol.loopexit ] ; 3 uses
  %i.aaq = load i8, ptr %.2516290.i.i.us, align 1, !tbaa !44
  store i8 %i.aaq, ptr %.26292.i.i.us, align 1, !tbaa !44
  %i.aar = getelementptr inbounds nuw i8, ptr %.2516290.i.i.us, i64 1
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !44
  %i.aat = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 1
  store i8 %i.aas, ptr %i.aat, align 1, !tbaa !44
  %i.aau = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 2
  %i.aav = getelementptr inbounds nuw i8, ptr %.2516290.i.i.us, i64 %i.l ; 3 uses
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !44
  store i8 %i.aaw, ptr %i.aau, align 1, !tbaa !44
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 1
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !44
  %i.aaz = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 3
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !44
  %i.aba = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 4
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.l ; 3 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !44
  store i8 %i.abc, ptr %i.aba, align 1, !tbaa !44
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !44
  %i.abf = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 5
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !44
  %i.abg = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 6
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.l ; 3 uses
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !44
  store i8 %i.abi, ptr %i.abg, align 1, !tbaa !44
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 1
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !44
  %i.abl = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 7
  store i8 %i.abk, ptr %i.abl, align 1, !tbaa !44
  %i.abm = getelementptr inbounds nuw i8, ptr %.26292.i.i.us, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.l
  %i.abo = add nuw nsw i32 %.2513291.i.i.us, 4    ; 2 uses
  %exitcond373.not.i.i.us.3 = icmp eq i32 %i.abo, %5
  br i1 %exitcond373.not.i.i.us.3, label %.loopexit168.i.i.us123, label %.lr.ph293.i.i.us, !llvm.loop !483

.loopexit168.i.i.us123:                           ; preds = %.lr.ph293.i.i.us.prol.loopexit, %.lr.ph293.i.i.us, %.preheader167.i.i.us
  %.27.i.i.us124 = phi ptr [ %.25.lcssa.i.i.us, %.preheader167.i.i.us ], [ %.lcssa515.unr, %.lr.ph293.i.i.us.prol.loopexit ], [ %i.abm, %.lr.ph293.i.i.us ] ; 2 uses
  %indvars.iv.next375.i.i.us125 = add nuw nsw i64 %indvars.iv374.i.i.us121, 2 ; 3 uses
  %i.abp = icmp slt i64 %indvars.iv.next375.i.i.us125, %invariant.op434.i.i
  br i1 %i.abp, label %_ZN4ncnn3MatD2Ev.exit544.i.i.us, label %.preheader166.loopexit.i.i, !llvm.loop !476

.preheader166.loopexit.i.i:                       ; preds = %.loopexit168.i.i.us123, %.loopexit168.i.i.loopexit.us.us, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.preheader, %.loopexit168.i.i.preheader
  %.us-phi = phi ptr [ %.lcssa508, %.loopexit168.i.i.loopexit.us.us ], [ %.14.lcssa.i.i, %.loopexit168.i.i.preheader ], [ %.14.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.preheader ], [ %.27.i.i.us124, %.loopexit168.i.i.us123 ]
  %.us-phi119 = phi i64 [ %indvars.iv.next375.i.i.us.us, %.loopexit168.i.i.loopexit.us.us ], [ %i.uv, %.loopexit168.i.i.preheader ], [ %i.ve, %_ZN4ncnn3MatD2Ev.exit545.i.i.us.preheader ], [ %indvars.iv.next375.i.i.us125, %.loopexit168.i.i.us123 ]
  %i.abq = trunc nsw i64 %.us-phi119 to i32
  br label %.preheader166.i.i

.preheader166.i.i:                                ; preds = %.preheader166.loopexit.i.i, %.preheader171.i.i
  %.3507.lcssa.i.i = phi i32 [ %.2506.lcssa.i.i, %.preheader171.i.i ], [ %i.abq, %.preheader166.loopexit.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.14.lcssa.i.i, %.preheader171.i.i ], [ %.us-phi, %.preheader166.loopexit.i.i ]
  %i.abr = icmp slt i32 %.3507.lcssa.i.i, %3
  br i1 %i.abr, label %.lr.ph319.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph319.i.i:                                    ; preds = %.preheader166.i.i
  %i.abs = sdiv i32 %4, 8
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %17 = lshr i32 %5, 3                            ; 3 uses
  %i.abv = icmp sgt i32 %5, 7
  %i.abw = shl i64 %i.l, 3                        ; 5 uses
  %i.abx = sext i32 %4 to i64
  %i.aby = icmp sgt i32 %5, 3
  %i.abz = shl i64 %i.l, 1
  %i.aca = mul i64 %i.l, 3
  %i.acb = shl i64 %i.l, 2
  %i.acc = and i32 %5, -4
  %i.acd = sext i32 %.3507.lcssa.i.i to i64
  %i.ace = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count.i.i = sext i32 %3 to i64
  %i.acf = add nsw i32 %17, -1
  %xtraiter634 = and i32 %17, 3                   ; 3 uses
  %i.acg = icmp ult i32 %i.acf, 3
  %unroll_iter639 = and i32 %17, 268435452
  %lcmp.mod636.not = icmp eq i32 %xtraiter634, 0
  %lcmp.mod638 = icmp ne i32 %xtraiter634, 0
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i, %.lr.ph319.i.i
  %indvars.iv379.i.i = phi i64 [ %i.acd, %.lr.ph319.i.i ], [ %indvars.iv.next380.i.i, %.loopexit.i.i ] ; 3 uses
  %.28318.i.i = phi ptr [ %.21.lcssa.i.i, %.lr.ph319.i.i ], [ %.33.i.i, %.loopexit.i.i ] ; 6 uses
  switch i32 %i.n, label %.loopexit.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit543.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit.i.i
  ]

_ZN4ncnn3MatD2Ev.exit543.i.i:                     ; preds = %bb.d
  br i1 %i.abv, label %.lr.ph303.preheader.i.i, label %.loopexit.i.i

.lr.ph303.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit543.i.i
  %i.ach = load ptr, ptr %0, align 8, !tbaa !32, !noalias !484
  %i.aci = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !484
  %i.acj = mul i64 %i.aci, %i.abt
  %i.ack = load i64, ptr %i.abu, align 8, !tbaa !36, !noalias !484
  %i.acl = mul i64 %i.acj, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.acl
  %i.acn = add nsw i64 %indvars.iv379.i.i, %i.ace
  %i.aco = shl nsw i64 %i.acn, 3
  %i.acp = getelementptr inbounds i8, ptr %i.acm, i64 %i.aco ; 2 uses
  br i1 %i.acg, label %.lr.ph303.i.i.epil.preheader, label %.lr.ph303.i.i

.lr.ph303.i.i:                                    ; preds = %.lr.ph303.preheader.i.i, %.lr.ph303.i.i
  %.29302.i.i = phi ptr [ %i.adu, %.lr.ph303.i.i ], [ %.28318.i.i, %.lr.ph303.preheader.i.i ] ; 5 uses
  %.0510300.i.i = phi ptr [ %i.adv, %.lr.ph303.i.i ], [ %i.acp, %.lr.ph303.preheader.i.i ] ; 2 uses
  %niter640 = phi i32 [ %niter640.next.3, %.lr.ph303.i.i ], [ 0, %.lr.ph303.preheader.i.i ]
  %i.acq = load i64, ptr %.0510300.i.i, align 1, !tbaa !44
  %i.acr = insertelement <2 x i64> poison, i64 %i.acq, i64 0
  %i.acs = bitcast <2 x i64> %i.acr to <16 x i8>
  %i.act = add <16 x i8> %i.acs, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.acu = bitcast <16 x i8> %i.act to <2 x i64>
  %i.acv = extractelement <2 x i64> %i.acu, i64 0
  store i64 %i.acv, ptr %.29302.i.i, align 1, !tbaa !44
  %i.acw = getelementptr inbounds nuw i8, ptr %.29302.i.i, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %.0510300.i.i, i64 %i.abw ; 2 uses
  %i.acy = load i64, ptr %i.acx, align 1, !tbaa !44
  %i.acz = insertelement <2 x i64> poison, i64 %i.acy, i64 0
  %i.ada = bitcast <2 x i64> %i.acz to <16 x i8>
  %i.adb = add <16 x i8> %i.ada, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.adc = bitcast <16 x i8> %i.adb to <2 x i64>
  %i.add = extractelement <2 x i64> %i.adc, i64 0
  store i64 %i.add, ptr %i.acw, align 1, !tbaa !44
  %i.ade = getelementptr inbounds nuw i8, ptr %.29302.i.i, i64 16
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.abw ; 2 uses
  %i.adg = load i64, ptr %i.adf, align 1, !tbaa !44
  %i.adh = insertelement <2 x i64> poison, i64 %i.adg, i64 0
  %i.adi = bitcast <2 x i64> %i.adh to <16 x i8>
  %i.adj = add <16 x i8> %i.adi, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.adk = bitcast <16 x i8> %i.adj to <2 x i64>
  %i.adl = extractelement <2 x i64> %i.adk, i64 0
  store i64 %i.adl, ptr %i.ade, align 1, !tbaa !44
  %i.adm = getelementptr inbounds nuw i8, ptr %.29302.i.i, i64 24
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.abw ; 2 uses
  %i.ado = load i64, ptr %i.adn, align 1, !tbaa !44
  %i.adp = insertelement <2 x i64> poison, i64 %i.ado, i64 0
  %i.adq = bitcast <2 x i64> %i.adp to <16 x i8>
  %i.adr = add <16 x i8> %i.adq, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ads = bitcast <16 x i8> %i.adr to <2 x i64>
  %i.adt = extractelement <2 x i64> %i.ads, i64 0
  store i64 %i.adt, ptr %i.adm, align 1, !tbaa !44
  %i.adu = getelementptr inbounds nuw i8, ptr %.29302.i.i, i64 32 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.abw ; 2 uses
  %niter640.next.3 = add i32 %niter640, 4         ; 2 uses
  %niter640.ncmp.3 = icmp eq i32 %niter640.next.3, %unroll_iter639
  br i1 %niter640.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph303.i.i, !llvm.loop !487

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %bb.d
  %i.adw = load ptr, ptr %0, align 8, !tbaa !32, !noalias !488
  %i.adx = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !488
  %i.ady = mul i64 %i.adx, %i.abx
  %i.adz = load i64, ptr %i.abu, align 8, !tbaa !36, !noalias !488
  %i.aea = mul i64 %i.ady, %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.aea
  %i.aec = getelementptr i8, ptr %i.aeb, i64 %indvars.iv379.i.i
  %i.aed = getelementptr i8, ptr %i.aec, i64 %i.ace ; 2 uses
  br i1 %i.aby, label %.lr.ph308.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph308.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.31.lcssa.i.i = phi ptr [ %.28318.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.afa, %.lr.ph308.i.i ] ; 3 uses
  %.0500.lcssa.i.i = phi ptr [ %i.aed, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.afb, %.lr.ph308.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.acc, %.lr.ph308.i.i ] ; 5 uses
  %i.aee = icmp slt i32 %.0.lcssa.i.i, %5
  br i1 %i.aee, label %.lr.ph315.i.i.preheader, label %.loopexit.i.i

.lr.ph315.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.aef = sub i32 %5, %.0.lcssa.i.i
  %xtraiter631 = and i32 %i.aef, 7                ; 2 uses
  %lcmp.mod632.not = icmp eq i32 %xtraiter631, 0
  br i1 %lcmp.mod632.not, label %.lr.ph315.i.i.prol.loopexit, label %.lr.ph315.i.i.prol

.lr.ph315.i.i.prol:                               ; preds = %.lr.ph315.i.i.preheader, %.lr.ph315.i.i.prol
  %.1314.i.i.prol = phi i32 [ %i.aej, %.lr.ph315.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph315.i.i.preheader ]
  %.1501313.i.i.prol = phi ptr [ %i.aei, %.lr.ph315.i.i.prol ], [ %.0500.lcssa.i.i, %.lr.ph315.i.i.preheader ] ; 2 uses
  %.32312.i.i.prol = phi ptr [ %i.aeh, %.lr.ph315.i.i.prol ], [ %.31.lcssa.i.i, %.lr.ph315.i.i.preheader ] ; 2 uses
  %prol.iter633 = phi i32 [ %prol.iter633.next, %.lr.ph315.i.i.prol ], [ 0, %.lr.ph315.i.i.preheader ]
  %i.aeg = load i8, ptr %.1501313.i.i.prol, align 1, !tbaa !44
  store i8 %i.aeg, ptr %.32312.i.i.prol, align 1, !tbaa !44
  %i.aeh = getelementptr inbounds nuw i8, ptr %.32312.i.i.prol, i64 1 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.1501313.i.i.prol, i64 %i.l ; 2 uses
  %i.aej = add nuw nsw i32 %.1314.i.i.prol, 1     ; 2 uses
  %prol.iter633.next = add i32 %prol.iter633, 1   ; 2 uses
  %prol.iter633.cmp.not = icmp eq i32 %prol.iter633.next, %xtraiter631
  br i1 %prol.iter633.cmp.not, label %.lr.ph315.i.i.prol.loopexit, label %.lr.ph315.i.i.prol, !llvm.loop !491

.lr.ph315.i.i.prol.loopexit:                      ; preds = %.lr.ph315.i.i.prol, %.lr.ph315.i.i.preheader
  %.lcssa506.unr = phi ptr [ poison, %.lr.ph315.i.i.preheader ], [ %i.aeh, %.lr.ph315.i.i.prol ]
  %.1314.i.i.unr = phi i32 [ %.0.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aej, %.lr.ph315.i.i.prol ]
  %.1501313.i.i.unr = phi ptr [ %.0500.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aei, %.lr.ph315.i.i.prol ]
  %.32312.i.i.unr = phi ptr [ %.31.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aeh, %.lr.ph315.i.i.prol ]
  %i.aek = sub i32 %.0.lcssa.i.i, %5
  %i.ael = icmp ugt i32 %i.aek, -8
  br i1 %i.ael, label %.loopexit.i.i, label %.lr.ph315.i.i

.lr.ph308.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %.lr.ph308.i.i
  %.0307.i.i = phi i32 [ %i.afc, %.lr.ph308.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %.0500306.i.i = phi ptr [ %i.afb, %.lr.ph308.i.i ], [ %i.aed, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 5 uses
  %.31305.i.i = phi ptr [ %i.afa, %.lr.ph308.i.i ], [ %.28318.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 5 uses
  %i.aem = load i8, ptr %.0500306.i.i, align 1, !tbaa !44
  %i.aen = add i8 %i.aem, 127
  store i8 %i.aen, ptr %.31305.i.i, align 1, !tbaa !44
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.l
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !44
  %i.aeq = add i8 %i.aep, 127
  %i.aer = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 1
  store i8 %i.aeq, ptr %i.aer, align 1, !tbaa !44
  %i.aes = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.abz
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !44
  %i.aeu = add i8 %i.aet, 127
  %i.aev = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 2
  store i8 %i.aeu, ptr %i.aev, align 1, !tbaa !44
  %i.aew = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.aca
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !44
  %i.aey = add i8 %i.aex, 127
  %i.aez = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 3
  store i8 %i.aey, ptr %i.aez, align 1, !tbaa !44
  %i.afa = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 4 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.acb ; 2 uses
  %i.afc = add nuw nsw i32 %.0307.i.i, 4          ; 2 uses
  %i.afd = or disjoint i32 %i.afc, 3
  %i.afe = icmp slt i32 %i.afd, %5
  br i1 %i.afe, label %.lr.ph308.i.i, label %.preheader.i.i, !llvm.loop !492

.lr.ph315.i.i:                                    ; preds = %.lr.ph315.i.i.prol.loopexit, %.lr.ph315.i.i
  %.1314.i.i = phi i32 [ %i.agd, %.lr.ph315.i.i ], [ %.1314.i.i.unr, %.lr.ph315.i.i.prol.loopexit ]
  %.1501313.i.i = phi ptr [ %i.agc, %.lr.ph315.i.i ], [ %.1501313.i.i.unr, %.lr.ph315.i.i.prol.loopexit ] ; 2 uses
  %.32312.i.i = phi ptr [ %i.agb, %.lr.ph315.i.i ], [ %.32312.i.i.unr, %.lr.ph315.i.i.prol.loopexit ] ; 9 uses
  %i.aff = load i8, ptr %.1501313.i.i, align 1, !tbaa !44
  store i8 %i.aff, ptr %.32312.i.i, align 1, !tbaa !44
  %i.afg = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 1
  %i.afh = getelementptr inbounds nuw i8, ptr %.1501313.i.i, i64 %i.l ; 2 uses
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !44
  store i8 %i.afi, ptr %i.afg, align 1, !tbaa !44
  %i.afj = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 2
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.l ; 2 uses
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !44
  store i8 %i.afl, ptr %i.afj, align 1, !tbaa !44
  %i.afm = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 3
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.l ; 2 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !44
  store i8 %i.afo, ptr %i.afm, align 1, !tbaa !44
  %i.afp = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 4
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.l ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !44
  store i8 %i.afr, ptr %i.afp, align 1, !tbaa !44
  %i.afs = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 5
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.l ; 2 uses
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !44
  store i8 %i.afu, ptr %i.afs, align 1, !tbaa !44
  %i.afv = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 6
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.l ; 2 uses
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !44
  store i8 %i.afx, ptr %i.afv, align 1, !tbaa !44
  %i.afy = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 7
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.l ; 2 uses
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !44
  store i8 %i.aga, ptr %i.afy, align 1, !tbaa !44
  %i.agb = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 8 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.l
  %i.agd = add nuw nsw i32 %.1314.i.i, 8          ; 2 uses
  %exitcond378.not.i.i.7 = icmp eq i32 %i.agd, %5
end_hunk_4
begin_hunk_5_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.byj = mul <4 x i32> %i.byi, %i.bbb
  %i.byk = sub <4 x i32> %i.bxt, %i.byj           ; 4 uses
  %i.byl = bitcast <4 x i32> %i.byk to <2 x i64>
  %i.bym = bitcast <4 x i32> %i.byk to <2 x i64>
  %i.byn = and <2 x i64> %i.bym, splat (i64 4294967295)
  %i.byo = mul nuw <2 x i64> %i.byn, %i.bbd
  %i.byp = lshr <2 x i64> %i.byo, splat (i64 32)
  %i.byq = lshr <2 x i64> %i.byl, splat (i64 32)
  %i.byr = mul nuw <2 x i64> %i.byq, %i.bbd
  %i.bys = bitcast <2 x i64> %i.byp to <8 x i16>
  %i.byt = bitcast <2 x i64> %i.byr to <8 x i16>
  %i.byu = shufflevector <8 x i16> %i.bys, <8 x i16> %i.byt, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.byv = bitcast <8 x i16> %i.byu to <4 x i32>  ; 2 uses
  %i.byw = sub <4 x i32> %i.byk, %i.byv
  %i.byx = lshr <4 x i32> %i.byw, %i.bbe
  %i.byy = add <4 x i32> %i.byx, %i.byv
  %i.byz = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.byy, <4 x i32> %i.aja) ; 2 uses
  %i.bza = mul <4 x i32> %i.byz, %i.bbg
  %i.bzb = sub <4 x i32> %i.byk, %i.bza
  %i.bzc = mul <4 x i32> %i.byi, %i.bbj
  %i.bzd = mul <4 x i32> %i.bzb, %i.bbl
  %i.bze = mul <4 x i32> %i.byz, %i.bbn
  %i.bzf = add <4 x i32> %i.bze, %i.bzc
  %i.bzg = add <4 x i32> %i.bzf, %i.bzd           ; 4 uses
  %i.bzh = shufflevector <4 x i32> %i.bzg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bzi = add <4 x i32> %i.bzh, %i.brd
  %i.bzj = shufflevector <4 x i32> %i.bzg, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bzk = add <4 x i32> %i.bzj, %i.brd
  %i.bzl = shufflevector <4 x i32> %i.bzg, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bzm = add <4 x i32> %i.bzl, %i.brd
  %i.bzn = shufflevector <4 x i32> %i.bzg, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bzo = add <4 x i32> %i.bzn, %i.brd
  %i.bzp = load ptr, ptr %0, align 8, !tbaa !32   ; 4 uses
  %i.bzq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bzp, <4 x i32> %i.bzi, <4 x i32> splat (i32 -1), i8 1)
  %i.bzr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bzp, <4 x i32> %i.bzk, <4 x i32> splat (i32 -1), i8 1)
  %i.bzs = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bzp, <4 x i32> %i.bzm, <4 x i32> splat (i32 -1), i8 1)
  %i.bzt = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bzp, <4 x i32> %i.bzo, <4 x i32> splat (i32 -1), i8 1)
  %i.bzu = shufflevector <4 x i32> %i.bzq, <4 x i32> %i.bzr, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bzv = trunc <16 x i32> %i.bzu to <16 x i8>
  %i.bzw = shufflevector <4 x i32> %i.bzs, <4 x i32> %i.bzt, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bzx = trunc <16 x i32> %i.bzw to <16 x i8>
  %i.bzy = bitcast <16 x i8> %i.bzv to <8 x i16>
  %i.bzz = bitcast <16 x i8> %i.bzx to <8 x i16>
  %i.caa = shufflevector <8 x i16> %i.bzy, <8 x i16> %i.bzz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cab = bitcast <8 x i16> %i.caa to <16 x i8>
  %i.cac = add <16 x i8> %i.cab, splat (i8 127)
  store <16 x i8> %i.cac, ptr %.33442.i.i, align 1, !tbaa !44
  %i.cad = getelementptr inbounds nuw i8, ptr %.33442.i.i, i64 16 ; 2 uses
  %i.cae = add nuw nsw i32 %.01665441.i.i, 4      ; 3 uses
  %i.caf = or disjoint i32 %i.cae, 3
  %i.cag = icmp slt i32 %i.caf, %5
  br i1 %i.cag, label %.lr.ph443.i.i, label %.preheader333.i.i, !llvm.loop !518

.preheader331.i.i:                                ; preds = %.lr.ph448.i.i, %.preheader333.i.i
  %.11666.lcssa.i.i = phi i32 [ %.01665.lcssa.i.i, %.preheader333.i.i ], [ %i.cbq, %.lr.ph448.i.i ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33.lcssa.i.i, %.preheader333.i.i ], [ %i.cbp, %.lr.ph448.i.i ] ; 2 uses
  %i.cah = icmp slt i32 %.11666.lcssa.i.i, %5
  br i1 %i.cah, label %.lr.ph453.i.i, label %.loopexit324.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader333.i.i, %.lr.ph448.i.i
  %.34447.i.i = phi ptr [ %i.cbp, %.lr.ph448.i.i ], [ %.33.lcssa.i.i, %.preheader333.i.i ] ; 2 uses
  %.11666446.i.i = phi i32 [ %i.cbq, %.lr.ph448.i.i ], [ %.01665.lcssa.i.i, %.preheader333.i.i ] ; 2 uses
  %i.cai = add nsw i32 %.11666446.i.i, %4         ; 3 uses
  %i.caj = sdiv i32 %i.cai, %i.agv
  %i.cak = add nsw i32 %i.cai, 1                  ; 2 uses
  %i.cal = sdiv i32 %i.cak, %i.agv
  %i.cam = srem i32 %i.cai, %i.agv                ; 2 uses
  %i.can = srem i32 %i.cak, %i.agv                ; 2 uses
  %i.cao = sdiv i32 %i.cam, %6
  %i.cap = sdiv i32 %i.can, %6
  %i.caq = srem i32 %i.cam, %6
  %i.car = srem i32 %i.can, %6
  %i.cas = mul i32 %i.cao, %.scalar654.i.i
  %i.cat = mul nsw i32 %i.caq, %8
  %i.cau = mul i32 %i.cap, %.scalar654.i.i
  %i.cav = mul nsw i32 %i.car, %8
  %i.caw = mul i32 %i.caj, %i.bbh
  %i.cax = add i32 %i.cas, %i.caw
  %i.cay = add i32 %i.cax, %i.cat
  %i.caz = insertelement <4 x i32> poison, i32 %i.cay, i64 0
  %i.cba = shufflevector <4 x i32> %i.caz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbb = add <4 x i32> %i.cba, %i.brd
  %i.cbc = mul i32 %i.cal, %i.bbh
  %i.cbd = add i32 %i.cau, %i.cbc
  %i.cbe = add i32 %i.cbd, %i.cav
  %i.cbf = insertelement <4 x i32> poison, i32 %i.cbe, i64 0
  %i.cbg = shufflevector <4 x i32> %i.cbf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbh = add <4 x i32> %i.cbg, %i.brd
  %i.cbi = load ptr, ptr %0, align 8, !tbaa !32   ; 2 uses
  %i.cbj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cbi, <4 x i32> %i.cbb, <4 x i32> splat (i32 -1), i8 1)
  %i.cbk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cbi, <4 x i32> %i.cbh, <4 x i32> splat (i32 -1), i8 1)
  %i.cbl = shufflevector <4 x i32> %i.cbj, <4 x i32> %i.cbk, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cbm = trunc <16 x i32> %i.cbl to <16 x i8>
  %i.cbn = bitcast <16 x i8> %i.cbm to <2 x i64>
  %i.cbo = extractelement <2 x i64> %i.cbn, i64 0
  store i64 %i.cbo, ptr %.34447.i.i, align 1, !tbaa !44
  %i.cbp = getelementptr inbounds nuw i8, ptr %.34447.i.i, i64 8 ; 2 uses
  %i.cbq = add nuw nsw i32 %.11666446.i.i, 2      ; 3 uses
  %i.cbr = or disjoint i32 %i.cbq, 1
  %i.cbs = icmp slt i32 %i.cbr, %5
  br i1 %i.cbs, label %.lr.ph448.i.i, label %.preheader331.i.i, !llvm.loop !519

.lr.ph453.i.i:                                    ; preds = %.preheader331.i.i, %.lr.ph453.i.i
  %.35452.i.i = phi ptr [ %i.ccm, %.lr.ph453.i.i ], [ %.34.lcssa.i.i, %.preheader331.i.i ] ; 2 uses
  %.21667451.i.i = phi i32 [ %i.ccn, %.lr.ph453.i.i ], [ %.11666.lcssa.i.i, %.preheader331.i.i ] ; 2 uses
  %i.cbt = add nsw i32 %.21667451.i.i, %4         ; 2 uses
  %i.cbu = sdiv i32 %i.cbt, %i.agv
  %i.cbv = srem i32 %i.cbt, %i.agv                ; 2 uses
  %i.cbw = sdiv i32 %i.cbv, %6
  %i.cbx = srem i32 %i.cbv, %6
  %i.cby = mul i32 %i.cbw, %.scalar654.i.i
  %i.cbz = mul nsw i32 %i.cbx, %8
  %i.cca = mul i32 %i.cbu, %i.bbh
  %i.ccb = add i32 %i.cby, %i.cca
  %i.ccc = add i32 %i.ccb, %i.cbz
  %i.ccd = insertelement <4 x i32> poison, i32 %i.ccc, i64 0
  %i.cce = shufflevector <4 x i32> %i.ccd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccf = add <4 x i32> %i.cce, %i.brd
  %i.ccg = load ptr, ptr %0, align 8, !tbaa !32
  %i.cch = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ccg, <4 x i32> %i.ccf, <4 x i32> splat (i32 -1), i8 1)
  %i.cci = shufflevector <4 x i32> %i.cch, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ccj = trunc <16 x i32> %i.cci to <16 x i8>
  %i.cck = bitcast <16 x i8> %i.ccj to <4 x float>
  %i.ccl = extractelement <4 x float> %i.cck, i64 0
  store float %i.ccl, ptr %.35452.i.i, align 1, !tbaa !44
  %i.ccm = getelementptr inbounds nuw i8, ptr %.35452.i.i, i64 4 ; 2 uses
  %i.ccn = add nuw nsw i32 %.21667451.i.i, 1      ; 2 uses
  %exitcond637.not.i.i = icmp eq i32 %i.ccn, %5
  br i1 %exitcond637.not.i.i, label %.loopexit324.i.i, label %.lr.ph453.i.i, !llvm.loop !520

.loopexit332.i.i:                                 ; preds = %bb.ac
  br i1 %brmerge560.i.i, label %.loopexit324.i.i, label %.lr.ph457.i.i

.lr.ph457.i.i:                                    ; preds = %.loopexit332.i.i, %.lr.ph457.i.i
  %.37456.i.i = phi ptr [ %i.cdk, %.lr.ph457.i.i ], [ %.26478.i.i, %.loopexit332.i.i ] ; 2 uses
  %.01668455.i.i = phi i32 [ %i.cdl, %.lr.ph457.i.i ], [ 0, %.loopexit332.i.i ] ; 2 uses
  %i.cco = add nsw i32 %.01668455.i.i, %i.bbr     ; 2 uses
  %i.ccp = sdiv i32 %i.cco, %i.agv
  %i.ccq = srem i32 %i.cco, %i.agv                ; 2 uses
  %i.ccr = sdiv i32 %i.ccq, %6
  %i.ccs = srem i32 %i.ccq, %6
  %i.cct = mul i32 %i.ccr, %.scalar654.i.i
  %i.ccu = mul nsw i32 %i.ccs, %8
  %i.ccv = mul i32 %i.ccp, %i.bbh
  %i.ccw = add i32 %i.cct, %i.ccv
  %i.ccx = add i32 %i.ccw, %i.ccu
  %i.ccy = insertelement <4 x i32> poison, i32 %i.ccx, i64 0
  %i.ccz = shufflevector <4 x i32> %i.ccy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cda = add <4 x i32> %i.ccz, %i.brd
  %i.cdb = shl <4 x i32> %i.cda, splat (i32 3)
  %i.cdc = load ptr, ptr %0, align 8, !tbaa !32
  %i.cdd = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.cdc, <4 x i32> %i.cdb, <4 x i64> splat (i64 -1), i8 1)
  %i.cde = bitcast <4 x i64> %i.cdd to <8 x i32>
  %i.cdf = shufflevector <8 x i32> %i.cde, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.cdg = bitcast <8 x i32> %i.cdf to <4 x i64>
  %i.cdh = shufflevector <4 x i64> %i.cdg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cdi = bitcast <4 x i64> %i.cdh to <32 x i8>
  %i.cdj = add <32 x i8> %i.cdi, splat (i8 127)
  store <32 x i8> %i.cdj, ptr %.37456.i.i, align 1, !tbaa !44
  %i.cdk = getelementptr inbounds nuw i8, ptr %.37456.i.i, i64 32 ; 2 uses
  %i.cdl = add nuw nsw i32 %.01668455.i.i, 1      ; 2 uses
  %exitcond638.not.i.i = icmp eq i32 %i.cdl, %i.bbp
  br i1 %exitcond638.not.i.i, label %.loopexit324.i.i, label %.lr.ph457.i.i, !llvm.loop !521

.loopexit324.i.i:                                 ; preds = %.lr.ph457.i.i, %.lr.ph453.i.i, %bb.ab, %bb.aa, %.loopexit332.i.i, %.preheader331.i.i, %.loopexit326.i.i, %.preheader325.i.i
  %.38.i.i = phi ptr [ %.26478.i.i, %.loopexit332.i.i ], [ %.28.lcssa.i.i, %.preheader325.i.i ], [ %.26478.i.i, %.loopexit326.i.i ], [ %i.bxm, %bb.ab ], [ %i.bwj, %bb.aa ], [ %.34.lcssa.i.i, %.preheader331.i.i ], [ %i.ccm, %.lr.ph453.i.i ], [ %i.cdk, %.lr.ph457.i.i ] ; 2 uses
  %i.cdm = add nuw nsw i32 %.21641477.i.i, 4      ; 3 uses
  %i.cdn = or disjoint i32 %i.cdm, 3
  %i.cdo = icmp slt i32 %i.cdn, %3
  br i1 %i.cdo, label %bb.w, label %.preheader322.i.i, !llvm.loop !522

.preheader309.i.i:                                ; preds = %.loopexit311.i.i, %.preheader322.i.i
  %.31642.lcssa.i.i = phi i32 [ %.21641.lcssa.i.i, %.preheader322.i.i ], [ %i.csi, %.loopexit311.i.i ] ; 2 uses
  %.39.lcssa.i.i = phi ptr [ %.26.lcssa.i.i, %.preheader322.i.i ], [ %.52.i.i, %.loopexit311.i.i ]
  %i.cdp = icmp slt i32 %.31642.lcssa.i.i, %3
  br i1 %i.cdp, label %.lr.ph544.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph544.i.i:                                    ; preds = %.preheader309.i.i
  %i.cdq = mul i32 %i.agn, %11
  %i.cdr = icmp eq i32 %i.agp, 1
  %i.cds = icmp sgt i32 %5, 3
  %i.cdt = shufflevector <8 x i64> %i.aig, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cdu = and <2 x i64> %i.cdt, splat (i64 4294967295) ; 2 uses
  %i.cdv = shufflevector <4 x i32> %i.aih, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdw = insertelement <4 x i32> poison, i32 %i.agv, i64 0
  %i.cdx = shufflevector <4 x i32> %i.cdw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdy = shufflevector <8 x i64> %i.aiy, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cdz = and <2 x i64> %i.cdy, splat (i64 4294967295) ; 2 uses
  %i.cea = shufflevector <4 x i32> %i.aiz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ceb = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.cec = shufflevector <4 x i32> %i.ceb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ced = trunc i64 %i.l to i32
  %i.cee = insertelement <4 x i32> poison, i32 %i.ced, i64 0
  %i.cef = shufflevector <4 x i32> %i.cee, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ceg = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.ceh = shufflevector <4 x i32> %i.ceg, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar658.i.i = mul i32 %i.agn, %9            ; 5 uses
  %i.cei = insertelement <4 x i32> poison, i32 %.scalar658.i.i, i64 0
  %i.cej = shufflevector <4 x i32> %i.cei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cek = icmp ne i32 %i.agp, 8
  %18 = lshr i32 %5, 3
  %i.cel = icmp slt i32 %5, 8
  %i.cem = sdiv i32 %4, 8
  %brmerge567.i.i = or i1 %i.cel, %i.cek
  br label %bb.am

bb.ad:                                            ; preds = %.loopexit311.i.i, %.lr.ph521.i.i
  %.39520.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph521.i.i ], [ %.52.i.i, %.loopexit311.i.i ] ; 8 uses
  %.31642519.i.i = phi i32 [ %.21641.lcssa.i.i, %.lr.ph521.i.i ], [ %i.csi, %.loopexit311.i.i ] ; 2 uses
  %i.cen = add nsw i32 %.31642519.i.i, %2         ; 3 uses
  %i.ceo = sdiv i32 %i.cen, %i.agu
  %i.cep = add nsw i32 %i.cen, 1                  ; 2 uses
  %i.ceq = sdiv i32 %i.cep, %i.agu
  %i.cer = srem i32 %i.cen, %i.agu
  %i.ces = srem i32 %i.cep, %i.agu
  %i.cet = mul nsw i32 %i.cer, %10
  %i.ceu = mul nsw i32 %i.ces, %10
  %i.cev = mul i32 %i.ceo, %i.bpg                 ; 2 uses
  %i.cew = mul i32 %i.ceq, %i.bpg                 ; 2 uses
  %i.cex = add nsw i32 %i.cet, %i.cev             ; 12 uses
  %i.cey = add nsw i32 %i.ceu, %i.cew             ; 8 uses
  %i.cez = icmp eq i32 %i.cev, %i.cew
  %or.cond7.i.i = and i1 %i.g, %i.cez
  br i1 %or.cond7.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bph, label %.preheader315.i.i, label %.loopexit313.i.i

.preheader315.i.i:                                ; preds = %bb.ae
  br i1 %i.bpi, label %.lr.ph503.i.i, label %.preheader314.i.i

.lr.ph503.i.i:                                    ; preds = %.preheader315.i.i
  %i.cfa = insertelement <4 x i32> poison, i32 %i.cex, i64 0
  %i.cfb = shufflevector <4 x i32> %i.cfa, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.af

.preheader314.i.i:                                ; preds = %bb.af, %.preheader315.i.i
  %.01669.lcssa.i.i = phi i32 [ 0, %.preheader315.i.i ], [ %i.chg, %bb.af ] ; 3 uses
  %.40.lcssa.i.i = phi ptr [ %.39520.i.i, %.preheader315.i.i ], [ %i.chf, %bb.af ] ; 2 uses
  %i.cfc = or disjoint i32 %.01669.lcssa.i.i, 1
  %i.cfd = icmp slt i32 %i.cfc, %5
  br i1 %i.cfd, label %.lr.ph508.i.i, label %.preheader312.i.i

.lr.ph508.i.i:                                    ; preds = %.preheader314.i.i
  %i.cfe = sext i32 %i.cex to i64                 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph503.i.i
  %.40502.i.i = phi ptr [ %.39520.i.i, %.lr.ph503.i.i ], [ %i.chf, %bb.af ] ; 2 uses
  %.01669501.i.i = phi i32 [ 0, %.lr.ph503.i.i ], [ %i.chg, %bb.af ] ; 2 uses
  %i.cff = add nsw i32 %.01669501.i.i, %4
  %i.cfg = insertelement <4 x i32> poison, i32 %i.cff, i64 0
  %i.cfh = shufflevector <4 x i32> %i.cfg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cfi = add <4 x i32> %i.cfh, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cfj = bitcast <4 x i32> %i.cfi to <2 x i64>
  %i.cfk = bitcast <4 x i32> %i.cfi to <2 x i64>
  %i.cfl = and <2 x i64> %i.cfk, splat (i64 4294967295)
  %i.cfm = mul nuw <2 x i64> %i.cfl, %i.bpk
  %i.cfn = lshr <2 x i64> %i.cfm, splat (i64 32)
  %i.cfo = lshr <2 x i64> %i.cfj, splat (i64 32)
  %i.cfp = mul nuw <2 x i64> %i.cfo, %i.bpk
  %i.cfq = bitcast <2 x i64> %i.cfn to <8 x i16>
  %i.cfr = bitcast <2 x i64> %i.cfp to <8 x i16>
  %i.cfs = shufflevector <8 x i16> %i.cfq, <8 x i16> %i.cfr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cft = bitcast <8 x i16> %i.cfs to <4 x i32>  ; 2 uses
  %i.cfu = sub <4 x i32> %i.cfi, %i.cft
  %i.cfv = lshr <4 x i32> %i.cfu, %i.bpl
  %i.cfw = add <4 x i32> %i.cfv, %i.cft
  %i.cfx = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cfw, <4 x i32> %i.aii) ; 2 uses
  %i.cfy = mul <4 x i32> %i.cfx, %i.bpn
  %i.cfz = sub <4 x i32> %i.cfi, %i.cfy           ; 4 uses
  %i.cga = bitcast <4 x i32> %i.cfz to <2 x i64>
  %i.cgb = bitcast <4 x i32> %i.cfz to <2 x i64>
  %i.cgc = and <2 x i64> %i.cgb, splat (i64 4294967295)
  %i.cgd = mul nuw <2 x i64> %i.cgc, %i.bpp
  %i.cge = lshr <2 x i64> %i.cgd, splat (i64 32)
  %i.cgf = lshr <2 x i64> %i.cga, splat (i64 32)
  %i.cgg = mul nuw <2 x i64> %i.cgf, %i.bpp
  %i.cgh = bitcast <2 x i64> %i.cge to <8 x i16>
  %i.cgi = bitcast <2 x i64> %i.cgg to <8 x i16>
  %i.cgj = shufflevector <8 x i16> %i.cgh, <8 x i16> %i.cgi, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cgk = bitcast <8 x i16> %i.cgj to <4 x i32>  ; 2 uses
  %i.cgl = sub <4 x i32> %i.cfz, %i.cgk
  %i.cgm = lshr <4 x i32> %i.cgl, %i.bpq
  %i.cgn = add <4 x i32> %i.cgm, %i.cgk
  %i.cgo = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cgn, <4 x i32> %i.aja) ; 2 uses
  %i.cgp = mul <4 x i32> %i.cgo, %i.bps
  %i.cgq = sub <4 x i32> %i.cfz, %i.cgp
  %i.cgr = mul <4 x i32> %i.cfx, %i.bpv
  %i.cgs = mul <4 x i32> %i.cgq, %i.bpx
  %i.cgt = mul <4 x i32> %i.cgo, %i.bpz
  %i.cgu = add <4 x i32> %i.cgr, %i.cfb
  %i.cgv = add <4 x i32> %i.cgu, %i.cgt
  %i.cgw = add <4 x i32> %i.cgv, %i.cgs
  %i.cgx = load ptr, ptr %0, align 8, !tbaa !32
  %i.cgy = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cgx, <4 x i32> %i.cgw, <4 x i32> splat (i32 -1), i8 1)
  %i.cgz = trunc <4 x i32> %i.cgy to <4 x i16>
  %i.cha = bitcast <4 x i16> %i.cgz to <8 x i8>
  %i.chb = add <8 x i8> %i.cha, splat (i8 127)
  %i.chc = shufflevector <8 x i8> %i.chb, <8 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chd = bitcast <16 x i8> %i.chc to <2 x i64>
  %i.che = extractelement <2 x i64> %i.chd, i64 0
  store i64 %i.che, ptr %.40502.i.i, align 1, !tbaa !44
  %i.chf = getelementptr inbounds nuw i8, ptr %.40502.i.i, i64 8 ; 2 uses
  %i.chg = add nuw nsw i32 %.01669501.i.i, 4      ; 3 uses
  %i.chh = or disjoint i32 %i.chg, 3
  %i.chi = icmp slt i32 %i.chh, %5
  br i1 %i.chi, label %bb.af, label %.preheader314.i.i, !llvm.loop !523

.preheader312.i.i:                                ; preds = %bb.ag, %.preheader314.i.i
  %.11670.lcssa.i.i = phi i32 [ %.01669.lcssa.i.i, %.preheader314.i.i ], [ %i.ciy, %bb.ag ] ; 2 uses
  %.41.lcssa.i.i = phi ptr [ %.40.lcssa.i.i, %.preheader314.i.i ], [ %i.cix, %bb.ag ] ; 2 uses
  %i.chj = icmp slt i32 %.11670.lcssa.i.i, %5
  br i1 %i.chj, label %.lr.ph513.i.i, label %.loopexit311.i.i

.lr.ph513.i.i:                                    ; preds = %.preheader312.i.i
  %i.chk = sext i32 %i.cex to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph508.i.i
  %.41507.i.i = phi ptr [ %.40.lcssa.i.i, %.lr.ph508.i.i ], [ %i.cix, %bb.ag ] ; 5 uses
  %.11670506.i.i = phi i32 [ %.01669.lcssa.i.i, %.lr.ph508.i.i ], [ %i.ciy, %bb.ag ] ; 2 uses
  %i.chl = add nsw i32 %.11670506.i.i, %4         ; 3 uses
  %i.chm = sdiv i32 %i.chl, %i.agv
  %i.chn = add nsw i32 %i.chl, 1                  ; 2 uses
  %i.cho = sdiv i32 %i.chn, %i.agv
  %i.chp = srem i32 %i.chl, %i.agv                ; 2 uses
  %i.chq = srem i32 %i.chn, %i.agv                ; 2 uses
  %i.chr = sdiv i32 %i.chp, %6
  %i.chs = sdiv i32 %i.chq, %6
  %i.cht = srem i32 %i.chp, %6
  %i.chu = srem i32 %i.chq, %6
  %i.chv = sext i32 %i.chm to i64
  %i.chw = mul i64 %i.l, %i.chv
  %i.chx = mul i32 %i.chr, %.scalar656.i.i
  %i.chy = mul nsw i32 %i.cht, %8
  %i.chz = add nsw i32 %i.chy, %i.chx
  %i.cia = sext i32 %i.chz to i64
  %i.cib = sext i32 %i.cho to i64
  %i.cic = mul i64 %i.l, %i.cib
  %i.cid = mul i32 %i.chs, %.scalar656.i.i
  %i.cie = mul nsw i32 %i.chu, %8
  %i.cif = add nsw i32 %i.cie, %i.cid
  %i.cig = sext i32 %i.cif to i64
  %i.cih = load ptr, ptr %0, align 8, !tbaa !32   ; 2 uses
  %i.cii = getelementptr i8, ptr %i.cih, i64 %i.chw
  %i.cij = getelementptr i8, ptr %i.cii, i64 %i.cfe
  %i.cik = getelementptr i8, ptr %i.cij, i64 %i.cia ; 2 uses
  %i.cil = getelementptr i8, ptr %i.cih, i64 %i.cic
  %i.cim = getelementptr i8, ptr %i.cil, i64 %i.cfe
  %i.cin = getelementptr i8, ptr %i.cim, i64 %i.cig ; 2 uses
  %i.cio = load i8, ptr %i.cik, align 1, !tbaa !44
  store i8 %i.cio, ptr %.41507.i.i, align 1, !tbaa !44
  %i.cip = load i8, ptr %i.cin, align 1, !tbaa !44
  %i.ciq = getelementptr inbounds nuw i8, ptr %.41507.i.i, i64 1
  store i8 %i.cip, ptr %i.ciq, align 1, !tbaa !44
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cik, i64 1
  %i.cis = load i8, ptr %i.cir, align 1, !tbaa !44
  %i.cit = getelementptr inbounds nuw i8, ptr %.41507.i.i, i64 2
  store i8 %i.cis, ptr %i.cit, align 1, !tbaa !44
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cin, i64 1
  %i.civ = load i8, ptr %i.ciu, align 1, !tbaa !44
  %i.ciw = getelementptr inbounds nuw i8, ptr %.41507.i.i, i64 3
  store i8 %i.civ, ptr %i.ciw, align 1, !tbaa !44
  %i.cix = getelementptr inbounds nuw i8, ptr %.41507.i.i, i64 4 ; 2 uses
  %i.ciy = add nuw nsw i32 %.11670506.i.i, 2      ; 3 uses
  %i.ciz = or disjoint i32 %i.ciy, 1
  %i.cja = icmp slt i32 %i.ciz, %5
  br i1 %i.cja, label %bb.ag, label %.preheader312.i.i, !llvm.loop !524

bb.ah:                                            ; preds = %bb.ah, %.lr.ph513.i.i
  %.42512.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph513.i.i ], [ %i.cju, %bb.ah ] ; 3 uses
  %.21671511.i.i = phi i32 [ %.11670.lcssa.i.i, %.lr.ph513.i.i ], [ %i.cjv, %bb.ah ] ; 2 uses
  %i.cjb = add nsw i32 %.21671511.i.i, %4         ; 2 uses
  %i.cjc = sdiv i32 %i.cjb, %i.agv
  %i.cjd = srem i32 %i.cjb, %i.agv                ; 2 uses
  %i.cje = sdiv i32 %i.cjd, %6
  %i.cjf = srem i32 %i.cjd, %6
  %i.cjg = sext i32 %i.cjc to i64
  %i.cjh = mul i64 %i.l, %i.cjg
  %i.cji = mul i32 %i.cje, %.scalar656.i.i
  %i.cjj = mul nsw i32 %i.cjf, %8
  %i.cjk = add nsw i32 %i.cjj, %i.cji
  %i.cjl = sext i32 %i.cjk to i64
  %i.cjm = load ptr, ptr %0, align 8, !tbaa !32
  %i.cjn = getelementptr i8, ptr %i.cjm, i64 %i.cjh
  %i.cjo = getelementptr i8, ptr %i.cjn, i64 %i.chk
  %i.cjp = getelementptr i8, ptr %i.cjo, i64 %i.cjl ; 2 uses
  %i.cjq = load i8, ptr %i.cjp, align 1, !tbaa !44
  store i8 %i.cjq, ptr %.42512.i.i, align 1, !tbaa !44
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjp, i64 1
  %i.cjs = load i8, ptr %i.cjr, align 1, !tbaa !44
  %i.cjt = getelementptr inbounds nuw i8, ptr %.42512.i.i, i64 1
  store i8 %i.cjs, ptr %i.cjt, align 1, !tbaa !44
  %i.cju = getelementptr inbounds nuw i8, ptr %.42512.i.i, i64 2 ; 2 uses
  %i.cjv = add nuw nsw i32 %.21671511.i.i, 1      ; 2 uses
  %exitcond643.not.i.i = icmp eq i32 %i.cjv, %5
  br i1 %exitcond643.not.i.i, label %.loopexit311.i.i, label %bb.ah, !llvm.loop !525

.loopexit313.i.i:                                 ; preds = %bb.ae
  br i1 %brmerge563.i.i, label %.loopexit311.i.i, label %.lr.ph517.i.i
end_hunk_5
