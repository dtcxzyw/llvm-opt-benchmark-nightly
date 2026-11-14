Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0B9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7515.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store i8 0, ptr %i.jo, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.cv, ptr noundef nonnull align 16 dereferenceable(192) %i.dd, i64 192, i1 false)
  invoke void @_RNvMNtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB2_13UpdateBuilder5build(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.cw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(192) %i.cv)
          to label %bb.ck unwind label %bb.cj

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8481.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8481.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.io, %bb.cq, %bb.cf
  %.sroa.12.sroa.12.sroa.14.4 = phi ptr [ %.sroa.12.sroa.12.sroa.14.5, %bb.cq ], [ %.sroa.8481.sroa.11.0.copyload499, %bb.cf ], [ %.sroa.8356.sroa.10.0.copyload, %bb.io ]
  %.sroa.12.sroa.12.sroa.13.4 = phi i64 [ %.sroa.12.sroa.12.sroa.13.5, %bb.cq ], [ %.sroa.8481.sroa.10.0.copyload497, %bb.cf ], [ %.sroa.8356.sroa.9.0.copyload, %bb.io ]
  %.sroa.12.sroa.12.sroa.12.4 = phi i64 [ %.sroa.12.sroa.12.sroa.12.5, %bb.cq ], [ %.sroa.8481.sroa.9.0.copyload495, %bb.cf ], [ %.sroa.8356.sroa.8.0.copyload, %bb.io ]
  %.sroa.12.sroa.12.sroa.0.4 = phi i56 [ %.sroa.12.sroa.12.sroa.0.5, %bb.cq ], [ %.sroa.8481.sroa.8.0.copyload493, %bb.cf ], [ %.sroa.0410.sroa.5.0.extract.trunc, %bb.io ]
  %.sroa.12.sroa.0.4 = phi i8 [ %.sroa.12.sroa.0.5, %bb.cq ], [ %.sroa.8481.sroa.0.0.copyload491, %bb.cf ], [ %.sroa.0410.sroa.0.0.extract.trunc, %bb.io ]
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 491
  store i8 0, ptr %i.kx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.it

bb.ch:                                            ; preds = %bb.cb, %bb.bz
  %.pn18 = phi { ptr, i32 } [ %i.kt, %bb.cb ], [ %i.ks, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8481.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.ci

bb.ci:                                            ; preds = %.body182, %bb.cr, %bb.ch
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49, %.body182 ], [ %.pn42.pn, %bb.cr ], [ %.pn18, %bb.ch ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.kz = load i8, ptr %i.ky, align 1, !range !423, !noundef !411
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.td, label %bb.ir

bb.cj:                                            ; preds = %bb.ce
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %.body166

bb.ck:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.experimental.noalias.scope.decl(metadata !195542)
  call void @llvm.experimental.noalias.scope.decl(metadata !195543)
  %i.lc = load i64, ptr %i.cw, align 16, !range !447, !alias.scope !195543, !noundef !411 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, -3
  %i.le = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  br i1 %i.ld, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !195544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.le, i64 56, i1 false), !noalias !195542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !195544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !195544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !195545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !195545
  store ptr %i.co, ptr %i.cl, align 8, !noalias !195545
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !195545
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noundef nonnull @1497, ptr noundef nonnull %i.cl)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.cm, !noalias !195546

bb.cm:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.cl
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co) #73
          to label %.body166 unwind label %bb.cn, !noalias !195546

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !195545
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !195545
  store i64 13, ptr %i.cn, align 8, !noalias !195545
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1498)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0s0_0Bb_.exit.i unwind label %bb.cm, !noalias !195544

bb.cn:                                            ; preds = %bb.cm
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195546
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0s0_0Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !195545
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co)
          to label %bb.cp unwind label %bb.co

.body166:                                         ; preds = %bb.co, %bb.cm, %bb.cj
  %.pn25 = phi { ptr, i32 } [ %i.lb, %bb.cj ], [ %i.li, %bb.co ], [ %i.lf, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7515.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8510.sroa.12)
  br label %bb.cr

bb.co:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0s0_0Bb_.exit.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.thread:                                          ; preds = %bb.ck
  %.sroa.7515.sroa.0.0.copyload = load i8, ptr %i.le, align 8, !alias.scope !195544
  %.sroa.7515.sroa.7.0..sroa.7515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  %.sroa.7515.sroa.7.0.copyload = load i56, ptr %.sroa.7515.sroa.7.0..sroa.7515.0..sroa_idx.sroa_idx, align 1, !alias.scope !195544
  %.sroa.7515.sroa.9.0..sroa.7515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.7515.sroa.13.0..sroa.7515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %.sroa.7515.sroa.13.0.copyload = load ptr, ptr %.sroa.7515.sroa.13.0..sroa.7515.0..sroa_idx.sroa_idx, align 16, !alias.scope !195544
  %.sroa.7515.sroa.15.0..sroa.7515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15.0..sroa.7515.0..sroa_idx.sroa_idx, i64 24, i1 false), !alias.scope !195544
  %.sroa.10516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %.sroa.10550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.10550.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.10516.0..sroa_idx, i64 96, i1 false)
  %.sroa.9549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 490
  %.sroa.4544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.5545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
  %.sroa.6546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.lk = load <2 x i64>, ptr %.sroa.7515.sroa.9.0..sroa.7515.0..sroa_idx.sroa_idx, align 16, !alias.scope !195544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8510.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15, i64 24, i1 false), !alias.scope !195547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7515.sroa.15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9549.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8510.sroa.12, i64 24, i1 false)
  store i64 %i.lc, ptr %i.cx, align 16
  store i8 %.sroa.7515.sroa.0.0.copyload, ptr %.sroa.4544.0..sroa_idx, align 8
  store i56 %.sroa.7515.sroa.7.0.copyload, ptr %.sroa.5545.0..sroa_idx, align 1
  store <2 x i64> %i.lk, ptr %.sroa.6546.0..sroa_idx, align 16
  %.sroa.8548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store ptr %.sroa.7515.sroa.13.0.copyload, ptr %.sroa.8548.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8510.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store i8 0, ptr %i.lj, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.it, ptr noundef nonnull align 16 dereferenceable(160) %i.cx, i64 160, i1 false)
  %.sroa.8567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 824
  store i8 0, ptr %.sroa.8567.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15573)
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 824
  br label %bb.iy

bb.cp:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0s0_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !195544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !195544
  %.sroa.7515.sroa.0.0.copyload538 = load i8, ptr %i.cp, align 8, !noalias !195543
  %.sroa.7515.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %.sroa.7515.sroa.7.0.copyload539 = load i56, ptr %.sroa.7515.sroa.7.0..sroa_idx, align 1, !noalias !195543
  %.sroa.7515.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.7515.sroa.9.0.copyload540 = load i64, ptr %.sroa.7515.sroa.9.0..sroa_idx, align 8, !noalias !195543
  %.sroa.7515.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.7515.sroa.11.0.copyload541 = load i64, ptr %.sroa.7515.sroa.11.0..sroa_idx, align 8, !noalias !195543
  %.sroa.7515.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.7515.sroa.13.0.copyload542 = load ptr, ptr %.sroa.7515.sroa.13.0..sroa_idx, align 8, !noalias !195543
  %.sroa.7515.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15.0..sroa_idx, i64 24, i1 false), !noalias !195543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !195544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8510.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7515.sroa.15, i64 24, i1 false), !alias.scope !195547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7515.sroa.15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8510.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8510.sroa.12)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ta, %bb.cp
  %.sroa.12.sroa.12.sroa.14.5 = phi ptr [ %.sroa.7515.sroa.13.0.copyload542, %bb.cp ], [ %.sroa.14561.sroa.0.0.copyload, %bb.ta ]
  %.sroa.12.sroa.12.sroa.13.5 = phi i64 [ %.sroa.7515.sroa.11.0.copyload541, %bb.cp ], [ %.sroa.12558.0.copyload560, %bb.ta ]
  %.sroa.12.sroa.12.sroa.12.5 = phi i64 [ %.sroa.7515.sroa.9.0.copyload540, %bb.cp ], [ %i.anz, %bb.ta ]
  %.sroa.12.sroa.12.sroa.0.5 = phi i56 [ %.sroa.7515.sroa.7.0.copyload539, %bb.cp ], [ %.sroa.10553.sroa.0.0.copyload, %bb.ta ]
  %.sroa.12.sroa.0.5 = phi i8 [ %.sroa.7515.sroa.0.0.copyload538, %bb.cp ], [ %.pr, %bb.ta ]
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 490
  store i8 0, ptr %i.ln, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.cg

bb.cr:                                            ; preds = %bb.tc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update12UpdateResultECsfR8GmIBoxTX_21lance_namespace_impls.exit240, %.body166
  %.pn42.pn = phi { ptr, i32 } [ %.pn25, %.body166 ], [ %.pn39.pn, %bb.tc ], [ %.pn39.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update12UpdateResultECsfR8GmIBoxTX_21lance_namespace_impls.exit240 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 490
  store i8 0, ptr %i.lo, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.ci

bb.cs:                                            ; preds = %bb.bw
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(192) %i.dc) #73
          to label %bb.iq unwind label %bb.bc

bb.ct:                                            ; preds = %bb.bv
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2) 1, i64 noundef range(i64 0, 384307168202282326) 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2911) #72
          to label %.noexc169 unwind label %bb.ip

.noexc169:                                        ; preds = %bb.ct
  unreachable

.body176.thread642.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body176.thread

bb.cu:                                            ; preds = %bb.bv
  %i.lq = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  %.val109 = load ptr, ptr %i.lq, align 8, !nonnull !411, !noundef !411 ; 4 uses
  %i.lr = getelementptr i8, ptr %.val109, i64 32
  %.val95 = load ptr, ptr %i.lr, align 8, !nonnull !411, !noundef !411
  %i.ls = getelementptr i8, ptr %.val109, i64 40
  %.val96 = load i64, ptr %i.ls, align 8, !noundef !411
  call void @llvm.experimental.noalias.scope.decl(metadata !195548)
  call void @llvm.experimental.noalias.scope.decl(metadata !195549)
  call void @llvm.experimental.noalias.scope.decl(metadata !195550)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.692.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.794.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.lt = load ptr, ptr %i.jt, align 16, !alias.scope !195549, !nonnull !411, !noundef !411 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 296
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !195551, !nonnull !411, !noundef !411
  %i.lw = getelementptr inbounds nuw i8, ptr %.val109, i64 8
  %.val.i.i = load ptr, ptr %i.lw, align 8, !alias.scope !195550, !nonnull !411, !noundef !411 ; 8 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.val109, i64 16
  %.val1.i.i = load i64, ptr %i.lx, align 8, !alias.scope !195550, !noundef !411 ; 14 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 336
  %i.lz = invoke noundef align 8 ptr @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema5field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ly, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.cv unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195551 ; 3 uses

.body.thread.i:                                   ; preds = %bb.hw, %bb.hv, %bb.hr, %bb.hq, %bb.di, %bb.da, %bb.cz
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.tc, %bb.hv ], [ %i.tc, %bb.hw ], [ %i.su, %bb.hr ], [ %i.mk, %bb.da ], [ %i.nb, %bb.di ], [ %i.su, %bb.hq ], [ %i.mk, %bb.cz ] ; 2 uses
  %3 = extractvalue { ptr, i32 } %eh.lpad-body.ph.i, 0
  %4 = extractvalue { ptr, i32 } %eh.lpad-body.ph.i, 1
  br label %.body.thread.i.a

.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, %bb.de, %bb.cw, %bb.cu, %bb.ht, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread532.i, %bb.ho, %bb.cx
  %lpad.loopexit.split-lp1872 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %5 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1872, 0
  %6 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1872, 1
  br label %.body.thread.i.a

.split.thread.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gn
  %lpad.loopexit.split-lp1883 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %7 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1883, 0
  %8 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1883, 1
  br label %10

bb.cv:                                            ; preds = %bb.cu
  %.not.i171 = icmp eq ptr %i.lz, null
  br i1 %.not.i171, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ma = invoke noundef zeroext i1 @_RNvNtNtCshkPeWWG1flk_5lance7dataset8optimize22field_contains_blob_v2(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.lz)
          to label %bb.dc unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.cx:                                            ; preds = %bb.cv
  %i.mb = getelementptr i8, ptr %.sroa.0347.01162, i64 16
  %i.mc = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !195553
  store ptr %.val.i.i, ptr %i.av, align 8, !noalias !195553
  %i.me = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.val1.i.i, ptr %i.me, align 8, !noalias !195553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !195553
  %i.mf = load ptr, ptr %i.md, align 8, !noalias !195554, !nonnull !411, !noundef !411
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 336
  store ptr %i.mg, ptr %i.au, align 8, !noalias !195553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !195553
  store ptr %i.av, ptr %i.at, align 8, !noalias !195553
  %.sroa.42.0..sroa_idx.i.i173 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i.i173, align 8, !noalias !195553
  %i.mh = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.mh, align 8, !noalias !195553
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !195553
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull @640, ptr noundef nonnull %i.at)
          to label %.noexc.i174 unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

.noexc.i174:                                      ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !195553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !195553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !195553
  call void @llvm.experimental.noalias.scope.decl(metadata !195555)
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !195556, !noalias !195553 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !195556, !noalias !195553 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.57.0.copyload.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !195556, !noalias !195553
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195557
  %i.mi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !195557 ; 5 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.cy, label %bb.db, !prof !443

bb.cy:                                            ; preds = %.noexc.i174
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i.i unwind label %bb.cz, !noalias !195558

.noexc.i.i.i:                                     ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ml = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.ml, label %.body.thread.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !195559
  br label %.body.thread.i

bb.db:                                            ; preds = %.noexc.i174
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.mi, align 8, !noalias !195558
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !195558
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i64 %.sroa.57.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !195558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !195551
  %i.mm = ptrtoint ptr %i.mi to i64
  br label %bb.hy

bb.dc:                                            ; preds = %bb.cw
  br i1 %i.ma, label %bb.ht, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mn = icmp samesign ult i64 %.val1.i.i, 16
  br i1 %i.mn, label %.preheader.i.i.i, label %bb.de

.preheader.i.i.i:                                 ; preds = %bb.dd
  %.not.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.mo = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i)
          to label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.df
  %.sroa.01.05.i.i.i = phi i64 [ %i.ms, %bb.df ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.01.05.i.i.i
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !195560, !noalias !195552, !noundef !411
  %i.mr = icmp eq i8 %i.mq, 46
  br i1 %i.mr, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread532.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i
  %i.ms = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ms, %.val1.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %bb.de
  %i.mt = extractvalue { i64, i64 } %i.mo, 0
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread532.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %bb.df, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !195551
  %i.mv = load ptr, ptr %i.jt, align 16, !alias.scope !195549, !nonnull !411, !noundef !411
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 296
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !195552, !nonnull !411, !noundef !411
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 336
  invoke void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_6SchemaE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.my)
          to label %bb.dg unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.dg:                                            ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !195551
  store i64 1, ptr %i.bh, align 8, !noalias !195551
  store i64 1, ptr %i.ju, align 8, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jv, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false), !noalias !195551
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195561
  %i.mz = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !195561 ; 5 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.dh, label %bb.dk, !prof !443

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #72
          to label %.noexc260.i.a unwind label %bb.di, !noalias !195552

.noexc260.i.a:                                    ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bh) #73
          to label %.body.thread.i unwind label %bb.dj, !noalias !195552

bb.dj:                                            ; preds = %bb.di
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.mz, ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i64 80, i1 false), !noalias !195552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !195551
  store ptr %i.mz, ptr %i.ce, align 8, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !195551
  %i.nd = atomicrmw add ptr %i.mz, i64 1 monotonic, align 8, !noalias !195552
  %i.ne = icmp slt i64 %i.nd, 0
  br i1 %i.ne, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner3new(ptr noalias noundef nonnull sret([2936 x i8]) align 8 captures(none) dereferenceable(2936) %i.cc, ptr noundef nonnull %i.mz)
          to label %bb.do unwind label %.loopexit, !noalias !195552

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.trap()
  unreachable

.body290.i:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.gu, %.body229.i
  %.sroa.0125.1.i = phi i1 [ %.sroa.0125.3.i, %.body229.i ], [ true, %bb.gu ], [ %.sroa.0125.2.i.ph, %.loopexit ], [ true, %.loopexit.split-lp ]
  %.pn216.i = phi { ptr, i32 } [ %.pn214.i, %.body229.i ], [ %i.rj, %bb.gu ], [ %lpad.loopexit707, %.loopexit ], [ %lpad.loopexit.split-lp708, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.0.i = extractvalue { ptr, i32 } %.pn216.i, 1 ; 2 uses
  %.sroa.0197.0.i = extractvalue { ptr, i32 } %.pn216.i, 0 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195562)
  call void @llvm.experimental.noalias.scope.decl(metadata !195563)
  %i.nf = load ptr, ptr %i.ce, align 8, !alias.scope !195564, !noalias !195551, !nonnull !411, !noundef !411
  %i.ng = atomicrmw add ptr %i.nf, i64 -1 release, align 8, !noalias !195565
  %i.nh = icmp eq i64 %i.ng, 1
  br i1 %i.nh, label %bb.dn, label %.body.i

bb.dn:                                            ; preds = %.body290.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.body.i unwind label %bb.fo, !noalias !195552

.loopexit:                                        ; preds = %bb.dl, %bb.gl
  %.sroa.0125.2.i.ph = phi i1 [ true, %bb.dl ], [ false, %bb.gl ]
  %lpad.loopexit707 = landingpad { ptr, i32 }
          cleanup
  br label %.body290.i

.loopexit.split-lp:                               ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %lpad.loopexit.split-lp708 = landingpad { ptr, i32 }
          cleanup
  br label %.body290.i

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !195551
  invoke void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner10parse_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2936) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val95, i64 noundef %.val96)
          to label %bb.dp unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

.body229.i:                                       ; preds = %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hn, %bb.hm, %bb.hl, %bb.hj, %bb.hi, %bb.hd, %bb.hc, %.thread604.i, %bb.dw, %bb.ds
  %.sroa.0125.3.i = phi i1 [ %.sroa.0125.4.i, %bb.hm ], [ %.sroa.0125.4.i, %bb.hi ], [ %.sroa.0125.4.i, %bb.dw ], [ true, %.thread604.i ], [ true, %bb.hc ], [ %.sroa.0125.4.i, %bb.hj ], [ true, %bb.hd ], [ %.sroa.0125.4.i, %bb.hn ], [ %.sroa.0125.4.i, %bb.hl ], [ true, %bb.ds ], [ true, %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn214.i = phi { ptr, i32 } [ %.pn212.i, %bb.hm ], [ %.pn212.i, %bb.hi ], [ %.pn212.i, %bb.dw ], [ %9, %.thread604.i ], [ %9, %bb.hc ], [ %.pn212.i, %bb.hj ], [ %9, %bb.hd ], [ %.pn212.i, %bb.hn ], [ %.pn212.i, %bb.hl ], [ %i.nm, %bb.ds ], [ %lpad.loopexit.split-lp1886, %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(2936) %i.cc) #73
          to label %.body290.i unwind label %bb.fo, !noalias !195552

.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.do, %bb.hg, %bb.gy
  %lpad.loopexit.split-lp1886 = landingpad { ptr, i32 }
          cleanup
  br label %.body229.i

bb.dp:                                            ; preds = %bb.do
  %i.ni = load i64, ptr %i.ca, align 16, !range !464, !noalias !195551, !noundef !411 ; 2 uses
  %i.nj = icmp eq i64 %i.ni, -2
  br i1 %i.nj, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.jw, i64 56, i1 false), !noalias !195551
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195566
  %i.nk = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !195566 ; 3 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %bb.dr, label %bb.du, !prof !443

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc262.i unwind label %bb.ds, !noalias !195552

.noexc262.i:                                      ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bg) #73
          to label %.body229.i unwind label %bb.dt, !noalias !195552

bb.dt:                                            ; preds = %bb.ds
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.du:                                            ; preds = %bb.dq
  %i.no = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  %i.np = getelementptr i8, ptr %.sroa.0347.01162, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nk, ptr noundef nonnull align 8 dereferenceable(56) %i.jw, i64 56, i1 false), !noalias !195552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  %i.nq = ptrtoint ptr %i.nk to i64
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i

bb.dv:                                            ; preds = %bb.dp
  %.sroa.4406.0.copyload.i = load ptr, ptr %i.jw, align 8, !noalias !195551
  %.sroa.7409.0.copyload.i = load ptr, ptr %.sroa.7409.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i, i64 72, i1 false), !noalias !195551
  %i.nr = ptrtoint ptr %.sroa.4406.0.copyload.i to i64
  %i.ns = load <2 x ptr>, ptr %.sroa.5407.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.442.sroa.8.0..sroa.442.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.543.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.64..sroa_idx.i, i64 48, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  store i64 %i.ni, ptr %i.cb, align 16, !noalias !195551
  store i64 %i.nr, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !195551
  store <2 x ptr> %i.ns, ptr %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  store ptr %.sroa.7409.0.copyload.i, ptr %.sroa.442.sroa.7.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !195551
  invoke void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.lz)
          to label %bb.dx unwind label %.loopexit715, !noalias !195552

bb.dw:                                            ; preds = %.loopexit715, %.loopexit.split-lp716, %.body264.i
  %.sroa.0125.4.i = phi i1 [ %.sroa.0125.6.i, %.body264.i ], [ %.sroa.0125.5.i.ph, %.loopexit715 ], [ true, %.loopexit.split-lp716 ] ; 6 uses
  %.sroa.0119.0.i = phi i8 [ %.sroa.0119.2.i, %.body264.i ], [ %.sroa.0119.1.i.ph, %.loopexit715 ], [ %.sroa.0119.1.i.ph717, %.loopexit.split-lp716 ]
  %.sroa.0117.0.i = phi i8 [ %.sroa.0117.2.i, %.body264.i ], [ %.sroa.0119.1.i.ph, %.loopexit715 ], [ %.sroa.0117.1.i.ph718, %.loopexit.split-lp716 ]
  %.pn212.i = phi { ptr, i32 } [ %.pn210.i, %.body264.i ], [ %lpad.loopexit719, %.loopexit715 ], [ %lpad.loopexit.split-lp720, %.loopexit.split-lp716 ] ; 6 uses
  %i.nt = trunc nuw i8 %.sroa.0117.0.i to i1
  br i1 %i.nt, label %bb.hh, label %.body229.i

.loopexit715:                                     ; preds = %bb.dv, %bb.gk
  %.sroa.0125.5.i.ph = phi i1 [ true, %bb.dv ], [ false, %bb.gk ]
  %.sroa.0119.1.i.ph = phi i8 [ 1, %bb.dv ], [ 0, %bb.gk ] ; 2 uses
  %lpad.loopexit719 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp716:                            ; preds = %bb.gr, %bb.ha
  %.sroa.0119.1.i.ph717 = phi i8 [ %.sroa.0119.9.i, %bb.gr ], [ 1, %bb.ha ]
  %.sroa.0117.1.i.ph718 = phi i8 [ %.sroa.0117.9.i, %bb.gr ], [ 1, %bb.ha ]
  %lpad.loopexit.split-lp720 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.646.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !195551
  %i.nu = load ptr, ptr %i.ce, align 8, !noalias !195551, !nonnull !411, !noundef !411 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !195567)
  call void @llvm.experimental.noalias.scope.decl(metadata !195568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !195569
  %i.nw = load ptr, ptr %i.nv, align 8, !alias.scope !195568, !noalias !195552, !nonnull !411, !noundef !411 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !195568, !noalias !195552, !noundef !411 ; 2 uses
  %i.nz = atomicrmw add ptr %i.nw, i64 1 monotonic, align 8, !noalias !195570
  %i.oa = icmp slt i64 %i.nz, 0
  br i1 %i.oa, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store ptr %i.nw, ptr %i.as, align 8, !noalias !195569
  store i64 %i.ny, ptr %i.jx, align 8, !noalias !195569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !195569
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ob)
          to label %bb.ed unwind label %bb.ea, !noalias !195571

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.trap()
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.od = atomicrmw add ptr %i.nw, i64 -1 release, align 8, !noalias !195572
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.eb, label %.body264.i

bb.eb:                                            ; preds = %bb.ea
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %.body264.i unwind label %bb.ec, !noalias !195570

bb.ec:                                            ; preds = %bb.eb
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195570
  unreachable

.body264.i:                                       ; preds = %.loopexit722, %.loopexit.split-lp723, %.body222.i, %bb.eb, %bb.ea
  %.sroa.0125.6.i = phi i1 [ %.sroa.0125.8.i, %.body222.i ], [ true, %bb.ea ], [ true, %bb.eb ], [ %.sroa.0125.7.i.ph, %.loopexit722 ], [ true, %.loopexit.split-lp723 ]
  %.sroa.0119.2.i = phi i8 [ %.sroa.0119.4.i, %.body222.i ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ %.sroa.0119.3.i.ph, %.loopexit722 ], [ %.sroa.0119.3.i.ph724, %.loopexit.split-lp723 ]
  %.sroa.0117.2.i = phi i8 [ %.sroa.0117.4.i, %.body222.i ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ %.sroa.0119.3.i.ph, %.loopexit722 ], [ %.sroa.0117.3.i.ph725, %.loopexit.split-lp723 ]
  %.pn210.i = phi { ptr, i32 } [ %.pn208.i, %.body222.i ], [ %i.oc, %bb.ea ], [ %i.oc, %bb.eb ], [ %lpad.loopexit726, %.loopexit722 ], [ %lpad.loopexit.split-lp727, %.loopexit.split-lp723 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz) #73
          to label %bb.dw unwind label %bb.fo, !noalias !195552

.loopexit722:                                     ; preds = %bb.ed, %bb.gj
  %.sroa.0125.7.i.ph = phi i1 [ true, %bb.ed ], [ false, %bb.gj ]
  %.sroa.0119.3.i.ph = phi i8 [ 1, %bb.ed ], [ 0, %bb.gj ] ; 2 uses
  %lpad.loopexit726 = landingpad { ptr, i32 }
          cleanup
  br label %.body264.i

.loopexit.split-lp723:                            ; preds = %bb.ef, %bb.gq
  %.sroa.0119.3.i.ph724 = phi i8 [ %.sroa.0119.9.i, %bb.gq ], [ 1, %bb.ef ]
  %.sroa.0117.3.i.ph725 = phi i8 [ %.sroa.0117.9.i, %bb.gq ], [ 1, %bb.ef ]
  %lpad.loopexit.split-lp727 = landingpad { ptr, i32 }
          cleanup
  br label %.body264.i

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jy, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !195573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !195569
  store ptr %i.nw, ptr %i.bw, align 8, !alias.scope !195567, !noalias !195551
  store i64 %i.ny, ptr %i.jz, align 8, !alias.scope !195567, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !195569
  invoke void @_RNvXs1_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bw)
          to label %bb.ee unwind label %.loopexit722, !noalias !195552

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !195551
  %i.og = load i64, ptr %i.bx, align 8, !range !416, !noalias !195551, !noundef !411 ; 2 uses
  %i.oh = icmp eq i64 %i.og, -1
  br i1 %i.oh, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.oi = getelementptr i8, ptr %.sroa.0347.01162, i64 16 ; 2 uses
  %i.oj = getelementptr i8, ptr %.sroa.0347.01162, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.646.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ka, i64 40, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.646.i, i64 40, i1 false), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !195551
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58)
          to label %bb.ha unwind label %.loopexit.split-lp723, !noalias !195552

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.646.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ka, i64 40, i1 false), !noalias !195551
  %.sroa.5159.0.copyload.i = load i64, ptr %.sroa.5159.0..sroa_idx.i, align 8, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.452.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.646.i, i64 40, i1 false), !noalias !195551
  store i64 %i.og, ptr %i.by, align 8, !noalias !195551
  store i64 %.sroa.5159.0.copyload.i, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !195551
  invoke void @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bu, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cb, ptr noundef nonnull %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @51)
          to label %bb.eh unwind label %.loopexit729, !noalias !195552

.body222.i:                                       ; preds = %.loopexit729, %.loopexit.split-lp730, %.body220.i, %bb.ek
  %.sroa.0125.8.i = phi i1 [ true, %.body220.i ], [ true, %bb.ek ], [ %.sroa.0125.9.i.ph, %.loopexit729 ], [ true, %.loopexit.split-lp730 ]
  %.sroa.0119.4.i = phi i8 [ %.sroa.0119.6.i, %.body220.i ], [ 1, %bb.ek ], [ %.sroa.0119.5.i.ph, %.loopexit729 ], [ 0, %.loopexit.split-lp730 ]
  %.sroa.0117.4.i = phi i8 [ %.sroa.0117.6.i, %.body220.i ], [ 1, %bb.ek ], [ %.sroa.0119.5.i.ph, %.loopexit729 ], [ %.sroa.0117.8.i, %.loopexit.split-lp730 ]
  %.pn208.i = phi { ptr, i32 } [ %.pn206.i, %.body220.i ], [ %i.on, %bb.ek ], [ %lpad.loopexit731, %.loopexit729 ], [ %lpad.loopexit.split-lp732, %.loopexit.split-lp730 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by) #73
end_hunk_0
begin_hunk_1_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table0B9_:bb.a
  %.off.i = add nsw i8 %i.oz, -24
  %switch.i = icmp ult i8 %.off.i, 3
  %.sroa.064.0.i = select i1 %.sroa.0.05.i, i1 %switch.i, i1 false
  %or.cond.i = or i1 %i.pa, %.sroa.064.0.i
  br i1 %or.cond.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.fl, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13376.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bl, ptr noundef nonnull align 16 dereferenceable(112) %i.cb, i64 112, i1 false), !noalias !195551
  invoke void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner13optimize_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2936) %i.cc, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.bl)
          to label %bb.fw unwind label %.loopexit734, !noalias !195552

bb.ev:                                            ; preds = %bb.et
  %i.pb = load i64, ptr %i.cb, align 16, !range !574, !noalias !195551, !noundef !411 ; 2 uses
  %i.pc = icmp ne i64 %i.pb, 35
  call void @llvm.assume(i1 %i.pc)
  %i.pd = icmp eq i64 %i.pb, 6
  br i1 %i.pd, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.pe = load i128, ptr %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !range !576, !noalias !195551, !noundef !411 ; 2 uses
  %i.pf = icmp ne i128 %i.pe, 10
  call void @llvm.assume(i1 %i.pf)
  %i.pg = icmp eq i128 %i.pe, 27
  %i.ph = load i8, ptr %i.bz, align 8, !range !617, !noalias !195551
  %i.pi = icmp eq i8 %i.ph, 29
  %or.cond4.i = select i1 %i.pg, i1 %i.pi, i1 false
  br i1 %or.cond4.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bo, ptr noundef nonnull align 16 dereferenceable(112) %i.cb, i64 112, i1 false), !noalias !195551
  invoke void @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable7cast_to(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.bp, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz, ptr noundef nonnull %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @51)
          to label %bb.fp unwind label %.loopexit734, !noalias !195552

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bs, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i, i64 64, i1 false), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !195551
  %i.pj = load ptr, ptr %i.kd, align 16, !noalias !195551, !noundef !411
  store ptr %i.pj, ptr %i.br, align 8, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !195551
  invoke void @_RNvNtCsc85D0lJ81Z_16lance_datafusion4expr18safe_coerce_scalar(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.bq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz)
          to label %bb.fb unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp, !noalias !195552

.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ey, %bb.fd, %bb.fe
  %lpad.loopexit.split-lp1889 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195576)
  %i.pk = load ptr, ptr %i.br, align 8, !alias.scope !195576, !noalias !195551, !noundef !411 ; 2 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.ez

bb.ez:                                            ; preds = %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp
  %i.pm = atomicrmw add ptr %i.pk, i64 -1 release, align 8, !noalias !195577
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.fa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.fo, !noalias !195552

bb.fb:                                            ; preds = %bb.ey
  %i.po = load i128, ptr %i.bq, align 16, !range !618, !noalias !195551, !noundef !411 ; 4 uses
  %.not203.i = icmp eq i128 %i.po, -1
  br i1 %.not203.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.4170.sroa.0.0.copyload.i = load ptr, ptr %.sroa.4170.0..sroa_idx.i, align 16, !noalias !195551 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4170.sroa.4.0..sroa.4170.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.794.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5171.0..sroa_idx.i, i64 16, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.667.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.sroa.7.i, i64 24, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.667.sroa.7.i, i64 24, i1 false), !noalias !195551
  %i.pp = load ptr, ptr %i.br, align 8, !noalias !195551, !noundef !411 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %bb.fk unwind label %.loopexit734, !noalias !195552

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !195551
  invoke fastcc void @_RNCINvMNtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB5_13UpdateBuilder3setRNtNtCs40k4W9msRzi_5alloc6string6StringEs_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bc, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz)
          to label %bb.fe unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.fe:                                            ; preds = %bb.fd
  %.sroa.673.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !noalias !195551
  %.sroa.673.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.sroa.7.0..sroa_idx.i, i64 24, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.667.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.sroa.7.i, i64 24, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673.sroa.7.i)
  %.sroa.4482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4482.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.667.sroa.7.i, i64 24, i1 false), !noalias !195551
  store ptr %.sroa.673.sroa.0.0.copyload.i, ptr %i.bb, align 8, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !195551
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55)
          to label %bb.ff unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.ff:                                            ; preds = %bb.fe
  %.sroa.16359.8.copyload = load i64, ptr %i.ba, align 8, !noalias !195578 ; 2 uses
  %.sroa.16359.sroa.0.0.extract.trunc380 = trunc i64 %.sroa.16359.8.copyload to i8
  %.sroa.16359.sroa.16.0.extract.shift385 = lshr i64 %.sroa.16359.8.copyload, 8
  %.sroa.16359.sroa.16.0.extract.trunc386 = trunc nuw i64 %.sroa.16359.sroa.16.0.extract.shift385 to i56
  %.sroa.27.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.27.8.copyload = load i64, ptr %.sroa.27.8..sroa_idx, align 8, !noalias !195578
  %.sroa.34.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.34.8.copyload = load i64, ptr %.sroa.34.8..sroa_idx, align 8, !noalias !195578
  %.sroa.41.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.41.8.copyload = load ptr, ptr %.sroa.41.8..sroa_idx, align 8, !noalias !195578
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.8..sroa_idx, i64 24, i1 false), !noalias !195578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !195579)
  %i.pq = load ptr, ptr %i.br, align 8, !alias.scope !195579, !noalias !195551, !noundef !411 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit275.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ps = atomicrmw add ptr %i.pq, i64 -1 release, align 8, !noalias !195580
  %i.pt = icmp eq i64 %i.ps, 1
  br i1 %i.pt, label %bb.fh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit275.i

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit275.i unwind label %bb.fi, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.fi, %bb.fa, %bb.ez, %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %i.pu, %bb.fi ], [ %lpad.loopexit.split-lp1889, %bb.fa ], [ %lpad.loopexit.split-lp1889, %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1889, %bb.ez ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bs) #73
          to label %.body220.i unwind label %bb.fo, !noalias !195552

bb.fi:                                            ; preds = %bb.fh
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit275.i: ; preds = %bb.fh, %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %bb.fj unwind label %.loopexit.split-lp735, !noalias !195552

bb.fj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit275.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !195551
  br label %bb.fv

bb.fk:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !195551
  %i.pv = load i64, ptr %i.cb, align 16, !range !574, !noalias !195551, !noundef !411 ; 2 uses
  %i.pw = icmp ne i64 %i.pv, 35
  call void @llvm.assume(i1 %i.pw)
  %i.px = icmp eq i64 %i.pv, 6
  br i1 %i.px, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fu, %bb.fm, %bb.fk
  %.sroa.692.sroa.0.0.i = phi ptr [ %.sroa.4170.sroa.0.0.copyload.i, %bb.fk ], [ %.sroa.4170.sroa.0.0.copyload.i, %bb.fm ], [ %.sroa.7465.0.copyload.i, %bb.fu ]
  %.sroa.9.0.i = phi ptr [ %i.pp, %bb.fk ], [ %i.pp, %bb.fm ], [ %.sroa.9467.0.copyload.i, %bb.fu ]
  %.sroa.589.0.i = phi i128 [ %i.po, %bb.fk ], [ %i.po, %bb.fm ], [ %.sroa.10345.sroa.0.0.insert.insert.i, %bb.fu ]
  %.sroa.486.0.i = phi i64 [ undef, %bb.fk ], [ undef, %bb.fm ], [ %.sroa.4462.0.copyload.i, %bb.fu ]
  %.sroa.084.0.i = phi i64 [ 6, %bb.fk ], [ 6, %bb.fm ], [ %i.qa, %bb.fu ]
  store i64 %.sroa.084.0.i, ptr %i.cb, align 16, !noalias !195551
  store i64 %.sroa.486.0.i, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !195551
  store i128 %.sroa.589.0.i, ptr %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  store ptr %.sroa.692.sroa.0.0.i, ptr %.sroa.442.sroa.7.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.442.sroa.8.0..sroa.442.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.sroa.4.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.543.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.794.i, i64 16, i1 false), !noalias !195551
  store ptr %.sroa.9.0.i, ptr %i.kd, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !195551
  br label %bb.eu

bb.fm:                                            ; preds = %bb.fk
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cb)
          to label %bb.fl unwind label %bb.fn, !noalias !195552

bb.fn:                                            ; preds = %bb.fm
  %i.py = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %i.cb, align 16, !noalias !195551
  store i128 %i.po, ptr %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  store ptr %.sroa.4170.sroa.0.0.copyload.i, ptr %.sroa.442.sroa.7.0..sroa.442.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.442.sroa.8.0..sroa.442.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.sroa.4.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.543.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.794.i, i64 16, i1 false), !noalias !195551
  store ptr %i.pp, ptr %i.kd, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !195551
  br label %.body220.i

bb.fo:                                            ; preds = %.body.thread.i.a, %bb.hn, %bb.hk, %bb.hj, %bb.hd, %bb.gp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.fa, %.body220.i, %.body222.i, %.body264.i, %.body229.i, %bb.dn
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.fp:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !195551
  %i.qa = load i64, ptr %i.bp, align 16, !range !464, !noalias !195551, !noundef !411 ; 2 uses
  %i.qb = icmp eq i64 %i.qa, -2
  br i1 %i.qb, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4462.0..sroa_idx.i, i64 40, i1 false), !noalias !195551
  %i.qc = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.ft unwind label %bb.fr, !noalias !195581 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az) #73
          to label %.body220.i unwind label %bb.fs, !noalias !195552

bb.fs:                                            ; preds = %bb.fr
  %i.qe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.ft:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qc, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4462.0..sroa_idx.i, i64 40, i1 false), !noalias !195552
  %i.qf = ptrtoint ptr %i.qc to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fp
  %.sroa.4462.0.copyload.i = load i64, ptr %.sroa.4462.0..sroa_idx.i, align 8, !noalias !195551
  %.sroa.5463.0.copyload.i = load i64, ptr %.sroa.5463.0..sroa_idx.i, align 16, !noalias !195551
  %.sroa.6464.0.copyload.i = load i64, ptr %.sroa.6464.0..sroa_idx.i, align 8, !noalias !195551
  %.sroa.7465.0.copyload.i = load ptr, ptr %.sroa.7465.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8466.0..sroa_idx.i, i64 40, i1 false), !noalias !195551
  %.sroa.9467.0.copyload.i = load ptr, ptr %.sroa.9467.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10468.0..sroa_idx.i, i64 24, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !195551
  %.sroa.10345.sroa.7.0.insert.ext.i = zext i64 %.sroa.6464.0.copyload.i to i128
  %.sroa.10345.sroa.7.0.insert.shift.i = shl nuw i128 %.sroa.10345.sroa.7.0.insert.ext.i, 64
  %.sroa.10345.sroa.0.0.insert.ext.i = zext i64 %.sroa.5463.0.copyload.i to i128
  %.sroa.10345.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.10345.sroa.7.0.insert.shift.i, %.sroa.10345.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.794.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.64..sroa_idx.i, i64 16, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  br label %bb.fl

bb.fv:                                            ; preds = %bb.ga, %bb.ft, %bb.fj
  %.sroa.16359.sroa.16.sroa.0.0 = phi i56 [ undef, %bb.ga ], [ %.sroa.16359.sroa.16.0.extract.trunc386, %bb.fj ], [ 0, %bb.ft ]
  %.sroa.16359.sroa.0.0 = phi i8 [ 0, %bb.ga ], [ %.sroa.16359.sroa.0.0.extract.trunc380, %bb.fj ], [ 0, %bb.ft ]
  %.sroa.41.0 = phi ptr [ @57, %bb.ga ], [ %.sroa.41.8.copyload, %bb.fj ], [ @56, %bb.ft ]
  %.sroa.34.0 = phi i64 [ ptrtoint (ptr @48 to i64), %bb.ga ], [ %.sroa.34.8.copyload, %bb.fj ], [ ptrtoint (ptr @53 to i64), %bb.ft ]
  %.sroa.27.0 = phi i64 [ %i.ql, %bb.ga ], [ %.sroa.27.8.copyload, %bb.fj ], [ %i.qf, %bb.ft ]
  %.sroa.0117.8.i = phi i8 [ 0, %bb.ga ], [ 1, %bb.fj ], [ 0, %bb.ft ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.gq unwind label %.loopexit.split-lp730, !noalias !195552

bb.fw:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !195551
  %i.qg = load i64, ptr %i.bm, align 16, !range !464, !noalias !195551, !noundef !411 ; 2 uses
  %i.qh = icmp eq i64 %i.qg, -2
  br i1 %i.qh, label %bb.fx, label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.ke, i64 56, i1 false), !noalias !195551
  %i.qi = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.ga unwind label %bb.fy, !noalias !195582 ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay) #73
          to label %.body220.i unwind label %bb.fz, !noalias !195552

bb.fz:                                            ; preds = %bb.fy
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.ga:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qi, ptr noundef nonnull align 8 dereferenceable(56) %i.ke, i64 56, i1 false), !noalias !195552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13376.i)
  %i.ql = ptrtoint ptr %i.qi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !195551
  br label %bb.fv

bb.gb:                                            ; preds = %bb.gi, %bb.gf
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body220.i

bb.gc:                                            ; preds = %bb.fw
  %.sroa.4486.0.copyload.i = load ptr, ptr %i.ke, align 8, !noalias !195551
  %.sroa.7489.0.copyload.i = load ptr, ptr %.sroa.7489.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13376.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8490.0..sroa_idx.i, i64 72, i1 false), !noalias !195551
  %i.qm = ptrtoint ptr %.sroa.4486.0.copyload.i to i64
  %i.qn = load <2 x ptr>, ptr %.sroa.5487.0..sroa_idx.i, align 16, !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4115.sroa.8.0..sroa.4115.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13376.i, i64 24, i1 false), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5116.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13376.64..sroa_idx.i, i64 48, i1 false), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13376.i)
  store i64 %i.qg, ptr %i.bn, align 16, !noalias !195551
  store i64 %i.qm, ptr %.sroa.4115.0..sroa_idx.i, align 8, !noalias !195551
  store <2 x ptr> %i.qn, ptr %.sroa.4115.sroa.5.0..sroa.4115.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  store ptr %.sroa.7489.0.copyload.i, ptr %.sroa.4115.sroa.7.0..sroa.4115.0..sroa_idx.sroa_idx.i, align 16, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !195551
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ax, i64 noundef %.val1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !195552
  %i.qo = load i64, ptr %i.ax, align 8, !range !437, !noalias !195551, !noundef !411
  %i.qp = trunc nuw i64 %i.qo to i1
  %i.qq = load i64, ptr %i.kf, align 8, !range !535, !noalias !195551, !noundef !411 ; 3 uses
  br i1 %i.qp, label %bb.gd, label %bb.ge, !prof !421

bb.gd:                                            ; preds = %bb.gc
  %i.qr = load i64, ptr %i.kg, align 8, !noalias !195551
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.qq, i64 %i.qr) #72
          to label %bb.go unwind label %bb.gp, !noalias !195552

bb.ge:                                            ; preds = %bb.gc
  %i.qs = load ptr, ptr %i.kg, align 8, !noalias !195551, !nonnull !411, !noundef !411 ; 2 uses
  %i.qt = icmp ule i64 %.val1.i.i, %i.qq
  call void @llvm.assume(i1 %i.qt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !195551
  %.not205.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not205.i, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.gg, %bb.ge
  store i64 %i.qq, ptr %i.bj, align 8, !noalias !195551
  store ptr %i.qs, ptr %.sroa.4195.0..sroa_idx.i, align 8, !noalias !195551
  store i64 %.val1.i.i, ptr %.sroa.6196.0..sroa_idx.i, align 8, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !195551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bi, ptr noundef nonnull align 16 dereferenceable(112) %i.bn, i64 112, i1 false), !noalias !195551
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.bk, ptr noalias noundef align 8 dereferenceable(48) %i.kh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.bi)
          to label %bb.gh unwind label %bb.gb, !noalias !195552

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qs, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !195552
  br label %bb.gf

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !195551
  %i.qu = load i64, ptr %i.bk, align 16, !range !464, !alias.scope !195583, !noalias !195551, !noundef !411
  %i.qv = icmp eq i64 %i.qu, -2
  br i1 %i.qv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bk)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.gb, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.gi, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !195551
  %i.qw = load <4 x i64>, ptr %i.dc, align 16, !alias.scope !195584 ; 5 uses
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 16, !alias.scope !195584 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.48, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.48.0..sroa_idx, i64 152, i1 false), !alias.scope !195584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.gj unwind label %.loopexit729, !noalias !195552

bb.gj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %bb.gk unwind label %.loopexit722, !noalias !195552

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.gl unwind label %.loopexit715, !noalias !195552

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !195551
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(2936) %i.cc)
          to label %bb.gm unwind label %.loopexit, !noalias !195552

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !195551
  call void @llvm.experimental.noalias.scope.decl(metadata !195585)
  call void @llvm.experimental.noalias.scope.decl(metadata !195586)
  %i.qx = load ptr, ptr %i.ce, align 8, !alias.scope !195587, !noalias !195551, !nonnull !411, !noundef !411
  %i.qy = atomicrmw add ptr %i.qx, i64 -1 release, align 8, !noalias !195588
  %i.qz = icmp eq i64 %i.qy, 1
  br i1 %i.qz, label %bb.gn, label %bb.if

bb.gn:                                            ; preds = %bb.gm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %bb.if unwind label %.split.thread.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.go:                                            ; preds = %bb.gd
  unreachable

bb.gp:                                            ; preds = %bb.gd
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bn) #73
          to label %.body220.i unwind label %bb.fo, !noalias !195552

bb.gq:                                            ; preds = %bb.fv, %bb.ep
  %.sroa.16359.sroa.16.sroa.0.1 = phi i56 [ undef, %bb.ep ], [ %.sroa.16359.sroa.16.sroa.0.0, %bb.fv ] ; 4 uses
  %.sroa.16359.sroa.0.1 = phi i8 [ 0, %bb.ep ], [ %.sroa.16359.sroa.0.0, %bb.fv ] ; 4 uses
  %.sroa.41.1 = phi ptr [ @54, %bb.ep ], [ %.sroa.41.0, %bb.fv ] ; 4 uses
  %.sroa.34.1 = phi i64 [ %i.ot, %bb.ep ], [ %.sroa.34.0, %bb.fv ] ; 4 uses
  %.sroa.27.1 = phi i64 [ %i.os, %bb.ep ], [ %.sroa.27.0, %bb.fv ] ; 4 uses
  %.sroa.0119.9.i = phi i8 [ 1, %bb.ep ], [ 0, %bb.fv ] ; 3 uses
  %.sroa.0117.9.i = phi i8 [ 1, %bb.ep ], [ %.sroa.0117.8.i, %bb.fv ] ; 3 uses
  %i.ra = getelementptr i8, ptr %.sroa.0347.01162, i64 16 ; 4 uses
  %i.rb = getelementptr i8, ptr %.sroa.0347.01162, i64 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %bb.gr unwind label %.loopexit.split-lp723, !noalias !195552

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.gs unwind label %.loopexit.split-lp716, !noalias !195552

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !195551
  %i.rc = trunc nuw i8 %.sroa.0117.9.i to i1
  br i1 %i.rc, label %bb.gw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i: ; preds = %bb.hg, %bb.hf, %bb.he, %bb.gy, %bb.gx, %bb.gs, %bb.du
  %i.rd = phi ptr [ %i.no, %bb.du ], [ %i.rr, %bb.he ], [ %i.rr, %bb.hg ], [ %i.rr, %bb.hf ], [ %i.rp, %bb.gy ], [ %i.rb, %bb.gx ], [ %i.rb, %bb.gs ]
  %i.re = phi ptr [ %i.np, %bb.du ], [ %i.rs, %bb.he ], [ %i.rs, %bb.hg ], [ %i.rs, %bb.hf ], [ %i.rq, %bb.gy ], [ %i.ra, %bb.gx ], [ %i.ra, %bb.gs ]
  %.sroa.16359.sroa.16.sroa.0.2 = phi i56 [ undef, %bb.du ], [ %.sroa.16359.sroa.16.sroa.0.5, %bb.he ], [ %.sroa.16359.sroa.16.sroa.0.5, %bb.hg ], [ %.sroa.16359.sroa.16.sroa.0.5, %bb.hf ], [ %.sroa.16359.sroa.16.sroa.0.4, %bb.gy ], [ %.sroa.16359.sroa.16.sroa.0.1, %bb.gx ], [ %.sroa.16359.sroa.16.sroa.0.1, %bb.gs ]
  %.sroa.16359.sroa.0.2 = phi i8 [ 0, %bb.du ], [ %.sroa.16359.sroa.0.5, %bb.he ], [ %.sroa.16359.sroa.0.5, %bb.hg ], [ %.sroa.16359.sroa.0.5, %bb.hf ], [ %.sroa.16359.sroa.0.4, %bb.gy ], [ %.sroa.16359.sroa.0.1, %bb.gx ], [ %.sroa.16359.sroa.0.1, %bb.gs ]
  %.sroa.41.2 = phi ptr [ @50, %bb.du ], [ %.sroa.41.5, %bb.he ], [ %.sroa.41.5, %bb.hg ], [ %.sroa.41.5, %bb.hf ], [ %.sroa.41.4, %bb.gy ], [ %.sroa.41.1, %bb.gx ], [ %.sroa.41.1, %bb.gs ]
  %.sroa.34.2 = phi i64 [ ptrtoint (ptr @48 to i64), %bb.du ], [ %.sroa.34.5, %bb.he ], [ %.sroa.34.5, %bb.hg ], [ %.sroa.34.5, %bb.hf ], [ %.sroa.34.4, %bb.gy ], [ %.sroa.34.1, %bb.gx ], [ %.sroa.34.1, %bb.gs ]
  %.sroa.27.2 = phi i64 [ %i.nq, %bb.du ], [ %.sroa.27.5, %bb.he ], [ %.sroa.27.5, %bb.hg ], [ %.sroa.27.5, %bb.hf ], [ %.sroa.27.4, %bb.gy ], [ %.sroa.27.1, %bb.gx ], [ %.sroa.27.1, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !195551
  call void @llvm.experimental.noalias.scope.decl(metadata !195589)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2920 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195590)
  call void @llvm.experimental.noalias.scope.decl(metadata !195591)
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !195592, !noalias !195551, !nonnull !411, !noundef !411
  %i.rh = atomicrmw add ptr %i.rg, i64 -1 release, align 8, !noalias !195593
  %i.ri = icmp eq i64 %i.rh, 1
  br i1 %i.ri, label %bb.gt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.gt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.gu, !noalias !195552

bb.gu:                                            ; preds = %bb.gt
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(2936) %i.cc) #73
          to label %.body290.i unwind label %bb.gv, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.gt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(2936) %i.cc)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %.loopexit.split-lp, !noalias !195552

bb.gv:                                            ; preds = %bb.gu
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

bb.gw:                                            ; preds = %bb.gs
  %i.rl = load i64, ptr %i.cb, align 16, !range !574, !noalias !195551, !noundef !411 ; 2 uses
  %i.rm = icmp ne i64 %i.rl, 35
  call void @llvm.assume(i1 %i.rm)
  %i.rn = icmp eq i64 %i.rl, 6
  br i1 %i.rn, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.ro = trunc nuw i8 %.sroa.0119.9.i to i1
  br i1 %i.ro, label %bb.gz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i

bb.gy:                                            ; preds = %bb.hb, %bb.gw
  %i.rp = phi ptr [ %i.oj, %bb.hb ], [ %i.rb, %bb.gw ]
  %i.rq = phi ptr [ %i.oi, %bb.hb ], [ %i.ra, %bb.gw ]
  %.sroa.16359.sroa.16.sroa.0.4 = phi i56 [ %.sroa.16359.sroa.16.0.extract.trunc388, %bb.hb ], [ %.sroa.16359.sroa.16.sroa.0.1, %bb.gw ]
  %.sroa.16359.sroa.0.4 = phi i8 [ %.sroa.16359.sroa.0.0.extract.trunc381, %bb.hb ], [ %.sroa.16359.sroa.0.1, %bb.gw ]
  %.sroa.41.4 = phi ptr [ %.sroa.41.8.copyload374, %bb.hb ], [ %.sroa.41.1, %bb.gw ]
  %.sroa.34.4 = phi i64 [ %.sroa.34.8.copyload369, %bb.hb ], [ %.sroa.34.1, %bb.gw ]
  %.sroa.27.4 = phi i64 [ %.sroa.27.8.copyload364, %bb.hb ], [ %.sroa.27.1, %bb.gw ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.gz:                                            ; preds = %bb.hb, %bb.gx
  %i.rr = phi ptr [ %i.oj, %bb.hb ], [ %i.rb, %bb.gx ] ; 3 uses
  %i.rs = phi ptr [ %i.oi, %bb.hb ], [ %i.ra, %bb.gx ] ; 3 uses
  %.sroa.16359.sroa.16.sroa.0.5 = phi i56 [ %.sroa.16359.sroa.16.0.extract.trunc388, %bb.hb ], [ %.sroa.16359.sroa.16.sroa.0.1, %bb.gx ] ; 3 uses
  %.sroa.16359.sroa.0.5 = phi i8 [ %.sroa.16359.sroa.0.0.extract.trunc381, %bb.hb ], [ %.sroa.16359.sroa.0.1, %bb.gx ] ; 3 uses
  %.sroa.41.5 = phi ptr [ %.sroa.41.8.copyload374, %bb.hb ], [ %.sroa.41.1, %bb.gx ] ; 3 uses
  %.sroa.34.5 = phi i64 [ %.sroa.34.8.copyload369, %bb.hb ], [ %.sroa.34.1, %bb.gx ] ; 3 uses
  %.sroa.27.5 = phi i64 [ %.sroa.27.8.copyload364, %bb.hb ], [ %.sroa.27.1, %bb.gx ] ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i)
          to label %bb.he unwind label %.thread604.i, !noalias !195552

bb.ha:                                            ; preds = %bb.ef
  %.sroa.16359.8.copyload360 = load i64, ptr %i.be, align 8, !noalias !195578 ; 2 uses
  %.sroa.27.8..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.27.8.copyload364 = load i64, ptr %.sroa.27.8..sroa_idx363, align 8, !noalias !195578 ; 2 uses
  %.sroa.34.8..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.34.8.copyload369 = load i64, ptr %.sroa.34.8..sroa_idx368, align 8, !noalias !195578 ; 2 uses
  %.sroa.41.8..sroa_idx373 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.41.8.copyload374 = load ptr, ptr %.sroa.41.8..sroa_idx373, align 8, !noalias !195578 ; 2 uses
  %.sroa.48.8..sroa_idx378.a = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.8..sroa_idx378.a, i64 24, i1 false), !noalias !195578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !195551
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.hb unwind label %.loopexit.split-lp716, !noalias !195552

bb.hb:                                            ; preds = %bb.ha
  %.sroa.16359.sroa.16.0.extract.shift387 = lshr i64 %.sroa.16359.8.copyload360, 8
  %.sroa.16359.sroa.16.0.extract.trunc388 = trunc nuw i64 %.sroa.16359.sroa.16.0.extract.shift387 to i56 ; 2 uses
  %.sroa.16359.sroa.0.0.extract.trunc381 = trunc i64 %.sroa.16359.8.copyload360 to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !195551
  %i.rt = load i64, ptr %i.cb, align 16, !range !574, !noalias !195551, !noundef !411 ; 2 uses
  %i.ru = icmp ne i64 %i.rt, 35
  call void @llvm.assume(i1 %i.ru)
  %i.rv = icmp eq i64 %i.rt, 6
  br i1 %i.rv, label %bb.gz, label %bb.gy

.thread604.i:                                     ; preds = %bb.gz
  %9 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195594)
  %i.rw = load ptr, ptr %i.kd, align 16, !alias.scope !195594, !noalias !195551, !noundef !411 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %.body229.i, label %bb.hc

bb.hc:                                            ; preds = %.thread604.i
  %i.ry = atomicrmw add ptr %i.rw, i64 -1 release, align 8, !noalias !195595
  %i.rz = icmp eq i64 %i.ry, 1
  br i1 %i.rz, label %bb.hd, label %.body229.i

bb.hd:                                            ; preds = %bb.hc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %.body229.i unwind label %bb.fo, !noalias !195552

bb.he:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !195596)
  %i.sa = load ptr, ptr %i.kd, align 16, !alias.scope !195596, !noalias !195551, !noundef !411 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.sc = atomicrmw add ptr %i.sa, i64 -1 release, align 8, !noalias !195597
  %i.sd = icmp eq i64 %i.sc, 1
  br i1 %i.sd, label %bb.hg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i

bb.hg:                                            ; preds = %bb.hf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common8metadata13FieldMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit293.i unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

bb.hh:                                            ; preds = %bb.dw
  %i.se = load i64, ptr %i.cb, align 16, !range !574, !noalias !195551, !noundef !411 ; 2 uses
  %i.sf = icmp ne i64 %i.se, 35
  call void @llvm.assume(i1 %i.sf)
  %i.sg = icmp eq i64 %i.se, 6
  br i1 %i.sg, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %cond.i172 = icmp eq i8 %.sroa.0119.0.i, 0
  br i1 %cond.i172, label %.body229.i, label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cb) #73
          to label %.body229.i unwind label %bb.fo, !noalias !195552

bb.hk:                                            ; preds = %bb.hi
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.i) #73
          to label %bb.hl unwind label %bb.fo, !noalias !195552

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !195598)
  %i.sh = load ptr, ptr %i.kd, align 16, !alias.scope !195598, !noalias !195551, !noundef !411 ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.body229.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.sj = atomicrmw add ptr %i.sh, i64 -1 release, align 8, !noalias !195599
  %i.sk = icmp eq i64 %i.sj, 1
  br i1 %i.sk, label %bb.hn, label %.body229.i

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %.body229.i unwind label %bb.fo, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !195551
  call void @llvm.experimental.noalias.scope.decl(metadata !195600)
  call void @llvm.experimental.noalias.scope.decl(metadata !195601)
  %i.sl = load ptr, ptr %i.ce, align 8, !alias.scope !195602, !noalias !195551, !nonnull !411, !noundef !411
  %i.sm = atomicrmw add ptr %i.sl, i64 -1 release, align 8, !noalias !195603
  %i.sn = icmp eq i64 %i.sm, 1
  br i1 %i.sn, label %bb.ho, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i

bb.ho:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i: ; preds = %bb.ho, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion7planner7PlannerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !195551
  %i.so = zext i56 %.sroa.16359.sroa.16.sroa.0.2 to i64
  br label %bb.hy

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread532.i: ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.lr.ph.i.i.i
  %i.sp = getelementptr i8, ptr %.sroa.0347.01162, i64 16
  %i.sq = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !195551
  store ptr %.val.i.i, ptr %i.cg, align 8, !noalias !195551
  %i.sr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.val1.i.i, ptr %i.sr, align 8, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !195551
  store ptr %i.cg, ptr %i.cf, align 8, !noalias !195551
  %.sroa.4149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.4149.0..sroa_idx.i, align 8, !noalias !195551
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noundef nonnull @59, ptr noundef nonnull %i.cf)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread532.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !195551
  %.sroa.0397.0.copyload.i = load i64, ptr %i.ch, align 8, !noalias !195551 ; 3 uses
  %.sroa.5399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.5399.0.copyload.i = load ptr, ptr %.sroa.5399.0..sroa_idx.i, align 8, !noalias !195551 ; 3 uses
  %.sroa.6402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.6402.0.copyload.i = load i64, ptr %.sroa.6402.0..sroa_idx.i, align 8, !noalias !195551
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195604
  %i.ss = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !195604 ; 5 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %bb.hp, label %bb.hs, !prof !443

bb.hp:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc301.i unwind label %bb.hq, !noalias !195552

.noexc301.i:                                      ; preds = %bb.hp
  unreachable

bb.hq:                                            ; preds = %bb.hp
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = icmp eq i64 %.sroa.0397.0.copyload.i, 0
  br i1 %i.sv, label %.body.thread.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5399.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5399.0.copyload.i, i64 noundef %.sroa.0397.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !195605
  br label %.body.thread.i

bb.hs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  store i64 %.sroa.0397.0.copyload.i, ptr %i.ss, align 8, !noalias !195552
  %.sroa.5399.0..sroa_idx400.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store ptr %.sroa.5399.0.copyload.i, ptr %.sroa.5399.0..sroa_idx400.i, align 8, !noalias !195552
  %.sroa.6402.0..sroa_idx403.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store i64 %.sroa.6402.0.copyload.i, ptr %.sroa.6402.0..sroa_idx403.i, align 8, !noalias !195552
  %i.sw = ptrtoint ptr %i.ss to i64
  br label %bb.hy

bb.ht:                                            ; preds = %bb.dc
  %i.sx = getelementptr i8, ptr %.sroa.0347.01162, i64 16
  %i.sy = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !195551
  store ptr %.val.i.i, ptr %i.cj, align 8, !noalias !195551
  %i.sz = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.val1.i.i, ptr %i.sz, align 8, !noalias !195551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !195551
  store ptr %i.cj, ptr %i.ci, align 8, !noalias !195551
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.4143.0..sroa_idx.i, align 8, !noalias !195551
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, ptr noundef nonnull @61, ptr noundef nonnull %i.ci)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit304.i unwind label %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195552

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit304.i: ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !195551
  %.sroa.0389.0.copyload.i = load i64, ptr %i.ck, align 8, !noalias !195551 ; 3 uses
  %.sroa.5391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5391.0.copyload.i = load ptr, ptr %.sroa.5391.0..sroa_idx.i, align 8, !noalias !195551 ; 3 uses
  %.sroa.6394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.6394.0.copyload.i = load i64, ptr %.sroa.6394.0..sroa_idx.i, align 8, !noalias !195551
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195606
  %i.ta = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !195606 ; 5 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.hu, label %bb.hx, !prof !443

bb.hu:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit304.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc305.i unwind label %bb.hv, !noalias !195552

.noexc305.i:                                      ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %bb.hu
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = icmp eq i64 %.sroa.0389.0.copyload.i, 0
  br i1 %i.td, label %.body.thread.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5391.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5391.0.copyload.i, i64 noundef %.sroa.0389.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !195607
  br label %.body.thread.i

bb.hx:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit304.i
  store i64 %.sroa.0389.0.copyload.i, ptr %i.ta, align 8, !noalias !195552
  %.sroa.5391.0..sroa_idx392.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store ptr %.sroa.5391.0.copyload.i, ptr %.sroa.5391.0..sroa_idx392.i, align 8, !noalias !195552
  %.sroa.6394.0..sroa_idx395.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store i64 %.sroa.6394.0.copyload.i, ptr %.sroa.6394.0..sroa_idx395.i, align 8, !noalias !195552
  %i.te = ptrtoint ptr %i.ta to i64
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i, %bb.db
  %i.tf = phi ptr [ %i.mc, %bb.db ], [ %i.sy, %bb.hx ], [ %i.rd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ %i.sq, %bb.hs ]
  %i.tg = phi ptr [ %i.mb, %bb.db ], [ %i.sx, %bb.hx ], [ %i.re, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ %i.sp, %bb.hs ]
  %.sroa.16359.sroa.16.sroa.0.3 = phi i64 [ 0, %bb.db ], [ 0, %bb.hx ], [ %i.so, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ 0, %bb.hs ]
  %.sroa.16359.sroa.0.3 = phi i8 [ 0, %bb.db ], [ 5, %bb.hx ], [ %.sroa.16359.sroa.0.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ 5, %bb.hs ]
  %.sroa.41.3 = phi ptr [ @641, %bb.db ], [ @62, %bb.hx ], [ %.sroa.41.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ @60, %bb.hs ]
  %.sroa.34.3 = phi i64 [ ptrtoint (ptr @39 to i64), %bb.db ], [ ptrtoint (ptr @39 to i64), %bb.hx ], [ %.sroa.34.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ ptrtoint (ptr @39 to i64), %bb.hs ]
  %.sroa.27.3 = phi i64 [ %i.mm, %bb.db ], [ %i.te, %bb.hx ], [ %.sroa.27.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit299.i ], [ %i.sw, %bb.hs ]
  call void @llvm.experimental.noalias.scope.decl(metadata !195608)
  call void @llvm.experimental.noalias.scope.decl(metadata !195609)
  call void @llvm.experimental.noalias.scope.decl(metadata !195610)
  %i.th = load ptr, ptr %i.jt, align 16, !alias.scope !195611, !nonnull !411, !noundef !411
  %i.ti = atomicrmw add ptr %i.th, i64 -1 release, align 8, !noalias !195612
  %i.tj = icmp eq i64 %i.ti, 1
  br i1 %i.tj, label %bb.hz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.hz:                                            ; preds = %bb.hy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jt)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.ia, !noalias !195552

bb.ia:                                            ; preds = %bb.hz
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tl = load i64, ptr %i.dc, align 16, !range !464, !alias.scope !195613, !noundef !411
  %i.tm = icmp eq i64 %i.tl, -2
  br i1 %i.tm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(192) %i.dc)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.ie, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.hz, %bb.hy
  %i.tn = load i64, ptr %i.dc, align 16, !range !464, !alias.scope !195614, !noundef !411
  %i.to = icmp eq i64 %i.tn, -2
  br i1 %i.to, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.ic

bb.ic:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(192) %i.dc)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.id, !noalias !195552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.id, %bb.ib, %bb.ia
  %.pn.i.i = phi { ptr, i32 } [ %i.tp, %bb.id ], [ %i.tk, %bb.ib ], [ %i.tk, %bb.ia ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.kh) #73
          to label %.body176.thread unwind label %bb.ie, !noalias !195552

bb.id:                                            ; preds = %bb.ic
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.ie:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.ib
  %i.tq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195552
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ic, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.kh)
          to label %.thread645 unwind label %.body176.thread642.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread645:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.692.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.794.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ig

.body.i:                                          ; preds = %bb.dn, %.body290.i
  br i1 %.sroa.0125.1.i, label %.body.thread.i.a, label %10

10:                                               ; preds = %.body.thread.i.a, %.body.i, %.split.thread.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.26.7602.i = phi i32 [ %8, %.split.thread.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.26.7603.i, %.body.thread.i.a ], [ %.sroa.26.0.i, %.body.i ]
  %.sroa.0197.7600.i = phi ptr [ %7, %.split.thread.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0197.7601.i, %.body.thread.i.a ], [ %.sroa.0197.0.i, %.body.i ]
  %11 = insertvalue { ptr, i32 } poison, ptr %.sroa.0197.7600.i, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %.sroa.26.7602.i, 1
  br label %.body176.thread

.body.thread.i.a:                                 ; preds = %.body.i, %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread.i
  %.sroa.26.7603.i = phi i32 [ %6, %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.26.0.i, %.body.i ], [ %4, %.body.thread.i ]
  %.sroa.0197.7601.i = phi ptr [ %5, %.body.thread609.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0197.0.i, %.body.i ], [ %3, %.body.thread.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(192) %i.dc) #73
          to label %10 unwind label %bb.fo, !noalias !195552

bb.if:                                            ; preds = %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !195551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.692.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.794.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !195615)
  call void @llvm.experimental.noalias.scope.decl(metadata !195616)
  %i.tr = extractelement <4 x i64> %i.qw, i64 0
  %i.ts = icmp eq i64 %i.tr, -3
  br i1 %i.ts, label %.loopexit747, label %bb.in

.loopexit747:                                     ; preds = %bb.if
  %i.tt = getelementptr i8, ptr %.sroa.0347.01162, i64 16
  %i.tu = getelementptr i8, ptr %.sroa.0347.01162, i64 8
  %i.tv = extractelement <4 x i64> %i.qw, i64 1   ; 2 uses
  %.sroa.16359.sroa.0.0.extract.trunc.le = trunc i64 %i.tv to i8
  %.sroa.16359.sroa.16.0.extract.shift.le = lshr i64 %i.tv, 8
  %i.tw = extractelement <4 x i64> %i.qw, i64 2
  %i.tx = extractelement <4 x i64> %i.qw, i64 3
  br label %bb.ig

bb.ig:                                            ; preds = %.loopexit747, %.thread645
  %i.ty = phi ptr [ %i.tf, %.thread645 ], [ %i.tu, %.loopexit747 ]
  %i.tz = phi ptr [ %i.tg, %.thread645 ], [ %i.tt, %.loopexit747 ]
  %.sroa.27.6658 = phi i64 [ %.sroa.27.3, %.thread645 ], [ %i.tw, %.loopexit747 ]
  %.sroa.34.6657 = phi i64 [ %.sroa.34.3, %.thread645 ], [ %i.tx, %.loopexit747 ]
  %.sroa.41.6656 = phi ptr [ %.sroa.41.3, %.thread645 ], [ %.sroa.41.0.copyload, %.loopexit747 ]
  %.sroa.16359.sroa.0.6655 = phi i8 [ %.sroa.16359.sroa.0.3, %.thread645 ], [ %.sroa.16359.sroa.0.0.extract.trunc.le, %.loopexit747 ]
  %.sroa.16359.sroa.16.sroa.0.6654 = phi i64 [ %.sroa.16359.sroa.16.sroa.0.3, %.thread645 ], [ %.sroa.16359.sroa.16.0.extract.shift.le, %.loopexit747 ]
  %.val116659 = load ptr, ptr %i.ty, align 8      ; 2 uses
  %.val117660 = load i64, ptr %i.tz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !195617
  %.sroa.16359.sroa.16.0.insert.shift = shl nuw i64 %.sroa.16359.sroa.16.sroa.0.6654, 8
  %.sroa.16359.sroa.0.0.insert.ext = zext i8 %.sroa.16359.sroa.0.6655 to i64
  %.sroa.16359.sroa.0.0.insert.insert = or disjoint i64 %.sroa.16359.sroa.16.0.insert.shift, %.sroa.16359.sroa.0.0.insert.ext
  store i64 %.sroa.16359.sroa.0.0.insert.insert, ptr %i.ap, align 8, !noalias !195615
  %.sroa.27.8..sroa_idx365 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.27.6658, ptr %.sroa.27.8..sroa_idx365, align 8, !noalias !195615
  %.sroa.34.8..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.34.6657, ptr %.sroa.34.8..sroa_idx370, align 8, !noalias !195615
  %.sroa.41.8..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %.sroa.41.6656, ptr %.sroa.41.8..sroa_idx375, align 8, !noalias !195615
  %.sroa.48.8..sroa_idx379 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.8..sroa_idx379, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48, i64 24, i1 false), !noalias !195615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !195617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !195617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !195618
  %.not.i.i = icmp eq i64 %.val117660, 0
  br i1 %.not.i.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val116659) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !195618
  store ptr %.val116659, ptr %i.am, align 8, !noalias !195618
  %.sroa.42.0..sroa_idx.i.i179 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i179, align 8, !noalias !195618
  %i.ua = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ap, ptr %i.ua, align 8, !noalias !195618
  %.sroa.46.0..sroa_idx.i.i180 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i180, align 8, !noalias !195618
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull @1495, ptr noundef nonnull %i.am)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i181 unwind label %bb.ij, !noalias !195619

bb.ii:                                            ; preds = %bb.ig
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1494) #72
          to label %bb.ik unwind label %bb.ij, !noalias !195618

bb.ij:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i181, %bb.ii, %bb.ih
  %i.ub = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ap) #73
          to label %.body182 unwind label %bb.il, !noalias !195619

bb.ik:                                            ; preds = %bb.ii
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i181: ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !195618
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !195618
  store i64 13, ptr %i.ao, align 8, !noalias !195618
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1496)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table00Bb_.exit.i unwind label %bb.ij, !noalias !195617

bb.il:                                            ; preds = %bb.ij
  %i.ud = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195619
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table00Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !195618
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ap)
          to label %bb.io unwind label %bb.im

bb.im:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table00Bb_.exit.i
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.body182

bb.in:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8356.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48, i64 24, i1 false), !alias.scope !195617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.7478.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.48.64..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8351.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8356.sroa.11, i64 24, i1 false), !alias.scope !195620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8356.sroa.11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8351.sroa.14, i64 24, i1 false)
  store i8 1, ptr %i.jo, align 1
  store <4 x i64> %i.qw, ptr %i.dd, align 16
  store ptr %.sroa.41.0.copyload, ptr %.sroa.5476.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8351.sroa.14)
  %i.uf = icmp eq ptr %i.ki, %i.jr
  br i1 %i.uf, label %._crit_edge1166, label %bb.bv

bb.io:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12update_table00Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !195617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !195617
  %.sroa.8356.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !noalias !195616 ; 2 uses
  %.sroa.8356.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.8356.sroa.8.0.copyload = load i64, ptr %.sroa.8356.sroa.8.0..sroa_idx, align 8, !noalias !195616
  %.sroa.8356.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.8356.sroa.9.0.copyload = load i64, ptr %.sroa.8356.sroa.9.0..sroa_idx, align 8, !noalias !195616
  %.sroa.8356.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.8356.sroa.10.0.copyload = load ptr, ptr %.sroa.8356.sroa.10.0..sroa_idx, align 8, !noalias !195616
  %.sroa.8356.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8356.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8356.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !195616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !195617
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8351.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8356.sroa.11, i64 24, i1 false), !alias.scope !195620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8356.sroa.11)
  %.sroa.0410.sroa.0.0.extract.trunc = trunc i64 %.sroa.8356.sroa.0.0.copyload to i8
  %.sroa.0410.sroa.5.0.extract.shift = lshr i64 %.sroa.8356.sroa.0.0.copyload, 8
  %.sroa.0410.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0410.sroa.5.0.extract.shift to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8351.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8351.sroa.14)
  br label %bb.cg

.body176.thread:                                  ; preds = %10, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %.body176.thread642.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ip
  %eh.lpad-body176640 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body176.thread642.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %bb.ip ], [ %12, %10 ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %.body182

bb.ip:                                            ; preds = %bb.ct
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance7dataset5write6update13UpdateBuilderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(192) %i.dc) #73
          to label %.body176.thread unwind label %bb.bc

.body182:                                         ; preds = %.body176.thread, %bb.ij, %bb.im, %bb.iq
  %.pn49 = phi { ptr, i32 } [ %i.lp, %bb.iq ], [ %eh.lpad-body176640, %.body176.thread ], [ %i.ue, %bb.im ], [ %i.ub, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8356.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8351.sroa.14)
  br label %bb.ci

bb.iq:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %.body182

bb.ir:                                            ; preds = %bb.td, %bb.ci, %bb.bt
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.td ], [ %.pn49.pn.pn, %bb.ci ], [ %i.jn, %bb.bt ] ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 491
  store i8 0, ptr %i.ug, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.ui = load i8, ptr %i.uh, align 4, !range !423, !noundef !411
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.te, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.is:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3334.sroa.5, i64 24, i1 false)
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.cg
  %.sroa.12.sroa.12.sroa.14.6 = phi ptr [ %.sroa.3334.sroa.3.sroa.7.0.copyload, %bb.is ], [ %.sroa.12.sroa.12.sroa.14.4, %bb.cg ] ; 2 uses
  %.sroa.12.sroa.12.sroa.13.6 = phi i64 [ %.sroa.3334.sroa.3.sroa.5.0.copyload, %bb.is ], [ %.sroa.12.sroa.12.sroa.13.4, %bb.cg ] ; 2 uses
  %.sroa.12.sroa.12.sroa.12.6 = phi i64 [ %.sroa.3334.sroa.3.sroa.3.0.copyload, %bb.is ], [ %.sroa.12.sroa.12.sroa.12.4, %bb.cg ] ; 2 uses
  %.sroa.12.sroa.12.sroa.0.6 = phi i56 [ %.sroa.3334.sroa.3.sroa.0.0.copyload, %bb.is ], [ %.sroa.12.sroa.12.sroa.0.4, %bb.cg ] ; 2 uses
  %.sroa.12.sroa.0.6 = phi i8 [ %.sroa.3334.sroa.0.0.copyload, %bb.is ], [ %.sroa.12.sroa.0.4, %bb.cg ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 492
  store i8 0, ptr %i.uk, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.experimental.noalias.scope.decl(metadata !195621)
  call void @llvm.experimental.noalias.scope.decl(metadata !195622)
  %.val.i.i186 = load i64, ptr %i.ul, align 16, !range !414, !alias.scope !195623, !noundef !411 ; 2 uses
  %i.um = icmp eq i64 %.val.i.i186, 0
  br i1 %i.um, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val1.i.i187 = load ptr, ptr %i.un, align 8, !alias.scope !195623, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i187, i64 noundef %.val.i.i186, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !195623
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bd, %bb.bn, %bb.bk, %bb.bq, %bb.te, %bb.tf, %bb.ir
  %.pn54.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.te ], [ %.pn49.pn.pn.pn, %bb.ir ], [ %.pn49.pn.pn.pn, %bb.tf ], [ %i.ja, %bb.bk ], [ %i.jk, %bb.bq ], [ %i.is, %bb.bd ], [ %i.je, %bb.bn ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 492
  store i8 0, ptr %i.uo, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.experimental.noalias.scope.decl(metadata !195624)
  call void @llvm.experimental.noalias.scope.decl(metadata !195625)
  %.val.i.i188 = load i64, ptr %i.up, align 16, !range !414, !alias.scope !195626, !noundef !411 ; 2 uses
  %i.uq = icmp eq i64 %.val.i.i188, 0
  br i1 %i.uq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit190, label %bb.iv

bb.iv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val1.i.i189 = load ptr, ptr %i.ur, align 8, !alias.scope !195626, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i189, i64 noundef %.val.i.i188, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !195626
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit190

bb.iw:                                            ; preds = %bb.jg, %bb.jf
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.body201

.body201:                                         ; preds = %bb.sg, %bb.iw
  %i.ut = phi ptr [ %i.uu, %bb.iw ], [ %i.vs, %bb.sg ]
  %eh.lpad-body202 = phi { ptr, i32 } [ %i.us, %bb.iw ], [ %.pn2.pn.i, %bb.sg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12570)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15573)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtBI_9UpdateJob7execute0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 16 %i.ut) #73
          to label %bb.sj unwind label %bb.bc

bb.ix:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !476, !noalias !195627
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15573)
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  switch i8 %.pre, label %default.unreachable1450 [
    i8 0, label %bb.iy
    i8 1, label %bb.jf
    i8 2, label %bb.jg
    i8 3, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.ix
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.val7.pre.i = load ptr, ptr %.phi.trans.insert.i, align 16, !noalias !195627
  br label %bb.ji

bb.iy:                                            ; preds = %.thread, %bb.ix
  %i.uw = phi ptr [ %i.lm, %.thread ], [ %i.uv, %bb.ix ] ; 2 uses
  %i.ux = phi ptr [ %i.ll, %.thread ], [ %i.uu, %bb.ix ] ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 825 ; 2 uses
  store i8 1, ptr %i.uy, align 1, !noalias !195627
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.uz, ptr noundef nonnull align 16 dereferenceable(160) %i.ux, i64 160, i1 false), !noalias !195627
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.val.i196 = load ptr, ptr %i.va, align 16, !noalias !195627, !nonnull !411, !noundef !411 ; 2 uses
  %i.vb = atomicrmw add ptr %.val.i196, i64 1 monotonic, align 8, !noalias !195628
  %i.vc = icmp slt i64 %i.vb, 0
  br i1 %i.vc, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.trap()
  unreachable

bb.ja:                                            ; preds = %bb.iy
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ve = load i32, ptr %i.vd, align 16, !noalias !195627, !noundef !411
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.vg = load i64, ptr %i.vf, align 16, !noalias !195627, !noundef !411
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.vi = load i32, ptr %i.vh, align 8, !range !754, !noalias !195627, !noundef !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !195627
  store i8 0, ptr %i.uy, align 1, !noalias !195627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.al, ptr noundef nonnull align 16 dereferenceable(160) %i.uz, i64 160, i1 false), !noalias !195627
  call void @llvm.experimental.noalias.scope.decl(metadata !195629)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store ptr %.val.i196, ptr %i.vj, align 8, !alias.scope !195630, !noalias !195627
  %i.vk = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.vg, ptr %i.vk, align 16, !alias.scope !195631, !noalias !195627
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.vi, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !195631, !noalias !195627
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.ve, ptr %.sroa.814.0..sroa_idx.i, align 16, !alias.scope !195631, !noalias !195627
  %i.vl = getelementptr inbounds nuw i8, ptr %i.al, i64 728
  store i8 0, ptr %i.vl, align 8, !alias.scope !195630, !noalias !195627
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !195632
  %i.vm = call noundef align 16 dereferenceable_or_null(11008) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 11008, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !195632 ; 4 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %bb.jb, label %bb.je, !prof !443

bb.jb:                                            ; preds = %bb.ja
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 11008) #72
          to label %.noexc.i198 unwind label %bb.jc, !noalias !195628

.noexc.i198:                                      ; preds = %bb.jb
  unreachable

bb.jc:                                            ; preds = %bb.jb
  %i.vo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtNtNtCshkPeWWG1flk_5lance7dataset5write5retry18execute_with_retryNtNtBI_6update9UpdateJobE0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 16 dereferenceable(11008) %i.al) #73
          to label %.body.i197 unwind label %bb.jd, !noalias !195628

bb.jd:                                            ; preds = %bb.jc
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !195628
  unreachable

.body.i197:                                       ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !195627
  br label %.body12.i

bb.je:                                            ; preds = %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11008) %i.vm, ptr noundef nonnull align 16 dereferenceable(11008) %i.al, i64 11008, i1 false), !noalias !195628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !195627
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.vm, ptr %i.vq, align 16, !noalias !195627
  br label %bb.ji

.body12.i:                                        ; preds = %bb.se, %.body10.i, %.body.i197
  %i.vr = phi ptr [ %i.vx, %bb.se ], [ %i.uw, %.body.i197 ], [ %i.vx, %.body10.i ]
  %i.vs = phi ptr [ %i.vy, %bb.se ], [ %i.ux, %.body.i197 ], [ %i.vy, %.body10.i ]
  %.pn2.pn.i = phi { ptr, i32 } [ %i.alh, %bb.se ], [ %i.vo, %.body.i197 ], [ %eh.lpad-body11.i, %.body10.i ]
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 825 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !range !423, !noalias !195627, !noundef !411
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.sh, label %bb.sg

bb.jf:                                            ; preds = %bb.ix
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2225) #72
          to label %.noexc199.a unwind label %bb.iw

.noexc199.a:                                      ; preds = %bb.jf
  unreachable

bb.jg:                                            ; preds = %bb.ix
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2225) #72
          to label %.noexc200 unwind label %bb.iw

.noexc200:                                        ; preds = %bb.jg
  unreachable

bb.jh:                                            ; preds = %bb.js, %bb.jr
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i
end_hunk_1
