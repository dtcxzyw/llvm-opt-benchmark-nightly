inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb1ELb1EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.mh = load <32 x i8>, ptr %i.ar, align 16
  %i.mi = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mh, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mi, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mk = bitcast <8 x i32> %i.mj to <32 x i8>
  %i.ml = shufflevector <32 x i8> %i.mk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mm = bitcast <32 x i8> %i.ml to <4 x i64>    ; 2 uses
  %i.mn = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mn, ptr %i.mg, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0123573, i64 180
  %i.mp = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mp, ptr %i.mo, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.0123573, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.mq, %i.af
  %i.mr = load <32 x i8>, ptr %i.aj, align 16
  %i.ms = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mr, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mt = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ms, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mu = bitcast <8 x i32> %i.mt to <32 x i8>
  %i.mv = shufflevector <32 x i8> %i.mu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mw = bitcast <32 x i8> %i.mv to <4 x i64>    ; 2 uses
  %i.mx = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mx, ptr %i.mq, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.0123573, i64 204
  %i.mz = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mz, ptr %i.my, align 1
  br i1 %.not162, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader562.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  %i.na = load <32 x i8>, ptr %i.ak, align 16
  %i.nb = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.na, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nb, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nd = bitcast <8 x i32> %i.nc to <32 x i8>
  %i.ne = shufflevector <32 x i8> %i.nd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nf = bitcast <32 x i8> %i.ne to <4 x i64>    ; 2 uses
  %i.ng = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ng, ptr %.sroa.0218, align 16
  %i.nh = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nh, ptr %.sroa.0218.12..sroa_idx35, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.0123573, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ni, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0218, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0218)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader562.preheader
  %i.nj = getelementptr inbounds nuw i8, ptr %.0123573, i64 216
  %i.nk = load <32 x i8>, ptr %i.ak, align 16
  %i.nl = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nn = bitcast <8 x i32> %i.nm to <32 x i8>
  %i.no = shufflevector <32 x i8> %i.nn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.np = bitcast <32 x i8> %i.no to <4 x i64>    ; 2 uses
  %i.nq = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nq, ptr %i.nj, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.0123573, i64 228
  %i.ns = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ns, ptr %i.nr, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.nt = getelementptr inbounds nuw i8, ptr %.0123573, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.ai, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread552, %bb.al, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.al ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread552 ] ; 8 uses
  %.3 = phi ptr [ %i.nt, %bb.al ], [ %.0123573, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jo, %.thread552 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.av, %i.ah
  br i1 %.not, label %.loopexit563, label %bb.k, !llvm.loop !879

.loopexit563:                                     ; preds = %bb.am
  %i.nu = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.nu, 0
  br i1 %.not150, label %.loopexit561, label %bb.an

bb.an:                                            ; preds = %.loopexit563
  %i.nv = ptrtoint ptr %i.ae to i64
  %i.nw = ptrtoint ptr %i.av to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = add nsw i64 %i.nx, %i.nu
  %i.nz = icmp sgt i64 %i.ny, 63
  br i1 %i.nz, label %.preheader560, label %.loopexit561

.preheader560:                                    ; preds = %bb.an
  %i.oa = and i64 %.2137.idx, 63
  %i.ob = icmp ne i64 %i.oa, 0
  %i.oc = icmp ult ptr %i.av, %i.ae
  %i.od = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %i.od, label %.lr.ph579, label %.loopexit561

.lr.ph579:                                        ; preds = %.preheader560, %.lr.ph579
  %.2126578 = phi ptr [ %i.oj, %.lr.ph579 ], [ %i.av, %.preheader560 ] ; 2 uses
  %.4139577.idx = phi i64 [ %.4139577.add, %.lr.ph579 ], [ %.2137.idx, %.preheader560 ] ; 2 uses
  %.4139577.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139577.idx
  %i.oe = load i8, ptr %.2126578, align 1
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1             ; 2 uses
  store i8 %i.oh, ptr %.4139577.ptr, align 1
  %i.oi = icmp ult i8 %i.oh, 64
  %.sroa.sel.idx = zext i1 %i.oi to i64
  %.4139577.add = add nsw i64 %.4139577.idx, %.sroa.sel.idx ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.2126578, i64 1 ; 3 uses
  %i.ok = and i64 %.4139577.add, 63
  %i.ol = icmp ne i64 %i.ok, 0
  %i.om = icmp ult ptr %i.oj, %i.ae
  %i.on = select i1 %i.ol, i1 %i.om, i1 false
  br i1 %i.on, label %.lr.ph579, label %.loopexit561, !llvm.loop !880

.loopexit561:                                     ; preds = %.lr.ph579, %.preheader560, %bb.an, %.loopexit563
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit563 ], [ %.2137.idx, %bb.an ], [ %.2137.idx, %.preheader560 ], [ %.4139577.add, %.lr.ph579 ] ; 2 uses
  %.3127 = phi ptr [ %i.av, %.loopexit563 ], [ %i.av, %bb.an ], [ %i.av, %.preheader560 ], [ %i.oj, %.lr.ph579 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151582 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151582, label %._crit_edge, label %.lr.ph585

.lr.ph585:                                        ; preds = %.loopexit561
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0213.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0213, i64 12
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph585, %bb.ar
  %i.op = phi ptr [ %i.oo, %.lr.ph585 ], [ %i.pu, %bb.ar ] ; 3 uses
  %.5584 = phi ptr [ %.3, %.lr.ph585 ], [ %i.pt, %bb.ar ] ; 7 uses
  %.0131583 = phi ptr [ %i.a, %.lr.ph585 ], [ %i.op, %bb.ar ] ; 2 uses
  %.not154 = icmp ult ptr %.5584, %i.af
  %i.oq = load <32 x i8>, ptr %.0131583, align 1
  %i.or = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oq, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.os = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.or, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ot = bitcast <8 x i32> %i.os to <32 x i8>
  %i.ou = shufflevector <32 x i8> %i.ot, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ov = bitcast <32 x i8> %i.ou to <4 x i64>    ; 2 uses
  %i.ow = shufflevector <4 x i64> %i.ov, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ow, ptr %.5584, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.5584, i64 12
  %i.oy = shufflevector <4 x i64> %i.ov, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.oy, ptr %i.ox, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %.0131583, i64 32 ; 2 uses
  br i1 %.not154, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0213)
  %i.pa = load <32 x i8>, ptr %i.oz, align 1
  %i.pb = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pa, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pb, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pd = bitcast <8 x i32> %i.pc to <32 x i8>
  %i.pe = shufflevector <32 x i8> %i.pd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pf = bitcast <32 x i8> %i.pe to <4 x i64>    ; 2 uses
  %i.pg = shufflevector <4 x i64> %i.pf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pg, ptr %.sroa.0213, align 16
  %i.ph = shufflevector <4 x i64> %i.pf, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ph, ptr %.sroa.0213.12..sroa_idx34, align 4
  %i.pi = getelementptr inbounds nuw i8, ptr %.5584, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pi, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0213, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.pj = getelementptr inbounds nuw i8, ptr %.5584, i64 24
  %i.pk = load <32 x i8>, ptr %i.oz, align 1
  %i.pl = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pm = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pn = bitcast <8 x i32> %i.pm to <32 x i8>
  %i.po = shufflevector <32 x i8> %i.pn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pp = bitcast <32 x i8> %i.po to <4 x i64>    ; 2 uses
  %i.pq = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pq, ptr %i.pj, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %.5584, i64 36
  %i.ps = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ps, ptr %i.pr, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pt = getelementptr inbounds nuw i8, ptr %.5584, i64 48 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.op, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.pu, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.ao, !llvm.loop !881

._crit_edge:                                      ; preds = %bb.ar, %bb.i, %bb.j, %.loopexit561
  %.5140.ptr637 = phi ptr [ %i.a, %bb.i ], [ %.5140.ptr, %.loopexit561 ], [ %i.a, %bb.j ], [ %.5140.ptr, %bb.ar ] ; 4 uses
  %.3127636 = phi ptr [ %2, %bb.i ], [ %.3127, %.loopexit561 ], [ %2, %bb.j ], [ %.3127, %bb.ar ] ; 4 uses
  %i.pv = phi ptr [ %i.ac, %bb.i ], [ %i.ae, %.loopexit561 ], [ %i.ae, %bb.j ], [ %i.ae, %bb.ar ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.i ], [ %i.a, %.loopexit561 ], [ %i.a, %bb.j ], [ %i.op, %bb.ar ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.i ], [ %.3, %.loopexit561 ], [ %1, %bb.j ], [ %i.pt, %bb.ar ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.pw = ptrtoint ptr %.5140.ptr637 to i64       ; 5 uses
  %i.px = sub i64 %i.pw, %.pre-phi
  %i.py = and i64 %i.px, 63
  %.not152 = icmp eq i64 %i.py, 0
  br i1 %.not152, label %.loopexit, label %.preheader559

.preheader559:                                    ; preds = %._crit_edge
  %i.pz = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qa = icmp ult ptr %i.pz, %.5140.ptr637
  br i1 %i.qa, label %.lr.ph590.preheader, label %._crit_edge591

.lr.ph590.preheader:                              ; preds = %.preheader559
  %i.qb = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.pw, i64 %i.qb)
  %5 = add i64 %umax10, -5
  %6 = sub i64 %5, %.pre-phi                      ; 2 uses
  %i.qc = lshr i64 %6, 2
  %i.qd = add nuw nsw i64 %i.qc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 60
  br i1 %min.iters.check, label %.lr.ph590.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph590.preheader
  %i.qe = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.pw, i64 %i.qe)
  %i.qf = add i64 %umax, -5
  %i.qg = sub i64 %i.qf, %.pre-phi                ; 2 uses
  %i.qh = lshr i64 %i.qg, 2
  %i.qi = mul nuw i64 %i.qh, 3
  %i.qj = getelementptr i8, ptr %.5.lcssa, i64 %i.qi
  %scevgep = getelementptr i8, ptr %i.qj, i64 3
  %i.qk = and i64 %i.qg, -4
  %i.ql = getelementptr i8, ptr %.pre-phi.in, i64 %i.qk
  %scevgep9 = getelementptr i8, ptr %i.ql, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph590.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qd, 9223372036854775800     ; 4 uses
  %i.qm = shl i64 %n.vec, 2                       ; 2 uses
  %i.qn = getelementptr i8, ptr %i.pz, i64 %i.qm  ; 2 uses
  %i.qo = mul i64 %n.vec, 3
  %i.qp = getelementptr i8, ptr %.5.lcssa, i64 %i.qo ; 2 uses
  %i.qq = getelementptr i8, ptr %.pre-phi.in, i64 %i.qm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qr = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %i.qs = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep11.a = getelementptr i8, ptr %i.qs, i64 3
  %i.qt = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep12.a = getelementptr i8, ptr %i.qt, i64 6
  %i.qu = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep13.a = getelementptr i8, ptr %i.qu, i64 9
  %i.qv = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep14.a = getelementptr i8, ptr %i.qv, i64 12
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep15.a = getelementptr i8, ptr %i.qw, i64 15
  %i.qx = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep16.a = getelementptr i8, ptr %i.qx, i64 18
  %i.qy = getelementptr i8, ptr %.5.lcssa, i64 %i.qr
  %next.gep17.a = getelementptr i8, ptr %i.qy, i64 21
  %i.qz = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.qz
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !882 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ra = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rb = shl nuw nsw <8 x i32> %i.ra, splat (i32 18)
  %i.rc = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rd = shl nuw nsw <8 x i32> %i.rc, splat (i32 12)
  %i.re = add nuw nsw <8 x i32> %i.rd, %i.rb
  %i.rf = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.rg = shl nuw nsw <8 x i32> %i.rf, splat (i32 6)
  %i.rh = add nuw nsw <8 x i32> %i.re, %i.rg
  %i.ri = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rj = add nuw nsw <8 x i32> %i.rh, %i.ri
  %i.rk = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rj)
  %i.rl = lshr <8 x i32> %i.rk, splat (i32 8)
  %i.rm = trunc nuw <8 x i32> %i.rl to <8 x i24>  ; 8 uses
  %i.rn = extractelement <8 x i24> %i.rm, i64 0
  store i24 %i.rn, ptr %next.gep, align 1, !alias.scope !885, !noalias !882
  %i.ro = extractelement <8 x i24> %i.rm, i64 1
  store i24 %i.ro, ptr %next.gep11.a, align 1, !alias.scope !885, !noalias !882
  %i.rp = extractelement <8 x i24> %i.rm, i64 2
  store i24 %i.rp, ptr %next.gep12.a, align 1, !alias.scope !885, !noalias !882
  %i.rq = extractelement <8 x i24> %i.rm, i64 3
  store i24 %i.rq, ptr %next.gep13.a, align 1, !alias.scope !885, !noalias !882
  %i.rr = extractelement <8 x i24> %i.rm, i64 4
  store i24 %i.rr, ptr %next.gep14.a, align 1, !alias.scope !885, !noalias !882
  %i.rs = extractelement <8 x i24> %i.rm, i64 5
  store i24 %i.rs, ptr %next.gep15.a, align 1, !alias.scope !885, !noalias !882
  %i.rt = extractelement <8 x i24> %i.rm, i64 6
  store i24 %i.rt, ptr %next.gep16.a, align 1, !alias.scope !885, !noalias !882
  %i.ru = extractelement <8 x i24> %i.rm, i64 7
  store i24 %i.ru, ptr %next.gep17.a, align 1, !alias.scope !885, !noalias !882
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rv = icmp eq i64 %index.next, %n.vec
  br i1 %i.rv, label %middle.block, label %vector.body, !llvm.loop !887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qd, %n.vec
  br i1 %cmp.n, label %._crit_edge591, label %.lr.ph590.preheader24

.lr.ph590.preheader24:                            ; preds = %vector.memcheck, %.lr.ph590.preheader, %middle.block
  %.ph = phi ptr [ %i.pz, %vector.memcheck ], [ %i.pz, %.lr.ph590.preheader ], [ %i.qn, %middle.block ]
  %.6589.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph590.preheader ], [ %i.qp, %middle.block ]
  %.1132588.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph590.preheader ], [ %i.qq, %middle.block ]
  br label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.preheader24, %.lr.ph590
  %i.rw = phi ptr [ %i.se, %.lr.ph590 ], [ %.ph, %.lr.ph590.preheader24 ] ; 3 uses
  %.6589 = phi ptr [ %i.sd, %.lr.ph590 ], [ %.6589.ph, %.lr.ph590.preheader24 ] ; 2 uses
  %.1132588 = phi ptr [ %i.rw, %.lr.ph590 ], [ %.1132588.ph, %.lr.ph590.preheader24 ]
  %i.rx = load <4 x i8>, ptr %.1132588, align 1
  %i.ry = zext <4 x i8> %i.rx to <4 x i32>
  %i.rz = shl nuw nsw <4 x i32> %i.ry, <i32 18, i32 12, i32 6, i32 0>
  %i.sa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.rz)
  %i.sb = call i32 @llvm.bswap.i32(i32 %i.sa)
  %i.sc = lshr i32 %i.sb, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.sc to i24
  store i24 %.0.extract.trunc6, ptr %.6589, align 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.6589, i64 3 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 4 ; 3 uses
  %i.sf = icmp ult ptr %i.se, %.5140.ptr637
  br i1 %i.sf, label %.lr.ph590, label %._crit_edge591, !llvm.loop !888

._crit_edge591:                                   ; preds = %.lr.ph590, %middle.block, %.preheader559
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader559 ], [ %i.qq, %middle.block ], [ %i.rw, %.lr.ph590 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader559 ], [ %i.qp, %middle.block ], [ %i.sd, %.lr.ph590 ] ; 3 uses
  %.lcssa564 = phi ptr [ %i.pz, %.preheader559 ], [ %i.qn, %middle.block ], [ %i.se, %.lr.ph590 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa564, %.5140.ptr637
  br i1 %.not153, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge591
  %i.sg = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sh = zext <4 x i8> %i.sg to <4 x i32>
  %i.si = shl nuw nsw <4 x i32> %i.sh, <i32 18, i32 12, i32 6, i32 0>
  %i.sj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.si)
  %i.sk = call i32 @llvm.bswap.i32(i32 %i.sj)
  %i.sl = lshr i32 %i.sk, 8
  %.0.extract.trunc = trunc nuw i32 %i.sl to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge591
  %.2133 = phi ptr [ %.lcssa564, %bb.as ], [ %.1132.lcssa, %._crit_edge591 ]
  %.7 = phi ptr [ %i.sm, %bb.as ], [ %.6.lcssa, %._crit_edge591 ] ; 3 uses
  %i.sn = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.so = sub i64 %i.pw, %i.sn
  %i.sp = trunc i64 %i.so to i32                  ; 4 uses
  %i.sq = icmp sgt i32 %i.sp, 0
  br i1 %i.sq, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.at
  %i.sr = trunc i64 %i.pw to i32
  %i.ss = trunc i64 %i.sn to i32
  %xtraiter = and i32 %i.sp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.av
  %.0596.prol = phi i32 [ %i.sz, %bb.av ], [ %i.sp, %.preheader.preheader ]
  %.4128595.prol = phi ptr [ %i.st, %bb.av ], [ %.3127636, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.av ], [ 0, %.preheader.preheader ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.prol
  %.5129.prol = phi ptr [ %i.st, %bb.au ], [ %.4128595.prol, %.preheader.prol ]
  %i.st = getelementptr inbounds i8, ptr %.5129.prol, i64 -1 ; 5 uses
  %i.su = load i8, ptr %i.st, align 1
  %i.sv = zext i8 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1
  %i.sy = icmp ugt i8 %i.sx, 63
  br i1 %i.sy, label %bb.au, label %bb.av, !llvm.loop !889

bb.av:                                            ; preds = %bb.au
  %i.sz = add nsw i32 %.0596.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !890

.preheader.prol.loopexit:                         ; preds = %bb.av, %.preheader.preheader
  %.0596.unr = phi i32 [ %i.sp, %.preheader.preheader ], [ %i.sz, %bb.av ]
  %.4128595.unr = phi ptr [ %.3127636, %.preheader.preheader ], [ %i.st, %bb.av ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.st, %bb.av ]
  %i.ta = sub i32 %i.ss, %i.sr
  %i.tb = icmp ugt i32 %i.ta, -4
  br i1 %i.tb, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.ax
  %.0596 = phi i32 [ %i.ua, %bb.ax ], [ %.0596.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128595 = phi ptr [ %i.tu, %bb.ax ], [ %.4128595.unr, %.preheader.prol.loopexit ]
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.aw
  %.5129 = phi ptr [ %i.tc, %bb.aw ], [ %.4128595, %.preheader ]
  %i.tc = getelementptr inbounds i8, ptr %.5129, i64 -1 ; 3 uses
  %i.td = load i8, ptr %i.tc, align 1
  %i.te = zext i8 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1
  %i.th = icmp ugt i8 %i.tg, 63
  br i1 %i.th, label %bb.aw, label %.preheader.1, !llvm.loop !889

.preheader.1:                                     ; preds = %bb.aw, %.preheader.1
  %.5129.1 = phi ptr [ %i.ti, %.preheader.1 ], [ %i.tc, %bb.aw ]
  %i.ti = getelementptr inbounds i8, ptr %.5129.1, i64 -1 ; 3 uses
  %i.tj = load i8, ptr %i.ti, align 1
end_hunk_0
begin_hunk_1_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb0ELb1EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  store <2 x i64> %i.nk, ptr %i.nd, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.0153671, i64 204
  %i.nm = shufflevector <4 x i64> %i.nj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nm, ptr %i.nl, align 1
  br i1 %.not201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader655.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0272)
  %i.nn = load <32 x i8>, ptr %i.ac, align 16
  %i.no = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nn, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.np = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.no, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nq = bitcast <8 x i32> %i.np to <32 x i8>
  %i.nr = shufflevector <32 x i8> %i.nq, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ns = bitcast <32 x i8> %i.nr to <4 x i64>    ; 2 uses
  %i.nt = shufflevector <4 x i64> %i.ns, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nt, ptr %.sroa.0272, align 16
  %i.nu = shufflevector <4 x i64> %i.ns, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nu, ptr %.sroa.0272.12..sroa_idx822, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %.0153671, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nv, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0272, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0272)
  br label %bb.am

bb.al:                                            ; preds = %.preheader655.preheader
  %i.nw = getelementptr inbounds nuw i8, ptr %.0153671, i64 216
  %i.nx = load <32 x i8>, ptr %i.ac, align 16
  %i.ny = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nx, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nz = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ny, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.oa = bitcast <8 x i32> %i.nz to <32 x i8>
  %i.ob = shufflevector <32 x i8> %i.oa, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.oc = bitcast <32 x i8> %i.ob to <4 x i64>    ; 2 uses
  %i.od = shufflevector <4 x i64> %i.oc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.od, ptr %i.nw, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.0153671, i64 228
  %i.of = shufflevector <4 x i64> %i.oc, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.of, ptr %i.oe, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.og = getelementptr inbounds nuw i8, ptr %.0153671, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.an

bb.an:                                            ; preds = %.thread627, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.am
  %.3174.idx = phi i64 [ 0, %.thread627 ], [ %.1172.add, %bb.am ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.kb, %.thread627 ], [ %i.og, %bb.am ], [ %.0153671, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not = icmp ugt ptr %i.an, %i.z
  br i1 %.not, label %.thread636, label %bb.i, !llvm.loop !892

.thread636:                                       ; preds = %bb.an
  %i.oh = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not202 = icmp eq i64 %i.oh, 0
  br i1 %.not202, label %.loopexit654, label %bb.ao

bb.ao:                                            ; preds = %.thread636
  %i.oi = ptrtoint ptr %i.w to i64
  %i.oj = ptrtoint ptr %i.an to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = add nsw i64 %i.ok, %i.oh
  %i.om = icmp sgt i64 %i.ol, 63
  br i1 %i.om, label %.preheader653, label %.loopexit654

.preheader653:                                    ; preds = %bb.ao
  %i.on = and i64 %.3174.idx, 63
  %i.oo = icmp ne i64 %i.on, 0
  %i.op = icmp ult ptr %i.an, %i.w
  %i.oq = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %i.oq, label %.lr.ph677, label %.loopexit654

.lr.ph677:                                        ; preds = %.preheader653, %bb.ap
  %.4158676 = phi ptr [ %i.pf, %bb.ap ], [ %i.an, %.preheader653 ] ; 3 uses
  %.6177675.idx = phi i64 [ %.6177675.add, %bb.ap ], [ %.3174.idx, %.preheader653 ] ; 2 uses
  %.6177675.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177675.idx
  %i.or = load i8, ptr %.4158676, align 1
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1             ; 3 uses
  store i8 %i.ou, ptr %.6177675.ptr, align 1
  %i.ov = icmp ult i8 %i.ou, 65
  br i1 %i.ov, label %bb.ap, label %.thread644

.thread644:                                       ; preds = %.lr.ph677
  %i.ow = ptrtoint ptr %.4158676 to i64
  %i.ox = ptrtoint ptr %2 to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = ptrtoint ptr %.4 to i64
  %i.pa = ptrtoint ptr %1 to i64
  %i.pb = sub i64 %i.oz, %i.pa
  store i32 7, ptr %0, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.oy, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.pb, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pe, align 8
  br label %bb.bg

bb.ap:                                            ; preds = %.lr.ph677
  %.not649 = icmp ne i8 %i.ou, 64
  %.sroa.sel.idx = zext i1 %.not649 to i64
  %.6177675.add = add nsw i64 %.6177675.idx, %.sroa.sel.idx ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.4158676, i64 1 ; 3 uses
  %i.pg = and i64 %.6177675.add, 63
  %i.ph = icmp ne i64 %i.pg, 0
  %i.pi = icmp ult ptr %i.pf, %i.w
  %i.pj = select i1 %i.ph, i1 %i.pi, i1 false
  br i1 %i.pj, label %.lr.ph677, label %.loopexit654, !llvm.loop !893

.loopexit654:                                     ; preds = %bb.ap, %.preheader653, %bb.ao, %.thread636
  %.8179.idx = phi i64 [ %.3174.idx, %.thread636 ], [ %.3174.idx, %bb.ao ], [ %.3174.idx, %.preheader653 ], [ %.6177675.add, %bb.ap ] ; 2 uses
  %.6160 = phi ptr [ %i.an, %.thread636 ], [ %i.an, %bb.ao ], [ %i.an, %.preheader653 ], [ %i.pf, %bb.ap ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not203680 = icmp slt i64 %.8179.idx, 64
  br i1 %.not203680, label %._crit_edge, label %.lr.ph683

.lr.ph683:                                        ; preds = %.loopexit654
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0267.12..sroa_idx821 = getelementptr inbounds nuw i8, ptr %.sroa.0267, i64 12
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph683, %bb.at
  %i.pl = phi ptr [ %i.pk, %.lr.ph683 ], [ %i.qq, %bb.at ] ; 3 uses
  %.7682 = phi ptr [ %.4, %.lr.ph683 ], [ %i.qp, %bb.at ] ; 7 uses
  %.0167681 = phi ptr [ %i.a, %.lr.ph683 ], [ %i.pl, %bb.at ] ; 2 uses
  %.not208 = icmp ult ptr %.7682, %i.x
  %i.pm = load <32 x i8>, ptr %.0167681, align 1
  %i.pn = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.po = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pp = bitcast <8 x i32> %i.po to <32 x i8>
  %i.pq = shufflevector <32 x i8> %i.pp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pr = bitcast <32 x i8> %i.pq to <4 x i64>    ; 2 uses
  %i.ps = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ps, ptr %.7682, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.7682, i64 12
  %i.pu = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pu, ptr %i.pt, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.0167681, i64 32 ; 2 uses
  br i1 %.not208, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0267)
  %i.pw = load <32 x i8>, ptr %i.pv, align 1
  %i.px = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pw, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.py = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.px, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pz = bitcast <8 x i32> %i.py to <32 x i8>
  %i.qa = shufflevector <32 x i8> %i.pz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qb = bitcast <32 x i8> %i.qa to <4 x i64>    ; 2 uses
  %i.qc = shufflevector <4 x i64> %i.qb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qc, ptr %.sroa.0267, align 16
  %i.qd = shufflevector <4 x i64> %i.qb, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qd, ptr %.sroa.0267.12..sroa_idx821, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %.7682, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qe, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0267, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0267)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qf = getelementptr inbounds nuw i8, ptr %.7682, i64 24
  %i.qg = load <32 x i8>, ptr %i.pv, align 1
  %i.qh = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qg, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qi = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qh, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qj = bitcast <8 x i32> %i.qi to <32 x i8>
  %i.qk = shufflevector <32 x i8> %i.qj, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ql = bitcast <32 x i8> %i.qk to <4 x i64>    ; 2 uses
  %i.qm = shufflevector <4 x i64> %i.ql, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qm, ptr %i.qf, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %.7682, i64 36
  %i.qo = shufflevector <4 x i64> %i.ql, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qo, ptr %i.qn, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qp = getelementptr inbounds nuw i8, ptr %.7682, i64 48 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pl, i64 64 ; 2 uses
  %.not203 = icmp ugt ptr %i.qq, %.8179.ptr
  br i1 %.not203, label %._crit_edge, label %bb.aq, !llvm.loop !894

._crit_edge:                                      ; preds = %bb.at, %bb.g, %bb.h, %.loopexit654
  %.8179.ptr755 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit654 ], [ %i.a, %bb.h ], [ %.8179.ptr, %bb.at ] ; 4 uses
  %.6160754 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit654 ], [ %2, %bb.h ], [ %.6160, %bb.at ] ; 4 uses
  %i.qr = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit654 ], [ %i.w, %bb.h ], [ %i.w, %bb.at ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit654 ], [ %i.a, %bb.h ], [ %i.pl, %bb.at ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit654 ], [ %1, %bb.h ], [ %i.qp, %bb.at ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.qs = ptrtoint ptr %.8179.ptr755 to i64       ; 5 uses
  %i.qt = sub i64 %i.qs, %.pre-phi
  %i.qu = and i64 %i.qt, 63
  %.not204 = icmp eq i64 %i.qu, 0
  br i1 %.not204, label %.loopexit, label %.preheader652

.preheader652:                                    ; preds = %._crit_edge
  %i.qv = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qw = icmp ult ptr %i.qv, %.8179.ptr755
  br i1 %i.qw, label %.lr.ph688.preheader, label %._crit_edge689

.lr.ph688.preheader:                              ; preds = %.preheader652
  %i.qx = add i64 %.pre-phi, 8
  %umax789 = call i64 @llvm.umax.i64(i64 %i.qs, i64 %i.qx)
  %7 = add i64 %umax789, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.qy = lshr i64 %8, 2
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph688.preheader803, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph688.preheader
  %i.ra = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.qs, i64 %i.ra)
  %i.rb = add i64 %umax, -5
  %i.rc = sub i64 %i.rb, %.pre-phi                ; 2 uses
  %i.rd = lshr i64 %i.rc, 2
  %i.re = mul nuw i64 %i.rd, 3
  %i.rf = getelementptr i8, ptr %.7.lcssa, i64 %i.re
  %scevgep = getelementptr i8, ptr %i.rf, i64 3
  %i.rg = and i64 %i.rc, -4
  %i.rh = getelementptr i8, ptr %.pre-phi.in, i64 %i.rg
  %scevgep788 = getelementptr i8, ptr %i.rh, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep788
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph688.preheader803, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qz, 9223372036854775800     ; 4 uses
  %i.ri = shl i64 %n.vec, 2                       ; 2 uses
  %i.rj = getelementptr i8, ptr %i.qv, i64 %i.ri  ; 2 uses
  %i.rk = mul i64 %n.vec, 3
  %i.rl = getelementptr i8, ptr %.7.lcssa, i64 %i.rk ; 2 uses
  %i.rm = getelementptr i8, ptr %.pre-phi.in, i64 %i.ri ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.rn = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %i.ro = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep790.a = getelementptr i8, ptr %i.ro, i64 3
  %i.rp = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep791.a = getelementptr i8, ptr %i.rp, i64 6
  %i.rq = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep792.a = getelementptr i8, ptr %i.rq, i64 9
  %i.rr = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep793.a = getelementptr i8, ptr %i.rr, i64 12
  %i.rs = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep794.a = getelementptr i8, ptr %i.rs, i64 15
  %i.rt = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep795.a = getelementptr i8, ptr %i.rt, i64 18
  %i.ru = getelementptr i8, ptr %.7.lcssa, i64 %i.rn
  %next.gep796.a = getelementptr i8, ptr %i.ru, i64 21
  %i.rv = shl i64 %index, 2
  %next.gep797 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rv
  %wide.vec = load <32 x i8>, ptr %next.gep797, align 1, !alias.scope !895 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec798.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec799.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec800 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.rw = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rx = shl nuw nsw <8 x i32> %i.rw, splat (i32 18)
  %i.ry = zext <8 x i8> %strided.vec798.a to <8 x i32>
  %i.rz = shl nuw nsw <8 x i32> %i.ry, splat (i32 12)
  %i.sa = add nuw nsw <8 x i32> %i.rz, %i.rx
  %i.sb = zext <8 x i8> %strided.vec799.a to <8 x i32>
  %i.sc = shl nuw nsw <8 x i32> %i.sb, splat (i32 6)
  %i.sd = add nuw nsw <8 x i32> %i.sa, %i.sc
  %i.se = zext <8 x i8> %strided.vec800 to <8 x i32>
  %i.sf = add nuw nsw <8 x i32> %i.sd, %i.se
  %i.sg = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sf)
  %i.sh = lshr <8 x i32> %i.sg, splat (i32 8)
  %i.si = trunc nuw <8 x i32> %i.sh to <8 x i24>  ; 8 uses
  %i.sj = extractelement <8 x i24> %i.si, i64 0
  store i24 %i.sj, ptr %next.gep, align 1, !alias.scope !898, !noalias !895
  %i.sk = extractelement <8 x i24> %i.si, i64 1
  store i24 %i.sk, ptr %next.gep790.a, align 1, !alias.scope !898, !noalias !895
  %i.sl = extractelement <8 x i24> %i.si, i64 2
  store i24 %i.sl, ptr %next.gep791.a, align 1, !alias.scope !898, !noalias !895
  %i.sm = extractelement <8 x i24> %i.si, i64 3
  store i24 %i.sm, ptr %next.gep792.a, align 1, !alias.scope !898, !noalias !895
  %i.sn = extractelement <8 x i24> %i.si, i64 4
  store i24 %i.sn, ptr %next.gep793.a, align 1, !alias.scope !898, !noalias !895
  %i.so = extractelement <8 x i24> %i.si, i64 5
  store i24 %i.so, ptr %next.gep794.a, align 1, !alias.scope !898, !noalias !895
  %i.sp = extractelement <8 x i24> %i.si, i64 6
  store i24 %i.sp, ptr %next.gep795.a, align 1, !alias.scope !898, !noalias !895
  %i.sq = extractelement <8 x i24> %i.si, i64 7
  store i24 %i.sq, ptr %next.gep796.a, align 1, !alias.scope !898, !noalias !895
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sr = icmp eq i64 %index.next, %n.vec
  br i1 %i.sr, label %middle.block, label %vector.body, !llvm.loop !900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qz, %n.vec
  br i1 %cmp.n, label %._crit_edge689, label %.lr.ph688.preheader803

.lr.ph688.preheader803:                           ; preds = %vector.memcheck, %.lr.ph688.preheader, %middle.block
  %.ph = phi ptr [ %i.qv, %vector.memcheck ], [ %i.qv, %.lr.ph688.preheader ], [ %i.rj, %middle.block ]
  %.8687.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph688.preheader ], [ %i.rl, %middle.block ]
  %.1168686.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph688.preheader ], [ %i.rm, %middle.block ]
  br label %.lr.ph688

.lr.ph688:                                        ; preds = %.lr.ph688.preheader803, %.lr.ph688
  %i.ss = phi ptr [ %i.ta, %.lr.ph688 ], [ %.ph, %.lr.ph688.preheader803 ] ; 3 uses
  %.8687 = phi ptr [ %i.sz, %.lr.ph688 ], [ %.8687.ph, %.lr.ph688.preheader803 ] ; 2 uses
  %.1168686 = phi ptr [ %i.ss, %.lr.ph688 ], [ %.1168686.ph, %.lr.ph688.preheader803 ]
  %i.st = load <4 x i8>, ptr %.1168686, align 1
  %i.su = zext <4 x i8> %i.st to <4 x i32>
  %i.sv = shl nuw nsw <4 x i32> %i.su, <i32 18, i32 12, i32 6, i32 0>
  %i.sw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sv)
  %i.sx = call i32 @llvm.bswap.i32(i32 %i.sw)
  %i.sy = lshr i32 %i.sx, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.sy to i24
  store i24 %.0.extract.trunc10, ptr %.8687, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %.8687, i64 3 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 4 ; 3 uses
  %i.tb = icmp ult ptr %i.ta, %.8179.ptr755
  br i1 %i.tb, label %.lr.ph688, label %._crit_edge689, !llvm.loop !901

._crit_edge689:                                   ; preds = %.lr.ph688, %middle.block, %.preheader652
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader652 ], [ %i.rm, %middle.block ], [ %i.ss, %.lr.ph688 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader652 ], [ %i.rl, %middle.block ], [ %i.sz, %.lr.ph688 ] ; 3 uses
  %.lcssa656 = phi ptr [ %i.qv, %.preheader652 ], [ %i.rj, %middle.block ], [ %i.ta, %.lr.ph688 ] ; 2 uses
  %.not205 = icmp ugt ptr %.lcssa656, %.8179.ptr755
  br i1 %.not205, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge689
  %i.tc = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.td = zext <4 x i8> %i.tc to <4 x i32>
  %i.te = shl nuw nsw <4 x i32> %i.td, <i32 18, i32 12, i32 6, i32 0>
  %i.tf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.te)
  %i.tg = call i32 @llvm.bswap.i32(i32 %i.tf)
  %i.th = lshr i32 %i.tg, 8
  %.0.extract.trunc = trunc nuw i32 %i.th to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge689
  %.2169 = phi ptr [ %.lcssa656, %bb.au ], [ %.1168.lcssa, %._crit_edge689 ]
  %.9 = phi ptr [ %i.ti, %bb.au ], [ %.8.lcssa, %._crit_edge689 ] ; 3 uses
  %i.tj = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.tk = sub i64 %i.qs, %i.tj
  %i.tl = trunc i64 %i.tk to i32                  ; 4 uses
  %i.tm = icmp sgt i32 %i.tl, 0
  br i1 %i.tm, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.av
  %i.tn = trunc i64 %i.qs to i32
  %i.to = trunc i64 %i.tj to i32
  %xtraiter = and i32 %i.tl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ax
  %.0694.prol = phi i32 [ %i.tv, %bb.ax ], [ %i.tl, %.preheader.preheader ]
  %.7161693.prol = phi ptr [ %i.tp, %bb.ax ], [ %.6160754, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.ax ], [ 0, %.preheader.preheader ]
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.prol
  %.8162.prol = phi ptr [ %i.tp, %bb.aw ], [ %.7161693.prol, %.preheader.prol ]
  %i.tp = getelementptr inbounds i8, ptr %.8162.prol, i64 -1 ; 5 uses
  %i.tq = load i8, ptr %i.tp, align 1
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = icmp eq i8 %i.tt, 64
  br i1 %i.tu, label %bb.aw, label %bb.ax, !llvm.loop !902

bb.ax:                                            ; preds = %bb.aw
  %i.tv = add nsw i32 %.0694.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !903

.preheader.prol.loopexit:                         ; preds = %bb.ax, %.preheader.preheader
  %.0694.unr = phi i32 [ %i.tl, %.preheader.preheader ], [ %i.tv, %bb.ax ]
  %.7161693.unr = phi ptr [ %.6160754, %.preheader.preheader ], [ %i.tp, %bb.ax ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.tp, %bb.ax ]
  %i.tw = sub i32 %i.to, %i.tn
  %i.tx = icmp ugt i32 %i.tw, -4
  br i1 %i.tx, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.az
  %.0694 = phi i32 [ %i.uw, %bb.az ], [ %.0694.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161693 = phi ptr [ %i.uq, %bb.az ], [ %.7161693.unr, %.preheader.prol.loopexit ]
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader, %bb.ay
  %.8162 = phi ptr [ %i.ty, %bb.ay ], [ %.7161693, %.preheader ]
  %i.ty = getelementptr inbounds i8, ptr %.8162, i64 -1 ; 3 uses
  %i.tz = load i8, ptr %i.ty, align 1
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1
  %i.ud = icmp eq i8 %i.uc, 64
  br i1 %i.ud, label %bb.ay, label %.preheader.1, !llvm.loop !902

.preheader.1:                                     ; preds = %bb.ay, %.preheader.1
  %.8162.1 = phi ptr [ %i.ue, %.preheader.1 ], [ %i.ty, %bb.ay ]
  %i.ue = getelementptr inbounds i8, ptr %.8162.1, i64 -1 ; 3 uses
  %i.uf = load i8, ptr %i.ue, align 1
end_hunk_1
begin_hunk_2_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb1ELb1ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.mf = load <32 x i8>, ptr %i.ar, align 16
  %i.mg = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mf, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mg, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mi = bitcast <8 x i32> %i.mh to <32 x i8>
  %i.mj = shufflevector <32 x i8> %i.mi, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mk = bitcast <32 x i8> %i.mj to <4 x i64>    ; 2 uses
  %i.ml = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ml, ptr %i.me, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.0123565, i64 180
  %i.mn = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mn, ptr %i.mm, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0123565, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.mo, %i.af
  %i.mp = load <32 x i8>, ptr %i.aj, align 16
  %i.mq = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mp, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mr = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mq, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ms = bitcast <8 x i32> %i.mr to <32 x i8>
  %i.mt = shufflevector <32 x i8> %i.ms, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mu = bitcast <32 x i8> %i.mt to <4 x i64>    ; 2 uses
  %i.mv = shufflevector <4 x i64> %i.mu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mv, ptr %i.mo, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0123565, i64 204
  %i.mx = shufflevector <4 x i64> %i.mu, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mx, ptr %i.mw, align 1
  br i1 %.not162, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader554.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  %i.my = load <32 x i8>, ptr %i.ak, align 16
  %i.mz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.my, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.na = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nb = bitcast <8 x i32> %i.na to <32 x i8>
  %i.nc = shufflevector <32 x i8> %i.nb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nd = bitcast <32 x i8> %i.nc to <4 x i64>    ; 2 uses
  %i.ne = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ne, ptr %.sroa.0218, align 16
  %i.nf = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nf, ptr %.sroa.0218.12..sroa_idx35, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.0123565, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ng, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0218, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0218)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader554.preheader
  %i.nh = getelementptr inbounds nuw i8, ptr %.0123565, i64 216
  %i.ni = load <32 x i8>, ptr %i.ak, align 16
  %i.nj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ni, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nk = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nl = bitcast <8 x i32> %i.nk to <32 x i8>
  %i.nm = shufflevector <32 x i8> %i.nl, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nn = bitcast <32 x i8> %i.nm to <4 x i64>    ; 2 uses
  %i.no = shufflevector <4 x i64> %i.nn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.no, ptr %i.nh, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %.0123565, i64 228
  %i.nq = shufflevector <4 x i64> %i.nn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nq, ptr %i.np, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.nr = getelementptr inbounds nuw i8, ptr %.0123565, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.ai, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread544, %bb.al, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.al ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread544 ] ; 8 uses
  %.3 = phi ptr [ %i.nr, %bb.al ], [ %.0123565, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jm, %.thread544 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.av, %i.ah
  br i1 %.not, label %.loopexit555, label %bb.k, !llvm.loop !908

.loopexit555:                                     ; preds = %bb.am
  %i.ns = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.ns, 0
  br i1 %.not150, label %.loopexit553, label %bb.an

bb.an:                                            ; preds = %.loopexit555
  %i.nt = ptrtoint ptr %i.ae to i64
  %i.nu = ptrtoint ptr %i.av to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = add nsw i64 %i.nv, %i.ns
  %i.nx = icmp sgt i64 %i.nw, 63
  br i1 %i.nx, label %.preheader552, label %.loopexit553

.preheader552:                                    ; preds = %bb.an
  %i.ny = and i64 %.2137.idx, 63
  %i.nz = icmp ne i64 %i.ny, 0
  %i.oa = icmp ult ptr %i.av, %i.ae
  %i.ob = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %i.ob, label %.lr.ph571, label %.loopexit553

.lr.ph571:                                        ; preds = %.preheader552, %.lr.ph571
  %.2126570 = phi ptr [ %i.oh, %.lr.ph571 ], [ %i.av, %.preheader552 ] ; 2 uses
  %.4139569.idx = phi i64 [ %.4139569.add, %.lr.ph571 ], [ %.2137.idx, %.preheader552 ] ; 2 uses
  %.4139569.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139569.idx
  %i.oc = load i8, ptr %.2126570, align 1
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1             ; 2 uses
  store i8 %i.of, ptr %.4139569.ptr, align 1
  %i.og = icmp ult i8 %i.of, 64
  %.sroa.sel.idx = zext i1 %i.og to i64
  %.4139569.add = add nsw i64 %.4139569.idx, %.sroa.sel.idx ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.2126570, i64 1 ; 3 uses
  %i.oi = and i64 %.4139569.add, 63
  %i.oj = icmp ne i64 %i.oi, 0
  %i.ok = icmp ult ptr %i.oh, %i.ae
  %i.ol = select i1 %i.oj, i1 %i.ok, i1 false
  br i1 %i.ol, label %.lr.ph571, label %.loopexit553, !llvm.loop !909

.loopexit553:                                     ; preds = %.lr.ph571, %.preheader552, %bb.an, %.loopexit555
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit555 ], [ %.2137.idx, %bb.an ], [ %.2137.idx, %.preheader552 ], [ %.4139569.add, %.lr.ph571 ] ; 2 uses
  %.3127 = phi ptr [ %i.av, %.loopexit555 ], [ %i.av, %bb.an ], [ %i.av, %.preheader552 ], [ %i.oh, %.lr.ph571 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151574 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151574, label %._crit_edge, label %.lr.ph577

.lr.ph577:                                        ; preds = %.loopexit553
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0213.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0213, i64 12
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph577, %bb.ar
  %i.on = phi ptr [ %i.om, %.lr.ph577 ], [ %i.ps, %bb.ar ] ; 3 uses
  %.5576 = phi ptr [ %.3, %.lr.ph577 ], [ %i.pr, %bb.ar ] ; 7 uses
  %.0131575 = phi ptr [ %i.a, %.lr.ph577 ], [ %i.on, %bb.ar ] ; 2 uses
  %.not154 = icmp ult ptr %.5576, %i.af
  %i.oo = load <32 x i8>, ptr %.0131575, align 1
  %i.op = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oo, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.oq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.op, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.or = bitcast <8 x i32> %i.oq to <32 x i8>
  %i.os = shufflevector <32 x i8> %i.or, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ot = bitcast <32 x i8> %i.os to <4 x i64>    ; 2 uses
  %i.ou = shufflevector <4 x i64> %i.ot, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ou, ptr %.5576, align 1
  %i.ov = getelementptr inbounds nuw i8, ptr %.5576, i64 12
  %i.ow = shufflevector <4 x i64> %i.ot, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ow, ptr %i.ov, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.0131575, i64 32 ; 2 uses
  br i1 %.not154, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0213)
  %i.oy = load <32 x i8>, ptr %i.ox, align 1
  %i.oz = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oy, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pa = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.oz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pb = bitcast <8 x i32> %i.pa to <32 x i8>
  %i.pc = shufflevector <32 x i8> %i.pb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pd = bitcast <32 x i8> %i.pc to <4 x i64>    ; 2 uses
  %i.pe = shufflevector <4 x i64> %i.pd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pe, ptr %.sroa.0213, align 16
  %i.pf = shufflevector <4 x i64> %i.pd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pf, ptr %.sroa.0213.12..sroa_idx34, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.5576, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pg, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0213, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ph = getelementptr inbounds nuw i8, ptr %.5576, i64 24
  %i.pi = load <32 x i8>, ptr %i.ox, align 1
  %i.pj = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pi, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pk = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pl = bitcast <8 x i32> %i.pk to <32 x i8>
  %i.pm = shufflevector <32 x i8> %i.pl, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pn = bitcast <32 x i8> %i.pm to <4 x i64>    ; 2 uses
  %i.po = shufflevector <4 x i64> %i.pn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.po, ptr %i.ph, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.5576, i64 36
  %i.pq = shufflevector <4 x i64> %i.pn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pq, ptr %i.pp, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pr = getelementptr inbounds nuw i8, ptr %.5576, i64 48 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.on, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.ps, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.ao, !llvm.loop !910

._crit_edge:                                      ; preds = %bb.ar, %bb.i, %bb.j, %.loopexit553
  %.5140.ptr629 = phi ptr [ %i.a, %bb.i ], [ %.5140.ptr, %.loopexit553 ], [ %i.a, %bb.j ], [ %.5140.ptr, %bb.ar ] ; 4 uses
  %.3127628 = phi ptr [ %2, %bb.i ], [ %.3127, %.loopexit553 ], [ %2, %bb.j ], [ %.3127, %bb.ar ] ; 4 uses
  %i.pt = phi ptr [ %i.ac, %bb.i ], [ %i.ae, %.loopexit553 ], [ %i.ae, %bb.j ], [ %i.ae, %bb.ar ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.i ], [ %i.a, %.loopexit553 ], [ %i.a, %bb.j ], [ %i.on, %bb.ar ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.i ], [ %.3, %.loopexit553 ], [ %1, %bb.j ], [ %i.pr, %bb.ar ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.pu = ptrtoint ptr %.5140.ptr629 to i64       ; 5 uses
  %i.pv = sub i64 %i.pu, %.pre-phi
  %i.pw = and i64 %i.pv, 63
  %.not152 = icmp eq i64 %i.pw, 0
  br i1 %.not152, label %.loopexit, label %.preheader551

.preheader551:                                    ; preds = %._crit_edge
  %i.px = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.py = icmp ult ptr %i.px, %.5140.ptr629
  br i1 %i.py, label %.lr.ph582.preheader, label %._crit_edge583

.lr.ph582.preheader:                              ; preds = %.preheader551
  %i.pz = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.pz)
  %5 = add i64 %umax10, -5
  %6 = sub i64 %5, %.pre-phi                      ; 2 uses
  %i.qa = lshr i64 %6, 2
  %i.qb = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 60
  br i1 %min.iters.check, label %.lr.ph582.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph582.preheader
  %i.qc = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.qc)
  %i.qd = add i64 %umax, -5
  %i.qe = sub i64 %i.qd, %.pre-phi                ; 2 uses
  %i.qf = lshr i64 %i.qe, 2
  %i.qg = mul nuw i64 %i.qf, 3
  %i.qh = getelementptr i8, ptr %.5.lcssa, i64 %i.qg
  %scevgep = getelementptr i8, ptr %i.qh, i64 3
  %i.qi = and i64 %i.qe, -4
  %i.qj = getelementptr i8, ptr %.pre-phi.in, i64 %i.qi
  %scevgep9 = getelementptr i8, ptr %i.qj, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph582.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qb, 9223372036854775800     ; 4 uses
  %i.qk = shl i64 %n.vec, 2                       ; 2 uses
  %i.ql = getelementptr i8, ptr %i.px, i64 %i.qk  ; 2 uses
  %i.qm = mul i64 %n.vec, 3
  %i.qn = getelementptr i8, ptr %.5.lcssa, i64 %i.qm ; 2 uses
  %i.qo = getelementptr i8, ptr %.pre-phi.in, i64 %i.qk ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qp = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %i.qq = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep11.a = getelementptr i8, ptr %i.qq, i64 3
  %i.qr = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep12.a = getelementptr i8, ptr %i.qr, i64 6
  %i.qs = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep13.a = getelementptr i8, ptr %i.qs, i64 9
  %i.qt = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep14.a = getelementptr i8, ptr %i.qt, i64 12
  %i.qu = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep15.a = getelementptr i8, ptr %i.qu, i64 15
  %i.qv = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep16.a = getelementptr i8, ptr %i.qv, i64 18
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep17.a = getelementptr i8, ptr %i.qw, i64 21
  %i.qx = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.qx
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !911 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.qy = zext <8 x i8> %strided.vec to <8 x i32>
  %i.qz = shl nuw nsw <8 x i32> %i.qy, splat (i32 18)
  %i.ra = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rb = shl nuw nsw <8 x i32> %i.ra, splat (i32 12)
  %i.rc = add nuw nsw <8 x i32> %i.rb, %i.qz
  %i.rd = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.re = shl nuw nsw <8 x i32> %i.rd, splat (i32 6)
  %i.rf = add nuw nsw <8 x i32> %i.rc, %i.re
  %i.rg = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rh = add nuw nsw <8 x i32> %i.rf, %i.rg
  %i.ri = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rh)
  %i.rj = lshr <8 x i32> %i.ri, splat (i32 8)
  %i.rk = trunc nuw <8 x i32> %i.rj to <8 x i24>  ; 8 uses
  %i.rl = extractelement <8 x i24> %i.rk, i64 0
  store i24 %i.rl, ptr %next.gep, align 1, !alias.scope !914, !noalias !911
  %i.rm = extractelement <8 x i24> %i.rk, i64 1
  store i24 %i.rm, ptr %next.gep11.a, align 1, !alias.scope !914, !noalias !911
  %i.rn = extractelement <8 x i24> %i.rk, i64 2
  store i24 %i.rn, ptr %next.gep12.a, align 1, !alias.scope !914, !noalias !911
  %i.ro = extractelement <8 x i24> %i.rk, i64 3
  store i24 %i.ro, ptr %next.gep13.a, align 1, !alias.scope !914, !noalias !911
  %i.rp = extractelement <8 x i24> %i.rk, i64 4
  store i24 %i.rp, ptr %next.gep14.a, align 1, !alias.scope !914, !noalias !911
  %i.rq = extractelement <8 x i24> %i.rk, i64 5
  store i24 %i.rq, ptr %next.gep15.a, align 1, !alias.scope !914, !noalias !911
  %i.rr = extractelement <8 x i24> %i.rk, i64 6
  store i24 %i.rr, ptr %next.gep16.a, align 1, !alias.scope !914, !noalias !911
  %i.rs = extractelement <8 x i24> %i.rk, i64 7
  store i24 %i.rs, ptr %next.gep17.a, align 1, !alias.scope !914, !noalias !911
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qb, %n.vec
  br i1 %cmp.n, label %._crit_edge583, label %.lr.ph582.preheader24

.lr.ph582.preheader24:                            ; preds = %vector.memcheck, %.lr.ph582.preheader, %middle.block
  %.ph = phi ptr [ %i.px, %vector.memcheck ], [ %i.px, %.lr.ph582.preheader ], [ %i.ql, %middle.block ]
  %.6581.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph582.preheader ], [ %i.qn, %middle.block ]
  %.1132580.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph582.preheader ], [ %i.qo, %middle.block ]
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader24, %.lr.ph582
  %i.ru = phi ptr [ %i.sc, %.lr.ph582 ], [ %.ph, %.lr.ph582.preheader24 ] ; 3 uses
  %.6581 = phi ptr [ %i.sb, %.lr.ph582 ], [ %.6581.ph, %.lr.ph582.preheader24 ] ; 2 uses
  %.1132580 = phi ptr [ %i.ru, %.lr.ph582 ], [ %.1132580.ph, %.lr.ph582.preheader24 ]
  %i.rv = load <4 x i8>, ptr %.1132580, align 1
  %i.rw = zext <4 x i8> %i.rv to <4 x i32>
  %i.rx = shl nuw nsw <4 x i32> %i.rw, <i32 18, i32 12, i32 6, i32 0>
  %i.ry = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.rx)
  %i.rz = call i32 @llvm.bswap.i32(i32 %i.ry)
  %i.sa = lshr i32 %i.rz, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.sa to i24
  store i24 %.0.extract.trunc6, ptr %.6581, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.6581, i64 3 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 4 ; 3 uses
  %i.sd = icmp ult ptr %i.sc, %.5140.ptr629
  br i1 %i.sd, label %.lr.ph582, label %._crit_edge583, !llvm.loop !917

._crit_edge583:                                   ; preds = %.lr.ph582, %middle.block, %.preheader551
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader551 ], [ %i.qo, %middle.block ], [ %i.ru, %.lr.ph582 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader551 ], [ %i.qn, %middle.block ], [ %i.sb, %.lr.ph582 ] ; 3 uses
  %.lcssa556 = phi ptr [ %i.px, %.preheader551 ], [ %i.ql, %middle.block ], [ %i.sc, %.lr.ph582 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa556, %.5140.ptr629
  br i1 %.not153, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge583
  %i.se = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sf = zext <4 x i8> %i.se to <4 x i32>
  %i.sg = shl nuw nsw <4 x i32> %i.sf, <i32 18, i32 12, i32 6, i32 0>
  %i.sh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sg)
  %i.si = call i32 @llvm.bswap.i32(i32 %i.sh)
  %i.sj = lshr i32 %i.si, 8
  %.0.extract.trunc = trunc nuw i32 %i.sj to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.sk = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge583
  %.2133 = phi ptr [ %.lcssa556, %bb.as ], [ %.1132.lcssa, %._crit_edge583 ]
  %.7 = phi ptr [ %i.sk, %bb.as ], [ %.6.lcssa, %._crit_edge583 ] ; 3 uses
  %i.sl = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.sm = sub i64 %i.pu, %i.sl
  %i.sn = trunc i64 %i.sm to i32                  ; 4 uses
  %i.so = icmp sgt i32 %i.sn, 0
  br i1 %i.so, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.at
  %i.sp = trunc i64 %i.pu to i32
  %i.sq = trunc i64 %i.sl to i32
  %xtraiter = and i32 %i.sn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.av
  %.0588.prol = phi i32 [ %i.sx, %bb.av ], [ %i.sn, %.preheader.preheader ]
  %.4128587.prol = phi ptr [ %i.sr, %bb.av ], [ %.3127628, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.av ], [ 0, %.preheader.preheader ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.prol
  %.5129.prol = phi ptr [ %i.sr, %bb.au ], [ %.4128587.prol, %.preheader.prol ]
  %i.sr = getelementptr inbounds i8, ptr %.5129.prol, i64 -1 ; 5 uses
  %i.ss = load i8, ptr %i.sr, align 1
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1
  %i.sw = icmp ugt i8 %i.sv, 63
  br i1 %i.sw, label %bb.au, label %bb.av, !llvm.loop !918

bb.av:                                            ; preds = %bb.au
  %i.sx = add nsw i32 %.0588.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !919

.preheader.prol.loopexit:                         ; preds = %bb.av, %.preheader.preheader
  %.0588.unr = phi i32 [ %i.sn, %.preheader.preheader ], [ %i.sx, %bb.av ]
  %.4128587.unr = phi ptr [ %.3127628, %.preheader.preheader ], [ %i.sr, %bb.av ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.sr, %bb.av ]
  %i.sy = sub i32 %i.sq, %i.sp
  %i.sz = icmp ugt i32 %i.sy, -4
  br i1 %i.sz, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.ax
  %.0588 = phi i32 [ %i.ty, %bb.ax ], [ %.0588.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128587 = phi ptr [ %i.ts, %bb.ax ], [ %.4128587.unr, %.preheader.prol.loopexit ]
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.aw
  %.5129 = phi ptr [ %i.ta, %bb.aw ], [ %.4128587, %.preheader ]
  %i.ta = getelementptr inbounds i8, ptr %.5129, i64 -1 ; 3 uses
  %i.tb = load i8, ptr %i.ta, align 1
  %i.tc = zext i8 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1
  %i.tf = icmp ugt i8 %i.te, 63
  br i1 %i.tf, label %bb.aw, label %.preheader.1, !llvm.loop !918

.preheader.1:                                     ; preds = %bb.aw, %.preheader.1
  %.5129.1 = phi ptr [ %i.tg, %.preheader.1 ], [ %i.ta, %bb.aw ]
  %i.tg = getelementptr inbounds i8, ptr %.5129.1, i64 -1 ; 3 uses
  %i.th = load i8, ptr %i.tg, align 1
end_hunk_2
begin_hunk_3_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb1ELb0ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  store <2 x i64> %i.ni, ptr %i.nb, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %.0153663, i64 204
  %i.nk = shufflevector <4 x i64> %i.nh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nk, ptr %i.nj, align 1
  br i1 %.not201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader647.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0272)
  %i.nl = load <32 x i8>, ptr %i.ac, align 16
  %i.nm = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nl, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nm, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.no = bitcast <8 x i32> %i.nn to <32 x i8>
  %i.np = shufflevector <32 x i8> %i.no, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nq = bitcast <32 x i8> %i.np to <4 x i64>    ; 2 uses
  %i.nr = shufflevector <4 x i64> %i.nq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nr, ptr %.sroa.0272, align 16
  %i.ns = shufflevector <4 x i64> %i.nq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ns, ptr %.sroa.0272.12..sroa_idx814, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.0153663, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nt, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0272, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0272)
  br label %bb.am

bb.al:                                            ; preds = %.preheader647.preheader
  %i.nu = getelementptr inbounds nuw i8, ptr %.0153663, i64 216
  %i.nv = load <32 x i8>, ptr %i.ac, align 16
  %i.nw = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nv, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nw, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ny = bitcast <8 x i32> %i.nx to <32 x i8>
  %i.nz = shufflevector <32 x i8> %i.ny, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.oa = bitcast <32 x i8> %i.nz to <4 x i64>    ; 2 uses
  %i.ob = shufflevector <4 x i64> %i.oa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ob, ptr %i.nu, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.0153663, i64 228
  %i.od = shufflevector <4 x i64> %i.oa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.od, ptr %i.oc, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oe = getelementptr inbounds nuw i8, ptr %.0153663, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.an

bb.an:                                            ; preds = %.thread619, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.am
  %.3174.idx = phi i64 [ 0, %.thread619 ], [ %.1172.add, %bb.am ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.jz, %.thread619 ], [ %i.oe, %bb.am ], [ %.0153663, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not = icmp ugt ptr %i.an, %i.z
  br i1 %.not, label %.thread628, label %bb.i, !llvm.loop !921

.thread628:                                       ; preds = %bb.an
  %i.of = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not202 = icmp eq i64 %i.of, 0
  br i1 %.not202, label %.loopexit646, label %bb.ao

bb.ao:                                            ; preds = %.thread628
  %i.og = ptrtoint ptr %i.w to i64
  %i.oh = ptrtoint ptr %i.an to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = add nsw i64 %i.oi, %i.of
  %i.ok = icmp sgt i64 %i.oj, 63
  br i1 %i.ok, label %.preheader645, label %.loopexit646

.preheader645:                                    ; preds = %bb.ao
  %i.ol = and i64 %.3174.idx, 63
  %i.om = icmp ne i64 %i.ol, 0
  %i.on = icmp ult ptr %i.an, %i.w
  %i.oo = select i1 %i.om, i1 %i.on, i1 false
  br i1 %i.oo, label %.lr.ph669, label %.loopexit646

.lr.ph669:                                        ; preds = %.preheader645, %bb.ap
  %.4158668 = phi ptr [ %i.pd, %bb.ap ], [ %i.an, %.preheader645 ] ; 3 uses
  %.6177667.idx = phi i64 [ %.6177667.add, %bb.ap ], [ %.3174.idx, %.preheader645 ] ; 2 uses
  %.6177667.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177667.idx
  %i.op = load i8, ptr %.4158668, align 1
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1             ; 3 uses
  store i8 %i.os, ptr %.6177667.ptr, align 1
  %i.ot = icmp ult i8 %i.os, 65
  br i1 %i.ot, label %bb.ap, label %.thread636

.thread636:                                       ; preds = %.lr.ph669
  %i.ou = ptrtoint ptr %.4158668 to i64
  %i.ov = ptrtoint ptr %2 to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = ptrtoint ptr %.4 to i64
  %i.oy = ptrtoint ptr %1 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  store i32 7, ptr %0, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oz, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pc, align 8
  br label %bb.bg

bb.ap:                                            ; preds = %.lr.ph669
  %.not641 = icmp ne i8 %i.os, 64
  %.sroa.sel.idx = zext i1 %.not641 to i64
  %.6177667.add = add nsw i64 %.6177667.idx, %.sroa.sel.idx ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.4158668, i64 1 ; 3 uses
  %i.pe = and i64 %.6177667.add, 63
  %i.pf = icmp ne i64 %i.pe, 0
  %i.pg = icmp ult ptr %i.pd, %i.w
  %i.ph = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %i.ph, label %.lr.ph669, label %.loopexit646, !llvm.loop !922

.loopexit646:                                     ; preds = %bb.ap, %.preheader645, %bb.ao, %.thread628
  %.8179.idx = phi i64 [ %.3174.idx, %.thread628 ], [ %.3174.idx, %bb.ao ], [ %.3174.idx, %.preheader645 ], [ %.6177667.add, %bb.ap ] ; 2 uses
  %.6160 = phi ptr [ %i.an, %.thread628 ], [ %i.an, %bb.ao ], [ %i.an, %.preheader645 ], [ %i.pd, %bb.ap ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not203672 = icmp slt i64 %.8179.idx, 64
  br i1 %.not203672, label %._crit_edge, label %.lr.ph675

.lr.ph675:                                        ; preds = %.loopexit646
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0267.12..sroa_idx813 = getelementptr inbounds nuw i8, ptr %.sroa.0267, i64 12
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph675, %bb.at
  %i.pj = phi ptr [ %i.pi, %.lr.ph675 ], [ %i.qo, %bb.at ] ; 3 uses
  %.7674 = phi ptr [ %.4, %.lr.ph675 ], [ %i.qn, %bb.at ] ; 7 uses
  %.0167673 = phi ptr [ %i.a, %.lr.ph675 ], [ %i.pj, %bb.at ] ; 2 uses
  %.not208 = icmp ult ptr %.7674, %i.x
  %i.pk = load <32 x i8>, ptr %.0167673, align 1
  %i.pl = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pm = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pn = bitcast <8 x i32> %i.pm to <32 x i8>
  %i.po = shufflevector <32 x i8> %i.pn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pp = bitcast <32 x i8> %i.po to <4 x i64>    ; 2 uses
  %i.pq = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pq, ptr %.7674, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %.7674, i64 12
  %i.ps = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ps, ptr %i.pr, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.0167673, i64 32 ; 2 uses
  br i1 %.not208, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0267)
  %i.pu = load <32 x i8>, ptr %i.pt, align 1
  %i.pv = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pu, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pw = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pv, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.px = bitcast <8 x i32> %i.pw to <32 x i8>
  %i.py = shufflevector <32 x i8> %i.px, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pz = bitcast <32 x i8> %i.py to <4 x i64>    ; 2 uses
  %i.qa = shufflevector <4 x i64> %i.pz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qa, ptr %.sroa.0267, align 16
  %i.qb = shufflevector <4 x i64> %i.pz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qb, ptr %.sroa.0267.12..sroa_idx813, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.7674, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qc, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0267, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0267)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qd = getelementptr inbounds nuw i8, ptr %.7674, i64 24
  %i.qe = load <32 x i8>, ptr %i.pt, align 1
  %i.qf = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qe, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qf, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qh = bitcast <8 x i32> %i.qg to <32 x i8>
  %i.qi = shufflevector <32 x i8> %i.qh, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>    ; 2 uses
  %i.qk = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qk, ptr %i.qd, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.7674, i64 36
  %i.qm = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qm, ptr %i.ql, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qn = getelementptr inbounds nuw i8, ptr %.7674, i64 48 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pj, i64 64 ; 2 uses
  %.not203 = icmp ugt ptr %i.qo, %.8179.ptr
  br i1 %.not203, label %._crit_edge, label %bb.aq, !llvm.loop !923

._crit_edge:                                      ; preds = %bb.at, %bb.g, %bb.h, %.loopexit646
  %.8179.ptr747 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit646 ], [ %i.a, %bb.h ], [ %.8179.ptr, %bb.at ] ; 4 uses
  %.6160746 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit646 ], [ %2, %bb.h ], [ %.6160, %bb.at ] ; 4 uses
  %i.qp = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit646 ], [ %i.w, %bb.h ], [ %i.w, %bb.at ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit646 ], [ %i.a, %bb.h ], [ %i.pj, %bb.at ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit646 ], [ %1, %bb.h ], [ %i.qn, %bb.at ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.qq = ptrtoint ptr %.8179.ptr747 to i64       ; 5 uses
  %i.qr = sub i64 %i.qq, %.pre-phi
  %i.qs = and i64 %i.qr, 63
  %.not204 = icmp eq i64 %i.qs, 0
  br i1 %.not204, label %.loopexit, label %.preheader644

.preheader644:                                    ; preds = %._crit_edge
  %i.qt = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qu = icmp ult ptr %i.qt, %.8179.ptr747
  br i1 %i.qu, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %.preheader644
  %i.qv = add i64 %.pre-phi, 8
  %umax781 = call i64 @llvm.umax.i64(i64 %i.qq, i64 %i.qv)
  %7 = add i64 %umax781, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.qw = lshr i64 %8, 2
  %i.qx = add nuw nsw i64 %i.qw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph680.preheader795, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph680.preheader
  %i.qy = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.qq, i64 %i.qy)
  %i.qz = add i64 %umax, -5
  %i.ra = sub i64 %i.qz, %.pre-phi                ; 2 uses
  %i.rb = lshr i64 %i.ra, 2
  %i.rc = mul nuw i64 %i.rb, 3
  %i.rd = getelementptr i8, ptr %.7.lcssa, i64 %i.rc
  %scevgep = getelementptr i8, ptr %i.rd, i64 3
  %i.re = and i64 %i.ra, -4
  %i.rf = getelementptr i8, ptr %.pre-phi.in, i64 %i.re
  %scevgep780 = getelementptr i8, ptr %i.rf, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep780
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph680.preheader795, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qx, 9223372036854775800     ; 4 uses
  %i.rg = shl i64 %n.vec, 2                       ; 2 uses
  %i.rh = getelementptr i8, ptr %i.qt, i64 %i.rg  ; 2 uses
  %i.ri = mul i64 %n.vec, 3
  %i.rj = getelementptr i8, ptr %.7.lcssa, i64 %i.ri ; 2 uses
  %i.rk = getelementptr i8, ptr %.pre-phi.in, i64 %i.rg ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.rl = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %i.rm = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep782.a = getelementptr i8, ptr %i.rm, i64 3
  %i.rn = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep783.a = getelementptr i8, ptr %i.rn, i64 6
  %i.ro = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep784.a = getelementptr i8, ptr %i.ro, i64 9
  %i.rp = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep785.a = getelementptr i8, ptr %i.rp, i64 12
  %i.rq = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep786.a = getelementptr i8, ptr %i.rq, i64 15
  %i.rr = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep787.a = getelementptr i8, ptr %i.rr, i64 18
  %i.rs = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep788.a = getelementptr i8, ptr %i.rs, i64 21
  %i.rt = shl i64 %index, 2
  %next.gep789 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rt
  %wide.vec = load <32 x i8>, ptr %next.gep789, align 1, !alias.scope !924 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec790.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec791.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec792 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ru = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rv = shl nuw nsw <8 x i32> %i.ru, splat (i32 18)
  %i.rw = zext <8 x i8> %strided.vec790.a to <8 x i32>
  %i.rx = shl nuw nsw <8 x i32> %i.rw, splat (i32 12)
  %i.ry = add nuw nsw <8 x i32> %i.rx, %i.rv
  %i.rz = zext <8 x i8> %strided.vec791.a to <8 x i32>
  %i.sa = shl nuw nsw <8 x i32> %i.rz, splat (i32 6)
  %i.sb = add nuw nsw <8 x i32> %i.ry, %i.sa
  %i.sc = zext <8 x i8> %strided.vec792 to <8 x i32>
  %i.sd = add nuw nsw <8 x i32> %i.sb, %i.sc
  %i.se = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sd)
  %i.sf = lshr <8 x i32> %i.se, splat (i32 8)
  %i.sg = trunc nuw <8 x i32> %i.sf to <8 x i24>  ; 8 uses
  %i.sh = extractelement <8 x i24> %i.sg, i64 0
  store i24 %i.sh, ptr %next.gep, align 1, !alias.scope !927, !noalias !924
  %i.si = extractelement <8 x i24> %i.sg, i64 1
  store i24 %i.si, ptr %next.gep782.a, align 1, !alias.scope !927, !noalias !924
  %i.sj = extractelement <8 x i24> %i.sg, i64 2
  store i24 %i.sj, ptr %next.gep783.a, align 1, !alias.scope !927, !noalias !924
  %i.sk = extractelement <8 x i24> %i.sg, i64 3
  store i24 %i.sk, ptr %next.gep784.a, align 1, !alias.scope !927, !noalias !924
  %i.sl = extractelement <8 x i24> %i.sg, i64 4
  store i24 %i.sl, ptr %next.gep785.a, align 1, !alias.scope !927, !noalias !924
  %i.sm = extractelement <8 x i24> %i.sg, i64 5
  store i24 %i.sm, ptr %next.gep786.a, align 1, !alias.scope !927, !noalias !924
  %i.sn = extractelement <8 x i24> %i.sg, i64 6
  store i24 %i.sn, ptr %next.gep787.a, align 1, !alias.scope !927, !noalias !924
  %i.so = extractelement <8 x i24> %i.sg, i64 7
  store i24 %i.so, ptr %next.gep788.a, align 1, !alias.scope !927, !noalias !924
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sp = icmp eq i64 %index.next, %n.vec
  br i1 %i.sp, label %middle.block, label %vector.body, !llvm.loop !929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qx, %n.vec
  br i1 %cmp.n, label %._crit_edge681, label %.lr.ph680.preheader795

.lr.ph680.preheader795:                           ; preds = %vector.memcheck, %.lr.ph680.preheader, %middle.block
  %.ph = phi ptr [ %i.qt, %vector.memcheck ], [ %i.qt, %.lr.ph680.preheader ], [ %i.rh, %middle.block ]
  %.8679.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph680.preheader ], [ %i.rj, %middle.block ]
  %.1168678.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph680.preheader ], [ %i.rk, %middle.block ]
  br label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.preheader795, %.lr.ph680
  %i.sq = phi ptr [ %i.sy, %.lr.ph680 ], [ %.ph, %.lr.ph680.preheader795 ] ; 3 uses
  %.8679 = phi ptr [ %i.sx, %.lr.ph680 ], [ %.8679.ph, %.lr.ph680.preheader795 ] ; 2 uses
  %.1168678 = phi ptr [ %i.sq, %.lr.ph680 ], [ %.1168678.ph, %.lr.ph680.preheader795 ]
  %i.sr = load <4 x i8>, ptr %.1168678, align 1
  %i.ss = zext <4 x i8> %i.sr to <4 x i32>
  %i.st = shl nuw nsw <4 x i32> %i.ss, <i32 18, i32 12, i32 6, i32 0>
  %i.su = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.st)
  %i.sv = call i32 @llvm.bswap.i32(i32 %i.su)
  %i.sw = lshr i32 %i.sv, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.sw to i24
  store i24 %.0.extract.trunc10, ptr %.8679, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.8679, i64 3 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 3 uses
  %i.sz = icmp ult ptr %i.sy, %.8179.ptr747
  br i1 %i.sz, label %.lr.ph680, label %._crit_edge681, !llvm.loop !930

._crit_edge681:                                   ; preds = %.lr.ph680, %middle.block, %.preheader644
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader644 ], [ %i.rk, %middle.block ], [ %i.sq, %.lr.ph680 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader644 ], [ %i.rj, %middle.block ], [ %i.sx, %.lr.ph680 ] ; 3 uses
  %.lcssa648 = phi ptr [ %i.qt, %.preheader644 ], [ %i.rh, %middle.block ], [ %i.sy, %.lr.ph680 ] ; 2 uses
  %.not205 = icmp ugt ptr %.lcssa648, %.8179.ptr747
  br i1 %.not205, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge681
  %i.ta = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.tb = zext <4 x i8> %i.ta to <4 x i32>
  %i.tc = shl nuw nsw <4 x i32> %i.tb, <i32 18, i32 12, i32 6, i32 0>
  %i.td = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tc)
  %i.te = call i32 @llvm.bswap.i32(i32 %i.td)
  %i.tf = lshr i32 %i.te, 8
  %.0.extract.trunc = trunc nuw i32 %i.tf to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge681
  %.2169 = phi ptr [ %.lcssa648, %bb.au ], [ %.1168.lcssa, %._crit_edge681 ]
  %.9 = phi ptr [ %i.tg, %bb.au ], [ %.8.lcssa, %._crit_edge681 ] ; 3 uses
  %i.th = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.ti = sub i64 %i.qq, %i.th
  %i.tj = trunc i64 %i.ti to i32                  ; 4 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.av
  %i.tl = trunc i64 %i.qq to i32
  %i.tm = trunc i64 %i.th to i32
  %xtraiter = and i32 %i.tj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ax
  %.0686.prol = phi i32 [ %i.tt, %bb.ax ], [ %i.tj, %.preheader.preheader ]
  %.7161685.prol = phi ptr [ %i.tn, %bb.ax ], [ %.6160746, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.ax ], [ 0, %.preheader.preheader ]
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.prol
  %.8162.prol = phi ptr [ %i.tn, %bb.aw ], [ %.7161685.prol, %.preheader.prol ]
  %i.tn = getelementptr inbounds i8, ptr %.8162.prol, i64 -1 ; 5 uses
  %i.to = load i8, ptr %i.tn, align 1
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = icmp eq i8 %i.tr, 64
  br i1 %i.ts, label %bb.aw, label %bb.ax, !llvm.loop !931

bb.ax:                                            ; preds = %bb.aw
  %i.tt = add nsw i32 %.0686.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !932

.preheader.prol.loopexit:                         ; preds = %bb.ax, %.preheader.preheader
  %.0686.unr = phi i32 [ %i.tj, %.preheader.preheader ], [ %i.tt, %bb.ax ]
  %.7161685.unr = phi ptr [ %.6160746, %.preheader.preheader ], [ %i.tn, %bb.ax ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.tn, %bb.ax ]
  %i.tu = sub i32 %i.tm, %i.tl
  %i.tv = icmp ugt i32 %i.tu, -4
  br i1 %i.tv, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.az
  %.0686 = phi i32 [ %i.uu, %bb.az ], [ %.0686.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161685 = phi ptr [ %i.uo, %bb.az ], [ %.7161685.unr, %.preheader.prol.loopexit ]
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader, %bb.ay
  %.8162 = phi ptr [ %i.tw, %bb.ay ], [ %.7161685, %.preheader ]
  %i.tw = getelementptr inbounds i8, ptr %.8162, i64 -1 ; 3 uses
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = icmp eq i8 %i.ua, 64
  br i1 %i.ub, label %bb.ay, label %.preheader.1, !llvm.loop !931

.preheader.1:                                     ; preds = %bb.ay, %.preheader.1
  %.8162.1 = phi ptr [ %i.uc, %.preheader.1 ], [ %i.tw, %bb.ay ]
  %i.uc = getelementptr inbounds i8, ptr %.8162.1, i64 -1 ; 3 uses
  %i.ud = load i8, ptr %i.uc, align 1
end_hunk_3
begin_hunk_4_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb1ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:.loopexit.i
  %i.mf = load <32 x i8>, ptr %i.ar, align 16
  %i.mg = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mf, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mg, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mi = bitcast <8 x i32> %i.mh to <32 x i8>
  %i.mj = shufflevector <32 x i8> %i.mi, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mk = bitcast <32 x i8> %i.mj to <4 x i64>    ; 2 uses
  %i.ml = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ml, ptr %i.me, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.0123565, i64 180
  %i.mn = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mn, ptr %i.mm, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0123565, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.mo, %i.af
  %i.mp = load <32 x i8>, ptr %i.aj, align 16
  %i.mq = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mp, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mr = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mq, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ms = bitcast <8 x i32> %i.mr to <32 x i8>
  %i.mt = shufflevector <32 x i8> %i.ms, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mu = bitcast <32 x i8> %i.mt to <4 x i64>    ; 2 uses
  %i.mv = shufflevector <4 x i64> %i.mu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mv, ptr %i.mo, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0123565, i64 204
  %i.mx = shufflevector <4 x i64> %i.mu, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mx, ptr %i.mw, align 1
  br i1 %.not162, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader554.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  %i.my = load <32 x i8>, ptr %i.ak, align 16
  %i.mz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.my, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.na = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nb = bitcast <8 x i32> %i.na to <32 x i8>
  %i.nc = shufflevector <32 x i8> %i.nb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nd = bitcast <32 x i8> %i.nc to <4 x i64>    ; 2 uses
  %i.ne = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ne, ptr %.sroa.0218, align 16
  %i.nf = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nf, ptr %.sroa.0218.12..sroa_idx35, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.0123565, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ng, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0218, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0218)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader554.preheader
  %i.nh = getelementptr inbounds nuw i8, ptr %.0123565, i64 216
  %i.ni = load <32 x i8>, ptr %i.ak, align 16
  %i.nj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ni, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nk = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nl = bitcast <8 x i32> %i.nk to <32 x i8>
  %i.nm = shufflevector <32 x i8> %i.nl, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nn = bitcast <32 x i8> %i.nm to <4 x i64>    ; 2 uses
  %i.no = shufflevector <4 x i64> %i.nn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.no, ptr %i.nh, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %.0123565, i64 228
  %i.nq = shufflevector <4 x i64> %i.nn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nq, ptr %i.np, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.nr = getelementptr inbounds nuw i8, ptr %.0123565, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.ai, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread544, %bb.al, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.al ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread544 ] ; 8 uses
  %.3 = phi ptr [ %i.nr, %bb.al ], [ %.0123565, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jm, %.thread544 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.av, %i.ah
  br i1 %.not, label %.loopexit555, label %bb.k, !llvm.loop !937

.loopexit555:                                     ; preds = %bb.am
  %i.ns = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.ns, 0
  br i1 %.not150, label %.loopexit553, label %bb.an

bb.an:                                            ; preds = %.loopexit555
  %i.nt = ptrtoint ptr %i.ae to i64
  %i.nu = ptrtoint ptr %i.av to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = add nsw i64 %i.nv, %i.ns
  %i.nx = icmp sgt i64 %i.nw, 63
  br i1 %i.nx, label %.preheader552, label %.loopexit553

.preheader552:                                    ; preds = %bb.an
  %i.ny = and i64 %.2137.idx, 63
  %i.nz = icmp ne i64 %i.ny, 0
  %i.oa = icmp ult ptr %i.av, %i.ae
  %i.ob = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %i.ob, label %.lr.ph571, label %.loopexit553

.lr.ph571:                                        ; preds = %.preheader552, %.lr.ph571
  %.2126570 = phi ptr [ %i.oh, %.lr.ph571 ], [ %i.av, %.preheader552 ] ; 2 uses
  %.4139569.idx = phi i64 [ %.4139569.add, %.lr.ph571 ], [ %.2137.idx, %.preheader552 ] ; 2 uses
  %.4139569.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139569.idx
  %i.oc = load i8, ptr %.2126570, align 1
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1             ; 2 uses
  store i8 %i.of, ptr %.4139569.ptr, align 1
  %i.og = icmp ult i8 %i.of, 64
  %.sroa.sel.idx = zext i1 %i.og to i64
  %.4139569.add = add nsw i64 %.4139569.idx, %.sroa.sel.idx ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.2126570, i64 1 ; 3 uses
  %i.oi = and i64 %.4139569.add, 63
  %i.oj = icmp ne i64 %i.oi, 0
  %i.ok = icmp ult ptr %i.oh, %i.ae
  %i.ol = select i1 %i.oj, i1 %i.ok, i1 false
  br i1 %i.ol, label %.lr.ph571, label %.loopexit553, !llvm.loop !938

.loopexit553:                                     ; preds = %.lr.ph571, %.preheader552, %bb.an, %.loopexit555
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit555 ], [ %.2137.idx, %bb.an ], [ %.2137.idx, %.preheader552 ], [ %.4139569.add, %.lr.ph571 ] ; 2 uses
  %.3127 = phi ptr [ %i.av, %.loopexit555 ], [ %i.av, %bb.an ], [ %i.av, %.preheader552 ], [ %i.oh, %.lr.ph571 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151574 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151574, label %._crit_edge, label %.lr.ph577

.lr.ph577:                                        ; preds = %.loopexit553
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0213.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0213, i64 12
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph577, %bb.ar
  %i.on = phi ptr [ %i.om, %.lr.ph577 ], [ %i.ps, %bb.ar ] ; 3 uses
  %.5576 = phi ptr [ %.3, %.lr.ph577 ], [ %i.pr, %bb.ar ] ; 7 uses
  %.0131575 = phi ptr [ %i.a, %.lr.ph577 ], [ %i.on, %bb.ar ] ; 2 uses
  %.not154 = icmp ult ptr %.5576, %i.af
  %i.oo = load <32 x i8>, ptr %.0131575, align 1
  %i.op = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oo, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.oq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.op, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.or = bitcast <8 x i32> %i.oq to <32 x i8>
  %i.os = shufflevector <32 x i8> %i.or, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ot = bitcast <32 x i8> %i.os to <4 x i64>    ; 2 uses
  %i.ou = shufflevector <4 x i64> %i.ot, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ou, ptr %.5576, align 1
  %i.ov = getelementptr inbounds nuw i8, ptr %.5576, i64 12
  %i.ow = shufflevector <4 x i64> %i.ot, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ow, ptr %i.ov, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.0131575, i64 32 ; 2 uses
  br i1 %.not154, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0213)
  %i.oy = load <32 x i8>, ptr %i.ox, align 1
  %i.oz = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oy, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pa = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.oz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pb = bitcast <8 x i32> %i.pa to <32 x i8>
  %i.pc = shufflevector <32 x i8> %i.pb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pd = bitcast <32 x i8> %i.pc to <4 x i64>    ; 2 uses
  %i.pe = shufflevector <4 x i64> %i.pd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pe, ptr %.sroa.0213, align 16
  %i.pf = shufflevector <4 x i64> %i.pd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pf, ptr %.sroa.0213.12..sroa_idx34, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.5576, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pg, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0213, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ph = getelementptr inbounds nuw i8, ptr %.5576, i64 24
  %i.pi = load <32 x i8>, ptr %i.ox, align 1
  %i.pj = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pi, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pk = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pl = bitcast <8 x i32> %i.pk to <32 x i8>
  %i.pm = shufflevector <32 x i8> %i.pl, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pn = bitcast <32 x i8> %i.pm to <4 x i64>    ; 2 uses
  %i.po = shufflevector <4 x i64> %i.pn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.po, ptr %i.ph, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.5576, i64 36
  %i.pq = shufflevector <4 x i64> %i.pn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pq, ptr %i.pp, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pr = getelementptr inbounds nuw i8, ptr %.5576, i64 48 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.on, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.ps, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.ao, !llvm.loop !939

._crit_edge:                                      ; preds = %bb.ar, %bb.i, %bb.j, %.loopexit553
  %.5140.ptr629 = phi ptr [ %i.a, %bb.i ], [ %.5140.ptr, %.loopexit553 ], [ %i.a, %bb.j ], [ %.5140.ptr, %bb.ar ] ; 4 uses
  %.3127628 = phi ptr [ %2, %bb.i ], [ %.3127, %.loopexit553 ], [ %2, %bb.j ], [ %.3127, %bb.ar ] ; 4 uses
  %i.pt = phi ptr [ %i.ac, %bb.i ], [ %i.ae, %.loopexit553 ], [ %i.ae, %bb.j ], [ %i.ae, %bb.ar ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.i ], [ %i.a, %.loopexit553 ], [ %i.a, %bb.j ], [ %i.on, %bb.ar ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.i ], [ %.3, %.loopexit553 ], [ %1, %bb.j ], [ %i.pr, %bb.ar ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.pu = ptrtoint ptr %.5140.ptr629 to i64       ; 5 uses
  %i.pv = sub i64 %i.pu, %.pre-phi
  %i.pw = and i64 %i.pv, 63
  %.not152 = icmp eq i64 %i.pw, 0
  br i1 %.not152, label %.loopexit, label %.preheader551

.preheader551:                                    ; preds = %._crit_edge
  %i.px = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.py = icmp ult ptr %i.px, %.5140.ptr629
  br i1 %i.py, label %.lr.ph582.preheader, label %._crit_edge583

.lr.ph582.preheader:                              ; preds = %.preheader551
  %i.pz = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.pz)
  %5 = add i64 %umax10, -5
  %6 = sub i64 %5, %.pre-phi                      ; 2 uses
  %i.qa = lshr i64 %6, 2
  %i.qb = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 60
  br i1 %min.iters.check, label %.lr.ph582.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph582.preheader
  %i.qc = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.qc)
  %i.qd = add i64 %umax, -5
  %i.qe = sub i64 %i.qd, %.pre-phi                ; 2 uses
  %i.qf = lshr i64 %i.qe, 2
  %i.qg = mul nuw i64 %i.qf, 3
  %i.qh = getelementptr i8, ptr %.5.lcssa, i64 %i.qg
  %scevgep = getelementptr i8, ptr %i.qh, i64 3
  %i.qi = and i64 %i.qe, -4
  %i.qj = getelementptr i8, ptr %.pre-phi.in, i64 %i.qi
  %scevgep9 = getelementptr i8, ptr %i.qj, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph582.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qb, 9223372036854775800     ; 4 uses
  %i.qk = shl i64 %n.vec, 2                       ; 2 uses
  %i.ql = getelementptr i8, ptr %i.px, i64 %i.qk  ; 2 uses
  %i.qm = mul i64 %n.vec, 3
  %i.qn = getelementptr i8, ptr %.5.lcssa, i64 %i.qm ; 2 uses
  %i.qo = getelementptr i8, ptr %.pre-phi.in, i64 %i.qk ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qp = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %i.qq = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep11.a = getelementptr i8, ptr %i.qq, i64 3
  %i.qr = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep12.a = getelementptr i8, ptr %i.qr, i64 6
  %i.qs = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep13.a = getelementptr i8, ptr %i.qs, i64 9
  %i.qt = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep14.a = getelementptr i8, ptr %i.qt, i64 12
  %i.qu = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep15.a = getelementptr i8, ptr %i.qu, i64 15
  %i.qv = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep16.a = getelementptr i8, ptr %i.qv, i64 18
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qp
  %next.gep17.a = getelementptr i8, ptr %i.qw, i64 21
  %i.qx = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.qx
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !940 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.qy = zext <8 x i8> %strided.vec to <8 x i32>
  %i.qz = shl nuw nsw <8 x i32> %i.qy, splat (i32 18)
  %i.ra = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rb = shl nuw nsw <8 x i32> %i.ra, splat (i32 12)
  %i.rc = add nuw nsw <8 x i32> %i.rb, %i.qz
  %i.rd = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.re = shl nuw nsw <8 x i32> %i.rd, splat (i32 6)
  %i.rf = add nuw nsw <8 x i32> %i.rc, %i.re
  %i.rg = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rh = add nuw nsw <8 x i32> %i.rf, %i.rg
  %i.ri = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rh)
  %i.rj = lshr <8 x i32> %i.ri, splat (i32 8)
  %i.rk = trunc nuw <8 x i32> %i.rj to <8 x i24>  ; 8 uses
  %i.rl = extractelement <8 x i24> %i.rk, i64 0
  store i24 %i.rl, ptr %next.gep, align 1, !alias.scope !943, !noalias !940
  %i.rm = extractelement <8 x i24> %i.rk, i64 1
  store i24 %i.rm, ptr %next.gep11.a, align 1, !alias.scope !943, !noalias !940
  %i.rn = extractelement <8 x i24> %i.rk, i64 2
  store i24 %i.rn, ptr %next.gep12.a, align 1, !alias.scope !943, !noalias !940
  %i.ro = extractelement <8 x i24> %i.rk, i64 3
  store i24 %i.ro, ptr %next.gep13.a, align 1, !alias.scope !943, !noalias !940
  %i.rp = extractelement <8 x i24> %i.rk, i64 4
  store i24 %i.rp, ptr %next.gep14.a, align 1, !alias.scope !943, !noalias !940
  %i.rq = extractelement <8 x i24> %i.rk, i64 5
  store i24 %i.rq, ptr %next.gep15.a, align 1, !alias.scope !943, !noalias !940
  %i.rr = extractelement <8 x i24> %i.rk, i64 6
  store i24 %i.rr, ptr %next.gep16.a, align 1, !alias.scope !943, !noalias !940
  %i.rs = extractelement <8 x i24> %i.rk, i64 7
  store i24 %i.rs, ptr %next.gep17.a, align 1, !alias.scope !943, !noalias !940
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !945

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qb, %n.vec
  br i1 %cmp.n, label %._crit_edge583, label %.lr.ph582.preheader24

.lr.ph582.preheader24:                            ; preds = %vector.memcheck, %.lr.ph582.preheader, %middle.block
  %.ph = phi ptr [ %i.px, %vector.memcheck ], [ %i.px, %.lr.ph582.preheader ], [ %i.ql, %middle.block ]
  %.6581.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph582.preheader ], [ %i.qn, %middle.block ]
  %.1132580.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph582.preheader ], [ %i.qo, %middle.block ]
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader24, %.lr.ph582
  %i.ru = phi ptr [ %i.sc, %.lr.ph582 ], [ %.ph, %.lr.ph582.preheader24 ] ; 3 uses
  %.6581 = phi ptr [ %i.sb, %.lr.ph582 ], [ %.6581.ph, %.lr.ph582.preheader24 ] ; 2 uses
  %.1132580 = phi ptr [ %i.ru, %.lr.ph582 ], [ %.1132580.ph, %.lr.ph582.preheader24 ]
  %i.rv = load <4 x i8>, ptr %.1132580, align 1
  %i.rw = zext <4 x i8> %i.rv to <4 x i32>
  %i.rx = shl nuw nsw <4 x i32> %i.rw, <i32 18, i32 12, i32 6, i32 0>
  %i.ry = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.rx)
  %i.rz = call i32 @llvm.bswap.i32(i32 %i.ry)
  %i.sa = lshr i32 %i.rz, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.sa to i24
  store i24 %.0.extract.trunc6, ptr %.6581, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.6581, i64 3 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 4 ; 3 uses
  %i.sd = icmp ult ptr %i.sc, %.5140.ptr629
  br i1 %i.sd, label %.lr.ph582, label %._crit_edge583, !llvm.loop !946

._crit_edge583:                                   ; preds = %.lr.ph582, %middle.block, %.preheader551
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader551 ], [ %i.qo, %middle.block ], [ %i.ru, %.lr.ph582 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader551 ], [ %i.qn, %middle.block ], [ %i.sb, %.lr.ph582 ] ; 3 uses
  %.lcssa556 = phi ptr [ %i.px, %.preheader551 ], [ %i.ql, %middle.block ], [ %i.sc, %.lr.ph582 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa556, %.5140.ptr629
  br i1 %.not153, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge583
  %i.se = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sf = zext <4 x i8> %i.se to <4 x i32>
  %i.sg = shl nuw nsw <4 x i32> %i.sf, <i32 18, i32 12, i32 6, i32 0>
  %i.sh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sg)
  %i.si = call i32 @llvm.bswap.i32(i32 %i.sh)
  %i.sj = lshr i32 %i.si, 8
  %.0.extract.trunc = trunc nuw i32 %i.sj to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.sk = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge583
  %.2133 = phi ptr [ %.lcssa556, %bb.as ], [ %.1132.lcssa, %._crit_edge583 ]
  %.7 = phi ptr [ %i.sk, %bb.as ], [ %.6.lcssa, %._crit_edge583 ] ; 3 uses
  %i.sl = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.sm = sub i64 %i.pu, %i.sl
  %i.sn = trunc i64 %i.sm to i32                  ; 4 uses
  %i.so = icmp sgt i32 %i.sn, 0
  br i1 %i.so, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.at
  %i.sp = trunc i64 %i.pu to i32
  %i.sq = trunc i64 %i.sl to i32
  %xtraiter = and i32 %i.sn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.av
  %.0588.prol = phi i32 [ %i.sx, %bb.av ], [ %i.sn, %.preheader.preheader ]
  %.4128587.prol = phi ptr [ %i.sr, %bb.av ], [ %.3127628, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.av ], [ 0, %.preheader.preheader ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.prol
  %.5129.prol = phi ptr [ %i.sr, %bb.au ], [ %.4128587.prol, %.preheader.prol ]
  %i.sr = getelementptr inbounds i8, ptr %.5129.prol, i64 -1 ; 5 uses
  %i.ss = load i8, ptr %i.sr, align 1
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1
  %i.sw = icmp ugt i8 %i.sv, 63
  br i1 %i.sw, label %bb.au, label %bb.av, !llvm.loop !947

bb.av:                                            ; preds = %bb.au
  %i.sx = add nsw i32 %.0588.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !948

.preheader.prol.loopexit:                         ; preds = %bb.av, %.preheader.preheader
  %.0588.unr = phi i32 [ %i.sn, %.preheader.preheader ], [ %i.sx, %bb.av ]
  %.4128587.unr = phi ptr [ %.3127628, %.preheader.preheader ], [ %i.sr, %bb.av ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.sr, %bb.av ]
  %i.sy = sub i32 %i.sq, %i.sp
  %i.sz = icmp ugt i32 %i.sy, -4
  br i1 %i.sz, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.ax
  %.0588 = phi i32 [ %i.ty, %bb.ax ], [ %.0588.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128587 = phi ptr [ %i.ts, %bb.ax ], [ %.4128587.unr, %.preheader.prol.loopexit ]
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.aw
  %.5129 = phi ptr [ %i.ta, %bb.aw ], [ %.4128587, %.preheader ]
  %i.ta = getelementptr inbounds i8, ptr %.5129, i64 -1 ; 3 uses
  %i.tb = load i8, ptr %i.ta, align 1
  %i.tc = zext i8 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1
  %i.tf = icmp ugt i8 %i.te, 63
  br i1 %i.tf, label %bb.aw, label %.preheader.1, !llvm.loop !947

.preheader.1:                                     ; preds = %bb.aw, %.preheader.1
  %.5129.1 = phi ptr [ %i.tg, %.preheader.1 ], [ %i.ta, %bb.aw ]
  %i.tg = getelementptr inbounds i8, ptr %.5129.1, i64 -1 ; 3 uses
  %i.th = load i8, ptr %i.tg, align 1
end_hunk_4
begin_hunk_5_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb0ELb0EcEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  store <2 x i64> %i.ni, ptr %i.nb, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %.0153663, i64 204
  %i.nk = shufflevector <4 x i64> %i.nh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nk, ptr %i.nj, align 1
  br i1 %.not201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader647.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0272)
  %i.nl = load <32 x i8>, ptr %i.ac, align 16
  %i.nm = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nl, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nm, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.no = bitcast <8 x i32> %i.nn to <32 x i8>
  %i.np = shufflevector <32 x i8> %i.no, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nq = bitcast <32 x i8> %i.np to <4 x i64>    ; 2 uses
  %i.nr = shufflevector <4 x i64> %i.nq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nr, ptr %.sroa.0272, align 16
  %i.ns = shufflevector <4 x i64> %i.nq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ns, ptr %.sroa.0272.12..sroa_idx814, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.0153663, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nt, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0272, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0272)
  br label %bb.am

bb.al:                                            ; preds = %.preheader647.preheader
  %i.nu = getelementptr inbounds nuw i8, ptr %.0153663, i64 216
  %i.nv = load <32 x i8>, ptr %i.ac, align 16
  %i.nw = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nv, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nw, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ny = bitcast <8 x i32> %i.nx to <32 x i8>
  %i.nz = shufflevector <32 x i8> %i.ny, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.oa = bitcast <32 x i8> %i.nz to <4 x i64>    ; 2 uses
  %i.ob = shufflevector <4 x i64> %i.oa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ob, ptr %i.nu, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.0153663, i64 228
  %i.od = shufflevector <4 x i64> %i.oa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.od, ptr %i.oc, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oe = getelementptr inbounds nuw i8, ptr %.0153663, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.an

bb.an:                                            ; preds = %.thread619, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.am
  %.3174.idx = phi i64 [ 0, %.thread619 ], [ %.1172.add, %bb.am ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.jz, %.thread619 ], [ %i.oe, %bb.am ], [ %.0153663, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not = icmp ugt ptr %i.an, %i.z
  br i1 %.not, label %.thread628, label %bb.i, !llvm.loop !950

.thread628:                                       ; preds = %bb.an
  %i.of = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not202 = icmp eq i64 %i.of, 0
  br i1 %.not202, label %.loopexit646, label %bb.ao

bb.ao:                                            ; preds = %.thread628
  %i.og = ptrtoint ptr %i.w to i64
  %i.oh = ptrtoint ptr %i.an to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = add nsw i64 %i.oi, %i.of
  %i.ok = icmp sgt i64 %i.oj, 63
  br i1 %i.ok, label %.preheader645, label %.loopexit646

.preheader645:                                    ; preds = %bb.ao
  %i.ol = and i64 %.3174.idx, 63
  %i.om = icmp ne i64 %i.ol, 0
  %i.on = icmp ult ptr %i.an, %i.w
  %i.oo = select i1 %i.om, i1 %i.on, i1 false
  br i1 %i.oo, label %.lr.ph669, label %.loopexit646

.lr.ph669:                                        ; preds = %.preheader645, %bb.ap
  %.4158668 = phi ptr [ %i.pd, %bb.ap ], [ %i.an, %.preheader645 ] ; 3 uses
  %.6177667.idx = phi i64 [ %.6177667.add, %bb.ap ], [ %.3174.idx, %.preheader645 ] ; 2 uses
  %.6177667.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177667.idx
  %i.op = load i8, ptr %.4158668, align 1
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1             ; 3 uses
  store i8 %i.os, ptr %.6177667.ptr, align 1
  %i.ot = icmp ult i8 %i.os, 65
  br i1 %i.ot, label %bb.ap, label %.thread636

.thread636:                                       ; preds = %.lr.ph669
  %i.ou = ptrtoint ptr %.4158668 to i64
  %i.ov = ptrtoint ptr %2 to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = ptrtoint ptr %.4 to i64
  %i.oy = ptrtoint ptr %1 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  store i32 7, ptr %0, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ow, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oz, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pc, align 8
  br label %bb.bg

bb.ap:                                            ; preds = %.lr.ph669
  %.not641 = icmp ne i8 %i.os, 64
  %.sroa.sel.idx = zext i1 %.not641 to i64
  %.6177667.add = add nsw i64 %.6177667.idx, %.sroa.sel.idx ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.4158668, i64 1 ; 3 uses
  %i.pe = and i64 %.6177667.add, 63
  %i.pf = icmp ne i64 %i.pe, 0
  %i.pg = icmp ult ptr %i.pd, %i.w
  %i.ph = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %i.ph, label %.lr.ph669, label %.loopexit646, !llvm.loop !951

.loopexit646:                                     ; preds = %bb.ap, %.preheader645, %bb.ao, %.thread628
  %.8179.idx = phi i64 [ %.3174.idx, %.thread628 ], [ %.3174.idx, %bb.ao ], [ %.3174.idx, %.preheader645 ], [ %.6177667.add, %bb.ap ] ; 2 uses
  %.6160 = phi ptr [ %i.an, %.thread628 ], [ %i.an, %bb.ao ], [ %i.an, %.preheader645 ], [ %i.pd, %bb.ap ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not203672 = icmp slt i64 %.8179.idx, 64
  br i1 %.not203672, label %._crit_edge, label %.lr.ph675

.lr.ph675:                                        ; preds = %.loopexit646
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0267.12..sroa_idx813 = getelementptr inbounds nuw i8, ptr %.sroa.0267, i64 12
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph675, %bb.at
  %i.pj = phi ptr [ %i.pi, %.lr.ph675 ], [ %i.qo, %bb.at ] ; 3 uses
  %.7674 = phi ptr [ %.4, %.lr.ph675 ], [ %i.qn, %bb.at ] ; 7 uses
  %.0167673 = phi ptr [ %i.a, %.lr.ph675 ], [ %i.pj, %bb.at ] ; 2 uses
  %.not208 = icmp ult ptr %.7674, %i.x
  %i.pk = load <32 x i8>, ptr %.0167673, align 1
  %i.pl = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pm = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pn = bitcast <8 x i32> %i.pm to <32 x i8>
  %i.po = shufflevector <32 x i8> %i.pn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pp = bitcast <32 x i8> %i.po to <4 x i64>    ; 2 uses
  %i.pq = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pq, ptr %.7674, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %.7674, i64 12
  %i.ps = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ps, ptr %i.pr, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.0167673, i64 32 ; 2 uses
  br i1 %.not208, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0267)
  %i.pu = load <32 x i8>, ptr %i.pt, align 1
  %i.pv = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pu, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pw = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pv, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.px = bitcast <8 x i32> %i.pw to <32 x i8>
  %i.py = shufflevector <32 x i8> %i.px, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pz = bitcast <32 x i8> %i.py to <4 x i64>    ; 2 uses
  %i.qa = shufflevector <4 x i64> %i.pz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qa, ptr %.sroa.0267, align 16
  %i.qb = shufflevector <4 x i64> %i.pz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qb, ptr %.sroa.0267.12..sroa_idx813, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.7674, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qc, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0267, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0267)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qd = getelementptr inbounds nuw i8, ptr %.7674, i64 24
  %i.qe = load <32 x i8>, ptr %i.pt, align 1
  %i.qf = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qe, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qf, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qh = bitcast <8 x i32> %i.qg to <32 x i8>
  %i.qi = shufflevector <32 x i8> %i.qh, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>    ; 2 uses
  %i.qk = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qk, ptr %i.qd, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.7674, i64 36
  %i.qm = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qm, ptr %i.ql, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qn = getelementptr inbounds nuw i8, ptr %.7674, i64 48 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pj, i64 64 ; 2 uses
  %.not203 = icmp ugt ptr %i.qo, %.8179.ptr
  br i1 %.not203, label %._crit_edge, label %bb.aq, !llvm.loop !952

._crit_edge:                                      ; preds = %bb.at, %bb.g, %bb.h, %.loopexit646
  %.8179.ptr747 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit646 ], [ %i.a, %bb.h ], [ %.8179.ptr, %bb.at ] ; 4 uses
  %.6160746 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit646 ], [ %2, %bb.h ], [ %.6160, %bb.at ] ; 4 uses
  %i.qp = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit646 ], [ %i.w, %bb.h ], [ %i.w, %bb.at ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit646 ], [ %i.a, %bb.h ], [ %i.pj, %bb.at ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit646 ], [ %1, %bb.h ], [ %i.qn, %bb.at ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.qq = ptrtoint ptr %.8179.ptr747 to i64       ; 5 uses
  %i.qr = sub i64 %i.qq, %.pre-phi
  %i.qs = and i64 %i.qr, 63
  %.not204 = icmp eq i64 %i.qs, 0
  br i1 %.not204, label %.loopexit, label %.preheader644

.preheader644:                                    ; preds = %._crit_edge
  %i.qt = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qu = icmp ult ptr %i.qt, %.8179.ptr747
  br i1 %i.qu, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %.preheader644
  %i.qv = add i64 %.pre-phi, 8
  %umax781 = call i64 @llvm.umax.i64(i64 %i.qq, i64 %i.qv)
  %7 = add i64 %umax781, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.qw = lshr i64 %8, 2
  %i.qx = add nuw nsw i64 %i.qw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph680.preheader795, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph680.preheader
  %i.qy = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.qq, i64 %i.qy)
  %i.qz = add i64 %umax, -5
  %i.ra = sub i64 %i.qz, %.pre-phi                ; 2 uses
  %i.rb = lshr i64 %i.ra, 2
  %i.rc = mul nuw i64 %i.rb, 3
  %i.rd = getelementptr i8, ptr %.7.lcssa, i64 %i.rc
  %scevgep = getelementptr i8, ptr %i.rd, i64 3
  %i.re = and i64 %i.ra, -4
  %i.rf = getelementptr i8, ptr %.pre-phi.in, i64 %i.re
  %scevgep780 = getelementptr i8, ptr %i.rf, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep780
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph680.preheader795, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qx, 9223372036854775800     ; 4 uses
  %i.rg = shl i64 %n.vec, 2                       ; 2 uses
  %i.rh = getelementptr i8, ptr %i.qt, i64 %i.rg  ; 2 uses
  %i.ri = mul i64 %n.vec, 3
  %i.rj = getelementptr i8, ptr %.7.lcssa, i64 %i.ri ; 2 uses
  %i.rk = getelementptr i8, ptr %.pre-phi.in, i64 %i.rg ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.rl = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %i.rm = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep782.a = getelementptr i8, ptr %i.rm, i64 3
  %i.rn = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep783.a = getelementptr i8, ptr %i.rn, i64 6
  %i.ro = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep784.a = getelementptr i8, ptr %i.ro, i64 9
  %i.rp = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep785.a = getelementptr i8, ptr %i.rp, i64 12
  %i.rq = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep786.a = getelementptr i8, ptr %i.rq, i64 15
  %i.rr = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep787.a = getelementptr i8, ptr %i.rr, i64 18
  %i.rs = getelementptr i8, ptr %.7.lcssa, i64 %i.rl
  %next.gep788.a = getelementptr i8, ptr %i.rs, i64 21
  %i.rt = shl i64 %index, 2
  %next.gep789 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rt
  %wide.vec = load <32 x i8>, ptr %next.gep789, align 1, !alias.scope !953 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec790.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec791.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec792 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ru = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rv = shl nuw nsw <8 x i32> %i.ru, splat (i32 18)
  %i.rw = zext <8 x i8> %strided.vec790.a to <8 x i32>
  %i.rx = shl nuw nsw <8 x i32> %i.rw, splat (i32 12)
  %i.ry = add nuw nsw <8 x i32> %i.rx, %i.rv
  %i.rz = zext <8 x i8> %strided.vec791.a to <8 x i32>
  %i.sa = shl nuw nsw <8 x i32> %i.rz, splat (i32 6)
  %i.sb = add nuw nsw <8 x i32> %i.ry, %i.sa
  %i.sc = zext <8 x i8> %strided.vec792 to <8 x i32>
  %i.sd = add nuw nsw <8 x i32> %i.sb, %i.sc
  %i.se = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sd)
  %i.sf = lshr <8 x i32> %i.se, splat (i32 8)
  %i.sg = trunc nuw <8 x i32> %i.sf to <8 x i24>  ; 8 uses
  %i.sh = extractelement <8 x i24> %i.sg, i64 0
  store i24 %i.sh, ptr %next.gep, align 1, !alias.scope !956, !noalias !953
  %i.si = extractelement <8 x i24> %i.sg, i64 1
  store i24 %i.si, ptr %next.gep782.a, align 1, !alias.scope !956, !noalias !953
  %i.sj = extractelement <8 x i24> %i.sg, i64 2
  store i24 %i.sj, ptr %next.gep783.a, align 1, !alias.scope !956, !noalias !953
  %i.sk = extractelement <8 x i24> %i.sg, i64 3
  store i24 %i.sk, ptr %next.gep784.a, align 1, !alias.scope !956, !noalias !953
  %i.sl = extractelement <8 x i24> %i.sg, i64 4
  store i24 %i.sl, ptr %next.gep785.a, align 1, !alias.scope !956, !noalias !953
  %i.sm = extractelement <8 x i24> %i.sg, i64 5
  store i24 %i.sm, ptr %next.gep786.a, align 1, !alias.scope !956, !noalias !953
  %i.sn = extractelement <8 x i24> %i.sg, i64 6
  store i24 %i.sn, ptr %next.gep787.a, align 1, !alias.scope !956, !noalias !953
  %i.so = extractelement <8 x i24> %i.sg, i64 7
  store i24 %i.so, ptr %next.gep788.a, align 1, !alias.scope !956, !noalias !953
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sp = icmp eq i64 %index.next, %n.vec
  br i1 %i.sp, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qx, %n.vec
  br i1 %cmp.n, label %._crit_edge681, label %.lr.ph680.preheader795

.lr.ph680.preheader795:                           ; preds = %vector.memcheck, %.lr.ph680.preheader, %middle.block
  %.ph = phi ptr [ %i.qt, %vector.memcheck ], [ %i.qt, %.lr.ph680.preheader ], [ %i.rh, %middle.block ]
  %.8679.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph680.preheader ], [ %i.rj, %middle.block ]
  %.1168678.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph680.preheader ], [ %i.rk, %middle.block ]
  br label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.preheader795, %.lr.ph680
  %i.sq = phi ptr [ %i.sy, %.lr.ph680 ], [ %.ph, %.lr.ph680.preheader795 ] ; 3 uses
  %.8679 = phi ptr [ %i.sx, %.lr.ph680 ], [ %.8679.ph, %.lr.ph680.preheader795 ] ; 2 uses
  %.1168678 = phi ptr [ %i.sq, %.lr.ph680 ], [ %.1168678.ph, %.lr.ph680.preheader795 ]
  %i.sr = load <4 x i8>, ptr %.1168678, align 1
  %i.ss = zext <4 x i8> %i.sr to <4 x i32>
  %i.st = shl nuw nsw <4 x i32> %i.ss, <i32 18, i32 12, i32 6, i32 0>
  %i.su = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.st)
  %i.sv = call i32 @llvm.bswap.i32(i32 %i.su)
  %i.sw = lshr i32 %i.sv, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.sw to i24
  store i24 %.0.extract.trunc10, ptr %.8679, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.8679, i64 3 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 3 uses
  %i.sz = icmp ult ptr %i.sy, %.8179.ptr747
  br i1 %i.sz, label %.lr.ph680, label %._crit_edge681, !llvm.loop !959

._crit_edge681:                                   ; preds = %.lr.ph680, %middle.block, %.preheader644
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader644 ], [ %i.rk, %middle.block ], [ %i.sq, %.lr.ph680 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader644 ], [ %i.rj, %middle.block ], [ %i.sx, %.lr.ph680 ] ; 3 uses
  %.lcssa648 = phi ptr [ %i.qt, %.preheader644 ], [ %i.rh, %middle.block ], [ %i.sy, %.lr.ph680 ] ; 2 uses
  %.not205 = icmp ugt ptr %.lcssa648, %.8179.ptr747
  br i1 %.not205, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge681
  %i.ta = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.tb = zext <4 x i8> %i.ta to <4 x i32>
  %i.tc = shl nuw nsw <4 x i32> %i.tb, <i32 18, i32 12, i32 6, i32 0>
  %i.td = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tc)
  %i.te = call i32 @llvm.bswap.i32(i32 %i.td)
  %i.tf = lshr i32 %i.te, 8
  %.0.extract.trunc = trunc nuw i32 %i.tf to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge681
  %.2169 = phi ptr [ %.lcssa648, %bb.au ], [ %.1168.lcssa, %._crit_edge681 ]
  %.9 = phi ptr [ %i.tg, %bb.au ], [ %.8.lcssa, %._crit_edge681 ] ; 3 uses
  %i.th = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.ti = sub i64 %i.qq, %i.th
  %i.tj = trunc i64 %i.ti to i32                  ; 4 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.av
  %i.tl = trunc i64 %i.qq to i32
  %i.tm = trunc i64 %i.th to i32
  %xtraiter = and i32 %i.tj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ax
  %.0686.prol = phi i32 [ %i.tt, %bb.ax ], [ %i.tj, %.preheader.preheader ]
  %.7161685.prol = phi ptr [ %i.tn, %bb.ax ], [ %.6160746, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.ax ], [ 0, %.preheader.preheader ]
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.prol
  %.8162.prol = phi ptr [ %i.tn, %bb.aw ], [ %.7161685.prol, %.preheader.prol ]
  %i.tn = getelementptr inbounds i8, ptr %.8162.prol, i64 -1 ; 5 uses
  %i.to = load i8, ptr %i.tn, align 1
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = icmp eq i8 %i.tr, 64
  br i1 %i.ts, label %bb.aw, label %bb.ax, !llvm.loop !960

bb.ax:                                            ; preds = %bb.aw
  %i.tt = add nsw i32 %.0686.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !961

.preheader.prol.loopexit:                         ; preds = %bb.ax, %.preheader.preheader
  %.0686.unr = phi i32 [ %i.tj, %.preheader.preheader ], [ %i.tt, %bb.ax ]
  %.7161685.unr = phi ptr [ %.6160746, %.preheader.preheader ], [ %i.tn, %bb.ax ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.tn, %bb.ax ]
  %i.tu = sub i32 %i.tm, %i.tl
  %i.tv = icmp ugt i32 %i.tu, -4
  br i1 %i.tv, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.az
  %.0686 = phi i32 [ %i.uu, %bb.az ], [ %.0686.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161685 = phi ptr [ %i.uo, %bb.az ], [ %.7161685.unr, %.preheader.prol.loopexit ]
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader, %bb.ay
  %.8162 = phi ptr [ %i.tw, %bb.ay ], [ %.7161685, %.preheader ]
  %i.tw = getelementptr inbounds i8, ptr %.8162, i64 -1 ; 3 uses
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = icmp eq i8 %i.ua, 64
  br i1 %i.ub, label %bb.ay, label %.preheader.1, !llvm.loop !960

.preheader.1:                                     ; preds = %bb.ay, %.preheader.1
  %.8162.1 = phi ptr [ %i.uc, %.preheader.1 ], [ %i.tw, %bb.ay ]
  %i.uc = getelementptr inbounds i8, ptr %.8162.1, i64 -1 ; 3 uses
  %i.ud = load i8, ptr %i.uc, align 1
end_hunk_5
begin_hunk_6_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb1ELb1EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.ml = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mk, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mm = bitcast <8 x i32> %i.ml to <32 x i8>
  %i.mn = shufflevector <32 x i8> %i.mm, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mo = bitcast <32 x i8> %i.mn to <4 x i64>    ; 2 uses
  %i.mp = shufflevector <4 x i64> %i.mo, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mp, ptr %i.mi, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.0123576, i64 180
  %i.mr = shufflevector <4 x i64> %i.mo, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mr, ptr %i.mq, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.0123576, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.ms, %i.v
  %i.mt = load <32 x i8>, ptr %i.z, align 16
  %i.mu = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mt, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mu, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mw = bitcast <8 x i32> %i.mv to <32 x i8>
  %i.mx = shufflevector <32 x i8> %i.mw, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.my = bitcast <32 x i8> %i.mx to <4 x i64>    ; 2 uses
  %i.mz = shufflevector <4 x i64> %i.my, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mz, ptr %i.ms, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.0123576, i64 204
  %i.nb = shufflevector <4 x i64> %i.my, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nb, ptr %i.na, align 1
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader565.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0217)
  %i.nc = load <32 x i8>, ptr %i.aa, align 16
  %i.nd = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nc, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ne = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nd, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nf = bitcast <8 x i32> %i.ne to <32 x i8>
  %i.ng = shufflevector <32 x i8> %i.nf, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nh = bitcast <32 x i8> %i.ng to <4 x i64>    ; 2 uses
  %i.ni = shufflevector <4 x i64> %i.nh, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ni, ptr %.sroa.0217, align 16
  %i.nj = shufflevector <4 x i64> %i.nh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nj, ptr %.sroa.0217.12..sroa_idx35, align 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.0123576, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nk, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0217, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0217)
  br label %bb.ag

bb.af:                                            ; preds = %.preheader565.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %.0123576, i64 216
  %i.nm = load <32 x i8>, ptr %i.aa, align 16
  %i.nn = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.no = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.np = bitcast <8 x i32> %i.no to <32 x i8>
  %i.nq = shufflevector <32 x i8> %i.np, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nr = bitcast <32 x i8> %i.nq to <4 x i64>    ; 2 uses
  %i.ns = shufflevector <4 x i64> %i.nr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ns, ptr %i.nl, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.0123576, i64 228
  %i.nu = shufflevector <4 x i64> %i.nr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nu, ptr %i.nt, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.nv = getelementptr inbounds nuw i8, ptr %.0123576, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.y, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.ah

bb.ah:                                            ; preds = %.thread556, %bb.ag, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.ag ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread556 ] ; 8 uses
  %.3 = phi ptr [ %i.nv, %bb.ag ], [ %.0123576, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jq, %.thread556 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.az, %i.x
  br i1 %.not, label %.loopexit566, label %bb.f, !llvm.loop !963

.loopexit566:                                     ; preds = %bb.ah
  %i.nw = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.nw, 0
  br i1 %.not150, label %.loopexit564, label %bb.ai

bb.ai:                                            ; preds = %.loopexit566
  %i.nx = ptrtoint ptr %i.u to i64
  %i.ny = ptrtoint ptr %i.az to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = ashr exact i64 %i.nz, 1
  %i.ob = add nsw i64 %i.oa, %i.nw
  %i.oc = icmp sgt i64 %i.ob, 63
  br i1 %i.oc, label %.preheader563, label %.loopexit564

.preheader563:                                    ; preds = %bb.ai
  %i.od = and i64 %.2137.idx, 63
  %i.oe = icmp ne i64 %i.od, 0
  %i.of = icmp ult ptr %i.az, %i.u
  %i.og = select i1 %i.oe, i1 %i.of, i1 false
  br i1 %i.og, label %.lr.ph582, label %.loopexit564

.lr.ph582:                                        ; preds = %.preheader563, %.lr.ph582
  %.2126581 = phi ptr [ %i.on, %.lr.ph582 ], [ %i.az, %.preheader563 ] ; 2 uses
  %.4139580.idx = phi i64 [ %.4139580.add, %.lr.ph582 ], [ %.2137.idx, %.preheader563 ] ; 2 uses
  %.4139580.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139580.idx
  %i.oh = load i16, ptr %.2126581, align 2
  %i.oi = and i16 %i.oh, 255
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1             ; 2 uses
  store i8 %i.ol, ptr %.4139580.ptr, align 1
  %i.om = icmp ult i8 %i.ol, 64
  %.sroa.sel.idx = zext i1 %i.om to i64
  %.4139580.add = add nsw i64 %.4139580.idx, %.sroa.sel.idx ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.2126581, i64 2 ; 3 uses
  %i.oo = and i64 %.4139580.add, 63
  %i.op = icmp ne i64 %i.oo, 0
  %i.oq = icmp ult ptr %i.on, %i.u
  %i.or = select i1 %i.op, i1 %i.oq, i1 false
  br i1 %i.or, label %.lr.ph582, label %.loopexit564, !llvm.loop !964

.loopexit564:                                     ; preds = %.lr.ph582, %.preheader563, %bb.ai, %.loopexit566
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit566 ], [ %.2137.idx, %bb.ai ], [ %.2137.idx, %.preheader563 ], [ %.4139580.add, %.lr.ph582 ] ; 2 uses
  %.3127 = phi ptr [ %i.az, %.loopexit566 ], [ %i.az, %bb.ai ], [ %i.az, %.preheader563 ], [ %i.on, %.lr.ph582 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151585 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151585, label %._crit_edge, label %.lr.ph588

.lr.ph588:                                        ; preds = %.loopexit564
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0212.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph588, %bb.am
  %i.ot = phi ptr [ %i.os, %.lr.ph588 ], [ %i.py, %bb.am ] ; 3 uses
  %.5587 = phi ptr [ %.3, %.lr.ph588 ], [ %i.px, %bb.am ] ; 7 uses
  %.0131586 = phi ptr [ %i.a, %.lr.ph588 ], [ %i.ot, %bb.am ] ; 2 uses
  %.not154 = icmp ult ptr %.5587, %i.v
  %i.ou = load <32 x i8>, ptr %.0131586, align 1
  %i.ov = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ou, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ow = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ov, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ox = bitcast <8 x i32> %i.ow to <32 x i8>
  %i.oy = shufflevector <32 x i8> %i.ox, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.oz = bitcast <32 x i8> %i.oy to <4 x i64>    ; 2 uses
  %i.pa = shufflevector <4 x i64> %i.oz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pa, ptr %.5587, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.5587, i64 12
  %i.pc = shufflevector <4 x i64> %i.oz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pc, ptr %i.pb, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %.0131586, i64 32 ; 2 uses
  br i1 %.not154, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0212)
  %i.pe = load <32 x i8>, ptr %i.pd, align 1
  %i.pf = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pe, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pf, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ph = bitcast <8 x i32> %i.pg to <32 x i8>
  %i.pi = shufflevector <32 x i8> %i.ph, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pj = bitcast <32 x i8> %i.pi to <4 x i64>    ; 2 uses
  %i.pk = shufflevector <4 x i64> %i.pj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pk, ptr %.sroa.0212, align 16
  %i.pl = shufflevector <4 x i64> %i.pj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pl, ptr %.sroa.0212.12..sroa_idx34, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.5587, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pm, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0212, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0212)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.pn = getelementptr inbounds nuw i8, ptr %.5587, i64 24
  %i.po = load <32 x i8>, ptr %i.pd, align 1
  %i.pp = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.po, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pp, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pr = bitcast <8 x i32> %i.pq to <32 x i8>
  %i.ps = shufflevector <32 x i8> %i.pr, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pt = bitcast <32 x i8> %i.ps to <4 x i64>    ; 2 uses
  %i.pu = shufflevector <4 x i64> %i.pt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pu, ptr %i.pn, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.5587, i64 36
  %i.pw = shufflevector <4 x i64> %i.pt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pw, ptr %i.pv, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.px = getelementptr inbounds nuw i8, ptr %.5587, i64 48 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ot, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.py, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.aj, !llvm.loop !965

._crit_edge:                                      ; preds = %bb.am, %bb.e, %.loopexit564
  %.5140.ptr640 = phi ptr [ %i.a, %bb.e ], [ %.5140.ptr, %.loopexit564 ], [ %.5140.ptr, %bb.am ] ; 4 uses
  %.3127639 = phi ptr [ %2, %bb.e ], [ %.3127, %.loopexit564 ], [ %.3127, %bb.am ] ; 4 uses
  %i.pz = phi ptr [ %i.s, %bb.e ], [ %i.u, %.loopexit564 ], [ %i.u, %bb.am ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.e ], [ %i.a, %.loopexit564 ], [ %i.ot, %bb.am ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.e ], [ %.3, %.loopexit564 ], [ %i.px, %bb.am ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.qa = ptrtoint ptr %.5140.ptr640 to i64       ; 5 uses
  %i.qb = sub i64 %i.qa, %.pre-phi
  %i.qc = and i64 %i.qb, 63
  %.not152 = icmp eq i64 %i.qc, 0
  br i1 %.not152, label %.loopexit, label %.preheader562

.preheader562:                                    ; preds = %._crit_edge
  %i.qd = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qe = icmp ult ptr %i.qd, %.5140.ptr640
  br i1 %i.qe, label %.lr.ph593.preheader, label %._crit_edge594

.lr.ph593.preheader:                              ; preds = %.preheader562
  %i.qf = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.qa, i64 %i.qf)
  %6 = add i64 %umax10, -5
  %7 = sub i64 %6, %.pre-phi                      ; 2 uses
  %i.qg = lshr i64 %7, 2
  %i.qh = add nuw nsw i64 %i.qg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 60
  br i1 %min.iters.check, label %.lr.ph593.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph593.preheader
  %i.qi = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.qa, i64 %i.qi)
  %i.qj = add i64 %umax, -5
  %i.qk = sub i64 %i.qj, %.pre-phi                ; 2 uses
  %i.ql = lshr i64 %i.qk, 2
  %i.qm = mul nuw i64 %i.ql, 3
  %i.qn = getelementptr i8, ptr %.5.lcssa, i64 %i.qm
  %scevgep = getelementptr i8, ptr %i.qn, i64 3
  %i.qo = and i64 %i.qk, -4
  %i.qp = getelementptr i8, ptr %.pre-phi.in, i64 %i.qo
  %scevgep9 = getelementptr i8, ptr %i.qp, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph593.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qh, 9223372036854775800     ; 4 uses
  %i.qq = shl i64 %n.vec, 2                       ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qd, i64 %i.qq  ; 2 uses
  %i.qs = mul i64 %n.vec, 3
  %i.qt = getelementptr i8, ptr %.5.lcssa, i64 %i.qs ; 2 uses
  %i.qu = getelementptr i8, ptr %.pre-phi.in, i64 %i.qq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qv = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep11.a = getelementptr i8, ptr %i.qw, i64 3
  %i.qx = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep12.a = getelementptr i8, ptr %i.qx, i64 6
  %i.qy = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep13.a = getelementptr i8, ptr %i.qy, i64 9
  %i.qz = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep14.a = getelementptr i8, ptr %i.qz, i64 12
  %i.ra = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep15.a = getelementptr i8, ptr %i.ra, i64 15
  %i.rb = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep16.a = getelementptr i8, ptr %i.rb, i64 18
  %i.rc = getelementptr i8, ptr %.5.lcssa, i64 %i.qv
  %next.gep17.a = getelementptr i8, ptr %i.rc, i64 21
  %i.rd = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rd
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !966 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.re = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rf = shl nuw nsw <8 x i32> %i.re, splat (i32 18)
  %i.rg = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rh = shl nuw nsw <8 x i32> %i.rg, splat (i32 12)
  %i.ri = add nuw nsw <8 x i32> %i.rh, %i.rf
  %i.rj = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.rk = shl nuw nsw <8 x i32> %i.rj, splat (i32 6)
  %i.rl = add nuw nsw <8 x i32> %i.ri, %i.rk
  %i.rm = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rn = add nuw nsw <8 x i32> %i.rl, %i.rm
  %i.ro = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rn)
  %i.rp = lshr <8 x i32> %i.ro, splat (i32 8)
  %i.rq = trunc nuw <8 x i32> %i.rp to <8 x i24>  ; 8 uses
  %i.rr = extractelement <8 x i24> %i.rq, i64 0
  store i24 %i.rr, ptr %next.gep, align 1, !alias.scope !969, !noalias !966
  %i.rs = extractelement <8 x i24> %i.rq, i64 1
  store i24 %i.rs, ptr %next.gep11.a, align 1, !alias.scope !969, !noalias !966
  %i.rt = extractelement <8 x i24> %i.rq, i64 2
  store i24 %i.rt, ptr %next.gep12.a, align 1, !alias.scope !969, !noalias !966
  %i.ru = extractelement <8 x i24> %i.rq, i64 3
  store i24 %i.ru, ptr %next.gep13.a, align 1, !alias.scope !969, !noalias !966
  %i.rv = extractelement <8 x i24> %i.rq, i64 4
  store i24 %i.rv, ptr %next.gep14.a, align 1, !alias.scope !969, !noalias !966
  %i.rw = extractelement <8 x i24> %i.rq, i64 5
  store i24 %i.rw, ptr %next.gep15.a, align 1, !alias.scope !969, !noalias !966
  %i.rx = extractelement <8 x i24> %i.rq, i64 6
  store i24 %i.rx, ptr %next.gep16.a, align 1, !alias.scope !969, !noalias !966
  %i.ry = extractelement <8 x i24> %i.rq, i64 7
  store i24 %i.ry, ptr %next.gep17.a, align 1, !alias.scope !969, !noalias !966
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rz = icmp eq i64 %index.next, %n.vec
  br i1 %i.rz, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qh, %n.vec
  br i1 %cmp.n, label %._crit_edge594, label %.lr.ph593.preheader24

.lr.ph593.preheader24:                            ; preds = %vector.memcheck, %.lr.ph593.preheader, %middle.block
  %.ph = phi ptr [ %i.qd, %vector.memcheck ], [ %i.qd, %.lr.ph593.preheader ], [ %i.qr, %middle.block ]
  %.6592.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph593.preheader ], [ %i.qt, %middle.block ]
  %.1132591.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph593.preheader ], [ %i.qu, %middle.block ]
  br label %.lr.ph593

.lr.ph593:                                        ; preds = %.lr.ph593.preheader24, %.lr.ph593
  %i.sa = phi ptr [ %i.si, %.lr.ph593 ], [ %.ph, %.lr.ph593.preheader24 ] ; 3 uses
  %.6592 = phi ptr [ %i.sh, %.lr.ph593 ], [ %.6592.ph, %.lr.ph593.preheader24 ] ; 2 uses
  %.1132591 = phi ptr [ %i.sa, %.lr.ph593 ], [ %.1132591.ph, %.lr.ph593.preheader24 ]
  %i.sb = load <4 x i8>, ptr %.1132591, align 1
  %i.sc = zext <4 x i8> %i.sb to <4 x i32>
  %i.sd = shl nuw nsw <4 x i32> %i.sc, <i32 18, i32 12, i32 6, i32 0>
  %i.se = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sd)
  %i.sf = call i32 @llvm.bswap.i32(i32 %i.se)
  %i.sg = lshr i32 %i.sf, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.sg to i24
  store i24 %.0.extract.trunc6, ptr %.6592, align 1
  %i.sh = getelementptr inbounds nuw i8, ptr %.6592, i64 3 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 3 uses
  %i.sj = icmp ult ptr %i.si, %.5140.ptr640
  br i1 %i.sj, label %.lr.ph593, label %._crit_edge594, !llvm.loop !972

._crit_edge594:                                   ; preds = %.lr.ph593, %middle.block, %.preheader562
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader562 ], [ %i.qu, %middle.block ], [ %i.sa, %.lr.ph593 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader562 ], [ %i.qt, %middle.block ], [ %i.sh, %.lr.ph593 ] ; 3 uses
  %.lcssa567 = phi ptr [ %i.qd, %.preheader562 ], [ %i.qr, %middle.block ], [ %i.si, %.lr.ph593 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa567, %.5140.ptr640
  br i1 %.not153, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge594
  %i.sk = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sl = zext <4 x i8> %i.sk to <4 x i32>
  %i.sm = shl nuw nsw <4 x i32> %i.sl, <i32 18, i32 12, i32 6, i32 0>
  %i.sn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sm)
  %i.so = call i32 @llvm.bswap.i32(i32 %i.sn)
  %i.sp = lshr i32 %i.so, 8
  %.0.extract.trunc = trunc nuw i32 %i.sp to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.sq = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge594
  %.2133 = phi ptr [ %.lcssa567, %bb.an ], [ %.1132.lcssa, %._crit_edge594 ]
  %.7 = phi ptr [ %i.sq, %bb.an ], [ %.6.lcssa, %._crit_edge594 ] ; 3 uses
  %i.sr = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.ss = sub i64 %i.qa, %i.sr
  %i.st = trunc i64 %i.ss to i32                  ; 4 uses
  %i.su = icmp sgt i32 %i.st, 0
  br i1 %i.su, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ao
  %i.sv = trunc i64 %i.qa to i32
  %i.sw = trunc i64 %i.sr to i32
  %xtraiter = and i32 %i.st, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.5129.prol = phi ptr [ %i.sx, %.preheader.prol ], [ %.3127639, %.preheader.preheader ]
  %i.sx = getelementptr inbounds i8, ptr %.5129.prol, i64 -2 ; 4 uses
  %i.sy = load i16, ptr %i.sx, align 2
  %i.sz = and i16 %i.sy, 255
  %i.ta = zext nneg i16 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1
  %i.td = icmp ugt i8 %i.tc, 63
  br i1 %i.td, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !973

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.te = add nsw i32 %i.st, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0599.unr = phi i32 [ %i.st, %.preheader.preheader ], [ %i.te, %.preheader.prol.loopexit.unr-lcssa ]
  %.4128598.unr = phi ptr [ %.3127639, %.preheader.preheader ], [ %i.sx, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.sx, %.preheader.prol.loopexit.unr-lcssa ]
  %i.tf = add i32 %i.sv, -1
  %i.tg = icmp eq i32 %i.tf, %i.sw
  br i1 %i.tg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aq
  %.0599 = phi i32 [ %i.tv, %bb.aq ], [ %.0599.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128598 = phi ptr [ %i.to, %bb.aq ], [ %.4128598.unr, %.preheader.prol.loopexit ]
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %bb.ap
  %.5129 = phi ptr [ %i.th, %bb.ap ], [ %.4128598, %.preheader ]
  %i.th = getelementptr inbounds i8, ptr %.5129, i64 -2 ; 3 uses
  %i.ti = load i16, ptr %i.th, align 2
  %i.tj = and i16 %i.ti, 255
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = icmp ugt i8 %i.tm, 63
  br i1 %i.tn, label %bb.ap, label %.preheader.1, !llvm.loop !973

.preheader.1:                                     ; preds = %bb.ap, %.preheader.1
  %.5129.1 = phi ptr [ %i.to, %.preheader.1 ], [ %i.th, %bb.ap ]
  %i.to = getelementptr inbounds i8, ptr %.5129.1, i64 -2 ; 4 uses
  %i.tp = load i16, ptr %i.to, align 2
  %i.tq = and i16 %i.tp, 255
  %i.tr = zext nneg i16 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = icmp ugt i8 %i.tt, 63
  br i1 %i.tu, label %.preheader.1, label %bb.aq, !llvm.loop !973
end_hunk_6
begin_hunk_7_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb0ELb1EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a

bb.aj:                                            ; preds = %.preheader661.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0273)
  %i.oa = load <32 x i8>, ptr %i.ac, align 16
  %i.ob = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oa, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.oc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ob, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.od = bitcast <8 x i32> %i.oc to <32 x i8>
  %i.oe = shufflevector <32 x i8> %i.od, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.of = bitcast <32 x i8> %i.oe to <4 x i64>    ; 2 uses
  %i.og = shufflevector <4 x i64> %i.of, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.og, ptr %.sroa.0273, align 16
  %i.oh = shufflevector <4 x i64> %i.of, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.oh, ptr %.sroa.0273.12..sroa_idx827, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %.0153677, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.oi, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0273, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0273)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader661.preheader
  %i.oj = getelementptr inbounds nuw i8, ptr %.0153677, i64 216
  %i.ok = load <32 x i8>, ptr %i.ac, align 16
  %i.ol = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ok, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.om = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ol, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.on = bitcast <8 x i32> %i.om to <32 x i8>
  %i.oo = shufflevector <32 x i8> %i.on, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.op = bitcast <32 x i8> %i.oo to <4 x i64>    ; 2 uses
  %i.oq = shufflevector <4 x i64> %i.op, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oq, ptr %i.oj, align 1
  %i.or = getelementptr inbounds nuw i8, ptr %.0153677, i64 228
  %i.os = shufflevector <4 x i64> %i.op, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.os, ptr %i.or, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ot = getelementptr inbounds nuw i8, ptr %.0153677, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread636, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.al
  %.3174.idx = phi i64 [ 0, %.thread636 ], [ %.1172.add, %bb.al ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.ko, %.thread636 ], [ %i.ot, %bb.al ], [ %.0153677, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not193 = icmp ugt ptr %i.bb, %i.z
  br i1 %.not193, label %.thread645, label %bb.h, !llvm.loop !975

.thread645:                                       ; preds = %bb.am
  %i.ou = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not203 = icmp eq i64 %i.ou, 0
  br i1 %.not203, label %.loopexit660, label %bb.an

bb.an:                                            ; preds = %.thread645
  %i.ov = ptrtoint ptr %i.w to i64
  %i.ow = ptrtoint ptr %i.bb to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = ashr exact i64 %i.ox, 1
  %i.oz = add nsw i64 %i.oy, %i.ou
  %i.pa = icmp sgt i64 %i.oz, 63
  br i1 %i.pa, label %.preheader659, label %.loopexit660

.preheader659:                                    ; preds = %bb.an
  %i.pb = and i64 %.3174.idx, 63
  %i.pc = icmp ne i64 %i.pb, 0
  %i.pd = icmp ult ptr %i.bb, %i.w
  %i.pe = select i1 %i.pc, i1 %i.pd, i1 false
  br i1 %i.pe, label %.lr.ph683, label %.loopexit660

.lr.ph683:                                        ; preds = %.preheader659, %bb.ao
  %.4158682 = phi ptr [ %i.px, %bb.ao ], [ %i.bb, %.preheader659 ] ; 3 uses
  %.6177681.idx = phi i64 [ %.6177681.add, %bb.ao ], [ %.3174.idx, %.preheader659 ] ; 2 uses
  %.6177681.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177681.idx
  %i.pf = load i16, ptr %.4158682, align 2        ; 2 uses
  %i.pg = and i16 %i.pf, 255
  %i.ph = zext nneg i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1             ; 3 uses
  store i8 %i.pj, ptr %.6177681.ptr, align 1
  %i.pk = icmp ult i16 %i.pf, 256
  %i.pl = icmp ult i8 %i.pj, 65
  %or.cond.not = select i1 %i.pk, i1 %i.pl, i1 false
  br i1 %or.cond.not, label %bb.ao, label %.thread653

.thread653:                                       ; preds = %.lr.ph683
  %i.pm = ptrtoint ptr %.4158682 to i64
  %i.pn = ptrtoint ptr %2 to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = ashr exact i64 %i.po, 1
  %i.pq = ptrtoint ptr %.4 to i64
  %i.pr = ptrtoint ptr %1 to i64
  %i.ps = sub i64 %i.pq, %i.pr
  store i32 7, ptr %0, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.pp, ptr %i.pt, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ps, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pv, align 8
  br label %bb.bd

bb.ao:                                            ; preds = %.lr.ph683
  %i.pw = icmp samesign ult i8 %i.pj, 64
  %.sroa.sel.idx = zext i1 %i.pw to i64
  %.6177681.add = add nsw i64 %.6177681.idx, %.sroa.sel.idx ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.4158682, i64 2 ; 3 uses
  %i.py = and i64 %.6177681.add, 63
  %i.pz = icmp ne i64 %i.py, 0
  %i.qa = icmp ult ptr %i.px, %i.w
  %i.qb = select i1 %i.pz, i1 %i.qa, i1 false
  br i1 %i.qb, label %.lr.ph683, label %.loopexit660

.loopexit660:                                     ; preds = %bb.ao, %.preheader659, %bb.an, %.thread645
  %.8179.idx = phi i64 [ %.3174.idx, %.thread645 ], [ %.3174.idx, %bb.an ], [ %.3174.idx, %.preheader659 ], [ %.6177681.add, %bb.ao ] ; 2 uses
  %.6160 = phi ptr [ %i.bb, %.thread645 ], [ %i.bb, %bb.an ], [ %i.bb, %.preheader659 ], [ %i.px, %bb.ao ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not204686 = icmp slt i64 %.8179.idx, 64
  br i1 %.not204686, label %._crit_edge, label %.lr.ph689

.lr.ph689:                                        ; preds = %.loopexit660
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0268.12..sroa_idx826 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 12
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph689, %bb.as
  %i.qd = phi ptr [ %i.qc, %.lr.ph689 ], [ %i.ri, %bb.as ] ; 3 uses
  %.7688 = phi ptr [ %.4, %.lr.ph689 ], [ %i.rh, %bb.as ] ; 7 uses
  %.0167687 = phi ptr [ %i.a, %.lr.ph689 ], [ %i.qd, %bb.as ] ; 2 uses
  %.not209 = icmp ult ptr %.7688, %i.x
  %i.qe = load <32 x i8>, ptr %.0167687, align 1
  %i.qf = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qe, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qf, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qh = bitcast <8 x i32> %i.qg to <32 x i8>
  %i.qi = shufflevector <32 x i8> %i.qh, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>    ; 2 uses
  %i.qk = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qk, ptr %.7688, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.7688, i64 12
  %i.qm = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qm, ptr %i.ql, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %.0167687, i64 32 ; 2 uses
  br i1 %.not209, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  %i.qo = load <32 x i8>, ptr %i.qn, align 1
  %i.qp = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qo, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qp, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qr = bitcast <8 x i32> %i.qq to <32 x i8>
  %i.qs = shufflevector <32 x i8> %i.qr, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qt = bitcast <32 x i8> %i.qs to <4 x i64>    ; 2 uses
  %i.qu = shufflevector <4 x i64> %i.qt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qu, ptr %.sroa.0268, align 16
  %i.qv = shufflevector <4 x i64> %i.qt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qv, ptr %.sroa.0268.12..sroa_idx826, align 4
  %i.qw = getelementptr inbounds nuw i8, ptr %.7688, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qw, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0268, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.qx = getelementptr inbounds nuw i8, ptr %.7688, i64 24
  %i.qy = load <32 x i8>, ptr %i.qn, align 1
  %i.qz = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qy, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ra = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.rb = bitcast <8 x i32> %i.ra to <32 x i8>
  %i.rc = shufflevector <32 x i8> %i.rb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.rd = bitcast <32 x i8> %i.rc to <4 x i64>    ; 2 uses
  %i.re = shufflevector <4 x i64> %i.rd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.re, ptr %i.qx, align 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.7688, i64 36
  %i.rg = shufflevector <4 x i64> %i.rd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.rg, ptr %i.rf, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.rh = getelementptr inbounds nuw i8, ptr %.7688, i64 48 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qd, i64 64 ; 2 uses
  %.not204 = icmp ugt ptr %i.ri, %.8179.ptr
  br i1 %.not204, label %._crit_edge, label %bb.ap, !llvm.loop !976

._crit_edge:                                      ; preds = %bb.as, %bb.g, %.loopexit660
  %.8179.ptr760 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit660 ], [ %.8179.ptr, %bb.as ] ; 4 uses
  %.6160759 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit660 ], [ %.6160, %bb.as ] ; 4 uses
  %i.rj = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit660 ], [ %i.w, %bb.as ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit660 ], [ %i.qd, %bb.as ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit660 ], [ %i.rh, %bb.as ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.rk = ptrtoint ptr %.8179.ptr760 to i64       ; 5 uses
  %i.rl = sub i64 %i.rk, %.pre-phi
  %i.rm = and i64 %i.rl, 63
  %.not205 = icmp eq i64 %i.rm, 0
  br i1 %.not205, label %.loopexit, label %.preheader658

.preheader658:                                    ; preds = %._crit_edge
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.ro = icmp ult ptr %i.rn, %.8179.ptr760
  br i1 %i.ro, label %.lr.ph694.preheader, label %._crit_edge695

.lr.ph694.preheader:                              ; preds = %.preheader658
  %i.rp = add i64 %.pre-phi, 8
  %umax794 = call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.rp)
  %7 = add i64 %umax794, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.rq = lshr i64 %8, 2
  %i.rr = add nuw nsw i64 %i.rq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph694.preheader808, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph694.preheader
  %i.rs = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.rs)
  %i.rt = add i64 %umax, -5
  %i.ru = sub i64 %i.rt, %.pre-phi                ; 2 uses
  %i.rv = lshr i64 %i.ru, 2
  %i.rw = mul nuw i64 %i.rv, 3
  %i.rx = getelementptr i8, ptr %.7.lcssa, i64 %i.rw
  %scevgep = getelementptr i8, ptr %i.rx, i64 3
  %i.ry = and i64 %i.ru, -4
  %i.rz = getelementptr i8, ptr %.pre-phi.in, i64 %i.ry
  %scevgep793 = getelementptr i8, ptr %i.rz, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep793
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph694.preheader808, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rr, 9223372036854775800     ; 4 uses
  %i.sa = shl i64 %n.vec, 2                       ; 2 uses
  %i.sb = getelementptr i8, ptr %i.rn, i64 %i.sa  ; 2 uses
  %i.sc = mul i64 %n.vec, 3
  %i.sd = getelementptr i8, ptr %.7.lcssa, i64 %i.sc ; 2 uses
  %i.se = getelementptr i8, ptr %.pre-phi.in, i64 %i.sa ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sf = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %i.sg = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep795.a = getelementptr i8, ptr %i.sg, i64 3
  %i.sh = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep796.a = getelementptr i8, ptr %i.sh, i64 6
  %i.si = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep797.a = getelementptr i8, ptr %i.si, i64 9
  %i.sj = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep798.a = getelementptr i8, ptr %i.sj, i64 12
  %i.sk = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep799.a = getelementptr i8, ptr %i.sk, i64 15
  %i.sl = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep800.a = getelementptr i8, ptr %i.sl, i64 18
  %i.sm = getelementptr i8, ptr %.7.lcssa, i64 %i.sf
  %next.gep801.a = getelementptr i8, ptr %i.sm, i64 21
  %i.sn = shl i64 %index, 2
  %next.gep802 = getelementptr i8, ptr %.pre-phi.in, i64 %i.sn
  %wide.vec = load <32 x i8>, ptr %next.gep802, align 1, !alias.scope !977 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec803.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec804.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec805 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.so = zext <8 x i8> %strided.vec to <8 x i32>
  %i.sp = shl nuw nsw <8 x i32> %i.so, splat (i32 18)
  %i.sq = zext <8 x i8> %strided.vec803.a to <8 x i32>
  %i.sr = shl nuw nsw <8 x i32> %i.sq, splat (i32 12)
  %i.ss = add nuw nsw <8 x i32> %i.sr, %i.sp
  %i.st = zext <8 x i8> %strided.vec804.a to <8 x i32>
  %i.su = shl nuw nsw <8 x i32> %i.st, splat (i32 6)
  %i.sv = add nuw nsw <8 x i32> %i.ss, %i.su
  %i.sw = zext <8 x i8> %strided.vec805 to <8 x i32>
  %i.sx = add nuw nsw <8 x i32> %i.sv, %i.sw
  %i.sy = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sx)
  %i.sz = lshr <8 x i32> %i.sy, splat (i32 8)
  %i.ta = trunc nuw <8 x i32> %i.sz to <8 x i24>  ; 8 uses
  %i.tb = extractelement <8 x i24> %i.ta, i64 0
  store i24 %i.tb, ptr %next.gep, align 1, !alias.scope !980, !noalias !977
  %i.tc = extractelement <8 x i24> %i.ta, i64 1
  store i24 %i.tc, ptr %next.gep795.a, align 1, !alias.scope !980, !noalias !977
  %i.td = extractelement <8 x i24> %i.ta, i64 2
  store i24 %i.td, ptr %next.gep796.a, align 1, !alias.scope !980, !noalias !977
  %i.te = extractelement <8 x i24> %i.ta, i64 3
  store i24 %i.te, ptr %next.gep797.a, align 1, !alias.scope !980, !noalias !977
  %i.tf = extractelement <8 x i24> %i.ta, i64 4
  store i24 %i.tf, ptr %next.gep798.a, align 1, !alias.scope !980, !noalias !977
  %i.tg = extractelement <8 x i24> %i.ta, i64 5
  store i24 %i.tg, ptr %next.gep799.a, align 1, !alias.scope !980, !noalias !977
  %i.th = extractelement <8 x i24> %i.ta, i64 6
  store i24 %i.th, ptr %next.gep800.a, align 1, !alias.scope !980, !noalias !977
  %i.ti = extractelement <8 x i24> %i.ta, i64 7
  store i24 %i.ti, ptr %next.gep801.a, align 1, !alias.scope !980, !noalias !977
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tj = icmp eq i64 %index.next, %n.vec
  br i1 %i.tj, label %middle.block, label %vector.body, !llvm.loop !982

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rr, %n.vec
  br i1 %cmp.n, label %._crit_edge695, label %.lr.ph694.preheader808

.lr.ph694.preheader808:                           ; preds = %vector.memcheck, %.lr.ph694.preheader, %middle.block
  %.ph = phi ptr [ %i.rn, %vector.memcheck ], [ %i.rn, %.lr.ph694.preheader ], [ %i.sb, %middle.block ]
  %.8693.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph694.preheader ], [ %i.sd, %middle.block ]
  %.1168692.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph694.preheader ], [ %i.se, %middle.block ]
  br label %.lr.ph694

.lr.ph694:                                        ; preds = %.lr.ph694.preheader808, %.lr.ph694
  %i.tk = phi ptr [ %i.ts, %.lr.ph694 ], [ %.ph, %.lr.ph694.preheader808 ] ; 3 uses
  %.8693 = phi ptr [ %i.tr, %.lr.ph694 ], [ %.8693.ph, %.lr.ph694.preheader808 ] ; 2 uses
  %.1168692 = phi ptr [ %i.tk, %.lr.ph694 ], [ %.1168692.ph, %.lr.ph694.preheader808 ]
  %i.tl = load <4 x i8>, ptr %.1168692, align 1
  %i.tm = zext <4 x i8> %i.tl to <4 x i32>
  %i.tn = shl nuw nsw <4 x i32> %i.tm, <i32 18, i32 12, i32 6, i32 0>
  %i.to = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tn)
  %i.tp = call i32 @llvm.bswap.i32(i32 %i.to)
  %i.tq = lshr i32 %i.tp, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.tq to i24
  store i24 %.0.extract.trunc10, ptr %.8693, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %.8693, i64 3 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 3 uses
  %i.tt = icmp ult ptr %i.ts, %.8179.ptr760
  br i1 %i.tt, label %.lr.ph694, label %._crit_edge695, !llvm.loop !983

._crit_edge695:                                   ; preds = %.lr.ph694, %middle.block, %.preheader658
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader658 ], [ %i.se, %middle.block ], [ %i.tk, %.lr.ph694 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader658 ], [ %i.sd, %middle.block ], [ %i.tr, %.lr.ph694 ] ; 3 uses
  %.lcssa662 = phi ptr [ %i.rn, %.preheader658 ], [ %i.sb, %middle.block ], [ %i.ts, %.lr.ph694 ] ; 2 uses
  %.not206 = icmp ugt ptr %.lcssa662, %.8179.ptr760
  br i1 %.not206, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge695
  %i.tu = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.tv = zext <4 x i8> %i.tu to <4 x i32>
  %i.tw = shl nuw nsw <4 x i32> %i.tv, <i32 18, i32 12, i32 6, i32 0>
  %i.tx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tw)
  %i.ty = call i32 @llvm.bswap.i32(i32 %i.tx)
  %i.tz = lshr i32 %i.ty, 8
  %.0.extract.trunc = trunc nuw i32 %i.tz to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge695
  %.2169 = phi ptr [ %.lcssa662, %bb.at ], [ %.1168.lcssa, %._crit_edge695 ]
  %.9 = phi ptr [ %i.ua, %bb.at ], [ %.8.lcssa, %._crit_edge695 ] ; 3 uses
  %i.ub = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.uc = sub i64 %i.rk, %i.ub
  %i.ud = trunc i64 %i.uc to i32                  ; 4 uses
  %i.ue = icmp sgt i32 %i.ud, 0
  br i1 %i.ue, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.au
  %i.uf = trunc i64 %i.rk to i32
  %i.ug = trunc i64 %i.ub to i32
  %xtraiter = and i32 %i.ud, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.8162.prol = phi ptr [ %i.uh, %.preheader.prol ], [ %.6160759, %.preheader.preheader ]
  %i.uh = getelementptr inbounds i8, ptr %.8162.prol, i64 -2 ; 4 uses
  %i.ui = load i16, ptr %i.uh, align 2
  %i.uj = and i16 %i.ui, 255
  %i.uk = zext nneg i16 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1
  %i.un = icmp eq i8 %i.um, 64
  br i1 %i.un, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !984

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.uo = add nsw i32 %i.ud, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0700.unr = phi i32 [ %i.ud, %.preheader.preheader ], [ %i.uo, %.preheader.prol.loopexit.unr-lcssa ]
  %.7161699.unr = phi ptr [ %.6160759, %.preheader.preheader ], [ %i.uh, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.uh, %.preheader.prol.loopexit.unr-lcssa ]
  %i.up = add i32 %i.uf, -1
  %i.uq = icmp eq i32 %i.up, %i.ug
  br i1 %i.uq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aw
  %.0700 = phi i32 [ %i.vf, %bb.aw ], [ %.0700.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161699 = phi ptr [ %i.uy, %bb.aw ], [ %.7161699.unr, %.preheader.prol.loopexit ]
  br label %bb.av

bb.av:                                            ; preds = %.preheader, %bb.av
  %.8162 = phi ptr [ %i.ur, %bb.av ], [ %.7161699, %.preheader ]
  %i.ur = getelementptr inbounds i8, ptr %.8162, i64 -2 ; 3 uses
  %i.us = load i16, ptr %i.ur, align 2
  %i.ut = and i16 %i.us, 255
  %i.uu = zext nneg i16 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1
  %i.ux = icmp eq i8 %i.uw, 64
  br i1 %i.ux, label %bb.av, label %.preheader.1, !llvm.loop !984

.preheader.1:                                     ; preds = %bb.av, %.preheader.1
  %.8162.1 = phi ptr [ %i.uy, %.preheader.1 ], [ %i.ur, %bb.av ]
  %i.uy = getelementptr inbounds i8, ptr %.8162.1, i64 -2 ; 4 uses
  %i.uz = load i16, ptr %i.uy, align 2
  %i.va = and i16 %i.uz, 255
  %i.vb = zext nneg i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = icmp eq i8 %i.vd, 64
  br i1 %i.ve, label %.preheader.1, label %bb.aw, !llvm.loop !984
end_hunk_7
begin_hunk_8_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb1ELb1ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.mj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mi, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mk = bitcast <8 x i32> %i.mj to <32 x i8>
  %i.ml = shufflevector <32 x i8> %i.mk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mm = bitcast <32 x i8> %i.ml to <4 x i64>    ; 2 uses
  %i.mn = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mn, ptr %i.mg, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0123568, i64 180
  %i.mp = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mp, ptr %i.mo, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.0123568, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.mq, %i.v
  %i.mr = load <32 x i8>, ptr %i.z, align 16
  %i.ms = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mr, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mt = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ms, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mu = bitcast <8 x i32> %i.mt to <32 x i8>
  %i.mv = shufflevector <32 x i8> %i.mu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mw = bitcast <32 x i8> %i.mv to <4 x i64>    ; 2 uses
  %i.mx = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mx, ptr %i.mq, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.0123568, i64 204
  %i.mz = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mz, ptr %i.my, align 1
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader557.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0217)
  %i.na = load <32 x i8>, ptr %i.aa, align 16
  %i.nb = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.na, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nb, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nd = bitcast <8 x i32> %i.nc to <32 x i8>
  %i.ne = shufflevector <32 x i8> %i.nd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nf = bitcast <32 x i8> %i.ne to <4 x i64>    ; 2 uses
  %i.ng = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ng, ptr %.sroa.0217, align 16
  %i.nh = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nh, ptr %.sroa.0217.12..sroa_idx35, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.0123568, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ni, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0217, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0217)
  br label %bb.ag

bb.af:                                            ; preds = %.preheader557.preheader
  %i.nj = getelementptr inbounds nuw i8, ptr %.0123568, i64 216
  %i.nk = load <32 x i8>, ptr %i.aa, align 16
  %i.nl = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nn = bitcast <8 x i32> %i.nm to <32 x i8>
  %i.no = shufflevector <32 x i8> %i.nn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.np = bitcast <32 x i8> %i.no to <4 x i64>    ; 2 uses
  %i.nq = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nq, ptr %i.nj, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.0123568, i64 228
  %i.ns = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ns, ptr %i.nr, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.nt = getelementptr inbounds nuw i8, ptr %.0123568, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.y, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.ah

bb.ah:                                            ; preds = %.thread548, %bb.ag, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.ag ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread548 ] ; 8 uses
  %.3 = phi ptr [ %i.nt, %bb.ag ], [ %.0123568, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jo, %.thread548 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.az, %i.x
  br i1 %.not, label %.loopexit558, label %bb.f, !llvm.loop !986

.loopexit558:                                     ; preds = %bb.ah
  %i.nu = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.nu, 0
  br i1 %.not150, label %.loopexit556, label %bb.ai

bb.ai:                                            ; preds = %.loopexit558
  %i.nv = ptrtoint ptr %i.u to i64
  %i.nw = ptrtoint ptr %i.az to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 1
  %i.nz = add nsw i64 %i.ny, %i.nu
  %i.oa = icmp sgt i64 %i.nz, 63
  br i1 %i.oa, label %.preheader555, label %.loopexit556

.preheader555:                                    ; preds = %bb.ai
  %i.ob = and i64 %.2137.idx, 63
  %i.oc = icmp ne i64 %i.ob, 0
  %i.od = icmp ult ptr %i.az, %i.u
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %.lr.ph574, label %.loopexit556

.lr.ph574:                                        ; preds = %.preheader555, %.lr.ph574
  %.2126573 = phi ptr [ %i.ol, %.lr.ph574 ], [ %i.az, %.preheader555 ] ; 2 uses
  %.4139572.idx = phi i64 [ %.4139572.add, %.lr.ph574 ], [ %.2137.idx, %.preheader555 ] ; 2 uses
  %.4139572.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139572.idx
  %i.of = load i16, ptr %.2126573, align 2
  %i.og = and i16 %i.of, 255
  %i.oh = zext nneg i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1             ; 2 uses
  store i8 %i.oj, ptr %.4139572.ptr, align 1
  %i.ok = icmp ult i8 %i.oj, 64
  %.sroa.sel.idx = zext i1 %i.ok to i64
  %.4139572.add = add nsw i64 %.4139572.idx, %.sroa.sel.idx ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.2126573, i64 2 ; 3 uses
  %i.om = and i64 %.4139572.add, 63
  %i.on = icmp ne i64 %i.om, 0
  %i.oo = icmp ult ptr %i.ol, %i.u
  %i.op = select i1 %i.on, i1 %i.oo, i1 false
  br i1 %i.op, label %.lr.ph574, label %.loopexit556, !llvm.loop !987

.loopexit556:                                     ; preds = %.lr.ph574, %.preheader555, %bb.ai, %.loopexit558
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit558 ], [ %.2137.idx, %bb.ai ], [ %.2137.idx, %.preheader555 ], [ %.4139572.add, %.lr.ph574 ] ; 2 uses
  %.3127 = phi ptr [ %i.az, %.loopexit558 ], [ %i.az, %bb.ai ], [ %i.az, %.preheader555 ], [ %i.ol, %.lr.ph574 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151577 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151577, label %._crit_edge, label %.lr.ph580

.lr.ph580:                                        ; preds = %.loopexit556
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0212.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph580, %bb.am
  %i.or = phi ptr [ %i.oq, %.lr.ph580 ], [ %i.pw, %bb.am ] ; 3 uses
  %.5579 = phi ptr [ %.3, %.lr.ph580 ], [ %i.pv, %bb.am ] ; 7 uses
  %.0131578 = phi ptr [ %i.a, %.lr.ph580 ], [ %i.or, %bb.am ] ; 2 uses
  %.not154 = icmp ult ptr %.5579, %i.v
  %i.os = load <32 x i8>, ptr %.0131578, align 1
  %i.ot = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.os, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ou = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ot, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ov = bitcast <8 x i32> %i.ou to <32 x i8>
  %i.ow = shufflevector <32 x i8> %i.ov, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ox = bitcast <32 x i8> %i.ow to <4 x i64>    ; 2 uses
  %i.oy = shufflevector <4 x i64> %i.ox, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oy, ptr %.5579, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %.5579, i64 12
  %i.pa = shufflevector <4 x i64> %i.ox, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pa, ptr %i.oz, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.0131578, i64 32 ; 2 uses
  br i1 %.not154, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0212)
  %i.pc = load <32 x i8>, ptr %i.pb, align 1
  %i.pd = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pc, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pe = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pd, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pf = bitcast <8 x i32> %i.pe to <32 x i8>
  %i.pg = shufflevector <32 x i8> %i.pf, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ph = bitcast <32 x i8> %i.pg to <4 x i64>    ; 2 uses
  %i.pi = shufflevector <4 x i64> %i.ph, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pi, ptr %.sroa.0212, align 16
  %i.pj = shufflevector <4 x i64> %i.ph, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pj, ptr %.sroa.0212.12..sroa_idx34, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.5579, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pk, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0212, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0212)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.pl = getelementptr inbounds nuw i8, ptr %.5579, i64 24
  %i.pm = load <32 x i8>, ptr %i.pb, align 1
  %i.pn = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.po = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pp = bitcast <8 x i32> %i.po to <32 x i8>
  %i.pq = shufflevector <32 x i8> %i.pp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pr = bitcast <32 x i8> %i.pq to <4 x i64>    ; 2 uses
  %i.ps = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ps, ptr %i.pl, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.5579, i64 36
  %i.pu = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pu, ptr %i.pt, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.pv = getelementptr inbounds nuw i8, ptr %.5579, i64 48 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.or, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.pw, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.aj, !llvm.loop !988

._crit_edge:                                      ; preds = %bb.am, %bb.e, %.loopexit556
  %.5140.ptr632 = phi ptr [ %i.a, %bb.e ], [ %.5140.ptr, %.loopexit556 ], [ %.5140.ptr, %bb.am ] ; 4 uses
  %.3127631 = phi ptr [ %2, %bb.e ], [ %.3127, %.loopexit556 ], [ %.3127, %bb.am ] ; 4 uses
  %i.px = phi ptr [ %i.s, %bb.e ], [ %i.u, %.loopexit556 ], [ %i.u, %bb.am ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.e ], [ %i.a, %.loopexit556 ], [ %i.or, %bb.am ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.e ], [ %.3, %.loopexit556 ], [ %i.pv, %bb.am ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.py = ptrtoint ptr %.5140.ptr632 to i64       ; 5 uses
  %i.pz = sub i64 %i.py, %.pre-phi
  %i.qa = and i64 %i.pz, 63
  %.not152 = icmp eq i64 %i.qa, 0
  br i1 %.not152, label %.loopexit, label %.preheader554

.preheader554:                                    ; preds = %._crit_edge
  %i.qb = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qc = icmp ult ptr %i.qb, %.5140.ptr632
  br i1 %i.qc, label %.lr.ph585.preheader, label %._crit_edge586

.lr.ph585.preheader:                              ; preds = %.preheader554
  %i.qd = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.py, i64 %i.qd)
  %6 = add i64 %umax10, -5
  %7 = sub i64 %6, %.pre-phi                      ; 2 uses
  %i.qe = lshr i64 %7, 2
  %i.qf = add nuw nsw i64 %i.qe, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 60
  br i1 %min.iters.check, label %.lr.ph585.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph585.preheader
  %i.qg = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.py, i64 %i.qg)
  %i.qh = add i64 %umax, -5
  %i.qi = sub i64 %i.qh, %.pre-phi                ; 2 uses
  %i.qj = lshr i64 %i.qi, 2
  %i.qk = mul nuw i64 %i.qj, 3
  %i.ql = getelementptr i8, ptr %.5.lcssa, i64 %i.qk
  %scevgep = getelementptr i8, ptr %i.ql, i64 3
  %i.qm = and i64 %i.qi, -4
  %i.qn = getelementptr i8, ptr %.pre-phi.in, i64 %i.qm
  %scevgep9 = getelementptr i8, ptr %i.qn, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph585.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qf, 9223372036854775800     ; 4 uses
  %i.qo = shl i64 %n.vec, 2                       ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qb, i64 %i.qo  ; 2 uses
  %i.qq = mul i64 %n.vec, 3
  %i.qr = getelementptr i8, ptr %.5.lcssa, i64 %i.qq ; 2 uses
  %i.qs = getelementptr i8, ptr %.pre-phi.in, i64 %i.qo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qt = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %i.qu = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep11.a = getelementptr i8, ptr %i.qu, i64 3
  %i.qv = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep12.a = getelementptr i8, ptr %i.qv, i64 6
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep13.a = getelementptr i8, ptr %i.qw, i64 9
  %i.qx = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep14.a = getelementptr i8, ptr %i.qx, i64 12
  %i.qy = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep15.a = getelementptr i8, ptr %i.qy, i64 15
  %i.qz = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep16.a = getelementptr i8, ptr %i.qz, i64 18
  %i.ra = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep17.a = getelementptr i8, ptr %i.ra, i64 21
  %i.rb = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rb
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !989 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.rc = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rd = shl nuw nsw <8 x i32> %i.rc, splat (i32 18)
  %i.re = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rf = shl nuw nsw <8 x i32> %i.re, splat (i32 12)
  %i.rg = add nuw nsw <8 x i32> %i.rf, %i.rd
  %i.rh = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.ri = shl nuw nsw <8 x i32> %i.rh, splat (i32 6)
  %i.rj = add nuw nsw <8 x i32> %i.rg, %i.ri
  %i.rk = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rl = add nuw nsw <8 x i32> %i.rj, %i.rk
  %i.rm = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rl)
  %i.rn = lshr <8 x i32> %i.rm, splat (i32 8)
  %i.ro = trunc nuw <8 x i32> %i.rn to <8 x i24>  ; 8 uses
  %i.rp = extractelement <8 x i24> %i.ro, i64 0
  store i24 %i.rp, ptr %next.gep, align 1, !alias.scope !992, !noalias !989
  %i.rq = extractelement <8 x i24> %i.ro, i64 1
  store i24 %i.rq, ptr %next.gep11.a, align 1, !alias.scope !992, !noalias !989
  %i.rr = extractelement <8 x i24> %i.ro, i64 2
  store i24 %i.rr, ptr %next.gep12.a, align 1, !alias.scope !992, !noalias !989
  %i.rs = extractelement <8 x i24> %i.ro, i64 3
  store i24 %i.rs, ptr %next.gep13.a, align 1, !alias.scope !992, !noalias !989
  %i.rt = extractelement <8 x i24> %i.ro, i64 4
  store i24 %i.rt, ptr %next.gep14.a, align 1, !alias.scope !992, !noalias !989
  %i.ru = extractelement <8 x i24> %i.ro, i64 5
  store i24 %i.ru, ptr %next.gep15.a, align 1, !alias.scope !992, !noalias !989
  %i.rv = extractelement <8 x i24> %i.ro, i64 6
  store i24 %i.rv, ptr %next.gep16.a, align 1, !alias.scope !992, !noalias !989
  %i.rw = extractelement <8 x i24> %i.ro, i64 7
  store i24 %i.rw, ptr %next.gep17.a, align 1, !alias.scope !992, !noalias !989
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rx = icmp eq i64 %index.next, %n.vec
  br i1 %i.rx, label %middle.block, label %vector.body, !llvm.loop !994

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qf, %n.vec
  br i1 %cmp.n, label %._crit_edge586, label %.lr.ph585.preheader24

.lr.ph585.preheader24:                            ; preds = %vector.memcheck, %.lr.ph585.preheader, %middle.block
  %.ph = phi ptr [ %i.qb, %vector.memcheck ], [ %i.qb, %.lr.ph585.preheader ], [ %i.qp, %middle.block ]
  %.6584.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph585.preheader ], [ %i.qr, %middle.block ]
  %.1132583.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph585.preheader ], [ %i.qs, %middle.block ]
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %.lr.ph585.preheader24, %.lr.ph585
  %i.ry = phi ptr [ %i.sg, %.lr.ph585 ], [ %.ph, %.lr.ph585.preheader24 ] ; 3 uses
  %.6584 = phi ptr [ %i.sf, %.lr.ph585 ], [ %.6584.ph, %.lr.ph585.preheader24 ] ; 2 uses
  %.1132583 = phi ptr [ %i.ry, %.lr.ph585 ], [ %.1132583.ph, %.lr.ph585.preheader24 ]
  %i.rz = load <4 x i8>, ptr %.1132583, align 1
  %i.sa = zext <4 x i8> %i.rz to <4 x i32>
  %i.sb = shl nuw nsw <4 x i32> %i.sa, <i32 18, i32 12, i32 6, i32 0>
  %i.sc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sb)
  %i.sd = call i32 @llvm.bswap.i32(i32 %i.sc)
  %i.se = lshr i32 %i.sd, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.se to i24
  store i24 %.0.extract.trunc6, ptr %.6584, align 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.6584, i64 3 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 4 ; 3 uses
  %i.sh = icmp ult ptr %i.sg, %.5140.ptr632
  br i1 %i.sh, label %.lr.ph585, label %._crit_edge586, !llvm.loop !995

._crit_edge586:                                   ; preds = %.lr.ph585, %middle.block, %.preheader554
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader554 ], [ %i.qs, %middle.block ], [ %i.ry, %.lr.ph585 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader554 ], [ %i.qr, %middle.block ], [ %i.sf, %.lr.ph585 ] ; 3 uses
  %.lcssa559 = phi ptr [ %i.qb, %.preheader554 ], [ %i.qp, %middle.block ], [ %i.sg, %.lr.ph585 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa559, %.5140.ptr632
  br i1 %.not153, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge586
  %i.si = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sj = zext <4 x i8> %i.si to <4 x i32>
  %i.sk = shl nuw nsw <4 x i32> %i.sj, <i32 18, i32 12, i32 6, i32 0>
  %i.sl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sk)
  %i.sm = call i32 @llvm.bswap.i32(i32 %i.sl)
  %i.sn = lshr i32 %i.sm, 8
  %.0.extract.trunc = trunc nuw i32 %i.sn to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge586
  %.2133 = phi ptr [ %.lcssa559, %bb.an ], [ %.1132.lcssa, %._crit_edge586 ]
  %.7 = phi ptr [ %i.so, %bb.an ], [ %.6.lcssa, %._crit_edge586 ] ; 3 uses
  %i.sp = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.sq = sub i64 %i.py, %i.sp
  %i.sr = trunc i64 %i.sq to i32                  ; 4 uses
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ao
  %i.st = trunc i64 %i.py to i32
  %i.su = trunc i64 %i.sp to i32
  %xtraiter = and i32 %i.sr, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.5129.prol = phi ptr [ %i.sv, %.preheader.prol ], [ %.3127631, %.preheader.preheader ]
  %i.sv = getelementptr inbounds i8, ptr %.5129.prol, i64 -2 ; 4 uses
  %i.sw = load i16, ptr %i.sv, align 2
  %i.sx = and i16 %i.sw, 255
  %i.sy = zext nneg i16 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1
  %i.tb = icmp ugt i8 %i.ta, 63
  br i1 %i.tb, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !996

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.tc = add nsw i32 %i.sr, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0591.unr = phi i32 [ %i.sr, %.preheader.preheader ], [ %i.tc, %.preheader.prol.loopexit.unr-lcssa ]
  %.4128590.unr = phi ptr [ %.3127631, %.preheader.preheader ], [ %i.sv, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.sv, %.preheader.prol.loopexit.unr-lcssa ]
  %i.td = add i32 %i.st, -1
  %i.te = icmp eq i32 %i.td, %i.su
  br i1 %i.te, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aq
  %.0591 = phi i32 [ %i.tt, %bb.aq ], [ %.0591.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128590 = phi ptr [ %i.tm, %bb.aq ], [ %.4128590.unr, %.preheader.prol.loopexit ]
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %bb.ap
  %.5129 = phi ptr [ %i.tf, %bb.ap ], [ %.4128590, %.preheader ]
  %i.tf = getelementptr inbounds i8, ptr %.5129, i64 -2 ; 3 uses
  %i.tg = load i16, ptr %i.tf, align 2
  %i.th = and i16 %i.tg, 255
  %i.ti = zext nneg i16 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = icmp ugt i8 %i.tk, 63
  br i1 %i.tl, label %bb.ap, label %.preheader.1, !llvm.loop !996

.preheader.1:                                     ; preds = %bb.ap, %.preheader.1
  %.5129.1 = phi ptr [ %i.tm, %.preheader.1 ], [ %i.tf, %bb.ap ]
  %i.tm = getelementptr inbounds i8, ptr %.5129.1, i64 -2 ; 4 uses
  %i.tn = load i16, ptr %i.tm, align 2
  %i.to = and i16 %i.tn, 255
  %i.tp = zext nneg i16 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = icmp ugt i8 %i.tr, 63
  br i1 %i.ts, label %.preheader.1, label %bb.aq, !llvm.loop !996
end_hunk_8
begin_hunk_9_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb1ELb0ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a

bb.aj:                                            ; preds = %.preheader653.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0273)
  %i.ny = load <32 x i8>, ptr %i.ac, align 16
  %i.nz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ny, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.oa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ob = bitcast <8 x i32> %i.oa to <32 x i8>
  %i.oc = shufflevector <32 x i8> %i.ob, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.od = bitcast <32 x i8> %i.oc to <4 x i64>    ; 2 uses
  %i.oe = shufflevector <4 x i64> %i.od, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oe, ptr %.sroa.0273, align 16
  %i.of = shufflevector <4 x i64> %i.od, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.of, ptr %.sroa.0273.12..sroa_idx819, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %.0153669, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.og, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0273, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0273)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader653.preheader
  %i.oh = getelementptr inbounds nuw i8, ptr %.0153669, i64 216
  %i.oi = load <32 x i8>, ptr %i.ac, align 16
  %i.oj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oi, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ok = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.oj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ol = bitcast <8 x i32> %i.ok to <32 x i8>
  %i.om = shufflevector <32 x i8> %i.ol, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.on = bitcast <32 x i8> %i.om to <4 x i64>    ; 2 uses
  %i.oo = shufflevector <4 x i64> %i.on, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oo, ptr %i.oh, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %.0153669, i64 228
  %i.oq = shufflevector <4 x i64> %i.on, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.oq, ptr %i.op, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.or = getelementptr inbounds nuw i8, ptr %.0153669, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread628, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.al
  %.3174.idx = phi i64 [ 0, %.thread628 ], [ %.1172.add, %bb.al ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.km, %.thread628 ], [ %i.or, %bb.al ], [ %.0153669, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not193 = icmp ugt ptr %i.bb, %i.z
  br i1 %.not193, label %.thread637, label %bb.h, !llvm.loop !998

.thread637:                                       ; preds = %bb.am
  %i.os = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not203 = icmp eq i64 %i.os, 0
  br i1 %.not203, label %.loopexit652, label %bb.an

bb.an:                                            ; preds = %.thread637
  %i.ot = ptrtoint ptr %i.w to i64
  %i.ou = ptrtoint ptr %i.bb to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = ashr exact i64 %i.ov, 1
  %i.ox = add nsw i64 %i.ow, %i.os
  %i.oy = icmp sgt i64 %i.ox, 63
  br i1 %i.oy, label %.preheader651, label %.loopexit652

.preheader651:                                    ; preds = %bb.an
  %i.oz = and i64 %.3174.idx, 63
  %i.pa = icmp ne i64 %i.oz, 0
  %i.pb = icmp ult ptr %i.bb, %i.w
  %i.pc = select i1 %i.pa, i1 %i.pb, i1 false
  br i1 %i.pc, label %.lr.ph675, label %.loopexit652

.lr.ph675:                                        ; preds = %.preheader651, %bb.ao
  %.4158674 = phi ptr [ %i.pv, %bb.ao ], [ %i.bb, %.preheader651 ] ; 3 uses
  %.6177673.idx = phi i64 [ %.6177673.add, %bb.ao ], [ %.3174.idx, %.preheader651 ] ; 2 uses
  %.6177673.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177673.idx
  %i.pd = load i16, ptr %.4158674, align 2        ; 2 uses
  %i.pe = and i16 %i.pd, 255
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1             ; 3 uses
  store i8 %i.ph, ptr %.6177673.ptr, align 1
  %i.pi = icmp ult i16 %i.pd, 256
  %i.pj = icmp ult i8 %i.ph, 65
  %or.cond.not = select i1 %i.pi, i1 %i.pj, i1 false
  br i1 %or.cond.not, label %bb.ao, label %.thread645

.thread645:                                       ; preds = %.lr.ph675
  %i.pk = ptrtoint ptr %.4158674 to i64
  %i.pl = ptrtoint ptr %2 to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = ashr exact i64 %i.pm, 1
  %i.po = ptrtoint ptr %.4 to i64
  %i.pp = ptrtoint ptr %1 to i64
  %i.pq = sub i64 %i.po, %i.pp
  store i32 7, ptr %0, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.pn, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.pq, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pt, align 8
  br label %bb.bd

bb.ao:                                            ; preds = %.lr.ph675
  %i.pu = icmp samesign ult i8 %i.ph, 64
  %.sroa.sel.idx = zext i1 %i.pu to i64
  %.6177673.add = add nsw i64 %.6177673.idx, %.sroa.sel.idx ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.4158674, i64 2 ; 3 uses
  %i.pw = and i64 %.6177673.add, 63
  %i.px = icmp ne i64 %i.pw, 0
  %i.py = icmp ult ptr %i.pv, %i.w
  %i.pz = select i1 %i.px, i1 %i.py, i1 false
  br i1 %i.pz, label %.lr.ph675, label %.loopexit652

.loopexit652:                                     ; preds = %bb.ao, %.preheader651, %bb.an, %.thread637
  %.8179.idx = phi i64 [ %.3174.idx, %.thread637 ], [ %.3174.idx, %bb.an ], [ %.3174.idx, %.preheader651 ], [ %.6177673.add, %bb.ao ] ; 2 uses
  %.6160 = phi ptr [ %i.bb, %.thread637 ], [ %i.bb, %bb.an ], [ %i.bb, %.preheader651 ], [ %i.pv, %bb.ao ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not204678 = icmp slt i64 %.8179.idx, 64
  br i1 %.not204678, label %._crit_edge, label %.lr.ph681

.lr.ph681:                                        ; preds = %.loopexit652
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0268.12..sroa_idx818 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 12
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph681, %bb.as
  %i.qb = phi ptr [ %i.qa, %.lr.ph681 ], [ %i.rg, %bb.as ] ; 3 uses
  %.7680 = phi ptr [ %.4, %.lr.ph681 ], [ %i.rf, %bb.as ] ; 7 uses
  %.0167679 = phi ptr [ %i.a, %.lr.ph681 ], [ %i.qb, %bb.as ] ; 2 uses
  %.not209 = icmp ult ptr %.7680, %i.x
  %i.qc = load <32 x i8>, ptr %.0167679, align 1
  %i.qd = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qc, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qe = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qd, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qf = bitcast <8 x i32> %i.qe to <32 x i8>
  %i.qg = shufflevector <32 x i8> %i.qf, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qh = bitcast <32 x i8> %i.qg to <4 x i64>    ; 2 uses
  %i.qi = shufflevector <4 x i64> %i.qh, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qi, ptr %.7680, align 1
  %i.qj = getelementptr inbounds nuw i8, ptr %.7680, i64 12
  %i.qk = shufflevector <4 x i64> %i.qh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qk, ptr %i.qj, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.0167679, i64 32 ; 2 uses
  br i1 %.not209, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  %i.qm = load <32 x i8>, ptr %i.ql, align 1
  %i.qn = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qo = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qp = bitcast <8 x i32> %i.qo to <32 x i8>
  %i.qq = shufflevector <32 x i8> %i.qp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qr = bitcast <32 x i8> %i.qq to <4 x i64>    ; 2 uses
  %i.qs = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qs, ptr %.sroa.0268, align 16
  %i.qt = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qt, ptr %.sroa.0268.12..sroa_idx818, align 4
  %i.qu = getelementptr inbounds nuw i8, ptr %.7680, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qu, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0268, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.qv = getelementptr inbounds nuw i8, ptr %.7680, i64 24
  %i.qw = load <32 x i8>, ptr %i.ql, align 1
  %i.qx = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qw, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qy = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qx, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qz = bitcast <8 x i32> %i.qy to <32 x i8>
  %i.ra = shufflevector <32 x i8> %i.qz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.rb = bitcast <32 x i8> %i.ra to <4 x i64>    ; 2 uses
  %i.rc = shufflevector <4 x i64> %i.rb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.rc, ptr %i.qv, align 1
  %i.rd = getelementptr inbounds nuw i8, ptr %.7680, i64 36
  %i.re = shufflevector <4 x i64> %i.rb, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.re, ptr %i.rd, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.rf = getelementptr inbounds nuw i8, ptr %.7680, i64 48 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 64 ; 2 uses
  %.not204 = icmp ugt ptr %i.rg, %.8179.ptr
  br i1 %.not204, label %._crit_edge, label %bb.ap, !llvm.loop !999

._crit_edge:                                      ; preds = %bb.as, %bb.g, %.loopexit652
  %.8179.ptr752 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit652 ], [ %.8179.ptr, %bb.as ] ; 4 uses
  %.6160751 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit652 ], [ %.6160, %bb.as ] ; 4 uses
  %i.rh = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit652 ], [ %i.w, %bb.as ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit652 ], [ %i.qb, %bb.as ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit652 ], [ %i.rf, %bb.as ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.ri = ptrtoint ptr %.8179.ptr752 to i64       ; 5 uses
  %i.rj = sub i64 %i.ri, %.pre-phi
  %i.rk = and i64 %i.rj, 63
  %.not205 = icmp eq i64 %i.rk, 0
  br i1 %.not205, label %.loopexit, label %.preheader650

.preheader650:                                    ; preds = %._crit_edge
  %i.rl = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.rm = icmp ult ptr %i.rl, %.8179.ptr752
  br i1 %i.rm, label %.lr.ph686.preheader, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %.preheader650
  %i.rn = add i64 %.pre-phi, 8
  %umax786 = call i64 @llvm.umax.i64(i64 %i.ri, i64 %i.rn)
  %7 = add i64 %umax786, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.ro = lshr i64 %8, 2
  %i.rp = add nuw nsw i64 %i.ro, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph686.preheader800, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph686.preheader
  %i.rq = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.ri, i64 %i.rq)
  %i.rr = add i64 %umax, -5
  %i.rs = sub i64 %i.rr, %.pre-phi                ; 2 uses
  %i.rt = lshr i64 %i.rs, 2
  %i.ru = mul nuw i64 %i.rt, 3
  %i.rv = getelementptr i8, ptr %.7.lcssa, i64 %i.ru
  %scevgep = getelementptr i8, ptr %i.rv, i64 3
  %i.rw = and i64 %i.rs, -4
  %i.rx = getelementptr i8, ptr %.pre-phi.in, i64 %i.rw
  %scevgep785 = getelementptr i8, ptr %i.rx, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep785
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph686.preheader800, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rp, 9223372036854775800     ; 4 uses
  %i.ry = shl i64 %n.vec, 2                       ; 2 uses
  %i.rz = getelementptr i8, ptr %i.rl, i64 %i.ry  ; 2 uses
  %i.sa = mul i64 %n.vec, 3
  %i.sb = getelementptr i8, ptr %.7.lcssa, i64 %i.sa ; 2 uses
  %i.sc = getelementptr i8, ptr %.pre-phi.in, i64 %i.ry ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sd = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %i.se = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep787.a = getelementptr i8, ptr %i.se, i64 3
  %i.sf = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep788.a = getelementptr i8, ptr %i.sf, i64 6
  %i.sg = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep789.a = getelementptr i8, ptr %i.sg, i64 9
  %i.sh = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep790.a = getelementptr i8, ptr %i.sh, i64 12
  %i.si = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep791.a = getelementptr i8, ptr %i.si, i64 15
  %i.sj = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep792.a = getelementptr i8, ptr %i.sj, i64 18
  %i.sk = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep793.a = getelementptr i8, ptr %i.sk, i64 21
  %i.sl = shl i64 %index, 2
  %next.gep794 = getelementptr i8, ptr %.pre-phi.in, i64 %i.sl
  %wide.vec = load <32 x i8>, ptr %next.gep794, align 1, !alias.scope !1000 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec795.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec796.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec797 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.sm = zext <8 x i8> %strided.vec to <8 x i32>
  %i.sn = shl nuw nsw <8 x i32> %i.sm, splat (i32 18)
  %i.so = zext <8 x i8> %strided.vec795.a to <8 x i32>
  %i.sp = shl nuw nsw <8 x i32> %i.so, splat (i32 12)
  %i.sq = add nuw nsw <8 x i32> %i.sp, %i.sn
  %i.sr = zext <8 x i8> %strided.vec796.a to <8 x i32>
  %i.ss = shl nuw nsw <8 x i32> %i.sr, splat (i32 6)
  %i.st = add nuw nsw <8 x i32> %i.sq, %i.ss
  %i.su = zext <8 x i8> %strided.vec797 to <8 x i32>
  %i.sv = add nuw nsw <8 x i32> %i.st, %i.su
  %i.sw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sv)
  %i.sx = lshr <8 x i32> %i.sw, splat (i32 8)
  %i.sy = trunc nuw <8 x i32> %i.sx to <8 x i24>  ; 8 uses
  %i.sz = extractelement <8 x i24> %i.sy, i64 0
  store i24 %i.sz, ptr %next.gep, align 1, !alias.scope !1003, !noalias !1000
  %i.ta = extractelement <8 x i24> %i.sy, i64 1
  store i24 %i.ta, ptr %next.gep787.a, align 1, !alias.scope !1003, !noalias !1000
  %i.tb = extractelement <8 x i24> %i.sy, i64 2
  store i24 %i.tb, ptr %next.gep788.a, align 1, !alias.scope !1003, !noalias !1000
  %i.tc = extractelement <8 x i24> %i.sy, i64 3
  store i24 %i.tc, ptr %next.gep789.a, align 1, !alias.scope !1003, !noalias !1000
  %i.td = extractelement <8 x i24> %i.sy, i64 4
  store i24 %i.td, ptr %next.gep790.a, align 1, !alias.scope !1003, !noalias !1000
  %i.te = extractelement <8 x i24> %i.sy, i64 5
  store i24 %i.te, ptr %next.gep791.a, align 1, !alias.scope !1003, !noalias !1000
  %i.tf = extractelement <8 x i24> %i.sy, i64 6
  store i24 %i.tf, ptr %next.gep792.a, align 1, !alias.scope !1003, !noalias !1000
  %i.tg = extractelement <8 x i24> %i.sy, i64 7
  store i24 %i.tg, ptr %next.gep793.a, align 1, !alias.scope !1003, !noalias !1000
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.th = icmp eq i64 %index.next, %n.vec
  br i1 %i.th, label %middle.block, label %vector.body, !llvm.loop !1005

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rp, %n.vec
  br i1 %cmp.n, label %._crit_edge687, label %.lr.ph686.preheader800

.lr.ph686.preheader800:                           ; preds = %vector.memcheck, %.lr.ph686.preheader, %middle.block
  %.ph = phi ptr [ %i.rl, %vector.memcheck ], [ %i.rl, %.lr.ph686.preheader ], [ %i.rz, %middle.block ]
  %.8685.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph686.preheader ], [ %i.sb, %middle.block ]
  %.1168684.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph686.preheader ], [ %i.sc, %middle.block ]
  br label %.lr.ph686

.lr.ph686:                                        ; preds = %.lr.ph686.preheader800, %.lr.ph686
  %i.ti = phi ptr [ %i.tq, %.lr.ph686 ], [ %.ph, %.lr.ph686.preheader800 ] ; 3 uses
  %.8685 = phi ptr [ %i.tp, %.lr.ph686 ], [ %.8685.ph, %.lr.ph686.preheader800 ] ; 2 uses
  %.1168684 = phi ptr [ %i.ti, %.lr.ph686 ], [ %.1168684.ph, %.lr.ph686.preheader800 ]
  %i.tj = load <4 x i8>, ptr %.1168684, align 1
  %i.tk = zext <4 x i8> %i.tj to <4 x i32>
  %i.tl = shl nuw nsw <4 x i32> %i.tk, <i32 18, i32 12, i32 6, i32 0>
  %i.tm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tl)
  %i.tn = call i32 @llvm.bswap.i32(i32 %i.tm)
  %i.to = lshr i32 %i.tn, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.to to i24
  store i24 %.0.extract.trunc10, ptr %.8685, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.8685, i64 3 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 3 uses
  %i.tr = icmp ult ptr %i.tq, %.8179.ptr752
  br i1 %i.tr, label %.lr.ph686, label %._crit_edge687, !llvm.loop !1006

._crit_edge687:                                   ; preds = %.lr.ph686, %middle.block, %.preheader650
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader650 ], [ %i.sc, %middle.block ], [ %i.ti, %.lr.ph686 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader650 ], [ %i.sb, %middle.block ], [ %i.tp, %.lr.ph686 ] ; 3 uses
  %.lcssa654 = phi ptr [ %i.rl, %.preheader650 ], [ %i.rz, %middle.block ], [ %i.tq, %.lr.ph686 ] ; 2 uses
  %.not206 = icmp ugt ptr %.lcssa654, %.8179.ptr752
  br i1 %.not206, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge687
  %i.ts = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.tt = zext <4 x i8> %i.ts to <4 x i32>
  %i.tu = shl nuw nsw <4 x i32> %i.tt, <i32 18, i32 12, i32 6, i32 0>
  %i.tv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tu)
  %i.tw = call i32 @llvm.bswap.i32(i32 %i.tv)
  %i.tx = lshr i32 %i.tw, 8
  %.0.extract.trunc = trunc nuw i32 %i.tx to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge687
  %.2169 = phi ptr [ %.lcssa654, %bb.at ], [ %.1168.lcssa, %._crit_edge687 ]
  %.9 = phi ptr [ %i.ty, %bb.at ], [ %.8.lcssa, %._crit_edge687 ] ; 3 uses
  %i.tz = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.ua = sub i64 %i.ri, %i.tz
  %i.ub = trunc i64 %i.ua to i32                  ; 4 uses
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.au
  %i.ud = trunc i64 %i.ri to i32
  %i.ue = trunc i64 %i.tz to i32
  %xtraiter = and i32 %i.ub, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.8162.prol = phi ptr [ %i.uf, %.preheader.prol ], [ %.6160751, %.preheader.preheader ]
  %i.uf = getelementptr inbounds i8, ptr %.8162.prol, i64 -2 ; 4 uses
  %i.ug = load i16, ptr %i.uf, align 2
  %i.uh = and i16 %i.ug, 255
  %i.ui = zext nneg i16 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = icmp eq i8 %i.uk, 64
  br i1 %i.ul, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !1007

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.um = add nsw i32 %i.ub, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0692.unr = phi i32 [ %i.ub, %.preheader.preheader ], [ %i.um, %.preheader.prol.loopexit.unr-lcssa ]
  %.7161691.unr = phi ptr [ %.6160751, %.preheader.preheader ], [ %i.uf, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.uf, %.preheader.prol.loopexit.unr-lcssa ]
  %i.un = add i32 %i.ud, -1
  %i.uo = icmp eq i32 %i.un, %i.ue
  br i1 %i.uo, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aw
  %.0692 = phi i32 [ %i.vd, %bb.aw ], [ %.0692.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161691 = phi ptr [ %i.uw, %bb.aw ], [ %.7161691.unr, %.preheader.prol.loopexit ]
  br label %bb.av

bb.av:                                            ; preds = %.preheader, %bb.av
  %.8162 = phi ptr [ %i.up, %bb.av ], [ %.7161691, %.preheader ]
  %i.up = getelementptr inbounds i8, ptr %.8162, i64 -2 ; 3 uses
  %i.uq = load i16, ptr %i.up, align 2
  %i.ur = and i16 %i.uq, 255
  %i.us = zext nneg i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = icmp eq i8 %i.uu, 64
  br i1 %i.uv, label %bb.av, label %.preheader.1, !llvm.loop !1007

.preheader.1:                                     ; preds = %bb.av, %.preheader.1
  %.8162.1 = phi ptr [ %i.uw, %.preheader.1 ], [ %i.up, %bb.av ]
  %i.uw = getelementptr inbounds i8, ptr %.8162.1, i64 -2 ; 4 uses
  %i.ux = load i16, ptr %i.uw, align 2
  %i.uy = and i16 %i.ux, 255
  %i.uz = zext nneg i16 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = icmp eq i8 %i.vb, 64
  br i1 %i.vc, label %.preheader.1, label %bb.aw, !llvm.loop !1007
end_hunk_9
begin_hunk_10_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb1ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.mj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.mi, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mk = bitcast <8 x i32> %i.mj to <32 x i8>
  %i.ml = shufflevector <32 x i8> %i.mk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mm = bitcast <32 x i8> %i.ml to <4 x i64>    ; 2 uses
  %i.mn = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mn, ptr %i.mg, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0123568, i64 180
  %i.mp = shufflevector <4 x i64> %i.mm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mp, ptr %i.mo, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.0123568, i64 192 ; 2 uses
  %.not162 = icmp ult ptr %i.mq, %i.v
  %i.mr = load <32 x i8>, ptr %i.z, align 16
  %i.ms = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mr, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mt = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ms, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mu = bitcast <8 x i32> %i.mt to <32 x i8>
  %i.mv = shufflevector <32 x i8> %i.mu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.mw = bitcast <32 x i8> %i.mv to <4 x i64>    ; 2 uses
  %i.mx = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mx, ptr %i.mq, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.0123568, i64 204
  %i.mz = shufflevector <4 x i64> %i.mw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mz, ptr %i.my, align 1
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader557.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0217)
  %i.na = load <32 x i8>, ptr %i.aa, align 16
  %i.nb = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.na, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nb, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nd = bitcast <8 x i32> %i.nc to <32 x i8>
  %i.ne = shufflevector <32 x i8> %i.nd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.nf = bitcast <32 x i8> %i.ne to <4 x i64>    ; 2 uses
  %i.ng = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ng, ptr %.sroa.0217, align 16
  %i.nh = shufflevector <4 x i64> %i.nf, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nh, ptr %.sroa.0217.12..sroa_idx35, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.0123568, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ni, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0217, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0217)
  br label %bb.ag

bb.af:                                            ; preds = %.preheader557.preheader
  %i.nj = getelementptr inbounds nuw i8, ptr %.0123568, i64 216
  %i.nk = load <32 x i8>, ptr %i.aa, align 16
  %i.nl = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nk, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nl, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nn = bitcast <8 x i32> %i.nm to <32 x i8>
  %i.no = shufflevector <32 x i8> %i.nn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.np = bitcast <32 x i8> %i.no to <4 x i64>    ; 2 uses
  %i.nq = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nq, ptr %i.nj, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.0123568, i64 228
  %i.ns = shufflevector <4 x i64> %i.np, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ns, ptr %i.nr, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.nt = getelementptr inbounds nuw i8, ptr %.0123568, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.y, i64 64, i1 false)
  %.1136.add = add nsw i64 %.1136.idx, -320
  br label %bb.ah

bb.ah:                                            ; preds = %.thread548, %bb.ag, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit
  %.2137.idx = phi i64 [ %.1136.add, %bb.ag ], [ %.1136.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ 0, %.thread548 ] ; 8 uses
  %.3 = phi ptr [ %i.nt, %bb.ag ], [ %.0123568, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ], [ %i.jo, %.thread548 ] ; 3 uses
  %.0135.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.2137.idx
  %.not = icmp ugt ptr %i.az, %i.x
  br i1 %.not, label %.loopexit558, label %bb.f, !llvm.loop !1009

.loopexit558:                                     ; preds = %bb.ah
  %i.nu = srem i64 %.2137.idx, 64                 ; 2 uses
  %.not150 = icmp eq i64 %i.nu, 0
  br i1 %.not150, label %.loopexit556, label %bb.ai

bb.ai:                                            ; preds = %.loopexit558
  %i.nv = ptrtoint ptr %i.u to i64
  %i.nw = ptrtoint ptr %i.az to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 1
  %i.nz = add nsw i64 %i.ny, %i.nu
  %i.oa = icmp sgt i64 %i.nz, 63
  br i1 %i.oa, label %.preheader555, label %.loopexit556

.preheader555:                                    ; preds = %bb.ai
  %i.ob = and i64 %.2137.idx, 63
  %i.oc = icmp ne i64 %i.ob, 0
  %i.od = icmp ult ptr %i.az, %i.u
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %.lr.ph574, label %.loopexit556

.lr.ph574:                                        ; preds = %.preheader555, %.lr.ph574
  %.2126573 = phi ptr [ %i.ol, %.lr.ph574 ], [ %i.az, %.preheader555 ] ; 2 uses
  %.4139572.idx = phi i64 [ %.4139572.add, %.lr.ph574 ], [ %.2137.idx, %.preheader555 ] ; 2 uses
  %.4139572.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.4139572.idx
  %i.of = load i16, ptr %.2126573, align 2
  %i.og = and i16 %i.of, 255
  %i.oh = zext nneg i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1             ; 2 uses
  store i8 %i.oj, ptr %.4139572.ptr, align 1
  %i.ok = icmp ult i8 %i.oj, 64
  %.sroa.sel.idx = zext i1 %i.ok to i64
  %.4139572.add = add nsw i64 %.4139572.idx, %.sroa.sel.idx ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.2126573, i64 2 ; 3 uses
  %i.om = and i64 %.4139572.add, 63
  %i.on = icmp ne i64 %i.om, 0
  %i.oo = icmp ult ptr %i.ol, %i.u
  %i.op = select i1 %i.on, i1 %i.oo, i1 false
  br i1 %i.op, label %.lr.ph574, label %.loopexit556, !llvm.loop !1010

.loopexit556:                                     ; preds = %.lr.ph574, %.preheader555, %bb.ai, %.loopexit558
  %.5140.idx = phi i64 [ %.2137.idx, %.loopexit558 ], [ %.2137.idx, %bb.ai ], [ %.2137.idx, %.preheader555 ], [ %.4139572.add, %.lr.ph574 ] ; 2 uses
  %.3127 = phi ptr [ %i.az, %.loopexit558 ], [ %i.az, %bb.ai ], [ %i.az, %.preheader555 ], [ %i.ol, %.lr.ph574 ] ; 2 uses
  %.5140.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.5140.idx ; 3 uses
  %.not151577 = icmp slt i64 %.5140.idx, 64
  br i1 %.not151577, label %._crit_edge, label %.lr.ph580

.lr.ph580:                                        ; preds = %.loopexit556
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0212.12..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph580, %bb.am
  %i.or = phi ptr [ %i.oq, %.lr.ph580 ], [ %i.pw, %bb.am ] ; 3 uses
  %.5579 = phi ptr [ %.3, %.lr.ph580 ], [ %i.pv, %bb.am ] ; 7 uses
  %.0131578 = phi ptr [ %i.a, %.lr.ph580 ], [ %i.or, %bb.am ] ; 2 uses
  %.not154 = icmp ult ptr %.5579, %i.v
  %i.os = load <32 x i8>, ptr %.0131578, align 1
  %i.ot = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.os, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ou = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ot, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ov = bitcast <8 x i32> %i.ou to <32 x i8>
  %i.ow = shufflevector <32 x i8> %i.ov, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ox = bitcast <32 x i8> %i.ow to <4 x i64>    ; 2 uses
  %i.oy = shufflevector <4 x i64> %i.ox, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oy, ptr %.5579, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %.5579, i64 12
  %i.pa = shufflevector <4 x i64> %i.ox, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pa, ptr %i.oz, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.0131578, i64 32 ; 2 uses
  br i1 %.not154, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0212)
  %i.pc = load <32 x i8>, ptr %i.pb, align 1
  %i.pd = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pc, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.pe = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pd, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pf = bitcast <8 x i32> %i.pe to <32 x i8>
  %i.pg = shufflevector <32 x i8> %i.pf, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ph = bitcast <32 x i8> %i.pg to <4 x i64>    ; 2 uses
  %i.pi = shufflevector <4 x i64> %i.ph, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.pi, ptr %.sroa.0212, align 16
  %i.pj = shufflevector <4 x i64> %i.ph, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pj, ptr %.sroa.0212.12..sroa_idx34, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.5579, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pk, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0212, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0212)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.pl = getelementptr inbounds nuw i8, ptr %.5579, i64 24
  %i.pm = load <32 x i8>, ptr %i.pb, align 1
  %i.pn = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.po = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.pp = bitcast <8 x i32> %i.po to <32 x i8>
  %i.pq = shufflevector <32 x i8> %i.pp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.pr = bitcast <32 x i8> %i.pq to <4 x i64>    ; 2 uses
  %i.ps = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ps, ptr %i.pl, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.5579, i64 36
  %i.pu = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.pu, ptr %i.pt, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.pv = getelementptr inbounds nuw i8, ptr %.5579, i64 48 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.or, i64 64 ; 2 uses
  %.not151 = icmp ugt ptr %i.pw, %.5140.ptr
  br i1 %.not151, label %._crit_edge, label %bb.aj, !llvm.loop !1011

._crit_edge:                                      ; preds = %bb.am, %bb.e, %.loopexit556
  %.5140.ptr632 = phi ptr [ %i.a, %bb.e ], [ %.5140.ptr, %.loopexit556 ], [ %.5140.ptr, %bb.am ] ; 4 uses
  %.3127631 = phi ptr [ %2, %bb.e ], [ %.3127, %.loopexit556 ], [ %.3127, %bb.am ] ; 4 uses
  %i.px = phi ptr [ %i.s, %bb.e ], [ %i.u, %.loopexit556 ], [ %i.u, %bb.am ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.e ], [ %i.a, %.loopexit556 ], [ %i.or, %bb.am ] ; 9 uses
  %.5.lcssa = phi ptr [ %1, %bb.e ], [ %.3, %.loopexit556 ], [ %i.pv, %bb.am ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.py = ptrtoint ptr %.5140.ptr632 to i64       ; 5 uses
  %i.pz = sub i64 %i.py, %.pre-phi
  %i.qa = and i64 %i.pz, 63
  %.not152 = icmp eq i64 %i.qa, 0
  br i1 %.not152, label %.loopexit, label %.preheader554

.preheader554:                                    ; preds = %._crit_edge
  %i.qb = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.qc = icmp ult ptr %i.qb, %.5140.ptr632
  br i1 %i.qc, label %.lr.ph585.preheader, label %._crit_edge586

.lr.ph585.preheader:                              ; preds = %.preheader554
  %i.qd = add i64 %.pre-phi, 8
  %umax10 = call i64 @llvm.umax.i64(i64 %i.py, i64 %i.qd)
  %6 = add i64 %umax10, -5
  %7 = sub i64 %6, %.pre-phi                      ; 2 uses
  %i.qe = lshr i64 %7, 2
  %i.qf = add nuw nsw i64 %i.qe, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 60
  br i1 %min.iters.check, label %.lr.ph585.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph585.preheader
  %i.qg = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.py, i64 %i.qg)
  %i.qh = add i64 %umax, -5
  %i.qi = sub i64 %i.qh, %.pre-phi                ; 2 uses
  %i.qj = lshr i64 %i.qi, 2
  %i.qk = mul nuw i64 %i.qj, 3
  %i.ql = getelementptr i8, ptr %.5.lcssa, i64 %i.qk
  %scevgep = getelementptr i8, ptr %i.ql, i64 3
  %i.qm = and i64 %i.qi, -4
  %i.qn = getelementptr i8, ptr %.pre-phi.in, i64 %i.qm
  %scevgep9 = getelementptr i8, ptr %i.qn, i64 4
  %bound0 = icmp ult ptr %.5.lcssa, %scevgep9
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph585.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qf, 9223372036854775800     ; 4 uses
  %i.qo = shl i64 %n.vec, 2                       ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qb, i64 %i.qo  ; 2 uses
  %i.qq = mul i64 %n.vec, 3
  %i.qr = getelementptr i8, ptr %.5.lcssa, i64 %i.qq ; 2 uses
  %i.qs = getelementptr i8, ptr %.pre-phi.in, i64 %i.qo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qt = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %i.qu = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep11.a = getelementptr i8, ptr %i.qu, i64 3
  %i.qv = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep12.a = getelementptr i8, ptr %i.qv, i64 6
  %i.qw = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep13.a = getelementptr i8, ptr %i.qw, i64 9
  %i.qx = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep14.a = getelementptr i8, ptr %i.qx, i64 12
  %i.qy = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep15.a = getelementptr i8, ptr %i.qy, i64 15
  %i.qz = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep16.a = getelementptr i8, ptr %i.qz, i64 18
  %i.ra = getelementptr i8, ptr %.5.lcssa, i64 %i.qt
  %next.gep17.a = getelementptr i8, ptr %i.ra, i64 21
  %i.rb = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %.pre-phi.in, i64 %i.rb
  %wide.vec = load <32 x i8>, ptr %next.gep18, align 1, !alias.scope !1012 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec19.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec20.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec21 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.rc = zext <8 x i8> %strided.vec to <8 x i32>
  %i.rd = shl nuw nsw <8 x i32> %i.rc, splat (i32 18)
  %i.re = zext <8 x i8> %strided.vec19.a to <8 x i32>
  %i.rf = shl nuw nsw <8 x i32> %i.re, splat (i32 12)
  %i.rg = add nuw nsw <8 x i32> %i.rf, %i.rd
  %i.rh = zext <8 x i8> %strided.vec20.a to <8 x i32>
  %i.ri = shl nuw nsw <8 x i32> %i.rh, splat (i32 6)
  %i.rj = add nuw nsw <8 x i32> %i.rg, %i.ri
  %i.rk = zext <8 x i8> %strided.vec21 to <8 x i32>
  %i.rl = add nuw nsw <8 x i32> %i.rj, %i.rk
  %i.rm = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.rl)
  %i.rn = lshr <8 x i32> %i.rm, splat (i32 8)
  %i.ro = trunc nuw <8 x i32> %i.rn to <8 x i24>  ; 8 uses
  %i.rp = extractelement <8 x i24> %i.ro, i64 0
  store i24 %i.rp, ptr %next.gep, align 1, !alias.scope !1015, !noalias !1012
  %i.rq = extractelement <8 x i24> %i.ro, i64 1
  store i24 %i.rq, ptr %next.gep11.a, align 1, !alias.scope !1015, !noalias !1012
  %i.rr = extractelement <8 x i24> %i.ro, i64 2
  store i24 %i.rr, ptr %next.gep12.a, align 1, !alias.scope !1015, !noalias !1012
  %i.rs = extractelement <8 x i24> %i.ro, i64 3
  store i24 %i.rs, ptr %next.gep13.a, align 1, !alias.scope !1015, !noalias !1012
  %i.rt = extractelement <8 x i24> %i.ro, i64 4
  store i24 %i.rt, ptr %next.gep14.a, align 1, !alias.scope !1015, !noalias !1012
  %i.ru = extractelement <8 x i24> %i.ro, i64 5
  store i24 %i.ru, ptr %next.gep15.a, align 1, !alias.scope !1015, !noalias !1012
  %i.rv = extractelement <8 x i24> %i.ro, i64 6
  store i24 %i.rv, ptr %next.gep16.a, align 1, !alias.scope !1015, !noalias !1012
  %i.rw = extractelement <8 x i24> %i.ro, i64 7
  store i24 %i.rw, ptr %next.gep17.a, align 1, !alias.scope !1015, !noalias !1012
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rx = icmp eq i64 %index.next, %n.vec
  br i1 %i.rx, label %middle.block, label %vector.body, !llvm.loop !1017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qf, %n.vec
  br i1 %cmp.n, label %._crit_edge586, label %.lr.ph585.preheader24

.lr.ph585.preheader24:                            ; preds = %vector.memcheck, %.lr.ph585.preheader, %middle.block
  %.ph = phi ptr [ %i.qb, %vector.memcheck ], [ %i.qb, %.lr.ph585.preheader ], [ %i.qp, %middle.block ]
  %.6584.ph = phi ptr [ %.5.lcssa, %vector.memcheck ], [ %.5.lcssa, %.lr.ph585.preheader ], [ %i.qr, %middle.block ]
  %.1132583.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph585.preheader ], [ %i.qs, %middle.block ]
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %.lr.ph585.preheader24, %.lr.ph585
  %i.ry = phi ptr [ %i.sg, %.lr.ph585 ], [ %.ph, %.lr.ph585.preheader24 ] ; 3 uses
  %.6584 = phi ptr [ %i.sf, %.lr.ph585 ], [ %.6584.ph, %.lr.ph585.preheader24 ] ; 2 uses
  %.1132583 = phi ptr [ %i.ry, %.lr.ph585 ], [ %.1132583.ph, %.lr.ph585.preheader24 ]
  %i.rz = load <4 x i8>, ptr %.1132583, align 1
  %i.sa = zext <4 x i8> %i.rz to <4 x i32>
  %i.sb = shl nuw nsw <4 x i32> %i.sa, <i32 18, i32 12, i32 6, i32 0>
  %i.sc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sb)
  %i.sd = call i32 @llvm.bswap.i32(i32 %i.sc)
  %i.se = lshr i32 %i.sd, 8
  %.0.extract.trunc6 = trunc nuw i32 %i.se to i24
  store i24 %.0.extract.trunc6, ptr %.6584, align 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.6584, i64 3 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 4 ; 3 uses
  %i.sh = icmp ult ptr %i.sg, %.5140.ptr632
  br i1 %i.sh, label %.lr.ph585, label %._crit_edge586, !llvm.loop !1018

._crit_edge586:                                   ; preds = %.lr.ph585, %middle.block, %.preheader554
  %.1132.lcssa = phi ptr [ %.pre-phi.in, %.preheader554 ], [ %i.qs, %middle.block ], [ %i.ry, %.lr.ph585 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader554 ], [ %i.qr, %middle.block ], [ %i.sf, %.lr.ph585 ] ; 3 uses
  %.lcssa559 = phi ptr [ %i.qb, %.preheader554 ], [ %i.qp, %middle.block ], [ %i.sg, %.lr.ph585 ] ; 2 uses
  %.not153 = icmp ugt ptr %.lcssa559, %.5140.ptr632
  br i1 %.not153, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge586
  %i.si = load <4 x i8>, ptr %.1132.lcssa, align 1
  %i.sj = zext <4 x i8> %i.si to <4 x i32>
  %i.sk = shl nuw nsw <4 x i32> %i.sj, <i32 18, i32 12, i32 6, i32 0>
  %i.sl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sk)
  %i.sm = call i32 @llvm.bswap.i32(i32 %i.sl)
  %i.sn = lshr i32 %i.sm, 8
  %.0.extract.trunc = trunc nuw i32 %i.sn to i24
  store i24 %.0.extract.trunc, ptr %.6.lcssa, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge586
  %.2133 = phi ptr [ %.lcssa559, %bb.an ], [ %.1132.lcssa, %._crit_edge586 ]
  %.7 = phi ptr [ %i.so, %bb.an ], [ %.6.lcssa, %._crit_edge586 ] ; 3 uses
  %i.sp = ptrtoint ptr %.2133 to i64              ; 2 uses
  %i.sq = sub i64 %i.py, %i.sp
  %i.sr = trunc i64 %i.sq to i32                  ; 4 uses
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ao
  %i.st = trunc i64 %i.py to i32
  %i.su = trunc i64 %i.sp to i32
  %xtraiter = and i32 %i.sr, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.5129.prol = phi ptr [ %i.sv, %.preheader.prol ], [ %.3127631, %.preheader.preheader ]
  %i.sv = getelementptr inbounds i8, ptr %.5129.prol, i64 -2 ; 4 uses
  %i.sw = load i16, ptr %i.sv, align 2
  %i.sx = and i16 %i.sw, 255
  %i.sy = zext nneg i16 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1
  %i.tb = icmp ugt i8 %i.ta, 63
  br i1 %i.tb, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !1019

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.tc = add nsw i32 %i.sr, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0591.unr = phi i32 [ %i.sr, %.preheader.preheader ], [ %i.tc, %.preheader.prol.loopexit.unr-lcssa ]
  %.4128590.unr = phi ptr [ %.3127631, %.preheader.preheader ], [ %i.sv, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.sv, %.preheader.prol.loopexit.unr-lcssa ]
  %i.td = add i32 %i.st, -1
  %i.te = icmp eq i32 %i.td, %i.su
  br i1 %i.te, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aq
  %.0591 = phi i32 [ %i.tt, %bb.aq ], [ %.0591.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.4128590 = phi ptr [ %i.tm, %bb.aq ], [ %.4128590.unr, %.preheader.prol.loopexit ]
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %bb.ap
  %.5129 = phi ptr [ %i.tf, %bb.ap ], [ %.4128590, %.preheader ]
  %i.tf = getelementptr inbounds i8, ptr %.5129, i64 -2 ; 3 uses
  %i.tg = load i16, ptr %i.tf, align 2
  %i.th = and i16 %i.tg, 255
  %i.ti = zext nneg i16 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = icmp ugt i8 %i.tk, 63
  br i1 %i.tl, label %bb.ap, label %.preheader.1, !llvm.loop !1019

.preheader.1:                                     ; preds = %bb.ap, %.preheader.1
  %.5129.1 = phi ptr [ %i.tm, %.preheader.1 ], [ %i.tf, %bb.ap ]
  %i.tm = getelementptr inbounds i8, ptr %.5129.1, i64 -2 ; 4 uses
  %i.tn = load i16, ptr %i.tm, align 2
  %i.to = and i16 %i.tn, 255
  %i.tp = zext nneg i16 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = icmp ugt i8 %i.tr, 63
  br i1 %i.ts, label %.preheader.1, label %bb.aq, !llvm.loop !1019
end_hunk_10
begin_hunk_11_@_ZN7simdutf7haswell12_GLOBAL__N_16base6422compress_decode_base64ILb0ELb0ELb0EDsEENS_11full_resultEPcPKT2_mNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a

bb.aj:                                            ; preds = %.preheader653.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0273)
  %i.ny = load <32 x i8>, ptr %i.ac, align 16
  %i.nz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ny, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.oa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.nz, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ob = bitcast <8 x i32> %i.oa to <32 x i8>
  %i.oc = shufflevector <32 x i8> %i.ob, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.od = bitcast <32 x i8> %i.oc to <4 x i64>    ; 2 uses
  %i.oe = shufflevector <4 x i64> %i.od, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oe, ptr %.sroa.0273, align 16
  %i.of = shufflevector <4 x i64> %i.od, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.of, ptr %.sroa.0273.12..sroa_idx819, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %.0153669, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.og, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0273, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0273)
  br label %bb.al

bb.ak:                                            ; preds = %.preheader653.preheader
  %i.oh = getelementptr inbounds nuw i8, ptr %.0153669, i64 216
  %i.oi = load <32 x i8>, ptr %i.ac, align 16
  %i.oj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oi, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ok = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.oj, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ol = bitcast <8 x i32> %i.ok to <32 x i8>
  %i.om = shufflevector <32 x i8> %i.ol, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.on = bitcast <32 x i8> %i.om to <4 x i64>    ; 2 uses
  %i.oo = shufflevector <4 x i64> %i.on, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.oo, ptr %i.oh, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %.0153669, i64 228
  %i.oq = shufflevector <4 x i64> %i.on, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.oq, ptr %i.op, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.or = getelementptr inbounds nuw i8, ptr %.0153669, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.1172.add = add nsw i64 %.1172.idx, -320
  br label %bb.am

bb.am:                                            ; preds = %.thread628, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit, %bb.al
  %.3174.idx = phi i64 [ 0, %.thread628 ], [ %.1172.add, %bb.al ], [ %.1172.idx, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 8 uses
  %.4 = phi ptr [ %i.km, %.thread628 ], [ %i.or, %bb.al ], [ %.0153669, %_ZN7simdutf7haswell12_GLOBAL__N_17block6414compress_blockEmPc.exit ] ; 4 uses
  %.0171.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.3174.idx
  %.not193 = icmp ugt ptr %i.bb, %i.z
  br i1 %.not193, label %.thread637, label %bb.h, !llvm.loop !1021

.thread637:                                       ; preds = %bb.am
  %i.os = srem i64 %.3174.idx, 64                 ; 2 uses
  %.not203 = icmp eq i64 %i.os, 0
  br i1 %.not203, label %.loopexit652, label %bb.an

bb.an:                                            ; preds = %.thread637
  %i.ot = ptrtoint ptr %i.w to i64
  %i.ou = ptrtoint ptr %i.bb to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = ashr exact i64 %i.ov, 1
  %i.ox = add nsw i64 %i.ow, %i.os
  %i.oy = icmp sgt i64 %i.ox, 63
  br i1 %i.oy, label %.preheader651, label %.loopexit652

.preheader651:                                    ; preds = %bb.an
  %i.oz = and i64 %.3174.idx, 63
  %i.pa = icmp ne i64 %i.oz, 0
  %i.pb = icmp ult ptr %i.bb, %i.w
  %i.pc = select i1 %i.pa, i1 %i.pb, i1 false
  br i1 %i.pc, label %.lr.ph675, label %.loopexit652

.lr.ph675:                                        ; preds = %.preheader651, %bb.ao
  %.4158674 = phi ptr [ %i.pv, %bb.ao ], [ %i.bb, %.preheader651 ] ; 3 uses
  %.6177673.idx = phi i64 [ %.6177673.add, %bb.ao ], [ %.3174.idx, %.preheader651 ] ; 2 uses
  %.6177673.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.6177673.idx
  %i.pd = load i16, ptr %.4158674, align 2        ; 2 uses
  %i.pe = and i16 %i.pd, 255
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1             ; 3 uses
  store i8 %i.ph, ptr %.6177673.ptr, align 1
  %i.pi = icmp ult i16 %i.pd, 256
  %i.pj = icmp ult i8 %i.ph, 65
  %or.cond.not = select i1 %i.pi, i1 %i.pj, i1 false
  br i1 %or.cond.not, label %bb.ao, label %.thread645

.thread645:                                       ; preds = %.lr.ph675
  %i.pk = ptrtoint ptr %.4158674 to i64
  %i.pl = ptrtoint ptr %2 to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = ashr exact i64 %i.pm, 1
  %i.po = ptrtoint ptr %.4 to i64
  %i.pp = ptrtoint ptr %1 to i64
  %i.pq = sub i64 %i.po, %i.pp
  store i32 7, ptr %0, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.pn, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.pq, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.pt, align 8
  br label %bb.bd

bb.ao:                                            ; preds = %.lr.ph675
  %i.pu = icmp samesign ult i8 %i.ph, 64
  %.sroa.sel.idx = zext i1 %i.pu to i64
  %.6177673.add = add nsw i64 %.6177673.idx, %.sroa.sel.idx ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.4158674, i64 2 ; 3 uses
  %i.pw = and i64 %.6177673.add, 63
  %i.px = icmp ne i64 %i.pw, 0
  %i.py = icmp ult ptr %i.pv, %i.w
  %i.pz = select i1 %i.px, i1 %i.py, i1 false
  br i1 %i.pz, label %.lr.ph675, label %.loopexit652

.loopexit652:                                     ; preds = %bb.ao, %.preheader651, %bb.an, %.thread637
  %.8179.idx = phi i64 [ %.3174.idx, %.thread637 ], [ %.3174.idx, %bb.an ], [ %.3174.idx, %.preheader651 ], [ %.6177673.add, %bb.ao ] ; 2 uses
  %.6160 = phi ptr [ %i.bb, %.thread637 ], [ %i.bb, %bb.an ], [ %i.bb, %.preheader651 ], [ %i.pv, %bb.ao ] ; 2 uses
  %.8179.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.8179.idx ; 3 uses
  %.not204678 = icmp slt i64 %.8179.idx, 64
  br i1 %.not204678, label %._crit_edge, label %.lr.ph681

.lr.ph681:                                        ; preds = %.loopexit652
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0268.12..sroa_idx818 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 12
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph681, %bb.as
  %i.qb = phi ptr [ %i.qa, %.lr.ph681 ], [ %i.rg, %bb.as ] ; 3 uses
  %.7680 = phi ptr [ %.4, %.lr.ph681 ], [ %i.rf, %bb.as ] ; 7 uses
  %.0167679 = phi ptr [ %i.a, %.lr.ph681 ], [ %i.qb, %bb.as ] ; 2 uses
  %.not209 = icmp ult ptr %.7680, %i.x
  %i.qc = load <32 x i8>, ptr %.0167679, align 1
  %i.qd = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qc, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qe = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qd, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qf = bitcast <8 x i32> %i.qe to <32 x i8>
  %i.qg = shufflevector <32 x i8> %i.qf, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qh = bitcast <32 x i8> %i.qg to <4 x i64>    ; 2 uses
  %i.qi = shufflevector <4 x i64> %i.qh, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qi, ptr %.7680, align 1
  %i.qj = getelementptr inbounds nuw i8, ptr %.7680, i64 12
  %i.qk = shufflevector <4 x i64> %i.qh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qk, ptr %i.qj, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.0167679, i64 32 ; 2 uses
  br i1 %.not209, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  %i.qm = load <32 x i8>, ptr %i.ql, align 1
  %i.qn = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qm, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qo = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qn, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qp = bitcast <8 x i32> %i.qo to <32 x i8>
  %i.qq = shufflevector <32 x i8> %i.qp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.qr = bitcast <32 x i8> %i.qq to <4 x i64>    ; 2 uses
  %i.qs = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qs, ptr %.sroa.0268, align 16
  %i.qt = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qt, ptr %.sroa.0268.12..sroa_idx818, align 4
  %i.qu = getelementptr inbounds nuw i8, ptr %.7680, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qu, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0268, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.qv = getelementptr inbounds nuw i8, ptr %.7680, i64 24
  %i.qw = load <32 x i8>, ptr %i.ql, align 1
  %i.qx = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.qw, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.qy = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qx, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.qz = bitcast <8 x i32> %i.qy to <32 x i8>
  %i.ra = shufflevector <32 x i8> %i.qz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 32, i32 32, i32 32, i32 32, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.rb = bitcast <32 x i8> %i.ra to <4 x i64>    ; 2 uses
  %i.rc = shufflevector <4 x i64> %i.rb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.rc, ptr %i.qv, align 1
  %i.rd = getelementptr inbounds nuw i8, ptr %.7680, i64 36
  %i.re = shufflevector <4 x i64> %i.rb, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.re, ptr %i.rd, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.rf = getelementptr inbounds nuw i8, ptr %.7680, i64 48 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 64 ; 2 uses
  %.not204 = icmp ugt ptr %i.rg, %.8179.ptr
  br i1 %.not204, label %._crit_edge, label %bb.ap, !llvm.loop !1022

._crit_edge:                                      ; preds = %bb.as, %bb.g, %.loopexit652
  %.8179.ptr752 = phi ptr [ %i.a, %bb.g ], [ %.8179.ptr, %.loopexit652 ], [ %.8179.ptr, %bb.as ] ; 4 uses
  %.6160751 = phi ptr [ %2, %bb.g ], [ %.6160, %.loopexit652 ], [ %.6160, %bb.as ] ; 4 uses
  %i.rh = phi ptr [ %i.u, %bb.g ], [ %i.w, %.loopexit652 ], [ %i.w, %bb.as ] ; 2 uses
  %.pre-phi.in = phi ptr [ %i.a, %bb.g ], [ %i.a, %.loopexit652 ], [ %i.qb, %bb.as ] ; 9 uses
  %.7.lcssa = phi ptr [ %1, %bb.g ], [ %.4, %.loopexit652 ], [ %i.rf, %bb.as ] ; 15 uses
  %.pre-phi = ptrtoint ptr %.pre-phi.in to i64    ; 5 uses
  %i.ri = ptrtoint ptr %.8179.ptr752 to i64       ; 5 uses
  %i.rj = sub i64 %i.ri, %.pre-phi
  %i.rk = and i64 %i.rj, 63
  %.not205 = icmp eq i64 %i.rk, 0
  br i1 %.not205, label %.loopexit, label %.preheader650

.preheader650:                                    ; preds = %._crit_edge
  %i.rl = getelementptr inbounds nuw i8, ptr %.pre-phi.in, i64 4 ; 5 uses
  %i.rm = icmp ult ptr %i.rl, %.8179.ptr752
  br i1 %i.rm, label %.lr.ph686.preheader, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %.preheader650
  %i.rn = add i64 %.pre-phi, 8
  %umax786 = call i64 @llvm.umax.i64(i64 %i.ri, i64 %i.rn)
  %7 = add i64 %umax786, -5
  %8 = sub i64 %7, %.pre-phi                      ; 2 uses
  %i.ro = lshr i64 %8, 2
  %i.rp = add nuw nsw i64 %i.ro, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 60
  br i1 %min.iters.check, label %.lr.ph686.preheader800, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph686.preheader
  %i.rq = add i64 %.pre-phi, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.ri, i64 %i.rq)
  %i.rr = add i64 %umax, -5
  %i.rs = sub i64 %i.rr, %.pre-phi                ; 2 uses
  %i.rt = lshr i64 %i.rs, 2
  %i.ru = mul nuw i64 %i.rt, 3
  %i.rv = getelementptr i8, ptr %.7.lcssa, i64 %i.ru
  %scevgep = getelementptr i8, ptr %i.rv, i64 3
  %i.rw = and i64 %i.rs, -4
  %i.rx = getelementptr i8, ptr %.pre-phi.in, i64 %i.rw
  %scevgep785 = getelementptr i8, ptr %i.rx, i64 4
  %bound0 = icmp ult ptr %.7.lcssa, %scevgep785
  %bound1 = icmp ult ptr %.pre-phi.in, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph686.preheader800, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rp, 9223372036854775800     ; 4 uses
  %i.ry = shl i64 %n.vec, 2                       ; 2 uses
  %i.rz = getelementptr i8, ptr %i.rl, i64 %i.ry  ; 2 uses
  %i.sa = mul i64 %n.vec, 3
  %i.sb = getelementptr i8, ptr %.7.lcssa, i64 %i.sa ; 2 uses
  %i.sc = getelementptr i8, ptr %.pre-phi.in, i64 %i.ry ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sd = mul i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %i.se = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep787.a = getelementptr i8, ptr %i.se, i64 3
  %i.sf = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep788.a = getelementptr i8, ptr %i.sf, i64 6
  %i.sg = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep789.a = getelementptr i8, ptr %i.sg, i64 9
  %i.sh = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep790.a = getelementptr i8, ptr %i.sh, i64 12
  %i.si = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep791.a = getelementptr i8, ptr %i.si, i64 15
  %i.sj = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep792.a = getelementptr i8, ptr %i.sj, i64 18
  %i.sk = getelementptr i8, ptr %.7.lcssa, i64 %i.sd
  %next.gep793.a = getelementptr i8, ptr %i.sk, i64 21
  %i.sl = shl i64 %index, 2
  %next.gep794 = getelementptr i8, ptr %.pre-phi.in, i64 %i.sl
  %wide.vec = load <32 x i8>, ptr %next.gep794, align 1, !alias.scope !1023 ; 4 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec795.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec796.a = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec797 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.sm = zext <8 x i8> %strided.vec to <8 x i32>
  %i.sn = shl nuw nsw <8 x i32> %i.sm, splat (i32 18)
  %i.so = zext <8 x i8> %strided.vec795.a to <8 x i32>
  %i.sp = shl nuw nsw <8 x i32> %i.so, splat (i32 12)
  %i.sq = add nuw nsw <8 x i32> %i.sp, %i.sn
  %i.sr = zext <8 x i8> %strided.vec796.a to <8 x i32>
  %i.ss = shl nuw nsw <8 x i32> %i.sr, splat (i32 6)
  %i.st = add nuw nsw <8 x i32> %i.sq, %i.ss
  %i.su = zext <8 x i8> %strided.vec797 to <8 x i32>
  %i.sv = add nuw nsw <8 x i32> %i.st, %i.su
  %i.sw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.sv)
  %i.sx = lshr <8 x i32> %i.sw, splat (i32 8)
  %i.sy = trunc nuw <8 x i32> %i.sx to <8 x i24>  ; 8 uses
  %i.sz = extractelement <8 x i24> %i.sy, i64 0
  store i24 %i.sz, ptr %next.gep, align 1, !alias.scope !1026, !noalias !1023
  %i.ta = extractelement <8 x i24> %i.sy, i64 1
  store i24 %i.ta, ptr %next.gep787.a, align 1, !alias.scope !1026, !noalias !1023
  %i.tb = extractelement <8 x i24> %i.sy, i64 2
  store i24 %i.tb, ptr %next.gep788.a, align 1, !alias.scope !1026, !noalias !1023
  %i.tc = extractelement <8 x i24> %i.sy, i64 3
  store i24 %i.tc, ptr %next.gep789.a, align 1, !alias.scope !1026, !noalias !1023
  %i.td = extractelement <8 x i24> %i.sy, i64 4
  store i24 %i.td, ptr %next.gep790.a, align 1, !alias.scope !1026, !noalias !1023
  %i.te = extractelement <8 x i24> %i.sy, i64 5
  store i24 %i.te, ptr %next.gep791.a, align 1, !alias.scope !1026, !noalias !1023
  %i.tf = extractelement <8 x i24> %i.sy, i64 6
  store i24 %i.tf, ptr %next.gep792.a, align 1, !alias.scope !1026, !noalias !1023
  %i.tg = extractelement <8 x i24> %i.sy, i64 7
  store i24 %i.tg, ptr %next.gep793.a, align 1, !alias.scope !1026, !noalias !1023
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.th = icmp eq i64 %index.next, %n.vec
  br i1 %i.th, label %middle.block, label %vector.body, !llvm.loop !1028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rp, %n.vec
  br i1 %cmp.n, label %._crit_edge687, label %.lr.ph686.preheader800

.lr.ph686.preheader800:                           ; preds = %vector.memcheck, %.lr.ph686.preheader, %middle.block
  %.ph = phi ptr [ %i.rl, %vector.memcheck ], [ %i.rl, %.lr.ph686.preheader ], [ %i.rz, %middle.block ]
  %.8685.ph = phi ptr [ %.7.lcssa, %vector.memcheck ], [ %.7.lcssa, %.lr.ph686.preheader ], [ %i.sb, %middle.block ]
  %.1168684.ph = phi ptr [ %.pre-phi.in, %vector.memcheck ], [ %.pre-phi.in, %.lr.ph686.preheader ], [ %i.sc, %middle.block ]
  br label %.lr.ph686

.lr.ph686:                                        ; preds = %.lr.ph686.preheader800, %.lr.ph686
  %i.ti = phi ptr [ %i.tq, %.lr.ph686 ], [ %.ph, %.lr.ph686.preheader800 ] ; 3 uses
  %.8685 = phi ptr [ %i.tp, %.lr.ph686 ], [ %.8685.ph, %.lr.ph686.preheader800 ] ; 2 uses
  %.1168684 = phi ptr [ %i.ti, %.lr.ph686 ], [ %.1168684.ph, %.lr.ph686.preheader800 ]
  %i.tj = load <4 x i8>, ptr %.1168684, align 1
  %i.tk = zext <4 x i8> %i.tj to <4 x i32>
  %i.tl = shl nuw nsw <4 x i32> %i.tk, <i32 18, i32 12, i32 6, i32 0>
  %i.tm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tl)
  %i.tn = call i32 @llvm.bswap.i32(i32 %i.tm)
  %i.to = lshr i32 %i.tn, 8
  %.0.extract.trunc10 = trunc nuw i32 %i.to to i24
  store i24 %.0.extract.trunc10, ptr %.8685, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.8685, i64 3 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 3 uses
  %i.tr = icmp ult ptr %i.tq, %.8179.ptr752
  br i1 %i.tr, label %.lr.ph686, label %._crit_edge687, !llvm.loop !1029

._crit_edge687:                                   ; preds = %.lr.ph686, %middle.block, %.preheader650
  %.1168.lcssa = phi ptr [ %.pre-phi.in, %.preheader650 ], [ %i.sc, %middle.block ], [ %i.ti, %.lr.ph686 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader650 ], [ %i.sb, %middle.block ], [ %i.tp, %.lr.ph686 ] ; 3 uses
  %.lcssa654 = phi ptr [ %i.rl, %.preheader650 ], [ %i.rz, %middle.block ], [ %i.tq, %.lr.ph686 ] ; 2 uses
  %.not206 = icmp ugt ptr %.lcssa654, %.8179.ptr752
  br i1 %.not206, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge687
  %i.ts = load <4 x i8>, ptr %.1168.lcssa, align 1
  %i.tt = zext <4 x i8> %i.ts to <4 x i32>
  %i.tu = shl nuw nsw <4 x i32> %i.tt, <i32 18, i32 12, i32 6, i32 0>
  %i.tv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tu)
  %i.tw = call i32 @llvm.bswap.i32(i32 %i.tv)
  %i.tx = lshr i32 %i.tw, 8
  %.0.extract.trunc = trunc nuw i32 %i.tx to i24
  store i24 %.0.extract.trunc, ptr %.8.lcssa, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge687
  %.2169 = phi ptr [ %.lcssa654, %bb.at ], [ %.1168.lcssa, %._crit_edge687 ]
  %.9 = phi ptr [ %i.ty, %bb.at ], [ %.8.lcssa, %._crit_edge687 ] ; 3 uses
  %i.tz = ptrtoint ptr %.2169 to i64              ; 2 uses
  %i.ua = sub i64 %i.ri, %i.tz
  %i.ub = trunc i64 %i.ua to i32                  ; 4 uses
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.au
  %i.ud = trunc i64 %i.ri to i32
  %i.ue = trunc i64 %i.tz to i32
  %xtraiter = and i32 %i.ub, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.8162.prol = phi ptr [ %i.uf, %.preheader.prol ], [ %.6160751, %.preheader.preheader ]
  %i.uf = getelementptr inbounds i8, ptr %.8162.prol, i64 -2 ; 4 uses
  %i.ug = load i16, ptr %i.uf, align 2
  %i.uh = and i16 %i.ug, 255
  %i.ui = zext nneg i16 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = icmp eq i8 %i.uk, 64
  br i1 %i.ul, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !1030

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %i.um = add nsw i32 %i.ub, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.0692.unr = phi i32 [ %i.ub, %.preheader.preheader ], [ %i.um, %.preheader.prol.loopexit.unr-lcssa ]
  %.7161691.unr = phi ptr [ %.6160751, %.preheader.preheader ], [ %i.uf, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.uf, %.preheader.prol.loopexit.unr-lcssa ]
  %i.un = add i32 %i.ud, -1
  %i.uo = icmp eq i32 %i.un, %i.ue
  br i1 %i.uo, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.aw
  %.0692 = phi i32 [ %i.vd, %bb.aw ], [ %.0692.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.7161691 = phi ptr [ %i.uw, %bb.aw ], [ %.7161691.unr, %.preheader.prol.loopexit ]
  br label %bb.av

bb.av:                                            ; preds = %.preheader, %bb.av
  %.8162 = phi ptr [ %i.up, %bb.av ], [ %.7161691, %.preheader ]
  %i.up = getelementptr inbounds i8, ptr %.8162, i64 -2 ; 3 uses
  %i.uq = load i16, ptr %i.up, align 2
  %i.ur = and i16 %i.uq, 255
  %i.us = zext nneg i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = icmp eq i8 %i.uu, 64
  br i1 %i.uv, label %bb.av, label %.preheader.1, !llvm.loop !1030

.preheader.1:                                     ; preds = %bb.av, %.preheader.1
  %.8162.1 = phi ptr [ %i.uw, %.preheader.1 ], [ %i.up, %bb.av ]
  %i.uw = getelementptr inbounds i8, ptr %.8162.1, i64 -2 ; 4 uses
  %i.ux = load i16, ptr %i.uw, align 2
  %i.uy = and i16 %i.ux, 255
  %i.uz = zext nneg i16 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = icmp eq i8 %i.vb, 64
  br i1 %i.vc, label %.preheader.1, label %bb.aw, !llvm.loop !1030
end_hunk_11
