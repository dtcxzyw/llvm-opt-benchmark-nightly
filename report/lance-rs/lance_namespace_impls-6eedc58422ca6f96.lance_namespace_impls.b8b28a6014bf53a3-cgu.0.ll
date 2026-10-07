Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace30resolve_existing_table_version0B9_:bb.a
  br label %bb.bq

bb.bn:                                            ; preds = %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace30staging_matches_final_manifest0s_0Bb_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !154884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !154884
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !154884
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store i64 -1, ptr %i.fy, align 8, !alias.scope !154891, !noalias !154892
  %.sroa.0224.0.copyload.i = load i8, ptr %i.fx, align 8, !noalias !154876
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1129
  %.sroa.5225.0.copyload.i = load i8, ptr %.sroa.5225.0..sroa_idx.i, align 1, !noalias !154876
  %.sroa.6226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13187.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6226.0..sroa_idx.i, i64 6, i1 false), !noalias !154876
  %.sroa.7227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.sroa.7227.0.copyload.i = load ptr, ptr %.sroa.7227.0..sroa_idx.i, align 8, !noalias !154876
  %.sroa.8228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %.sroa.8228.0.copyload.i = load ptr, ptr %.sroa.8228.0..sroa_idx.i, align 8, !noalias !154876
  %.sroa.9229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.sroa.9229.0.copyload.i = load i64, ptr %.sroa.9229.0..sroa_idx.i, align 8, !noalias !154876
  %.sroa.10230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %.sroa.10230.0.copyload.i = load ptr, ptr %.sroa.10230.0..sroa_idx.i, align 8, !noalias !154876
  %.sroa.11231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1168
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ce, %bb.bn
  %.sroa.18.i.sink = phi ptr [ %.sroa.18.i, %bb.ce ], [ %.sroa.11231.0..sroa_idx.i, %bb.bn ]
  %i.fz = phi ptr [ %i.gm, %bb.ce ], [ %i.eu, %bb.bn ] ; 2 uses
  %i.ga = phi ptr [ %i.gn, %bb.ce ], [ %i.ev, %bb.bn ] ; 2 uses
  %.sroa.16.1.i = phi ptr [ %.sroa.15.sroa.20.0.copyload.i, %bb.ce ], [ %.sroa.10230.0.copyload.i, %bb.bn ]
  %.sroa.15.1.i = phi i64 [ %.sroa.15.sroa.18.0.copyload.i, %bb.ce ], [ %.sroa.9229.0.copyload.i, %bb.bn ]
  %.sroa.14195.1.i = phi ptr [ %.sroa.15.sroa.16.0.copyload.i, %bb.ce ], [ %.sroa.8228.0.copyload.i, %bb.bn ]
  %.sroa.13190.1.i = phi ptr [ %.sroa.15.sroa.13.0.copyload.i, %bb.ce ], [ %.sroa.7227.0.copyload.i, %bb.bn ]
  %.sroa.8181.1.i = phi i8 [ %.sroa.15.sroa.0.sroa.0.0.copyload.i, %bb.ce ], [ %.sroa.5225.0.copyload.i, %bb.bn ]
  %.sroa.0178.1.i = phi i8 [ %.sroa.0127.0.copyload.i, %bb.ce ], [ %.sroa.0224.0.copyload.i, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17209.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.i.sink, i64 16, i1 false), !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !154893)
  call void @llvm.experimental.noalias.scope.decl(metadata !154894)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !154895, !noalias !154876, !noundef !416
  %i.ge = load ptr, ptr %i.gb, align 8, !alias.scope !154895, !noalias !154876, !nonnull !416, !align !417, !noundef !416
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !154896, !nonnull !416, !noundef !416
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !154895, !noalias !154876, !noundef !416
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !154895, !noalias !154876, !noundef !416
  invoke void %i.gg(ptr noundef %i.gd, ptr noundef %i.gi, i64 noundef %i.gk)
          to label %bb.cf unwind label %bb.cd, !noalias !154877, !inline_history !1

bb.bp:                                            ; preds = %bb.bq
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !154876
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_Cs3PfUT229lOd_12object_storeNtBJ_9GetResult5bytes0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.go) #73
          to label %.body73.i unwind label %bb.aj, !noalias !154877

bb.bq:                                            ; preds = %bb.bm, %bb.i
  %i.gm = phi ptr [ %i.eu, %bb.bm ], [ %i.az, %bb.i ] ; 9 uses
  %i.gn = phi ptr [ %i.ev, %bb.bm ], [ %i.ay, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !154876
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  invoke fastcc void @_RNCNvMs1_Cs3PfUT229lOd_12object_storeNtB7_9GetResult5bytes0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r, ptr noundef nonnull align 8 %i.go, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bp, !noalias !154877

bb.br:                                            ; preds = %bb.bq
  %i.gp = load i64, ptr %i.r, align 8, !range !521, !noalias !154876, !noundef !416 ; 3 uses
  %i.gq = icmp eq i64 %i.gp, -2
  br i1 %i.gq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  br label %.thread

bb.bt:                                            ; preds = %bb.br
  %.sroa.3155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3155.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3155.0..sroa_idx.i, align 8, !noalias !154876 ; 2 uses
  %.sroa.3155.sroa.3.0..sroa.3155.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.3155.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3155.sroa.3.0..sroa.3155.0..sroa_idx.sroa_idx.i, align 8, !noalias !154876 ; 2 uses
  %.sroa.3155.sroa.4.0..sroa.3155.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.3155.sroa.4.0.copyload.i = load i64, ptr %.sroa.3155.sroa.4.0..sroa.3155.0..sroa_idx.sroa_idx.i, align 8, !noalias !154876 ; 2 uses
  %.sroa.3155.sroa.5.0..sroa.3155.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.3155.sroa.5.0.copyload.i = load ptr, ptr %.sroa.3155.sroa.5.0..sroa.3155.0..sroa_idx.sroa_idx.i, align 8, !noalias !154876 ; 2 uses
  %.sroa.4157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4157.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4157.0..sroa_idx.i, i64 32, i1 false), !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !154876
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_Cs3PfUT229lOd_12object_storeNtBJ_9GetResult5bytes0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.go)
          to label %bb.bv unwind label %bb.bu, !noalias !154877

bb.bu:                                            ; preds = %bb.bt
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body73.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i69.i = icmp eq i64 %i.gp, -1
  br i1 %.not.i69.i, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !154897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !154897
  store i64 %i.gp, ptr %i.f, align 8, !noalias !154898
  %.sroa.3155.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.3155.sroa.0.0.copyload.i, ptr %.sroa.3155.0..sroa_idx156.i, align 8, !noalias !154898
  %.sroa.3155.sroa.3.0..sroa.3155.0..sroa_idx156.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.3155.sroa.3.0.copyload.i, ptr %.sroa.3155.sroa.3.0..sroa.3155.0..sroa_idx156.sroa_idx.i, align 8, !noalias !154898
  %.sroa.3155.sroa.4.0..sroa.3155.0..sroa_idx156.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.3155.sroa.4.0.copyload.i, ptr %.sroa.3155.sroa.4.0..sroa.3155.0..sroa_idx156.sroa_idx.i, align 8, !noalias !154898
  %.sroa.3155.sroa.5.0..sroa.3155.0..sroa_idx156.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.3155.sroa.5.0.copyload.i, ptr %.sroa.3155.sroa.5.0..sroa.3155.0..sroa_idx156.sroa_idx.i, align 8, !noalias !154898
  %.sroa.4157.0..sroa_idx158.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4157.0..sroa_idx158.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4157.i, i64 32, i1 false), !noalias !154898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !154897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !154899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !154899
  store ptr %i.gs, ptr %i.c, align 8, !noalias !154899
  %.sroa.42.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i.i70.i, align 8, !noalias !154899
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.gt, align 8, !noalias !154899
  %.sroa.46.0..sroa_idx.i.i71.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i71.i, align 8, !noalias !154899
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @1228, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i unwind label %bb.bx, !noalias !154900

bb.bx:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i, %bb.bw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #73
          to label %.body73.i unwind label %bb.by, !noalias !154900

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154899
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !154899
  store i64 18, ptr %i.e, align 8, !noalias !154899
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1229)
          to label %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace30staging_matches_final_manifest0s0_0Bb_.exit.i.i unwind label %bb.bx, !noalias !154901

bb.by:                                            ; preds = %bb.bx
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !154900
  unreachable

_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace30staging_matches_final_manifest0s0_0Bb_.exit.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !154899
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i unwind label %bb.bz, !noalias !154877

bb.bz:                                            ; preds = %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace30staging_matches_final_manifest0s0_0Bb_.exit.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body73.i

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i: ; preds = %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace30staging_matches_final_manifest0s0_0Bb_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !154897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !154897
  %.sroa.0127.0.copyload.i = load i8, ptr %i.g, align 8, !noalias !154902 ; 2 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.15.sroa.0.sroa.0.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !154902
  %.sroa.15.sroa.0.sroa.13.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.15.sroa.0.sroa.13.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.0.sroa.13.0..sroa.15.0..sroa_idx.sroa_idx.i, i64 6, i1 false), !noalias !154902
  %.sroa.15.sroa.13.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.15.sroa.13.0.copyload.i = load ptr, ptr %.sroa.15.sroa.13.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !noalias !154902 ; 2 uses
  %.sroa.15.sroa.16.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.15.sroa.16.0.copyload.i = load ptr, ptr %.sroa.15.sroa.16.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !noalias !154902 ; 2 uses
  %.sroa.15.sroa.18.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.15.sroa.18.0.copyload.i = load i64, ptr %.sroa.15.sroa.18.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !noalias !154902 ; 2 uses
  %.sroa.15.sroa.20.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.15.sroa.20.0.copyload.i = load ptr, ptr %.sroa.15.sroa.20.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !noalias !154902 ; 2 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx.i, i64 16, i1 false), !noalias !154902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !154897
  %.not.i76.i = icmp eq i8 %.sroa.0127.0.copyload.i, -1
  br i1 %.not.i76.i, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i, label %bb.ce

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i, %bb.bv
  %.sroa.15.sroa.13.0272.ph.i = phi ptr [ %.sroa.15.sroa.13.0.copyload.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i ], [ %.sroa.3155.sroa.0.0.copyload.i, %bb.bv ] ; 2 uses
  %.sroa.15.sroa.16.0270.ph.i = phi ptr [ %.sroa.15.sroa.16.0.copyload.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i ], [ %.sroa.3155.sroa.3.0.copyload.i, %bb.bv ] ; 3 uses
  %.sroa.15.sroa.18.0268.ph.i = phi i64 [ %.sroa.15.sroa.18.0.copyload.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i ], [ %.sroa.3155.sroa.4.0.copyload.i, %bb.bv ] ; 3 uses
  %.sroa.15.sroa.20.0266.ph.i = phi ptr [ %.sroa.15.sroa.20.0.copyload.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i ], [ %.sroa.3155.sroa.5.0.copyload.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gz = getelementptr i8, ptr %1, i64 232       ; 2 uses
  %i.ha = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %.val40.i = load i64, ptr %i.ha, align 8, !noalias !154876, !noundef !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.sroa.16.0270.ph.i) ]
  %i.hb = icmp eq i64 %.val40.i, %.sroa.15.sroa.18.0268.ph.i
  br i1 %i.hb, label %bb.ca, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRShNtB7_9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ca:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i
  %.val39.i = load ptr, ptr %i.gz, align 8, !noalias !154876, !noundef !416
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val39.i, ptr nonnull readonly %.sroa.15.sroa.16.0270.ph.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.sroa.18.0268.ph.i), !alias.scope !154903, !noalias !154877
  %i.hc = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.hd = zext i1 %i.hc to i8
  br label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRShNtB7_9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRShNtB7_9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ca, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.hd, %bb.ca ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.thread.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.sroa.13.0272.ph.i) ]
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.15.sroa.13.0272.ph.i, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !154904, !nonnull !416, !noundef !416
  invoke void %i.hf(ptr noundef %.sroa.15.sroa.20.0266.ph.i, ptr noundef nonnull %.sroa.15.sroa.16.0270.ph.i, i64 noundef %.sroa.15.sroa.18.0268.ph.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i unwind label %bb.cc, !noalias !154877, !inline_history !1

bb.cb:                                            ; preds = %bb.cc, %.body73.i
  %i.hg = phi ptr [ %i.ek, %.body73.i ], [ %i.gm, %bb.cc ]
  %i.hh = phi ptr [ %i.el, %.body73.i ], [ %i.gn, %bb.cc ]
  %.pn17.pn.pn.i = phi { ptr, i32 } [ %.pn17.pn.i, %.body73.i ], [ %i.hs, %bb.cc ]
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !154905)
  call void @llvm.experimental.noalias.scope.decl(metadata !154906)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !154907, !noalias !154876, !noundef !416
  %i.hl = load ptr, ptr %i.hi, align 8, !alias.scope !154907, !noalias !154876, !nonnull !416, !align !417, !noundef !416
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !154908, !nonnull !416, !noundef !416
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !154907, !noalias !154876, !noundef !416
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !154907, !noalias !154876, !noundef !416
  invoke void %i.hn(ptr noundef %i.hk, ptr noundef %i.hp, i64 noundef %i.hr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i unwind label %bb.aj, !noalias !154877, !inline_history !1

bb.cc:                                            ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRShNtB7_9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i: ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRShNtB7_9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !154909)
  call void @llvm.experimental.noalias.scope.decl(metadata !154910)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !154911, !noalias !154876, !noundef !416
  %i.hv = load ptr, ptr %i.gy, align 8, !alias.scope !154911, !noalias !154876, !nonnull !416, !align !417, !noundef !416
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !154912, !nonnull !416, !noundef !416
  %i.hy = load ptr, ptr %i.gz, align 8, !alias.scope !154911, !noalias !154876, !noundef !416
  %i.hz = load i64, ptr %i.ha, align 8, !alias.scope !154911, !noalias !154876, !noundef !416
  invoke void %i.hx(ptr noundef %i.hu, ptr noundef %i.hy, i64 noundef %i.hz)
          to label %.thread138 unwind label %bb.cd, !noalias !154877, !inline_history !1

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i, %bb.bo
  %i.ia = phi ptr [ %i.gm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i ], [ %i.fz, %bb.bo ]
  %i.ib = phi ptr [ %i.gn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i ], [ %i.ga, %bb.bo ]
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i

bb.ce:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2R_18DirectoryNamespace30staging_matches_final_manifest0s0_0EB2T_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13187.i, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.15.sroa.0.sroa.13.i, i64 6, i1 false), !noalias !154876
  br label %bb.bo

.thread:                                          ; preds = %bb.q, %bb.an, %bb.bc, %bb.bs
  %i.id = phi ptr [ %i.bz, %bb.q ], [ %i.dq, %bb.an ], [ %i.eu, %bb.bc ], [ %i.gm, %bb.bs ]
  %.sink.i.ph = phi i8 [ 3, %bb.q ], [ 4, %bb.an ], [ 5, %bb.bc ], [ 6, %bb.bs ]
  store i8 %.sink.i.ph, ptr %i.id, align 8, !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13187.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17209.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4157.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3152.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.cg

.thread138:                                       ; preds = %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i
  %i.ie = phi ptr [ %i.gm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i ], [ %i.ba, %bb.j ]
  %i.if = phi ptr [ %i.gn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i ], [ %i.bb, %bb.j ]
  %.sroa.8181.2.i.ph = phi i8 [ %.sroa.0.0.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit79.i ], [ 0, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1258, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13187.i, i64 6, i1 false), !noalias !154913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17209.i, i64 16, i1 false), !noalias !154913
  store i8 1, ptr %i.ie, align 8, !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13187.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17209.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4157.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3152.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ax, %bb.bo
  %i.ig = phi ptr [ %i.dd, %bb.ax ], [ %i.fz, %bb.bo ]
  %i.ih = phi ptr [ %i.de, %bb.ax ], [ %i.ga, %bb.bo ]
  %.sroa.16.2.i = phi ptr [ %.sroa.16.0.i, %bb.ax ], [ %.sroa.16.1.i, %bb.bo ]
  %.sroa.15.2.i = phi i64 [ %.sroa.15.0.i, %bb.ax ], [ %.sroa.15.1.i, %bb.bo ]
  %.sroa.14195.2.i = phi ptr [ %.sroa.14195.0.i, %bb.ax ], [ %.sroa.14195.1.i, %bb.bo ]
  %.sroa.13190.2.i = phi ptr [ %.sroa.13190.0.i, %bb.ax ], [ %.sroa.13190.1.i, %bb.bo ]
  %.sroa.8181.2.i = phi i8 [ %.sroa.8181.0.i, %bb.ax ], [ %.sroa.8181.1.i, %bb.bo ]
  %.sroa.0178.2.i = phi i8 [ %.sroa.0178.0.i, %bb.ax ], [ %.sroa.0178.1.i, %bb.bo ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1258, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13187.i, i64 6, i1 false), !noalias !154913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17209.i, i64 16, i1 false), !noalias !154913
  store i8 1, ptr %i.ig, align 8, !noalias !154876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13187.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17209.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4157.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3152.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ii = icmp eq i8 %.sroa.0178.2.i, -2
  br i1 %i.ii, label %bb.cg, label %bb.ch

common.ret:                                       ; preds = %bb.cy, %bb.cr, %bb.cg
  %.sink = phi i8 [ 4, %bb.cy ], [ 1, %bb.cr ], [ 3, %bb.cg ]
  store i8 %.sink, ptr %i.ai, align 8
  ret void

bb.cg:                                            ; preds = %.thread, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1258)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.ch:                                            ; preds = %.thread138, %bb.cf
  %i.ij = phi ptr [ %i.if, %.thread138 ], [ %i.ih, %bb.cf ] ; 2 uses
  %.sroa.0178.2.i150 = phi i8 [ -1, %.thread138 ], [ %.sroa.0178.2.i, %bb.cf ] ; 2 uses
  %.sroa.8181.2.i149 = phi i8 [ %.sroa.8181.2.i.ph, %.thread138 ], [ %.sroa.8181.2.i, %bb.cf ] ; 2 uses
  %.sroa.13190.2.i148 = phi ptr [ undef, %.thread138 ], [ %.sroa.13190.2.i, %bb.cf ]
  %.sroa.14195.2.i147 = phi ptr [ undef, %.thread138 ], [ %.sroa.14195.2.i, %bb.cf ]
  %.sroa.15.2.i146 = phi i64 [ undef, %.thread138 ], [ %.sroa.15.2.i, %bb.cf ]
  %.sroa.16.2.i145 = phi ptr [ undef, %.thread138 ], [ %.sroa.16.2.i, %bb.cf ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.667, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1258, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1272, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1258)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace30staging_matches_final_manifest0EBL_(ptr noundef nonnull align 8 %i.ij)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.cj:                                            ; preds = %bb.ch
  %.not.i32 = icmp eq i8 %.sroa.0178.2.i150, -1
  br i1 %.not.i32, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.il = trunc nuw i8 %.sroa.8181.2.i149 to i1
  br i1 %i.il, label %bb.cs, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.im, ptr %i.aa, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5103.0..sroa_idx, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.in, ptr %i.io, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5105.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @1889, ptr noundef nonnull %i.aa)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 14, ptr %i.ac, align 8
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890)
          to label %bb.cq unwind label %bb.cp

bb.co:                                            ; preds = %bb.cp, %bb.cm
  %.pn11 = phi { ptr, i32 } [ %i.ir, %bb.cp ], [ %i.ip, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.body39

bb.cp:                                            ; preds = %bb.cn
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cq:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.4.8.copyload = load i8, ptr %i.ad, align 8
  %.sroa.6110.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.6110.8.copyload = load i8, ptr %.sroa.6110.8..sroa_idx, align 1
  %.sroa.7113.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7113, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7113.8..sroa_idx, i64 6, i1 false)
  %.sroa.8115.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8115.8.copyload = load ptr, ptr %.sroa.8115.8..sroa_idx, align 8
  %.sroa.9118.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.9118.8.copyload = load ptr, ptr %.sroa.9118.8..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0B9_:bb.a

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !199915
  store ptr %i.cz, ptr %i.ce, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr @8908, ptr %i.dd, align 8
  br label %bb.av

.body80:                                          ; preds = %bb.aq, %bb.au, %bb.ba, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.bc, %bb.be
  %.pn33 = phi { ptr, i32 } [ %i.ee, %bb.be ], [ %i.de, %bb.au ], [ %i.dr, %bb.ba ], [ %i.eb, %bb.bc ], [ %i.dr, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.db, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13274)
  br label %bb.br

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.11, i64 24, i1 false)
  br label %bb.y

bb.au:                                            ; preds = %bb.av
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val60 = load ptr, ptr %i.df, align 16
  %.val61 = load ptr, ptr %i.dg, align 8, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val60, ptr nonnull %.val61) #73
          to label %.body80 unwind label %bb.ac

bb.av:                                            ; preds = %bb.d, %bb.as
  %.val63 = phi ptr [ %.val63.pre, %bb.d ], [ @8908, %bb.as ]
  %.val62 = phi ptr [ %.val62.pre, %bb.d ], [ %i.cz, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %i.dg = getelementptr i8, ptr %1, i64 696       ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val63, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !416, !noalias !199917, !nonnull !416
  invoke void %i.di(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.val62, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.au, !inline_history !356

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.av
  %i.dj = load i8, ptr %i.y, align 8, !range !422, !noundef !416 ; 3 uses
  %i.dk = icmp eq i8 %i.dj, -2
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13274)
  br label %common.ret

bb.ax:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0291, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx277, i64 7, i1 false)
  %.sroa.3.sroa.2292.0..sroa.3.0..sroa_idx277.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.sroa.2292.0.copyload = load ptr, ptr %.sroa.3.sroa.2292.0..sroa.3.0..sroa_idx277.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3294.0..sroa.3.0..sroa_idx277.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.3.sroa.3294.0.copyload = load i64, ptr %.sroa.3.sroa.3294.0..sroa.3.0..sroa_idx277.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4296.0..sroa.3.0..sroa_idx277.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.3.sroa.4296.0.copyload = load i64, ptr %.sroa.3.sroa.4296.0..sroa.3.0..sroa_idx277.sroa_idx, align 8 ; 2 uses
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4279, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4279.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val58 = load ptr, ptr %i.df, align 16         ; 5 uses
  %.val59 = load ptr, ptr %i.dg, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.dl = load ptr, ptr %.val59, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58) ]
  invoke void %i.dl(ptr noundef nonnull %.val58)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dm = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) %i.dq) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.body80, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.ba
  %i.dv = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #68
  br label %.body80

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.az
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %.not.i82 = icmp eq i8 %i.dj, -1
  br i1 %.not.i82, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !199918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !199918
  store i8 %i.dj, ptr %i.o, align 8, !noalias !199919
  %.sroa.3.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx278, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0291, i64 7, i1 false), !noalias !199919
  %.sroa.3.sroa.2292.0..sroa.3.0..sroa_idx278.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.3.sroa.2292.0.copyload, ptr %.sroa.3.sroa.2292.0..sroa.3.0..sroa_idx278.sroa_idx, align 8, !noalias !199919
  %.sroa.3.sroa.3294.0..sroa.3.0..sroa_idx278.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.3.sroa.3294.0.copyload, ptr %.sroa.3.sroa.3294.0..sroa.3.0..sroa_idx278.sroa_idx, align 8, !noalias !199919
  %.sroa.3.sroa.4296.0..sroa.3.0..sroa_idx278.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.3.sroa.4296.0.copyload, ptr %.sroa.3.sroa.4296.0..sroa.3.0..sroa_idx278.sroa_idx, align 8, !noalias !199919
  %.sroa.4279.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4279.0..sroa_idx280, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4279, i64 24, i1 false), !noalias !199919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !199918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !199920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !199920
  store ptr %i.dx, ptr %i.l, align 8, !noalias !199920
  %.sroa.42.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i.i83, align 8, !noalias !199920
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !noalias !199920
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !199920
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.o, ptr %i.ea, align 8, !noalias !199920
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !199920
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @1527, ptr noundef nonnull %i.l)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.bc, !noalias !199921

bb.bc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.bb
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o) #73
          to label %.body80 unwind label %bb.bd, !noalias !199921

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !199920
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !199920
  store i64 6, ptr %i.n, align 8, !noalias !199920
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1528)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0Bb_.exit.i unwind label %bb.bc, !noalias !199922

bb.bd:                                            ; preds = %bb.bc
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !199921
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !199920
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit unwind label %bb.be

bb.be:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0Bb_.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body80

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit: ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !199918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !199918
  %.sroa.0271.0.copyload = load i8, ptr %i.p, align 8, !noalias !199923 ; 2 uses
  %.sroa.10272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.10272.sroa.0.sroa.0.0.copyload = load i56, ptr %.sroa.10272.0..sroa_idx, align 1, !noalias !199923
  %.sroa.10272.sroa.8.0..sroa.10272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10272.sroa.8.0.copyload = load ptr, ptr %.sroa.10272.sroa.8.0..sroa.10272.0..sroa_idx.sroa_idx, align 8, !noalias !199923 ; 2 uses
  %.sroa.10272.sroa.11.0..sroa.10272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.10272.sroa.11.0.copyload = load i64, ptr %.sroa.10272.sroa.11.0..sroa.10272.0..sroa_idx.sroa_idx, align 8, !noalias !199923 ; 2 uses
  %.sroa.10272.sroa.13.0..sroa.10272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.10272.sroa.13.0.copyload = load i64, ptr %.sroa.10272.sroa.13.0..sroa.10272.0..sroa_idx.sroa_idx, align 8, !noalias !199923 ; 2 uses
  %.sroa.13274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13274, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13274.0..sroa_idx, i64 24, i1 false), !noalias !199923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !199918
  %.not.i87 = icmp eq i8 %.sroa.0271.0.copyload, -1
  br i1 %.not.i87, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit.thread, label %bb.bp

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit
  %.sroa.10272.sroa.8.0436.ph = phi ptr [ %.sroa.10272.sroa.8.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit ], [ %.sroa.3.sroa.2292.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.10272.sroa.11.0434.ph = phi i64 [ %.sroa.10272.sroa.11.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit ], [ %.sroa.3.sroa.3294.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  %.sroa.10272.sroa.13.0432.ph = phi i64 [ %.sroa.10272.sroa.13.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit ], [ %.sroa.3.sroa.4296.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13274)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr %.sroa.10272.sroa.8.0436.ph, ptr %i.ef, align 16
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  store i64 %.sroa.10272.sroa.11.0434.ph, ptr %.sroa.4299.0..sroa_idx, align 8
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 672
  store i64 %.sroa.10272.sroa.13.0432.ph, ptr %.sroa.5300.0..sroa_idx, align 16
  %.not.i88 = icmp eq i64 %.sroa.10272.sroa.13.0432.ph, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !199924)
  br i1 %.not.i88, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit.thread
  %.val55.cast = inttoptr i64 %.sroa.10272.sroa.11.0434.ph to ptr ; 2 uses
  %i.eg = getelementptr i8, ptr %.val55.cast, i64 56
  %.val.i90 = load ptr, ptr %i.eg, align 8, !alias.scope !199924, !nonnull !416, !noundef !416 ; 4 uses
  %i.eh = getelementptr i8, ptr %.val55.cast, i64 64
  %.val3.i = load i64, ptr %i.eh, align 8, !alias.scope !199924, !noundef !416
  switch i64 %.val3.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread [
    i64 18, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
    i64 15, label %.split
  ]

.split:                                           ; preds = %bb.bf
  %i.ei = load i64, ptr %.val.i90, align 1
  %i.ej = xor i64 %i.ei, 6874009731982974815
  %i.ek = getelementptr i8, ptr %.val.i90, i64 7
  %i.el = load i64, ptr %i.ek, align 1
  %i.em = xor i64 %i.el, 7809654480578112863
  %i.en = or i64 %i.ej, %i.em
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.bi, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bf
  %i.er = load i128, ptr %.val.i90, align 1
  %i.es = xor i128 %i.er, 156046417242912191920089521053883981663
  %i.et = getelementptr i8, ptr %.val.i90, i64 16
  %i.eu = load i16, ptr %i.et, align 1
  %i.ev = zext i16 %i.eu to i128
  %i.ew = xor i128 %i.ev, 25971
  %i.ex = or i128 %i.es, %i.ew
  %i.ey = icmp ne i128 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.bi, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.bf, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit.thread, %.split, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10308.sroa.11)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.fc = load ptr, ptr %i.dx, align 8, !nonnull !416, !noundef !416
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fe = load i64, ptr %i.fd, align 16, !noundef !416
  %i.ff = invoke { ptr, ptr } @_RNvXsl_NtCshkPeWWG1flk_5lance5indexNtNtB7_7dataset7DatasetNtNtB5_3api15DatasetIndexExt10drop_index(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.fb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.fe)
          to label %bb.bh unwind label %bb.bg     ; 2 uses

bb.bg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.bh:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.fh = extractvalue { ptr, ptr } %i.ff, 0      ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.ff, 1      ; 2 uses
  store ptr %i.fh, ptr %i.df, align 16
  store ptr %i.fi, ptr %i.dg, align 8
  br label %bb.bt

.body99:                                          ; preds = %bb.bs, %bb.by, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i97, %bb.ca, %bb.cc, %bb.bg
  %.pn24 = phi { ptr, i32 } [ %i.fg, %bb.bg ], [ %i.fq, %bb.bs ], [ %i.gd, %bb.by ], [ %i.gn, %bb.ca ], [ %i.gd, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i97 ], [ %i.gq, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10308.sroa.11)
  br label %bb.bo

bb.bi:                                            ; preds = %.split, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.dx, ptr %i.u, align 8
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5302.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @2963, ptr noundef nonnull %i.u)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.w, align 8
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2964)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %i.fl, %bb.bm ], [ %i.fj, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.9.sroa.0.0.copyload147 = load i8, ptr %i.x, align 8
  %.sroa.9.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.9.sroa.9.sroa.0.sroa.0.0.copyload390 = load i56, ptr %.sroa.9.sroa.9.0..sroa_idx, align 1
  %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.9.sroa.9.sroa.9.0.copyload180 = load ptr, ptr %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.9.sroa.9.sroa.10.0.copyload187 = load i64, ptr %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.9.sroa.9.sroa.11.0.copyload194 = load i64, ptr %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.10.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.dj, %bb.cd, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.9.sroa.9.sroa.0.sroa.0.2 = phi i56 [ %.sroa.9.sroa.9.sroa.0.sroa.0.0.copyload390, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10330.sroa.10.sroa.0.0.copyload, %bb.dj ], [ %.sroa.10308.sroa.0.sroa.0.0.copyload, %bb.cd ]
  %.sroa.9.sroa.9.sroa.11.2 = phi i64 [ %.sroa.9.sroa.9.sroa.11.0.copyload194, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10330.sroa.16.0.copyload, %bb.dj ], [ %.sroa.10308.sroa.10.0.copyload, %bb.cd ]
  %.sroa.9.sroa.9.sroa.10.2 = phi i64 [ %.sroa.9.sroa.9.sroa.10.0.copyload187, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10330.sroa.14.0.copyload, %bb.dj ], [ %.sroa.10308.sroa.9.0.copyload, %bb.cd ]
  %.sroa.9.sroa.9.sroa.9.2 = phi ptr [ %.sroa.9.sroa.9.sroa.9.0.copyload180, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10330.sroa.12.0.copyload, %bb.dj ], [ %.sroa.10308.sroa.8.0.copyload, %bb.cd ]
  %.sroa.9.sroa.0.2 = phi i8 [ %.sroa.9.sroa.0.0.copyload147, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10330.sroa.0.0.copyload, %bb.dj ], [ %.sroa.0307.0.copyload, %bb.cd ]
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %bb.bq unwind label %bb.dd

bb.bo:                                            ; preds = %.body119, %bb.bl, %.body99
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.bl ], [ %.pn24, %.body99 ], [ %.pn21, %.body119 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fn) #73
          to label %bb.br unwind label %bb.ac

bb.bp:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16drop_table_index0s_0EB3k_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13274, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13274)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.9.sroa.9.sroa.0.sroa.0.3 = phi i56 [ %.sroa.9.sroa.9.sroa.0.sroa.0.2, %bb.bn ], [ %.sroa.10272.sroa.0.sroa.0.0.copyload, %bb.bp ]
  %.sroa.9.sroa.9.sroa.11.3 = phi i64 [ %.sroa.9.sroa.9.sroa.11.2, %bb.bn ], [ %.sroa.10272.sroa.13.0.copyload, %bb.bp ]
  %.sroa.9.sroa.9.sroa.10.3 = phi i64 [ %.sroa.9.sroa.9.sroa.10.2, %bb.bn ], [ %.sroa.10272.sroa.11.0.copyload, %bb.bp ]
  %.sroa.9.sroa.9.sroa.9.3 = phi ptr [ %.sroa.9.sroa.9.sroa.9.2, %bb.bn ], [ %.sroa.10272.sroa.8.0.copyload, %bb.bp ]
  %.sroa.9.sroa.0.3 = phi i8 [ %.sroa.9.sroa.0.2, %bb.bn ], [ %.sroa.0271.0.copyload, %bb.bp ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.fo)
          to label %bb.y unwind label %bb.df

bb.br:                                            ; preds = %bb.dd, %bb.bo, %.body80
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %.body80 ], [ %i.ie, %bb.dd ], [ %.pn30.pn, %bb.bo ]
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.fp) #73
          to label %.body74 unwind label %bb.ac

bb.bs:                                            ; preds = %bb.bt
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val49 = load ptr, ptr %i.fr, align 16
  %.val50 = load ptr, ptr %i.fs, align 8, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val49, ptr nonnull %.val50) #73
          to label %.body99 unwind label %bb.ac

bb.bt:                                            ; preds = %bb.e, %bb.bh
  %.val54 = phi ptr [ %.val54.pre, %bb.e ], [ %i.fi, %bb.bh ]
  %.val53 = phi ptr [ %.val53.pre, %bb.e ], [ %i.fh, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %i.fs = getelementptr i8, ptr %1, i64 696       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !invariant.load !416, !noalias !199925, !nonnull !416
  invoke void %i.fu(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.t, ptr noundef nonnull %.val53, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bs, !inline_history !328

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bt
  %i.fv = load i8, ptr %i.t, align 8, !range !422, !noundef !416 ; 3 uses
  %i.fw = icmp eq i8 %i.fv, -2
  br i1 %i.fw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10308.sroa.11)
  br label %common.ret

bb.bv:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3.0..sroa_idx311, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val = load ptr, ptr %i.fr, align 16           ; 5 uses
  %.val48 = load ptr, ptr %i.fs, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.fx = load ptr, ptr %.val48, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i96, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fx(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.fy = getelementptr inbounds nuw i8, ptr %.val48, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !419, !invariant.load !416 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0B9_:bb.a

.body66:                                          ; preds = %bb.u, %bb.ab, %bb.ae, %bb.db, %bb.ap
  %.pn36.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.ap ], [ %i.ik, %bb.db ], [ %i.ce, %bb.ae ], [ %i.ca, %bb.ab ], [ %i.bs, %bb.u ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.experimental.noalias.scope.decl(metadata !205094)
  call void @llvm.experimental.noalias.scope.decl(metadata !205095)
  %.val.i.i76 = load i64, ptr %i.dg, align 16, !range !419, !alias.scope !205096, !noundef !416 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i76, 0
  br i1 %i.dh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit78, label %bb.at

bb.at:                                            ; preds = %.body66
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val1.i.i77 = load ptr, ptr %i.di, align 8, !alias.scope !205096, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i77, i64 noundef %.val.i.i76, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !205096
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit78

bb.au:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val60 = load ptr, ptr %i.dk, align 8
  %.val61 = load ptr, ptr %i.dl, align 16, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val60, ptr nonnull %.val61) #73
          to label %.body80 unwind label %bb.t

bb.av:                                            ; preds = %bb.d, %bb.am
  %.val63 = phi ptr [ %.val63.pre, %bb.d ], [ @8908, %bb.am ]
  %.val62 = phi ptr [ %.val62.pre, %bb.d ], [ %i.cw, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 3 uses
  %i.dl = getelementptr i8, ptr %1, i64 704       ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val63, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !416, !noalias !205097, !nonnull !416
  invoke void %i.dn(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ac, ptr noundef nonnull %.val62, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.au, !inline_history !356

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.av
  %i.do = load i8, ptr %i.ac, align 8, !range !422, !noundef !416 ; 3 uses
  %i.dp = icmp eq i8 %i.do, -2
  br i1 %i.dp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10270.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13272.sroa.8)
  br label %common.ret

bb.ax:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0293, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx275, i64 7, i1 false)
  %.sroa.3.sroa.2294.0..sroa.3.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.3.sroa.2294.0.copyload = load ptr, ptr %.sroa.3.sroa.2294.0..sroa.3.0..sroa_idx275.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.3.sroa.3.0.copyload = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx275.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4297.0..sroa.3.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.3.sroa.4297.0.copyload = load i64, ptr %.sroa.3.sroa.4297.0..sroa.3.0..sroa_idx275.sroa_idx, align 8 ; 2 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4277, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4277.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val58 = load ptr, ptr %i.dk, align 8          ; 5 uses
  %.val59 = load ptr, ptr %i.dl, align 16, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.dq = load ptr, ptr %.val59, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58) ]
  invoke void %i.dq(ptr noundef nonnull %.val58)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.az
  %i.du = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) %i.dv) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.body80, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.ba
  %i.ea = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) %i.eb) #68
  br label %.body80

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.az
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %.not.i82 = icmp eq i8 %i.do, -1
  br i1 %.not.i82, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !205098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !205098
  store i8 %i.do, ptr %i.q, align 8, !noalias !205099
  %.sroa.3.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx276, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0293, i64 7, i1 false), !noalias !205099
  %.sroa.3.sroa.2294.0..sroa.3.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.3.sroa.2294.0.copyload, ptr %.sroa.3.sroa.2294.0..sroa.3.0..sroa_idx276.sroa_idx, align 8, !noalias !205099
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.3.sroa.3.0.copyload, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx276.sroa_idx, align 8, !noalias !205099
  %.sroa.3.sroa.4297.0..sroa.3.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.3.sroa.4297.0.copyload, ptr %.sroa.3.sroa.4297.0..sroa.3.0..sroa_idx276.sroa_idx, align 8, !noalias !205099
  %.sroa.4277.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4277.0..sroa_idx278, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4277, i64 24, i1 false), !noalias !205099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !205098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !205100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !205100
  store ptr %i.ec, ptr %i.n, align 8, !noalias !205100
  %.sroa.42.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i.i83, align 8, !noalias !205100
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !noalias !205100
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !205100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.q, ptr %i.ef, align 8, !noalias !205100
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !205100
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @1595, ptr noundef nonnull %i.n)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.bc, !noalias !205101

bb.bc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.bb
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #73
          to label %.body80 unwind label %bb.bd, !noalias !205101

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !205100
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !205100
  store i64 6, ptr %i.p, align 8, !noalias !205100
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1596)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0Bb_.exit.i unwind label %bb.bc, !noalias !205102

bb.bd:                                            ; preds = %bb.bc
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !205101
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !205100
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit unwind label %bb.be

bb.be:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0Bb_.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body80

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit: ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !205098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !205098
  %.sroa.0269.0.copyload = load i8, ptr %i.r, align 8, !noalias !205103 ; 2 uses
  %.sroa.10270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10270.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10270.0..sroa_idx, i64 7, i1 false), !noalias !205103
  %.sroa.10270.sroa.8.0..sroa.10270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.10270.sroa.8.0.copyload = load ptr, ptr %.sroa.10270.sroa.8.0..sroa.10270.0..sroa_idx.sroa_idx, align 8, !noalias !205103 ; 2 uses
  %.sroa.10270.sroa.11.0..sroa.10270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.10270.sroa.11.0.copyload = load i64, ptr %.sroa.10270.sroa.11.0..sroa.10270.0..sroa_idx.sroa_idx, align 8, !noalias !205103 ; 2 uses
  %.sroa.10270.sroa.13.0..sroa.10270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.10270.sroa.13.0.copyload = load i64, ptr %.sroa.10270.sroa.13.0..sroa.10270.0..sroa_idx.sroa_idx, align 8, !noalias !205103 ; 2 uses
  %.sroa.13272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.13272.sroa.0.0.copyload = load i64, ptr %.sroa.13272.0..sroa_idx, align 8, !noalias !205103
  %.sroa.13272.sroa.8.0..sroa.13272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13272.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13272.sroa.8.0..sroa.13272.0..sroa_idx.sroa_idx, i64 16, i1 false), !noalias !205103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !205098
  %.not.i87 = icmp eq i8 %.sroa.0269.0.copyload, -1
  br i1 %.not.i87, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit.thread, label %bb.bn

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit
  %.sroa.10270.sroa.8.0402.ph = phi ptr [ %.sroa.10270.sroa.8.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit ], [ %.sroa.3.sroa.2294.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.10270.sroa.11.0400.ph = phi i64 [ %.sroa.10270.sroa.11.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit ], [ %.sroa.3.sroa.3.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  %.sroa.10270.sroa.13.0398.ph = phi i64 [ %.sroa.10270.sroa.13.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit ], [ %.sroa.3.sroa.4297.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10270.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13272.sroa.8)
  store ptr %.sroa.10270.sroa.8.0402.ph, ptr %i.dk, align 8
  store i64 %.sroa.10270.sroa.11.0400.ph, ptr %i.dl, align 16
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 712
  store i64 %.sroa.10270.sroa.13.0398.ph, ptr %.sroa.5301.0..sroa_idx, align 8
  %.not.i88 = icmp eq i64 %.sroa.10270.sroa.13.0398.ph, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !205104)
  br i1 %.not.i88, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit.thread
  %.val55.cast = inttoptr i64 %.sroa.10270.sroa.11.0400.ph to ptr ; 2 uses
  %i.ek = getelementptr i8, ptr %.val55.cast, i64 56
  %.val.i90 = load ptr, ptr %i.ek, align 8, !alias.scope !205104, !nonnull !416, !noundef !416 ; 4 uses
  %i.el = getelementptr i8, ptr %.val55.cast, i64 64
  %.val3.i = load i64, ptr %i.el, align 8, !alias.scope !205104, !noundef !416
  switch i64 %.val3.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread [
    i64 18, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
    i64 15, label %.split
  ]

.split:                                           ; preds = %bb.bf
  %i.em = load i64, ptr %.val.i90, align 1
  %i.en = xor i64 %i.em, 6874009731982974815
  %i.eo = getelementptr i8, ptr %.val.i90, i64 7
  %i.ep = load i64, ptr %i.eo, align 1
  %i.eq = xor i64 %i.ep, 7809654480578112863
  %i.er = or i64 %i.en, %i.eq
  %i.es = icmp ne i64 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bi, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bf
  %i.ev = load i128, ptr %.val.i90, align 1
  %i.ew = xor i128 %i.ev, 156046417242912191920089521053883981663
  %i.ex = getelementptr i8, ptr %.val.i90, i64 16
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = zext i16 %i.ey to i128
  %i.fa = xor i128 %i.ez, 25971
  %i.fb = or i128 %i.ew, %i.fa
  %i.fc = icmp ne i128 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bi, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.bf, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit.thread, %.split, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10314.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13316.sroa.8)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.fg = load ptr, ptr %i.ec, align 16, !nonnull !416, !noundef !416
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !416
  %i.fj = invoke { ptr, ptr } @_RNvXsl_NtCshkPeWWG1flk_5lance5indexNtNtB7_7dataset7DatasetNtNtB5_3api15DatasetIndexExt16index_statistics(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ff, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %i.fi)
          to label %bb.bh unwind label %bb.bg     ; 2 uses

bb.bg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.bh:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.fl = extractvalue { ptr, ptr } %i.fj, 0      ; 2 uses
  %i.fm = extractvalue { ptr, ptr } %i.fj, 1      ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 720
  store ptr %i.fl, ptr %i.fn, align 16
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr %i.fm, ptr %i.fo, align 8
  br label %bb.bp

.body99:                                          ; preds = %bb.bo, %bb.bu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i97, %bb.bw, %bb.by, %bb.bg
  %.pn21 = phi { ptr, i32 } [ %i.fk, %bb.bg ], [ %i.fu, %bb.bo ], [ %i.gh, %bb.bu ], [ %i.gr, %bb.bw ], [ %i.gh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i97 ], [ %i.gu, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10314.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13316.sroa.8)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit124

bb.bi:                                            ; preds = %.split, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE11is_some_andNvNtBP_12system_index15is_system_indexECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ec, ptr %i.y, align 8
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5303.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @3065, ptr noundef nonnull %i.y)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.aa, align 8
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3066)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bj
  %.pn28 = phi { ptr, i32 } [ %i.fr, %bb.bm ], [ %i.fp, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit124

bb.bm:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.9.sroa.0.0.copyload154 = load i8, ptr %i.ab, align 8
  %.sroa.9.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9.0..sroa_idx, i64 7, i1 false)
  %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9.sroa.9.sroa.9.0.copyload226 = load ptr, ptr %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.9.sroa.9.sroa.10.0.copyload233 = load i64, ptr %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.9.sroa.9.sroa.11.0.copyload240 = load i64, ptr %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.9.sroa.10.sroa.0.0.copyload365 = load i64, ptr %.sroa.9.sroa.10.0..sroa_idx, align 8
  %.sroa.9.sroa.10.sroa.9.0..sroa.9.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.10.sroa.9.0..sroa.9.sroa.10.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit133

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit133: ; preds = %bb.dh, %bb.df, %bb.dg, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.9.sroa.10.sroa.0.3 = phi i64 [ %.sroa.9.sroa.10.sroa.0.0.copyload365, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.13316.sroa.0.0.copyload, %bb.dh ], [ %.sroa.7351.sroa.12.0.copyload, %bb.df ], [ %.sroa.7351.sroa.12.0.copyload, %bb.dg ]
  %.sroa.9.sroa.9.sroa.11.3 = phi i64 [ %.sroa.9.sroa.9.sroa.11.0.copyload240, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10314.sroa.13.0.copyload, %bb.dh ], [ %.sroa.7351.sroa.10.0.copyload, %bb.df ], [ %.sroa.7351.sroa.10.0.copyload, %bb.dg ]
  %.sroa.9.sroa.9.sroa.10.3 = phi i64 [ %.sroa.9.sroa.9.sroa.10.0.copyload233, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10314.sroa.11.0.copyload, %bb.dh ], [ %.sroa.7351.sroa.8.0.copyload, %bb.df ], [ %.sroa.7351.sroa.8.0.copyload, %bb.dg ]
  %.sroa.9.sroa.9.sroa.9.3 = phi ptr [ %.sroa.9.sroa.9.sroa.9.0.copyload226, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.10314.sroa.8.0.copyload, %bb.dh ], [ %.sroa.7351.sroa.5.0.copyload, %bb.df ], [ %.sroa.7351.sroa.5.0.copyload, %bb.dg ]
  %.sroa.9.sroa.0.3 = phi i8 [ %.sroa.9.sroa.0.0.copyload154, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.0313.0.copyload, %bb.dh ], [ %.sroa.0350.0.copyload, %bb.df ], [ %.sroa.0350.0.copyload, %bb.dg ]
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 696
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %bb.ao unwind label %bb.cz

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit124: ; preds = %.body99, %bb.cu, %bb.cv, %bb.bl
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.bl ], [ %.pn18.pn, %bb.cv ], [ %.pn18.pn, %bb.cu ], [ %.pn21, %.body99 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 696
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft) #73
          to label %bb.ap unwind label %bb.t

bb.bn:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB2f_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3i_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace26describe_table_index_stats0s_0EB3k_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10270.sroa.0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13272.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10270.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13272.sroa.8)
  br label %bb.ao

bb.bo:                                            ; preds = %bb.bp
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val51 = load ptr, ptr %i.fv, align 16
  %.val52 = load ptr, ptr %i.fw, align 8, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtBW_6string6StringNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val51, ptr nonnull %.val52) #73
          to label %.body99 unwind label %bb.t

bb.bp:                                            ; preds = %bb.e, %bb.bh
  %.val54 = phi ptr [ %.val54.pre, %bb.e ], [ %i.fm, %bb.bh ]
  %.val53 = phi ptr [ %.val53.pre, %bb.e ], [ %i.fl, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.fw = getelementptr i8, ptr %1, i64 728       ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !invariant.load !416, !noalias !205105, !nonnull !416
  invoke void %i.fy(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.x, ptr noundef nonnull %.val53, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bo, !inline_history !357

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bp
  %i.fz = load i8, ptr %i.x, align 8, !range !422, !noundef !416 ; 3 uses
  %i.ga = icmp eq i8 %i.fz, -2
  br i1 %i.ga, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10314.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13316.sroa.8)
  br label %common.ret

bb.br:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0333, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx319, i64 7, i1 false)
  %.sroa.3.sroa.2334.0..sroa.3.0..sroa_idx319.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3.sroa.2334.0.copyload = load ptr, ptr %.sroa.3.sroa.2334.0..sroa.3.0..sroa_idx319.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3336.0..sroa.3.0..sroa_idx319.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3.sroa.3336.0.copyload = load i64, ptr %.sroa.3.sroa.3336.0..sroa.3.0..sroa_idx319.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4338.0..sroa.3.0..sroa_idx319.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.3.sroa.4338.0.copyload = load i64, ptr %.sroa.3.sroa.4338.0..sroa.3.0..sroa_idx319.sroa_idx, align 8 ; 2 uses
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4321, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4321.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val49 = load ptr, ptr %i.fv, align 16         ; 5 uses
  %.val50 = load ptr, ptr %i.fw, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.gb = load ptr, ptr %.val50, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i96, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  invoke void %i.gb(ptr noundef nonnull %.val49)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gc = getelementptr inbounds nuw i8, ptr %.val50, i64 8
end_hunk_2
