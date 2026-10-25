Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.00?download=true
inline.NumInlined: 2371
inline.NumDeleted: 908
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB7_11LocalClientNtNtB9_20direct_access_client18DirectAccessClient10list_xorbs0Bd_:bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body13

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !alias.scope !1711
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !1711
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !1711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.u = getelementptr i8, ptr %i.r, i64 32
  %.val = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  %i.v = getelementptr i8, ptr %i.r, i64 40
  %.val8 = load i64, ptr %i.v, align 8, !noundef !11
  invoke void @_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtB4_4path4PathECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val8)
          to label %_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path8read_dir.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body

_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path8read_dir.exit: ; preds = %bb.c
  %.val9 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val10 = load i8, ptr %i.x, align 8, !range !30, !noundef !11 ; 2 uses
  %i.y = icmp eq i8 %.val10, 2
  br i1 %i.y, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit.thread

bb.e:                                             ; preds = %_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path8read_dir.exit
  invoke void @_RINvMs0_NtCsiAynQAjgDuT_10xet_client5errorNtB6_11ClientError8internalNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noundef nonnull %.val9)
          to label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit unwind label %bb.d

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit.thread: ; preds = %_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path8read_dir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit._crit_edge

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit: ; preds = %bb.e
  %.pr = load i64, ptr %i.m, align 8, !alias.scope !1712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %.not.i = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1714 ; 2 uses
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre76 = load i8, ptr %.phi.trans.insert75, align 8, !alias.scope !1714 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit._crit_edge, label %bb.bb

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit._crit_edge: ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit.thread
  %i.z = phi i8 [ %.val10, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit.thread ], [ %.pre76, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit ]
  %i.aa = phi ptr [ %.val9, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit.thread ], [ %.pre, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1719
  store ptr %i.aa, ptr %i.k, align 8, !noalias !1720
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.z, ptr %i.ab, align 8, !noalias !1720
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.58.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.529.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i.backedge, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB5_2io5error5ErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B1N_B1L_8internalB1e_EEB1P_.exit._crit_edge
  invoke void @_RNvXsz_NtCsG258MDvU3F_3std2fsNtB5_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB21_11LocalClientNtNtB23_20direct_access_client18DirectAccessClient10list_xorbs0s0_0E0B27_.exit.i.i.i.i.i.i, %bb.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.au, %bb.ah, %.loopexit.split-lp.i.i.i.i.i.i.i.i, %bb.z, %bb.y, %.body.i.i.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.bk, %bb.y ], [ %i.bk, %bb.z ], [ %i.cs, %bb.au ], [ %i.bz, %bb.ah ], [ %.pn.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1725, !noalias !1720, !nonnull !11, !noundef !11
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !1725
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.g, label %.body

bb.g:                                             ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #25
          to label %.body unwind label %bb.ay

bb.h:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i
  %i.ao = load i64, ptr %i.j, align 8, !range !20, !noalias !1720, !noundef !11
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %bb.h
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !1720 ; 2 uses
  %.sroa.47.0.copyload.i.i.i.i = load ptr, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !1720 ; 5 uses
  %i.aq = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.47.0.copyload.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1726
  %i.ar = ptrtoint ptr %.sroa.47.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.as = and i64 %i.ar, 3
  switch i64 %i.as, label %default.unreachable79 [
    i64 2, label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs00Bf_.exit.thread.i.i.i.i.i
    i64 3, label %bb.k
    i64 0, label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs00Bf_.exit.thread.i.i.i.i.i
    i64 1, label %bb.l
  ], !prof !14

bb.k:                                             ; preds = %bb.j
  %i.at = icmp ult ptr %.sroa.47.0.copyload.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.au = and i64 %i.ar, 1095216660480
  %i.av = icmp ne i64 %i.au, 1095216660480
  call void @llvm.assume(i1 %i.at)
  call void @llvm.assume(i1 %i.av)
  br label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs00Bf_.exit.thread.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %.sroa.47.0.copyload.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  store ptr %i.aw, ptr %i.aj, align 8, !alias.scope !1727, !noalias !1726
  store i8 3, ptr %i.i, align 8, !alias.scope !1727, !noalias !1726
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs00Bf_.exit.thread.i.i.i.i.i unwind label %bb.f

_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs00Bf_.exit.thread.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1726
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorEB1w_uNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2H_11LocalClientNtNtB2J_20direct_access_client18DirectAccessClient10list_xorbs00NCIB2_B1w_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCB2z_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5k_NCB2z_s0_0E0E0E0B2N_.exit.i.i.i.i.backedge

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !1720
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %i.h, align 8, !noalias !1729
  store ptr %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1729
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1731
  invoke void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry9file_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.o unwind label %bb.n, !noalias !1732

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.v, %bb.p, %bb.n
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.ax, %bb.n ], [ %i.bf, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs8DirEntryECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #27
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !1732

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1731
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1735
  %i.ay = load ptr, ptr %i.ad, align 8, !alias.scope !1734, !noalias !1731, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = load i64, ptr %i.ae, align 8, !alias.scope !1734, !noalias !1731, !noundef !11 ; 4 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.az)
          to label %bb.q unwind label %bb.p, !noalias !1736

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %.body.i.i.i.i.i.i.i unwind label %bb.r, !noalias !1737

bb.q:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.d, align 8, !range !20, !noalias !1735, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.s, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.q
  %.sroa.7.sroa.0.0.copyload12.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1738, !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1735
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1737
  unreachable

bb.s:                                             ; preds = %bb.q
  %.sroa.6.24.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !1735
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !1739 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1735
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1731
  store i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !1731
  store i64 %i.ba, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1731
  store i64 %i.az, ptr %.sroa.529.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1731
  store i64 1, ptr %i.g, align 8, !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1731
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !1732

bb.u:                                             ; preds = %bb.s, %.thread.i.i.i.i.i.i.i
  %.sroa.7.sroa.7.sroa.7.040.i.i.i.i.i.i.i = phi i64 [ %i.az, %.thread.i.i.i.i.i.i.i ], [ %.sroa.6.24.copyload.i.i.i.i.i.i.i, %bb.s ]
  %.sroa.7.sroa.0.039.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.0.0.copyload12.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ba, %bb.s ] ; 2 uses
  %.sroa.7.sroa.7.sroa.0.038.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i.i.i.i.i ], [ %i.az, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1731
  store i64 %.sroa.7.sroa.0.039.i.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !1731
  store i64 %.sroa.7.sroa.7.sroa.0.038.i.i.i.i.i.i.i, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1731
  store i64 %.sroa.7.sroa.7.sroa.7.040.i.i.i.i.i.i.i, ptr %.sroa.529.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1740
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.w, !noalias !1732

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1732
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i unwind label %bb.n, !noalias !1732

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i, %bb.u
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.0.039.i.i.i.i.i.i.i, %bb.u ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1731
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.bh = load ptr, ptr %i.h, align 8, !alias.scope !1745, !noalias !1728, !nonnull !11, !noundef !11
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !noalias !1746
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i.i unwind label %bb.y, !noalias !1732

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1747, !noalias !1728, !nonnull !11, !noundef !11 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1747, !noalias !1728 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i.i.i.i.i, align 1, !noalias !1732
  %i.bl = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %.body.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i.i.i, i64 noundef 1) #28, !noalias !1732
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1747, !noalias !1728, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1747, !noalias !1728 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i.i.i, align 1, !noalias !1732
  %i.bm = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs0s_0Bf_.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i.i, i64 noundef 1) #28, !noalias !1732
  br label %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs0s_0Bf_.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1732
  unreachable

_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs0s_0Bf_.exit.i.i.i.i.i.i: ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1728
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB2u_11LocalClientNtNtB2w_20direct_access_client18DirectAccessClient10list_xorbs0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCB2m_s0_0E0E0B2A_.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB9_11LocalClientNtNtBb_20direct_access_client18DirectAccessClient10list_xorbs0s_0Bf_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, i64 16, i1 false), !noalias !1728
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1728
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.bo = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1749, !noalias !1748, !nonnull !11, !noundef !11 ; 6 uses
  %i.bp = load i64, ptr %i.ah, align 8, !alias.scope !1749, !noalias !1748, !noundef !11 ; 8 uses
  %i.bq = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1750

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cn, %bb.ar ], [ %lpad.loopexit.split-lp112, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %.body.i.i.i.i unwind label %bb.at, !noalias !1751

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i, %bb.al, %bb.ac, %bb.am
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bq, label %bb.ag, label %.preheader.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.af
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.ad, %bb.ae
  %i.br = phi i64 [ %i.bv, %bb.ae ], [ %i.bp, %bb.ad ] ; 2 uses
  %i.bs = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr15memrchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.br)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1750 ; 2 uses

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.af, label %.thread.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.bv = extractvalue { i64, i64 } %i.bs, 1      ; 5 uses
  %i.bw = icmp ult i64 %i.bv, %i.br
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bv
  %lhsc.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bx, align 1, !alias.scope !1752, !noalias !1750
  %i.by = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i, 46
  br i1 %i.by, label %bb.aj, label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB21_11LocalClientNtNtB23_20direct_access_client18DirectAccessClient10list_xorbs0s0_0E0B27_.exit.i.i.i.i.i.i unwind label %bb.ah, !noalias !1751

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i.i.i unwind label %bb.ai, !noalias !1751

bb.ai:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1751
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.cb = add nuw i64 %i.bv, 1                    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cb, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %.split.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.aj
  %i.cc = icmp eq i64 %i.cb, %i.bp
  br i1 %i.cc, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !1753, !noalias !1750, !noundef !11
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.i.i.i.i.i.i
  %i.cg = sub nuw i64 %i.bp, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1754
  invoke void @_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash8from_hex(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cg)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1750

bb.am:                                            ; preds = %bb.ak, %.split.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp, i64 noundef %i.cb, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #31
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1750

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.ci = load i64, ptr %i.b, align 8, !range !20, !noalias !1754, !noundef !11
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %.invoke.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !1754
  %i.ck = load i64, ptr %i.t, align 8, !alias.scope !1755, !noalias !1750, !noundef !11 ; 3 uses
  %i.cl = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1755, !noalias !1750, !noundef !11
  %i.cm = icmp eq i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
          to label %bb.as unwind label %bb.ar, !noalias !1750

bb.ar:                                            ; preds = %bb.aq
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtB11_5error13DataHashErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #27
          to label %.loopexit.split-lp.i.i.i.i.i.i.i.i unwind label %bb.at, !noalias !1750

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.co = load ptr, ptr %i.s, align 8, !alias.scope !1755, !noalias !1750, !nonnull !11, !noundef !11
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1750
  %i.cq = add i64 %i.ck, 1
  store i64 %i.cq, ptr %i.t, align 8, !alias.scope !1755, !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.invoke.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.as, %bb.ao
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtB11_5error13DataHashErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
          to label %.thread.sink.split.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1750

bb.at:                                            ; preds = %bb.ar, %.loopexit.split-lp.i.i.i.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1751
  unreachable

.thread.sink.split.i.i.i.i.i.i.i.i:               ; preds = %.invoke.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1754
  br label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.ae, %.thread.sink.split.i.i.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCNCNvXsl_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB21_11LocalClientNtNtB23_20direct_access_client18DirectAccessClient10list_xorbs0s0_0E0B27_.exit.i.i.i.i.i.i unwind label %bb.au, !noalias !1751

bb.au:                                            ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i.i.i unwind label %bb.av, !noalias !1751

bb.av:                                            ; preds = %bb.au
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNCNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB7_11LocalClientNtNtBb_9interface6Client12upload_shard0Bd_:bb.a
  %i.yk = load i64, ptr %i.yj, align 8, !alias.scope !3785, !noundef !11
  invoke void %i.yf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yg, ptr noundef %i.yi, i64 noundef %i.yk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit231 unwind label %bb.jo, !inline_history !2

bb.jo:                                            ; preds = %bb.jn
  %i.yl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.yn = load i8, ptr %i.ym, align 1, !range !22, !noundef !11
  %i.yo = trunc nuw i8 %i.yn to i1
  br i1 %i.yo, label %bb.ka, label %.body234

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit236: ; preds = %bb.js, %bb.jt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit231
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.yq = load i8, ptr %i.yp, align 8, !range !22, !noundef !11
  %i.yr = trunc nuw i8 %i.yq to i1
  br i1 %i.yr, label %bb.jw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit209

bb.jp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit231
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ys)
          to label %bb.js unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.yt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !3788, !nonnull !11, !noundef !11
  %i.yw = atomicrmw add ptr %i.yv, i64 -1 release, align 8, !noalias !3789
  %i.yx = icmp eq i64 %i.yw, 1
  br i1 %i.yx, label %bb.jr, label %.body234

bb.jr:                                            ; preds = %bb.jq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yu) #25
          to label %.body234 unwind label %bb.ju

bb.js:                                            ; preds = %bb.jp
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  %i.yz = load ptr, ptr %i.yy, align 8, !alias.scope !3792, !nonnull !11, !noundef !11
  %i.za = atomicrmw add ptr %i.yz, i64 -1 release, align 8, !noalias !3793
  %i.zb = icmp eq i64 %i.za, 1
  br i1 %i.zb, label %bb.jt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit236

bb.jt:                                            ; preds = %bb.js
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yy) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit236 unwind label %bb.jv

bb.ju:                                            ; preds = %bb.jr
  %i.zc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body234:                                         ; preds = %bb.jv, %bb.jr, %bb.jq, %bb.ka, %bb.jo
  %.pn121 = phi { ptr, i32 } [ %i.yl, %bb.jo ], [ %i.yl, %bb.ka ], [ %i.zg, %bb.jv ], [ %i.yt, %bb.jr ], [ %i.yt, %bb.jq ] ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ze = load i8, ptr %i.zd, align 8, !range !22, !noundef !11
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.kb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240

bb.jv:                                            ; preds = %bb.jt
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %.body234

bb.jw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit236
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  %i.zi = load ptr, ptr %i.zh, align 8, !alias.scope !3794, !noundef !11 ; 2 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit209, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.zk = atomicrmw add ptr %i.zi, i64 -1 release, align 8, !noalias !3795
  %i.zl = icmp eq i64 %i.zk, 1
  br i1 %i.zl, label %bb.jy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit209

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2Z_4SyncEL_E9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zh) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit209 unwind label %bb.jz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240: ; preds = %bb.kk, %bb.kj, %bb.kl, %bb.kc, %bb.kb, %bb.kd, %bb.kh, %bb.jz, %.body234
  %.pn123 = phi { ptr, i32 } [ %i.zm, %bb.jz ], [ %.pn119, %bb.kh ], [ %.pn121, %.body234 ], [ %.pn121, %bb.kc ], [ %.pn121, %bb.kd ], [ %.pn121, %bb.kb ], [ %.pn119, %bb.kl ], [ %.pn119, %bb.kj ], [ %.pn119, %bb.kk ]
  store i8 2, ptr %i.bi, align 4
  resume { ptr, i32 } %.pn123

bb.jz:                                            ; preds = %bb.jy
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240

bb.ka:                                            ; preds = %bb.jo
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.zn) #27
          to label %.body234 unwind label %bb.ax

bb.kb:                                            ; preds = %.body234
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !3796, !noundef !11 ; 2 uses
  %i.zq = icmp eq ptr %i.zp, null
  br i1 %i.zq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.zr = atomicrmw add ptr %i.zp, i64 -1 release, align 8, !noalias !3797
  %i.zs = icmp eq i64 %i.zr, 1
  br i1 %i.zs, label %bb.kd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240

bb.kd:                                            ; preds = %bb.kc
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2Z_4SyncEL_E9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zo) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240 unwind label %bb.ax

bb.ke:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEj1_ECsiAynQAjgDuT_10xet_client.exit
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  call void @llvm.experimental.noalias.scope.decl(metadata !3799)
  %i.zu = load ptr, ptr %i.zt, align 8, !alias.scope !3800, !nonnull !11, !noundef !11
  %i.zv = atomicrmw add ptr %i.zu, i64 -1 release, align 8, !noalias !3800
  %i.zw = icmp eq i64 %i.zv, 1
  br i1 %i.zw, label %bb.kf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsiAynQAjgDuT_10xet_client.exit

bb.kf:                                            ; preds = %bb.ke
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zt) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ax

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit243: ; preds = %bb.kg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.zy = load i8, ptr %i.zx, align 1, !range !22, !noundef !11
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %bb.ki, label %bb.kh

bb.kg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  call void @llvm.experimental.noalias.scope.decl(metadata !3802)
  %i.aab = load ptr, ptr %i.aaa, align 8, !alias.scope !3803, !nonnull !11, !align !13, !noundef !11
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8, !noalias !3803, !nonnull !11, !noundef !11
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aag = load ptr, ptr %i.aaf, align 8, !alias.scope !3803, !noundef !11
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aai = load i64, ptr %i.aah, align 8, !alias.scope !3803, !noundef !11
  invoke void %i.aad(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef %i.aag, i64 noundef %i.aai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit243 unwind label %bb.ax, !inline_history !2

bb.kh:                                            ; preds = %bb.ki, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit243
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aak = load i8, ptr %i.aaj, align 8, !range !22, !noundef !11
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.kj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240

bb.ki:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit243
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aam) #27
          to label %bb.kh unwind label %bb.ax

bb.kj:                                            ; preds = %bb.kh
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !3804, !noundef !11 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, null
  br i1 %i.aap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aaq = atomicrmw add ptr %i.aao, i64 -1 release, align 8, !noalias !3805
  %i.aar = icmp eq i64 %i.aaq, 1
  br i1 %i.aar, label %bb.kl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240

bb.kl:                                            ; preds = %bb.kk
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2Z_4SyncEL_E9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aan) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtB4_6marker4SendNtB3y_4SyncEL_EEEB26_.exit240 unwind label %bb.ax
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB7_11LocalClientNtNtBb_9interface6Client18get_file_term_data0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.6337 = alloca [40 x i8], align 8         ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.8322.sroa.9 = alloca [24 x i8], align 8  ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [4 x i8], align 4                 ; 8 uses
  %.sroa.3298.sroa.2 = alloca [24 x i8], align 8  ; 2 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.0269.sroa.10 = alloca [24 x i8], align 8 ; 8 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.03 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.3.sroa.5 = alloca [24 x i8], align 8     ; 3 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.23 = alloca [40 x i8], align 8           ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.y = load i8, ptr %i.x, align 4, !range !29, !noundef !11
  switch i8 %i.y, label %default.unreachable509 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.as
    i8 4, label %bb.bd
    i8 5, label %bb.h
  ]

default.unreachable509:                           ; preds = %bb.ch, %bb.a
  unreachable

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205, %.noexc.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body139

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 207
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 205
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8
  store <2 x ptr> %i.ah, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ag, ptr %i.ai, align 8
  store i8 0, ptr %i.ab, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  store i8 0, ptr %i.ac, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load <2 x ptr>, ptr %i.am, align 8
  store <2 x ptr> %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ap = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 196
  store i32 2, ptr %i.ar, align 4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit_crit_edge, %bb.c
  %i.as = phi i32 [ %.pre476, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit_crit_edge ], [ 2, %bb.c ]
  %i.at = phi i32 [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit_crit_edge ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  %i.au = icmp slt i32 %i.at, %i.as
  br i1 %i.au, label %bb.ab, label %bb.ac

.body139:                                         ; preds = %bb.be, %bb.bl, %bb.bm, %bb.er, %bb.ba, %bb.bb, %bb.z, %bb.b, %bb.at, %.body137
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn74, %.body137 ], [ %i.ld, %bb.er ], [ %i.ec, %bb.at ], [ %i.el, %bb.ba ], [ %i.cd, %bb.z ], [ %i.z, %bb.b ], [ %i.el, %bb.bb ], [ %i.fm, %bb.bl ], [ %i.fb, %bb.be ], [ %i.fm, %bb.bm ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3905, !noundef !11 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit, label %bb.d

bb.d:                                             ; preds = %.body139
  %i.ay = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !3906
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.dp

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #30
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #30
  unreachable

bb.h:                                             ; preds = %bb.a, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val123 = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %1, i64 288
  %.val124 = load ptr, ptr %i.bc, align 8, !nonnull !11, !align !13, !noundef !11
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val123, ptr nonnull %.val124) #27
          to label %.body unwind label %bb.dp

bb.j:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.p, align 8, !range !41, !noundef !11 ; 3 uses
  %i.be = icmp eq i64 %i.bd, -2
  br i1 %i.be, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.bg, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit, %bb.k
  %.sink = phi i8 [ 4, %bb.bg ], [ 3, %bb.av ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit ], [ 5, %bb.k ]
  store i8 %.sink, ptr %i.x, align 4
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %.sroa.3298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3298.sroa.0.0.copyload = load ptr, ptr %.sroa.3298.0..sroa_idx, align 8
  %.sroa.3298.sroa.2.0..sroa.3298.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3298.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3298.sroa.2.0..sroa.3298.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val121 = load ptr, ptr %i.ba, align 8         ; 5 uses
  %i.bf = getelementptr i8, ptr %1, i64 288
  %.val122 = load ptr, ptr %i.bf, align 8, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.bg = load ptr, ptr %.val122, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121) ]
  invoke void %i.bg(ptr noundef nonnull %.val121)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.val122, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.val122, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !16, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_.exit

bb.p:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val122, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.val122, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !16, !invariant.load !11
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #28
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_.exit: ; preds = %bb.o, %bb.n
  %.not.i = icmp eq i64 %i.bd, -1
  br i1 %.not.i, label %bb.r, label %bb.eq

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body133 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit unwind label %bb.u
end_hunk_1
begin_hunk_2_@_RNCNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB7_11LocalClientNtNtBb_9interface6Client18get_file_term_data0Bd_:bb.a
  %.sroa.0269.sroa.9.0.copyload282 = load ptr, ptr %.sroa.0269.sroa.9.0..sroa_idx281, align 8, !alias.scope !3923 ; 3 uses
  %.sroa.0269.sroa.10.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0269.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0269.sroa.10.0..sroa_idx284, i64 24, i1 false), !alias.scope !3923
  br i1 %i.gh, label %bb.ej, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.0269.sroa.11.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.0269.sroa.11.0.copyload286 = load i64, ptr %.sroa.0269.sroa.11.0..sroa_idx285, align 8, !alias.scope !3923
  %.sroa.11272.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11272.0..sroa_idx273, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5289.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0269.sroa.10, i64 24, i1 false)
  store i64 %.sroa.0269.sroa.0.0.copyload278, ptr %i.t, align 8
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.0269.sroa.9.0.copyload282, ptr %.sroa.4288.0..sroa_idx, align 8
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %.sroa.0269.sroa.11.0.copyload286, ptr %.sroa.6290.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  store i64 %i.gg, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5289.0..sroa_idx, i64 32, i1 false)
  %i.gi = ptrtoint ptr %.sroa.0269.sroa.9.0.copyload282 to i64
  %i.gj = trunc i64 %i.gi to i32
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.body170 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB36_2__HEEEEB38_.exit unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body170

.body170:                                         ; preds = %bb.bv, %bb.bx
  %eh.lpad-body171 = phi { ptr, i32 } [ %i.gm, %bb.bx ], [ %i.gk, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0269.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.eh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB36_2__HEEEEB38_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0269.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.u, ptr %i.d, align 8, !noalias !3924
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !3924, !nonnull !11, !noundef !11
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !3924, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3924
  store ptr %i.d, ptr %i.b, align 8, !noalias !3924
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3924
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @148, ptr noundef nonnull %i.b)
          to label %.noexc173 unwind label %bb.by

.noexc173:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB36_2__HEEEEB38_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3924
  invoke void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gq, i64 noundef %i.gs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %.noexc173, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB36_2__HEEEEB38_.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.eh

bb.bz:                                            ; preds = %.noexc173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bz
  %.sroa.10.0 = phi i32 [ %i.gj, %bb.bz ], [ %i.gc, %bb.bp ]
  %.sroa.7.0 = phi i64 [ %.sroa.0269.sroa.0.0.copyload278, %bb.bz ], [ %i.ga, %bb.bp ]
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !11, !align !13, !noundef !11
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  %i.gy = load atomic i64, ptr %i.gx monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gz = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.cb unwind label %bb.cc     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ha = extractvalue { i64, i32 } %i.gz, 0
  %i.hb = extractvalue { i64, i32 } %i.gz, 1
  store i64 %i.ha, ptr %i.q, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.hb, ptr %i.hc, align 8
  %i.hd = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef %.sroa.7.0, i32 noundef %.sroa.10.0)
          to label %bb.cd unwind label %bb.cc     ; 2 uses

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.body

bb.cd:                                            ; preds = %bb.cb
  %i.hf = extractvalue { i64, i32 } %i.hd, 0
  %i.hg = extractvalue { i64, i32 } %i.hd, 1
  %i.hh = mul i64 %i.hf, 1000
  %i.hi = udiv i32 %i.hg, 1000000
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = add i64 %i.hh, %i.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hl = icmp ult i64 %i.gy, %i.hk
  br i1 %i.hl, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu)
          to label %bb.cg unwind label %bb.ck

bb.cf:                                            ; preds = %bb.cd
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.hn = load i32, ptr %i.hm, align 8, !noundef !11
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.ee, label %bb.eb

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  %i.hp = load i32, ptr %i.n, align 8, !range !39, !alias.scope !3925, !noundef !11
  %i.hq = trunc nuw i32 %i.hp to i1
  br i1 %i.hq, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !3925, !nonnull !11, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3926
  %i.ht = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hu = and i64 %i.ht, 3
  switch i64 %i.hu, label %default.unreachable509 [
    i64 2, label %bb.ea
    i64 3, label %bb.ci
    i64 0, label %bb.ea
    i64 1, label %bb.cj
  ], !prof !14

bb.ci:                                            ; preds = %bb.ch
  %i.hv = icmp ult ptr %i.hs, inttoptr (i64 188978561024 to ptr)
  %i.hw = and i64 %i.ht, 1095216660480
  %i.hx = icmp ne i64 %i.hw, 1095216660480
  call void @llvm.assume(i1 %i.hv)
  call void @llvm.assume(i1 %i.hx)
  br label %bb.ea

bb.cj:                                            ; preds = %bb.ch
  %i.hy = getelementptr i8, ptr %i.hs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.hy, ptr %i.hz, align 8, !alias.scope !3927, !noalias !3926
  store i8 3, ptr %i.a, align 8, !alias.scope !3927, !noalias !3926
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz)
          to label %bb.ea unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ce
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.dx

bb.cl:                                            ; preds = %bb.dz, %bb.cn, %bb.cm
  %.pn59 = phi { ptr, i32 } [ %i.ic, %bb.cm ], [ %.pn57365, %bb.dz ], [ %.pn53.pn.pn, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val90 = load i32, ptr %i.o, align 4, !range !19, !noundef !11
  %i.ib = call noundef i32 @close(i32 noundef %.val90) #28 ; 0 uses
  br label %bb.dx

bb.cm:                                            ; preds = %bb.dw
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.body193.thread:                                  ; preds = %.thread362, %4
  %.pn57.ph = phi { ptr, i32 } [ %5, %4 ], [ %i.id, %.thread362 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.dz

bb.cn:                                            ; preds = %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.sroa.021.2, label %bb.dz, label %bb.cl

.thread362:                                       ; preds = %6
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body193.thread

bb.co:                                            ; preds = %bb.cg
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !range !19, !alias.scope !3925, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i32 %i.if, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8, !alias.scope !3928
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ig, align 8, !alias.scope !3928
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ih, align 8, !alias.scope !3928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8, !alias.scope !3929
  %i.ii = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ii, align 8, !alias.scope !3929
  %i.ij = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.ij, align 8, !alias.scope !3929
  %i.ik = getelementptr i8, ptr %1, i64 240
  %.val125 = load ptr, ptr %i.ik, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.il = getelementptr i8, ptr %1, i64 248
  %.val126 = load i64, ptr %i.il, align 8, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %.val126, 4
  %i.im = getelementptr inbounds nuw i8, ptr %.val125, i64 %.idx
  %i.in = icmp eq i64 %.val126, 0
  br i1 %i.in, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.co
  %i.io = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8322.0..sroa_idx323 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8322.sroa.8.0..sroa.8322.0..sroa_idx323.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8322.sroa.9.0..sroa.8322.0..sroa_idx323.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.2332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.cs

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190, %bb.co
  %.sroa.06.0.lcssa = phi i64 [ 0, %bb.co ], [ %i.ji, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.iu = load ptr, ptr %i.it, align 8, !noundef !11 ; 2 uses
  %.not36 = icmp eq ptr %i.iu, null
  br i1 %.not36, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.cq, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.du unwind label %bb.cr

bb.cq:                                            ; preds = %._crit_edge
  %i.iv = getelementptr i8, ptr %1, i64 168
  %.val106 = load ptr, ptr %i.iv, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val106, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !range !16, !invariant.load !11
  %i.iy = add nsw i64 %i.ix, -1
  %i.iz = and i64 %i.iy, -16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %.val106, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !invariant.load !11, !nonnull !11
  invoke void %i.jd(ptr noundef nonnull %i.jb, i64 noundef %.sroa.06.0.lcssa, i64 noundef %.sroa.06.0.lcssa, i64 noundef %.sroa.06.0.lcssa)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body188, %bb.cr
  %.sroa.021.2 = phi i1 [ true, %.body188 ], [ false, %bb.cr ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn51, %.body188 ], [ %i.je, %bb.cr ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #27
          to label %bb.cn unwind label %bb.dp

bb.cr:                                            ; preds = %bb.cp
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6337)
  br label %.loopexit.split-lp

bb.cs:                                            ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190
  %.sroa.06.0435 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190 ]
  %.sroa.0318.0434 = phi ptr [ %.val125, %.lr.ph ], [ %i.jf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190 ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0318.0434, i64 16 ; 2 uses
  %.val129 = load i64, ptr %.sroa.0318.0434, align 8, !noundef !11 ; 2 uses
  %i.jg = getelementptr i8, ptr %.sroa.0318.0434, i64 8
  %.val130 = load i64, ptr %i.jg, align 8, !noundef !11
  %reass.sub.i = sub i64 %.val130, %.val129
  %i.jh = add i64 %reass.sub.i, 1                 ; 2 uses
  %i.ji = add i64 %i.jh, %.sroa.06.0435           ; 2 uses
  %i.jj = invoke { i64, ptr } @_RNvXsc_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.o, i64 noundef 0, i64 noundef %.val129)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.jk = extractvalue { i64, ptr } %i.jj, 0
  %i.jl = trunc nuw i64 %i.jk to i1
  br i1 %i.jl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jm = extractvalue { i64, ptr } %i.jj, 1
  br label %3

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i8 noundef 0, i64 noundef %i.jh)
          to label %bb.cw unwind label %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body188:                                         ; preds = %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dm, %bb.dq
  %.pn51 = phi { ptr, i32 } [ %.pn48.pn, %bb.dq ], [ %i.jy, %bb.dm ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit.split-lp

.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.cv, %.loopexit400
  %lpad.loopexit.split-lp601 = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.cw:                                            ; preds = %bb.cv
  %.val101 = load ptr, ptr %i.io, align 8, !nonnull !11, !noundef !11
  %.val102 = load i64, ptr %i.ip, align 8, !noundef !11
  %i.jn = invoke noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.o, ptr noalias nofree noundef nonnull %.val101, i64 noundef %.val102)
          to label %bb.cx unwind label %bb.ds     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %.not37 = icmp eq ptr %i.jn, null
  br i1 %.not37, label %bb.cy, label %.loopexit400

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8322.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  store i64 0, ptr %i.iq, align 8
  invoke void @_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format18deserialize_chunksINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8322.sroa.9)
  br label %bb.dq

bb.da:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  %i.jp = load i64, ptr %i.h, align 8, !range !18, !alias.scope !3931, !noundef !11 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, -1
  %.sroa.8322.sroa.0.0.copyload328 = load i64, ptr %.sroa.8322.0..sroa_idx323, align 8, !alias.scope !3932 ; 3 uses
  %.sroa.8322.sroa.8.0.copyload330 = load ptr, ptr %.sroa.8322.sroa.8.0..sroa.8322.0..sroa_idx323.sroa_idx, align 8, !alias.scope !3932 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8322.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8322.sroa.9.0..sroa.8322.0..sroa_idx323.sroa_idx, i64 24, i1 false), !alias.scope !3932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.jq, label %bb.dr, label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #27
          to label %.body181 unwind label %bb.dp

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8322.sroa.9, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.jp, ptr %i.j, align 8
  store i64 %.sroa.8322.sroa.0.0.copyload328, ptr %.sroa.2332.0..sroa_idx, align 8
  store ptr %.sroa.8322.sroa.8.0.copyload330, ptr %.sroa.3333.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8322.sroa.9)
  %.val103.cast = inttoptr i64 %.sroa.8322.sroa.0.0.copyload328 to ptr
  %.val104.cast = ptrtoint ptr %.sroa.8322.sroa.8.0.copyload330 to i64
  %.val131 = load ptr, ptr %i.ir, align 8, !nonnull !11, !noundef !11
  %.val132 = load i64, ptr %i.is, align 8, !noundef !11
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val103.cast, i64 noundef %.val104.cast, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val131, i64 noundef %.val132)
          to label %bb.dd unwind label %bb.db

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body181 unwind label %bb.dg

bb.df:                                            ; preds = %bb.dd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body181:                                         ; preds = %bb.dh, %bb.de, %bb.db
  %.pn42 = phi { ptr, i32 } [ %i.jr, %bb.db ], [ %i.ju, %bb.dh ], [ %i.js, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #27
          to label %.body184 unwind label %bb.dp

bb.dh:                                            ; preds = %bb.df
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body181

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body184 unwind label %bb.dk

bb.dj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body184:                                         ; preds = %bb.dl, %bb.di, %.body181
  %.pn44 = phi { ptr, i32 } [ %.pn42, %.body181 ], [ %i.jx, %bb.dl ], [ %i.jv, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dq

bb.dl:                                            ; preds = %bb.dj
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body184

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body188 unwind label %bb.do

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190 unwind label %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dm
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit190: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ka = icmp eq ptr %i.jf, %i.im
  br i1 %i.ka, label %._crit_edge, label %bb.cs

bb.dp:                                            ; preds = %bb.ge, %bb.fx, %bb.e, %bb.i, %bb.be, %.body146, %bb.fz, %bb.at, %bb.gb, %bb.fu, %.body, %bb.dz, %bb.dq, %.body181, %bb.db, %.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit, %.body137, %.body133
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.dq:                                            ; preds = %bb.ds, %bb.cz, %.body184
  %.pn48.pn = phi { ptr, i32 } [ %i.kc, %bb.ds ], [ %i.jo, %bb.cz ], [ %.pn44, %.body184 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.body188 unwind label %bb.dp

bb.dr:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8322.sroa.9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8322.sroa.9)
  br label %.loopexit400

.loopexit400:                                     ; preds = %bb.cx, %bb.dr
  %.sroa.21.2 = phi ptr [ %.sroa.8322.sroa.8.0.copyload330, %bb.dr ], [ %i.jn, %bb.cx ]
  %.sroa.11.2 = phi i64 [ %.sroa.8322.sroa.0.0.copyload328, %bb.dr ], [ 26, %bb.cx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.dt unwind label %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.cw
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dt:                                            ; preds = %.loopexit400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %3

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

3:                                                ; preds = %bb.cu, %bb.dt
  %.sroa.21.3 = phi ptr [ %i.jm, %bb.cu ], [ %.sroa.21.2, %bb.dt ]
  %.sroa.11.3 = phi i64 [ 26, %bb.cu ], [ %.sroa.11.2, %bb.dt ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body193.thread unwind label %7

6:                                                ; preds = %3
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.dw unwind label %.thread362

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.du:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.6337.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6337, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6337.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.0335.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.5336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5336.0.copyload = load ptr, ptr %.sroa.5336.0..sroa_idx, align 8
  %.sroa.6337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6337, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6337.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6337, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6337)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dw
  %.sroa.0.1382 = phi i64 [ 0, %bb.du ], [ 1, %bb.dw ]
  %.sroa.11.1376391 = phi i64 [ %.sroa.0335.0.copyload, %bb.du ], [ %.sroa.11.3, %bb.dw ]
  %.sroa.21.1378 = phi ptr [ %.sroa.5336.0.copyload, %bb.du ], [ %.sroa.21.3, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load i32, ptr %i.o, align 4, !range !19, !noundef !11
  %i.kd = call noundef i32 @close(i32 noundef %.val) #28 ; 0 uses
  br label %bb.dy

bb.dw:                                            ; preds = %6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m)
          to label %bb.dv unwind label %bb.cm

bb.dx:                                            ; preds = %bb.cl, %bb.ck
  %.pn61.pn = phi { ptr, i32 } [ %i.ia, %bb.ck ], [ %.pn59, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body

bb.dy:                                            ; preds = %bb.dv, %bb.ea
  %.sroa.21.4 = phi ptr [ %.sroa.21.1378, %bb.dv ], [ null, %bb.ea ]
  %.sroa.11.4 = phi i64 [ %.sroa.11.1376391, %bb.dv ], [ 34, %bb.ea ]
  %.sroa.0.4 = phi i64 [ %.sroa.0.1382, %bb.dv ], [ 1, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.eb

bb.dz:                                            ; preds = %.body193.thread, %bb.cn
  %.pn57365 = phi { ptr, i32 } [ %.pn57.ph, %.body193.thread ], [ %.pn53.pn.pn, %bb.cn ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #27
          to label %bb.cl unwind label %bb.dp

bb.ea:                                            ; preds = %bb.ch, %bb.ch, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.dy

bb.eb:                                            ; preds = %bb.cf, %bb.eq, %bb.dy
  %.sroa.21.5 = phi ptr [ %.sroa.3298.sroa.0.0.copyload, %bb.eq ], [ %.sroa.21.4, %bb.dy ], [ undef, %bb.cf ]
  %.sroa.11.5 = phi i64 [ %i.bd, %bb.eq ], [ %.sroa.11.4, %bb.dy ], [ 35, %bb.cf ]
  %.sroa.0.5 = phi i64 [ 1, %bb.eq ], [ %.sroa.0.4, %bb.dy ], [ 1, %bb.cf ]
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %.body133 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192: ; preds = %bb.eb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit196 unwind label %bb.u

bb.ee:                                            ; preds = %bb.cf
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !11, !noundef !11
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !11, !align !13, !noundef !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !invariant.load !11, !nonnull !11
  %i.kn = invoke { ptr, ptr } %i.km(ptr noundef nonnull %i.ki)
          to label %bb.eg unwind label %bb.ef     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eg:                                            ; preds = %bb.ee
  %i.kp = extractvalue { ptr, ptr } %i.kn, 0
  %i.kq = extractvalue { ptr, ptr } %i.kn, 1
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.kp, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.kq, ptr %i.ks, align 8
  br label %bb.h

.body:                                            ; preds = %bb.i, %bb.p, %bb.q, %bb.ef, %bb.cc, %bb.dx
  %.pn67.pn = phi { ptr, i32 } [ %i.he, %bb.cc ], [ %.pn61.pn, %bb.dx ], [ %i.bm, %bb.p ], [ %i.bb, %bb.i ], [ %i.ko, %bb.ef ], [ %i.bm, %bb.q ]
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.kt) #27
          to label %.body133 unwind label %bb.dp

bb.eh:                                            ; preds = %bb.by, %.body170
  %.pn27 = phi { ptr, i32 } [ %i.gt, %bb.by ], [ %eh.lpad-body171, %.body170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.br, %bb.eh, %.body158
  %.pn70.pn = phi { ptr, i32 } [ %i.ge, %bb.br ], [ %.pn27, %bb.eh ], [ %i.ft, %.body158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03)
  br label %.body133

bb.ej:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0269.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0269.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit196

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit196: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192, %bb.ej
  %.sroa.21.6 = phi ptr [ %.sroa.0269.sroa.9.0.copyload282, %bb.ej ], [ %.sroa.21.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192 ]
  %.sroa.11.6 = phi i64 [ %.sroa.0269.sroa.0.0.copyload278, %bb.ej ], [ %.sroa.11.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192 ]
  %.sroa.0.6 = phi i64 [ 1, %bb.ej ], [ %.sroa.0.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i192 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit196
  %i.kv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %.body137 unwind label %bb.em

bb.el:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit196
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit201 unwind label %bb.y

bb.em:                                            ; preds = %bb.ek
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.en:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtBW_6string6StringINtNtBW_3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB34_2__HEEENtNtB36_5error11ClientErrorENtNtB4_6marker4SendEL_EEEB36_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5, i64 24, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit209

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit209: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205, %bb.en
  %.sroa.21.7 = phi ptr [ %.sroa.3.sroa.3.0.copyload, %bb.en ], [ %.sroa.21.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205 ] ; 4 uses
  %.sroa.11.7 = phi i64 [ %.sroa.3.sroa.0.0.copyload, %bb.en ], [ %.sroa.11.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205 ] ; 4 uses
  %.sroa.0.7 = phi i64 [ 1, %bb.en ], [ %.sroa.0.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205 ] ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !3933, !noundef !11 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203, label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit209
  %i.la = atomicrmw add ptr %i.ky, i64 -1 release, align 8, !noalias !3934
  %i.lb = icmp eq i64 %i.la, 1
  br i1 %i.lb, label %bb.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203

bb.ep:                                            ; preds = %bb.eo
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kx) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203 unwind label %bb.af

bb.eq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB2u_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3298.sroa.2, i64 24, i1 false)
  br label %bb.eb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit201: ; preds = %bb.el
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205 unwind label %bb.er

bb.er:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit201
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %.body139 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i205: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__HEEEB1d_.exit201
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit209 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203: ; preds = %bb.eo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit209, %bb.ep
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.lf)
          to label %bb.ev unwind label %bb.et

bb.et:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3935)
  call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !3937, !nonnull !11, !noundef !11
  %i.lj = atomicrmw add ptr %i.li, i64 -1 release, align 8, !noalias !3938
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.eu, label %.body146

bb.eu:                                            ; preds = %bb.et
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lh) #25
          to label %.body146 unwind label %bb.ex

bb.ev:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit203
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !3941, !nonnull !11, !noundef !11
  %i.ln = atomicrmw add ptr %i.lm, i64 -1 release, align 8, !noalias !3942
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.ew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit214

bb.ew:                                            ; preds = %bb.ev
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ll) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit214 unwind label %bb.al

bb.ex:                                            ; preds = %bb.eu
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit214: ; preds = %bb.ev, %bb.ew
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val111 = load ptr, ptr %i.lq, align 8         ; 5 uses
  %i.lr = getelementptr i8, ptr %1, i64 112
  %.val112 = load ptr, ptr %i.lr, align 8, !nonnull !11, !align !13, !noundef !11 ; 5 uses
end_hunk_2
