Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.02?download=true
inline.NumInlined: 1874
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNCNCINvMs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapperNtBc_12RetryWrapper15run_and_processTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENCNCNCNvXs0_NtBe_13remote_clientNtB34_12RemoteClientNtNtBe_9interface6Client18get_file_term_data0s_00NCB2W_s_0NCNCB2W_s0_00NCB2W_s0_0E000Bg_:bb.a
  %i.ra = load i64, ptr %i.qz, align 8, !range !29, !noalias !1463, !noundef !9 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.qy, label %bb.gk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i.i.i.i, !prof !30

bb.gk:                                            ; preds = %.noexc.i
  %i.rc = load i64, ptr %i.rb, align 8, !noalias !1463
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ra, i64 %i.rc) #23
          to label %.noexc124.i unwind label %bb.gl, !noalias !1460

.noexc124.i:                                      ; preds = %bb.gk
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %.noexc.i
  %i.rd = load ptr, ptr %i.rb, align 8, !noalias !1463, !nonnull !9, !noundef !9 ; 12 uses
  %i.re = icmp ule i64 %.5.i.i, %i.ra
  call void @llvm.assume(i1 %i.re)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1463
  %.not.i.i.i.i = icmp eq i64 %.5.i.i, 0
  br i1 %.not.i.i.i.i, label %.thread419.i, label %bb.gm

.thread419.i:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i.i.i.i
  store i64 %i.ra, ptr %i.qw, align 8, !alias.scope !1464, !noalias !1465
  %.sroa.4.0..sroa_idx.i.i417.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %i.rd, ptr %.sroa.4.0..sroa_idx.i.i417.i, align 8, !alias.scope !1464, !noalias !1465
  %.sroa.5.0..sroa_idx.i.i418.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i418.i, align 8, !alias.scope !1464, !noalias !1465
  br label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

bb.gl:                                            ; preds = %bb.gk, %.loopexit552.i
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i

bb.gm:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rd, ptr nonnull readonly align 1 %..i.i, i64 range(i64 0, -9223372036854775808) %.5.i.i, i1 false), !noalias !1466
  store i64 %i.ra, ptr %i.qw, align 8, !alias.scope !1464, !noalias !1465
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %i.rd, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1464, !noalias !1465
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i64 %.5.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1464, !noalias !1465
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.rg = icmp ugt i64 %.5.i.i, 20
  br i1 %i.rg, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.rh = icmp eq i64 %.5.i.i, 20
  br i1 %i.rh, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.i, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

bb.go:                                            ; preds = %bb.gm
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.ri = icmp ult i64 %.5.i.i, 35
  br i1 %i.ri, label %.lr.ph.split.us.i.i.i.i.i, label %bb.gp

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.go
  %i.rj = load i128, ptr %i.rd, align 1
  %i.rk = xor i128 %i.rj, 129529095184413015512691727741947245933
  %i.rl = getelementptr i8, ptr %i.rd, i64 16
  %i.rm = load i32, ptr %i.rl, align 1
  %i.rn = zext i32 %i.rm to i128
  %i.ro = xor i128 %i.rn, 1936025454
  %i.rp = or i128 %i.rk, %i.ro
  %i.rq = icmp ne i128 %i.rp, 0
  %i.rr = zext i1 %i.rq to i32
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread422.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %.not27.i.i.i.i.i540 = icmp ugt i64 %.sroa.3.0.i.i, 20
  br i1 %.not27.i.i.i.i.i540, label %.split.us.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

.split.us.i.i.i.i.i:                              ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i
  %.in.i.i.i.i542 = phi i64 [ %i.se, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i ], [ %.sroa.3.0.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader ]
  %.pn.i.i.i.i541 = phi ptr [ %i.rt, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i ], [ %i.rd, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i541, i64 1 ; 3 uses
  %i.ru = load i128, ptr %i.rt, align 1
  %i.rv = xor i128 %i.ru, 129529095184413015512691727741947245933
  %i.rw = getelementptr i8, ptr %i.rt, i64 16
  %i.rx = load i32, ptr %i.rw, align 1
  %i.ry = zext i32 %i.rx to i128
  %i.rz = xor i128 %i.ry, 1936025454
  %i.sa = or i128 %i.rv, %i.rz
  %i.sb = icmp ne i128 %i.sa, 0
  %i.sc = zext i1 %i.sb to i32
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread422.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i
  %i.se = add nsw i64 %.in.i.i.i.i542, -1         ; 2 uses
  %.not27.i.i.i.i.i = icmp ugt i64 %i.se, 20
  br i1 %.not27.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1470
  store ptr %i.rd, ptr %i.j, align 8, !noalias !1470
  %i.sf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.5.i.i, ptr %i.sf, align 8, !noalias !1470
  %i.sg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @19, i64 1), ptr %i.sg, align 8, !noalias !1470
  %i.sh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 19, ptr %i.sh, align 8, !noalias !1470
  %i.si = icmp ult i64 %.5.i.i, 84
  br i1 %i.si, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i125.i

.preheader.i.i.i.i:                               ; preds = %bb.gt, %bb.gp
  %.sroa.014.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.gp ], [ %.sroa.014.2.3.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.gp ], [ %i.ud, %bb.gt ] ; 2 uses
  %i.sj = add i64 %.sroa.06.0.lcssa.i.i.i.i, 35
  %i.sk = icmp uge i64 %i.sj, %.5.i.i
  %i.sl = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond336.i.i.i.i = select i1 %i.sk, i1 true, i1 %i.sl
  br i1 %or.cond336.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i125.i:                                ; preds = %bb.gp, %bb.gt
  %.sroa.06.034.i.i.i.i = phi i64 [ %i.ud, %bb.gt ], [ 0, %bb.gp ] ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.sroa.06.034.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.sm, align 1, !alias.scope !1471, !noalias !1472
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 19
  %.sroa.01.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.sn, align 1, !alias.scope !1471, !noalias !1472
  %i.so = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, splat (i8 109)
  %i.sp = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.i, splat (i8 115)
  %i.sq = and <16 x i1> %i.so, %i.sp
  %i.sr = bitcast <16 x i1> %i.sq to i16          ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.ss, align 1, !alias.scope !1471, !noalias !1472
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 35
  %.sroa.01.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.st, align 1, !alias.scope !1471, !noalias !1472
  %i.su = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i, splat (i8 109)
  %i.sv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.i, splat (i8 115)
  %i.sw = and <16 x i1> %i.su, %i.sv
  %i.sx = bitcast <16 x i1> %i.sw to i16          ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.sy, align 1, !alias.scope !1471, !noalias !1472
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sm, i64 51
  %.sroa.01.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.sz, align 1, !alias.scope !1471, !noalias !1472
  %i.ta = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i, splat (i8 109)
  %i.tb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.i, splat (i8 115)
  %i.tc = and <16 x i1> %i.ta, %i.tb
  %i.td = bitcast <16 x i1> %i.tc to i16          ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sm, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.te, align 1, !alias.scope !1471, !noalias !1472
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sm, i64 67
  %.sroa.01.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.tf, align 1, !alias.scope !1471, !noalias !1472
  %i.tg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i, splat (i8 109)
  %i.th = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.i, splat (i8 115)
  %i.ti = and <16 x i1> %i.tg, %i.th
  %i.tj = bitcast <16 x i1> %i.ti to i16          ; 2 uses
  %i.tk = icmp eq i16 %i.sr, 0
  br i1 %i.tk, label %.preheader30.1.i.i.i.i, label %bb.gu

.preheader30.1.i.i.i.i:                           ; preds = %.noexc130.i, %.lr.ph.i.i.i125.i
  %.sroa.014.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i125.i ], [ %i.ui, %.noexc130.i ] ; 3 uses
  %i.tl = icmp eq i16 %i.sx, 0
  br i1 %i.tl, label %.preheader30.2.i.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %.preheader30.1.i.i.i.i
  %i.tm = or disjoint i64 %.sroa.06.034.i.i.i.i, 16
  %i.tn = trunc nuw i8 %.sroa.014.2.i.i.i.i to i1
  %i.to = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.tm, i16 noundef %i.sx, i1 noundef zeroext %i.tn) #24
          to label %.noexc127.i unwind label %.loopexit.split-lp545.loopexit.i, !noalias !1460

.noexc127.i:                                      ; preds = %bb.gq
  %i.tp = zext i1 %i.to to i8
  %i.tq = or i8 %.sroa.014.2.i.i.i.i, %i.tp
  br label %.preheader30.2.i.i.i.i

.preheader30.2.i.i.i.i:                           ; preds = %.noexc127.i, %.preheader30.1.i.i.i.i
  %.sroa.014.2.1.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i, %.preheader30.1.i.i.i.i ], [ %i.tq, %.noexc127.i ] ; 3 uses
  %i.tr = icmp eq i16 %i.td, 0
  br i1 %i.tr, label %.preheader30.3.i.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %.preheader30.2.i.i.i.i
  %i.ts = or disjoint i64 %.sroa.06.034.i.i.i.i, 32
  %i.tt = trunc nuw i8 %.sroa.014.2.1.i.i.i.i to i1
  %i.tu = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.ts, i16 noundef %i.td, i1 noundef zeroext %i.tt) #24
          to label %.noexc128.i unwind label %.loopexit.split-lp545.loopexit.i, !noalias !1460

.noexc128.i:                                      ; preds = %bb.gr
  %i.tv = zext i1 %i.tu to i8
  %i.tw = or i8 %.sroa.014.2.1.i.i.i.i, %i.tv
  br label %.preheader30.3.i.i.i.i

.preheader30.3.i.i.i.i:                           ; preds = %.noexc128.i, %.preheader30.2.i.i.i.i
  %.sroa.014.2.2.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i, %.preheader30.2.i.i.i.i ], [ %i.tw, %.noexc128.i ] ; 3 uses
  %i.tx = icmp eq i16 %i.tj, 0
  br i1 %i.tx, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %.preheader30.3.i.i.i.i
  %i.ty = or disjoint i64 %.sroa.06.034.i.i.i.i, 48
  %i.tz = trunc nuw i8 %.sroa.014.2.2.i.i.i.i to i1
  %i.ua = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.ty, i16 noundef %i.tj, i1 noundef zeroext %i.tz) #24
          to label %.noexc129.i unwind label %.loopexit.split-lp545.loopexit.i, !noalias !1460

.noexc129.i:                                      ; preds = %bb.gs
  %i.ub = zext i1 %i.ua to i8
  %i.uc = or i8 %.sroa.014.2.2.i.i.i.i, %i.ub
  br label %bb.gt

bb.gt:                                            ; preds = %.noexc129.i, %.preheader30.3.i.i.i.i
  %.sroa.014.2.3.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i, %.preheader30.3.i.i.i.i ], [ %i.uc, %.noexc129.i ] ; 2 uses
  %i.ud = add nuw i64 %.sroa.06.034.i.i.i.i, 64   ; 2 uses
  %i.ue = add nuw i64 %.sroa.06.034.i.i.i.i, 147
  %i.uf = icmp uge i64 %i.ue, %.5.i.i
  %i.ug = trunc nuw i8 %.sroa.014.2.3.i.i.i.i to i1
  %or.cond.i.i.i126.i = select i1 %i.uf, i1 true, i1 %i.ug
  br i1 %or.cond.i.i.i126.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i125.i

bb.gu:                                            ; preds = %.lr.ph.i.i.i125.i
  %i.uh = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %.sroa.06.034.i.i.i.i, i16 noundef %i.sr, i1 noundef zeroext false) #24
          to label %.noexc130.i unwind label %.loopexit.split-lp545.loopexit.i, !noalias !1460

.noexc130.i:                                      ; preds = %bb.gu
  %i.ui = zext i1 %i.uh to i8
  br label %.preheader30.1.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.gv, %.preheader.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.014.4.i.i.i.i, %bb.gv ] ; 2 uses
  %.lcssa.i.i.i.i = phi i1 [ %i.sl, %.preheader.i.i.i.i ], [ %i.vb, %bb.gv ]
  %i.uj = add i64 %.5.i.i, -35                    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.uj ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.i = load <16 x i8>, ptr %i.uk, align 1, !alias.scope !1471, !noalias !1473
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 19
  %.sroa.01.0.copyload.i58.i.i.i.i = load <16 x i8>, ptr %i.ul, align 1, !alias.scope !1471, !noalias !1473
  %i.um = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.i, splat (i8 109)
  %i.un = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.i, splat (i8 115)
  %i.uo = and <16 x i1> %i.um, %i.un
  %i.up = bitcast <16 x i1> %i.uo to i16          ; 2 uses
  %i.uq = icmp eq i16 %i.up, 0
  br i1 %i.uq, label %.split.i, label %bb.gx

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %bb.gv
  %.sroa.06.137.i.i.i.i = phi i64 [ %i.uy, %bb.gv ], [ %.sroa.06.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.sroa.06.137.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.i = load <16 x i8>, ptr %i.ur, align 1, !alias.scope !1471, !noalias !1474
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 19
  %.sroa.01.0.copyload.i60.i.i.i.i = load <16 x i8>, ptr %i.us, align 1, !alias.scope !1471, !noalias !1474
  %i.ut = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.i, splat (i8 109)
  %i.uu = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.i, splat (i8 115)
  %i.uv = and <16 x i1> %i.ut, %i.uu
  %i.uw = bitcast <16 x i1> %i.uv to i16          ; 2 uses
  %i.ux = icmp eq i16 %i.uw, 0
  br i1 %i.ux, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.noexc131.i, %.lr.ph38.i.i.i.i
  %.sroa.014.4.i.i.i.i = phi i8 [ 0, %.lr.ph38.i.i.i.i ], [ %i.vd, %.noexc131.i ] ; 2 uses
  %i.uy = add i64 %.sroa.06.137.i.i.i.i, 16
  %i.uz = add i64 %.sroa.06.137.i.i.i.i, 51
  %i.va = icmp uge i64 %i.uz, %.5.i.i
  %i.vb = trunc nuw i8 %.sroa.014.4.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i = or i1 %i.va, %i.vb
  br i1 %or.cond3.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph38.i.i.i.i

bb.gw:                                            ; preds = %.lr.ph38.i.i.i.i
  %i.vc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %.sroa.06.137.i.i.i.i, i16 noundef %i.uw, i1 noundef zeroext false) #24
          to label %.noexc131.i unwind label %.loopexit544.i, !noalias !1460

.noexc131.i:                                      ; preds = %bb.gw
  %i.vd = zext i1 %i.vc to i8
  br label %bb.gv

.split.i:                                         ; preds = %.noexc132.i, %._crit_edge.i.i.i.i
  %.sroa.014.5.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vh, %.noexc132.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1470
  %i.ve = trunc nuw i8 %.sroa.014.5.i.i.i.i to i1
  br i1 %i.ve, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread422.i, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

bb.gx:                                            ; preds = %._crit_edge.i.i.i.i
  %i.vf = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.uj, i16 noundef %i.up, i1 noundef zeroext %.lcssa.i.i.i.i) #24
          to label %.noexc132.i unwind label %.loopexit.split-lp545.loopexit.split-lp.i, !noalias !1460

.noexc132.i:                                      ; preds = %bb.gx
  %i.vg = zext i1 %i.vf to i8
  %i.vh = or i8 %.sroa.014.3.lcssa.i.i.i.i, %i.vg
  br label %.split.i

.loopexit544.i:                                   ; preds = %bb.gw
  %lpad.loopexit546.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp545.i

.loopexit.split-lp545.loopexit.i:                 ; preds = %bb.gu, %bb.gs, %bb.gr, %bb.gq
  %lpad.loopexit549.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp545.i

.loopexit.split-lp545.loopexit.split-lp.i:        ; preds = %bb.gx
  %lpad.loopexit.split-lp550.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp545.i

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.gn
  %i.vi = load i128, ptr %i.rd, align 1
  %i.vj = xor i128 129529095184413015512691727741947245933, %i.vi
  %i.vk = getelementptr i8, ptr %i.rd, i64 16
  %i.vl = load i32, ptr %i.vk, align 1
  %i.vm = zext i32 %i.vl to i128
  %i.vn = xor i128 1936025454, %i.vm
  %i.vo = or i128 %i.vj, %i.vn
  %i.vp = icmp ne i128 %i.vo, 0
  %i.vq = zext i1 %i.vp to i32
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread422.i, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsiAynQAjgDuT_10xet_client.exit.backedge.us.i.i.i.i.i.preheader, %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.i, %.split.i, %bb.gn, %.thread419.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1459
  store i8 0, ptr %i.qi, align 4, !noalias !1459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr noundef nonnull align 8 dereferenceable(136) %i.qk, i64 136, i1 false), !noalias !1459
  %i.vs = invoke { ptr, ptr } @_RNvMNtNtCsfaKIfeYzQZw_7reqwest10async_impl8responseNtB2_8Response12bytes_stream(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.t)
          to label %bb.gz unwind label %bb.gy, !noalias !1460 ; 2 uses

bb.gy:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1459
  br label %bb.hf

bb.gz:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECsiAynQAjgDuT_10xet_client.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1459
  %i.vu = extractvalue { ptr, ptr } %i.vs, 0
  %i.vv = extractvalue { ptr, ptr } %i.vs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1459
  store i8 0, ptr %i.qj, align 2, !noalias !1459
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.vw, i64 48, i1 false), !noalias !1459
  invoke void @_RNvMs2_NtNtCsiAynQAjgDuT_10xet_client10cas_client24progress_tracked_streamsINtB5_22DownloadProgressStreamINtNtNtCsfaw33hLWA9J_12futures_util6stream10try_stream6MapErrINtNtCs5jFM9WxmFav_14http_body_util6stream14BodyDataStreamINtNtNtB2J_11combinators7map_err6MapErrINtNtB3F_8box_body7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB5R_6marker4SendNtB6o_4SyncEL_EEINvNtCsfaKIfeYzQZw_7reqwest5error6decodeB5d_EEEINvMNtNtB5i_2io5errorNtNtNtB5R_2io5error5Error5otherNtB6Z_5ErrorEEE11wrap_streamB9_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noundef nonnull %i.vu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.hb unwind label %bb.ha, !noalias !1460

bb.ha:                                            ; preds = %bb.gz
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1459
  br label %bb.hf

bb.hb:                                            ; preds = %bb.gz
  store i8 1, ptr %i.qg, align 1, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1459
  %i.vy = load i64, ptr %i.qf, align 8, !range !12, !noalias !1459, !noundef !9
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.wa = load i64, ptr %i.vz, align 8, !noalias !1459
  %i.wb = trunc nuw i64 %i.vy to i1
  %..i133.i = select i1 %i.wb, i64 %i.wa, i64 0   ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1476
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %..i133.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc134.i unwind label %bb.hd, !noalias !1460

.noexc134.i:                                      ; preds = %bb.hb
  %i.wd = load i64, ptr %i.i, align 8, !range !12, !noalias !1476, !noundef !9
  %i.we = trunc nuw i64 %i.wd to i1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wg = load i64, ptr %i.wf, align 8, !range !29, !noalias !1476, !noundef !9 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.we, label %bb.hc, label %.thread.i125, !prof !30

bb.hc:                                            ; preds = %.noexc134.i
  %i.wi = load i64, ptr %i.wh, align 8, !noalias !1476
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.wg, i64 %i.wi) #23
          to label %.noexc135.i unwind label %bb.hd, !noalias !1460

.noexc135.i:                                      ; preds = %bb.hc
  unreachable

.body202.i:                                       ; preds = %bb.pn, %bb.pj, %bb.ox, %bb.he, %bb.hd
  %i.wj = phi ptr [ %i.wz, %bb.he ], [ %i.wz, %bb.pn ], [ %i.aol, %bb.ox ], [ %i.wp, %bb.hd ], [ %i.aol, %bb.pj ] ; 2 uses
  %i.wk = phi ptr [ %i.xa, %bb.he ], [ %i.xa, %bb.pn ], [ %i.aom, %bb.ox ], [ %i.wq, %bb.hd ], [ %i.aom, %bb.pj ] ; 2 uses
  %.pn48.i = phi { ptr, i32 } [ %.pn45.pn.i, %bb.he ], [ %.pn45.pn.i, %bb.pn ], [ %i.aqq, %bb.ox ], [ %i.wr, %bb.hd ], [ %i.arp, %bb.pj ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 641
  store i8 0, ptr %i.wl, align 1, !noalias !1459
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 643
  %i.wn = load i8, ptr %i.wm, align 1, !range !24, !noalias !1459, !noundef !9
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.po, label %bb.hf

bb.hd:                                            ; preds = %bb.pk, %bb.oy, %bb.hc, %bb.hb
  %i.wp = phi ptr [ %i.aol, %bb.pk ], [ %i.aol, %bb.oy ], [ %i.qe, %bb.hc ], [ %i.qe, %bb.hb ]
  %i.wq = phi ptr [ %i.aom, %bb.pk ], [ %i.aom, %bb.oy ], [ %i.qf, %bb.hc ], [ %i.qf, %bb.hb ]
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.body202.i

.thread.i125:                                     ; preds = %.noexc134.i
  %i.ws = load ptr, ptr %i.wh, align 8, !noalias !1476, !nonnull !9, !noundef !9
  %i.wt = icmp ule i64 %..i133.i, %i.wg
  call void @llvm.assume(i1 %i.wt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1476
  store i64 %i.wg, ptr %i.wc, align 8, !alias.scope !1475, !noalias !1459
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr %i.ws, ptr %i.wu, align 8, !alias.scope !1475, !noalias !1459
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 664
  store i64 0, ptr %i.wv, align 8, !alias.scope !1475, !noalias !1459
  store i8 1, ptr %i.qh, align 1, !noalias !1459
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 3 uses
  store ptr %i.wc, ptr %i.ww, align 8, !noalias !1459
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i64 0, ptr %i.wx, align 8, !noalias !1459
  store i8 0, ptr %i.qg, align 1, !noalias !1459
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wy, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !1459
  %.sroa.7285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr %i.ww, ptr %.sroa.7285.0..sroa_idx.i, align 8, !noalias !1459
end_hunk_0
