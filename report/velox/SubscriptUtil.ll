Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SubscriptUtil?download=true
inline.NumInlined: 10385
inline.NumDeleted: 4577
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNK8facebook5velox9functions6detail12MapSubscript8applyMapERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxE:bb.a
  %i.xv = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit87.i
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.xv, ptr noundef nonnull align 8 dereferenceable(94) %i.xs, ptr noundef nonnull align 8 dereferenceable(38) %2, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit90.i unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit87.i
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xu) #31
  br label %.body88.i

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit90.i: ; preds = %bb.fc
  %i.xx = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.fe unwind label %bb.fv     ; 3 uses

bb.fe:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !960
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 48
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !164
  store ptr %i.xz, ptr %i.d, align 8, !tbaa !266, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !960
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 2 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !208 ; 2 uses
  %.not.i91.i = icmp eq ptr %i.yb, null
  br i1 %.not.i91.i, label %bb.ff, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit94.i

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.xx)
          to label %.noexc93.i unwind label %bb.fw

.noexc93.i:                                       ; preds = %bb.ff
  %.pre.i92.i = load ptr, ptr %i.ya, align 8, !tbaa !208
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit94.i

_ZNK8facebook5velox13DecodedVector7indicesEv.exit94.i: ; preds = %.noexc93.i, %bb.fe
  %i.yc = phi ptr [ %.pre.i92.i, %.noexc93.i ], [ %i.yb, %bb.fe ]
  store ptr %i.yc, ptr %i.e, align 8, !tbaa !260, !noalias !960
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vv, i64 120
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !268 ; 7 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vv, i64 104
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !269 ; 7 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.vv, i64 56
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !264
  %i.yj = icmp eq i32 %i.yi, 1
  br i1 %i.yj, label %bb.fg, label %bb.hn

bb.fg:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !960
  %i.yk = ptrtoint ptr %i.vg to i64
  store i64 %i.yk, ptr %17, align 8, !tbaa !270, !noalias !960
  %i.yl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.yl, align 8, !tbaa !280, !noalias !960
  %i.ym = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ym, i8 0, i64 16, i1 false), !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31, !noalias !960
  store ptr %17, ptr %i.f, align 8, !tbaa !282, !noalias !960
  br i1 %i.ui, label %bb.fh, label %.thread.i44

bb.fh:                                            ; preds = %bb.fg
  %i.yn = load ptr, ptr %i.ve, align 8, !tbaa !285, !noalias !960
  %.not.i = icmp eq ptr %i.yn, null
  br i1 %.not.i, label %bb.fi, label %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fi:                                            ; preds = %bb.fh
  %i.yo = load ptr, ptr %4, align 8, !tbaa !137, !noalias !960
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !235 ; 2 uses
  %i.yq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc95.i unwind label %bb.fx ; 8 uses

.noexc95.i:                                       ; preds = %bb.fi
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 1, ptr %i.yr, align 8, !tbaa !187, !noalias !962
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 12
  store i32 1, ptr %i.ys, align 4, !tbaa !188, !noalias !962
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableIvEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.yq, align 8, !tbaa !120, !noalias !962
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableIvEE, i64 16), ptr %i.yt, align 8, !tbaa !120, !noalias !962
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  store ptr %i.yp, ptr %i.yu, align 8, !tbaa !270, !noalias !962
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.yv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %bb.fj unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableIvEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !962 ; 5 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableIvEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc95.i
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yq, i64 noundef 40) #34, !noalias !962
  br label %.body96.i

bb.fj:                                            ; preds = %.noexc95.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yy = ptrtoint ptr %i.yp to i64
  store i64 %i.yy, ptr %i.yv, align 8, !tbaa !270, !noalias !964
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store ptr null, ptr %i.yz, align 8, !tbaa !291, !noalias !964
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.za, align 8, !tbaa !295, !noalias !964
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  store i64 0, ptr %i.zb, align 8, !tbaa !296, !noalias !964
  store ptr %i.yv, ptr %i.yx, align 8, !tbaa !298, !alias.scope !963, !noalias !962
  store ptr %i.yt, ptr %i.ve, align 8, !tbaa !299, !noalias !960
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !183, !noalias !960 ; 8 uses
  store ptr %i.yq, ptr %i.zc, align 8, !tbaa !183, !noalias !960
  %.not.i.i.i.i98.i = icmp eq ptr %i.zd, null
  br i1 %.not.i.i.i.i98.i, label %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8 ; 4 uses
  %i.zf = load atomic i64, ptr %i.ze acquire, align 8 ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 4294967297
  %i.zh = trunc i64 %i.zf to i32                  ; 2 uses
  br i1 %i.zg, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.ze, align 8, !tbaa !187
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  store i32 0, ptr %i.zi, align 4, !tbaa !188
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !120
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8
  call void %i.zl(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31, !inline_history !896
  %i.zm = load ptr, ptr %i.zd, align 8, !tbaa !120
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8
  call void %i.zo(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31, !inline_history !896
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fm:                                            ; preds = %bb.fk
  %i.zp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184, !noalias !960
  %.not.i.i.i.i.i.i104 = icmp eq i8 %i.zp, 0
  br i1 %.not.i.i.i.i.i.i104, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zq = add nsw i32 %i.zh, -1
  store i32 %i.zq, ptr %i.ze, align 8, !tbaa !185
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.zr = atomicrmw volatile add ptr %i.ze, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.zh, %bb.fn ], [ %i.zr, %bb.fo ]
  %i.zs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.zs, label %bb.fp, label %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !189

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fq:                                            ; preds = %bb.ep
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kn

bb.fr:                                            ; preds = %bb.er
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fs:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i34
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.ft:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.fu:                                            ; preds = %bb.fb
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.fv:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit90.i
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.fw:                                            ; preds = %bb.ff
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp266.i

bb.fx:                                            ; preds = %bb.fi
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fl, %bb.fj, %bb.fh
  %i.aab = load ptr, ptr %i.ve, align 8, !tbaa !285, !noalias !960 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !298 ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !296 ; 2 uses
  %i.aag = icmp ult i64 %i.aaf, 256
  br i1 %i.aag, label %.loopexit264.i, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.aah = and i64 %i.aaf, 255                    ; 3 uses
  %i.aai = shl nuw i64 1, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !295 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %bb.fy
  %.022.i30.i.i = phi i64 [ %i.aai, %bb.fy ], [ %i.abi, %bb.gc ]
  %.024.i29.i.i = phi i64 [ 0, %bb.fy ], [ %i.abj, %bb.gc ] ; 2 uses
  %i.aam = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i29.i.i, i64 range(i64 0, 256) %i.aah)
  %i.aan = getelementptr inbounds nuw [64 x i8], ptr %i.aak, i64 %i.aam ; 3 uses
  %i.aao = load <16 x i8>, ptr %i.aan, align 16   ; 2 uses
  %i.aap = icmp eq <16 x i8> %i.aao, splat (i8 -128)
  %i.aaq = bitcast <16 x i1> %i.aap to i16
  %i.aar = and i16 %i.aaq, 4095
  %i.aas = zext nneg i16 %i.aar to i32
  %i.aat = icmp ne ptr %i.aan, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aav = extractelement <16 x i8> %i.aao, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.ga, %bb.fz
  %.sroa.08.0.i.i = phi i32 [ %i.aas, %bb.fz ], [ %i.aay, %bb.ga ] ; 4 uses
  %.not.i100.i = icmp eq i32 %.sroa.08.0.i.i, 0
  br i1 %.not.i100.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.critedge.i.i.i
  %i.aaw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.08.0.i.i, i1 true)
  %i.aax = add nuw nsw i32 %.sroa.08.0.i.i, 4095
  %i.aay = and i32 %i.aax, %.sroa.08.0.i.i
  %i.aaz = zext nneg i32 %i.aaw to i64
  call void @llvm.assume(i1 %i.aat)
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aal, align 8, !tbaa !291
  %i.abc = load i32, ptr %i.aba, align 4, !tbaa !185
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [40 x i8], ptr %i.abb, i64 %i.abd
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !185
  %i.abg = icmp eq i32 %i.abf, 0
  br i1 %i.abg, label %_ZNK8facebook5velox9functions6detail11LookupTableIvE18containsMapAtIndexEi.exit.i, label %.critedge.i.i.i, !prof !121, !llvm.loop !2

bb.gb:                                            ; preds = %.critedge.i.i.i
  %i.abh = icmp eq i8 %i.aav, 0
  br i1 %i.abh, label %.loopexit264.i, label %bb.gc, !prof !121

bb.gc:                                            ; preds = %bb.gb
  %i.abi = add i64 %.022.i30.i.i, -1              ; 2 uses
  %i.abj = add i64 %.024.i29.i.i, 257
  %.not.i.i101.i = icmp eq i64 %i.abi, 0
  br i1 %.not.i.i101.i, label %.loopexit264.i, label %bb.fz, !llvm.loop !3

.loopexit264.i:                                   ; preds = %bb.gc, %bb.gb, %_ZNSt12__shared_ptrIN8facebook5velox9functions6detail11LookupTableIvEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !960
  store i32 0, ptr %i.a, align 4, !tbaa !185, !noalias !960
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !972, !nonnull !182, !align !244
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !973
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESH_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.303") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.aad, i64 0, i64 128, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(264) %i.abl)
          to label %_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i unwind label %bb.gd

_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i: ; preds = %.loopexit264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !960
  %.pre352.i = load ptr, ptr %i.aac, align 8, !tbaa !298 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre352.i, i64 24
  %.pre353.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !296
  %.phi.trans.insert354.i = getelementptr inbounds nuw i8, ptr %.pre352.i, i64 16
  %.pre355.i = load ptr, ptr %.phi.trans.insert354.i, align 8, !tbaa !295
  %.pre370.i = and i64 %.pre353.i, 255
  br label %_ZNK8facebook5velox9functions6detail11LookupTableIvE18containsMapAtIndexEi.exit.i

bb.gd:                                            ; preds = %.loopexit264.i
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

_ZNK8facebook5velox9functions6detail11LookupTableIvE18containsMapAtIndexEi.exit.i: ; preds = %bb.ga, %_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i
  %.pre-phi371.i = phi i64 [ %.pre370.i, %_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i ], [ %i.aah, %bb.ga ]
  %i.abn = phi ptr [ %.pre355.i, %_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i ], [ %i.aak, %bb.ga ]
  %i.abo = phi ptr [ %.pre352.i, %_ZNK8facebook5velox9functions6detail11LookupTableIvE16ensureMapAtIndexEi.exit.i ], [ %i.aad, %bb.ga ]
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gg, %_ZNK8facebook5velox9functions6detail11LookupTableIvE18containsMapAtIndexEi.exit.i
  %.024.i.i.i.i = phi i64 [ 0, %_ZNK8facebook5velox9functions6detail11LookupTableIvE18containsMapAtIndexEi.exit.i ], [ %i.ack, %bb.gg ] ; 2 uses
  %i.abq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i.i.i, i64 range(i64 0, 256) %.pre-phi371.i)
  %i.abr = getelementptr inbounds nuw [64 x i8], ptr %i.abn, i64 %i.abq ; 3 uses
  %i.abs = load <16 x i8>, ptr %i.abr, align 16
  %i.abt = icmp eq <16 x i8> %i.abs, splat (i8 -128)
  %i.abu = bitcast <16 x i1> %i.abt to i16
  %i.abv = and i16 %i.abu, 4095
  %i.abw = zext nneg i16 %i.abv to i32
  %i.abx = icmp ne ptr %i.abr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.gf, %bb.ge
  %.sroa.05.0.i.i = phi i32 [ %i.abw, %bb.ge ], [ %i.acb, %bb.gf ] ; 4 uses
  %.not.i104.i = icmp eq i32 %.sroa.05.0.i.i, 0
  br i1 %.not.i104.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %.critedge.i.i.i.i
  %i.abz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.05.0.i.i, i1 true)
  %i.aca = add nuw nsw i32 %.sroa.05.0.i.i, 4095
  %i.acb = and i32 %i.aca, %.sroa.05.0.i.i
  %i.acc = zext nneg i32 %i.abz to i64
  call void @llvm.assume(i1 %i.abx)
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.acc
  %i.ace = load ptr, ptr %i.abp, align 8, !tbaa !291
  %i.acf = load i32, ptr %i.acd, align 4, !tbaa !185
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [40 x i8], ptr %i.ace, i64 %i.acg ; 4 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !185
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %bb.gh, label %.critedge.i.i.i.i, !prof !121, !llvm.loop !2

bb.gg:                                            ; preds = %.critedge.i.i.i.i
  %i.ack = add i64 %.024.i.i.i.i, 257
  br label %bb.ge, !llvm.loop !3

bb.gh:                                            ; preds = %bb.gf
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 8 ; 2 uses
  store ptr %i.acl, ptr %i.f, align 8, !tbaa !282, !noalias !960
  %.phi.trans.insert356.i = getelementptr inbounds nuw i8, ptr %i.ach, i64 24 ; 2 uses
  %.pre357.i = load i64, ptr %.phi.trans.insert356.i, align 8, !tbaa !296
  %i.acm = icmp ult i64 %.pre357.i, 256
  br i1 %i.acm, label %..thread.i44_crit_edge, label %.loopexit263.i

..thread.i44_crit_edge:                           ; preds = %bb.gh
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !280
  br label %.thread.i44

.thread.i44:                                      ; preds = %..thread.i44_crit_edge, %bb.fg
  %i.acn = phi ptr [ %.pre163, %..thread.i44_crit_edge ], [ @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, %bb.fg ]
  %i.aco = phi ptr [ %.phi.trans.insert356.i, %..thread.i44_crit_edge ], [ %i.ym, %bb.fg ] ; 2 uses
  %i.acp = phi ptr [ %i.acl, %..thread.i44_crit_edge ], [ %17, %bb.fg ] ; 3 uses
  %i.acq = load i32, ptr %i.ye, align 4, !tbaa !185 ; 3 uses
  %i.acr = sitofp i32 %i.acq to double
  %i.acs = fmul nnan double %i.acr, 1.300000e+00
  %i.act = fptoui double %i.acs to i64            ; 6 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acn, i64 15
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !303
  %i.acx = icmp eq i8 %i.acw, -1
  br i1 %i.acx, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %.thread.i44
  %i.acy = icmp eq i64 %i.act, 0
  br i1 %i.acy, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE7reserveEm.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acz = icmp ult i64 %i.act, 15
  br i1 %i.acz, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i, label %bb.gk

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i: ; preds = %bb.gj
  %i.ada = shl nuw nsw i64 %i.act, 4
  %i.adb = add nuw nsw i64 %i.ada, 16
  %i.adc = trunc nuw nsw i64 %i.act to i8
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gj
  %i.add = add i64 %i.act, -1
  %i.ade = udiv i64 %i.add, 12
  %i.adf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ade, i1 true)
  %i.adg = sub nuw nsw i64 64, %i.adf             ; 3 uses
  %i.adh = shl i64 12, %i.adg
  %i.adi = icmp ugt i64 %i.adh, 72057594037927935
  br i1 %i.adi, label %bb.gl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
          to label %.noexc105.i unwind label %bb.go

.noexc105.i:                                      ; preds = %bb.gl
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i: ; preds = %bb.gk
  %i.adj = shl nuw nsw i64 1, %i.adg
  %i.adk = shl i64 256, %i.adg
  br label %bb.gm

bb.gm:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i
  %.0.pn.i19.i.i.i.i = phi i8 [ 12, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i ], [ %i.adc, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i ]
  %.pn21.i17.i.i.i.i = phi i64 [ %i.adj, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i ], [ 1, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i ] ; 4 uses
  %i.adl = phi i64 [ %i.adk, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i.i.i.i ], [ %i.adb, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i.i ]
  %i.adm = load ptr, ptr %i.acp, align 8, !tbaa !304 ; 2 uses
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !120
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 96
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = invoke noundef ptr %i.adp(ptr noundef nonnull align 8 dereferenceable(264) %i.adm, i64 noundef %i.adl, i64 0)
          to label %.lr.ph.i.i.i.i.i103.preheader unwind label %bb.go, !inline_history !899 ; 11 uses

.lr.ph.i.i.i.i.i103.preheader:                    ; preds = %bb.gm
  %xtraiter = and i64 %.pn21.i17.i.i.i.i, 7       ; 3 uses
  %i.adr = icmp samesign ult i64 %.pn21.i17.i.i.i.i, 8
  br i1 %i.adr, label %.lr.ph.i.i.i.i.i103.epil.preheader, label %.lr.ph.i.i.i.i.i103.preheader.new

.lr.ph.i.i.i.i.i103.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i103.preheader
  %unroll_iter = and i64 %.pn21.i17.i.i.i.i, 9223372036854775800
  br label %.lr.ph.i.i.i.i.i103

.lr.ph.i.i.i.i.i103:                              ; preds = %.lr.ph.i.i.i.i.i103, %.lr.ph.i.i.i.i.i103.preheader.new
  %.08.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i103.preheader.new ], [ %i.aeh, %.lr.ph.i.i.i.i.i103 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i103.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i103 ]
  %i.ads = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ads, i8 0, i64 16, i1 false)
  %i.adt = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.adu, i8 0, i64 16, i1 false)
  %i.adv = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.adw, i8 0, i64 16, i1 false)
  %i.adx = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ady, i8 0, i64 16, i1 false)
  %i.adz = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aea, i8 0, i64 16, i1 false)
  %i.aeb = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aec, i8 0, i64 16, i1 false)
  %i.aed = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 1536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aee, i8 0, i64 16, i1 false)
  %i.aef = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 1792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aeg, i8 0, i64 16, i1 false)
  %i.aeh = add nuw i64 %.08.i.i.i.i.i, 8          ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i103, !llvm.loop !4

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i103
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i103.epil.preheader

.lr.ph.i.i.i.i.i103.epil.preheader:               ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i103.preheader
  %.08.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i103.preheader ], [ %i.aeh, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.i.i.i.i103.epil

.lr.ph.i.i.i.i.i103.epil:                         ; preds = %.lr.ph.i.i.i.i.i103.epil, %.lr.ph.i.i.i.i.i103.epil.preheader
  %.08.i.i.i.i.i.epil = phi i64 [ %i.aej, %.lr.ph.i.i.i.i.i103.epil ], [ %.08.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i103.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i103.epil ], [ 0, %.lr.ph.i.i.i.i.i103.epil.preheader ]
  %i.aei = getelementptr inbounds nuw [256 x i8], ptr %i.adq, i64 %.08.i.i.i.i.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aei, i8 0, i64 16, i1 false)
  %i.aej = add nuw i64 %.08.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i103.epil, !llvm.loop !900

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i103.epil, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i.unr-lcssa
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adq, i64 14
  store i8 %.0.pn.i19.i.i.i.i, ptr %i.aek, align 2, !tbaa !309
  store ptr %i.adq, ptr %i.acu, align 8, !tbaa !280
  %i.ael = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.pn21.i17.i.i.i.i, i1 true)
  %i.aem = load i64, ptr %i.aco, align 8, !tbaa !296
  %i.aen = and i64 %i.aem, -256
  %i.aeo = or disjoint i64 %i.aen, %i.ael
  store i64 %i.aeo, ptr %i.aco, align 8, !tbaa !296
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE7reserveEm.exit.i

bb.gn:                                            ; preds = %.thread.i44
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(32) %i.acp, i64 noundef %i.act)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE7reserveEm.exit.i unwind label %bb.go

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE7reserveEm.exit.i: ; preds = %bb.gn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.i.i.i.i, %bb.gi
  %i.aep = icmp sgt i32 %i.acq, 0
  br i1 %i.aep, label %.lr.ph.i102, label %.loopexit263.i

.lr.ph.i102:                                      ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE7reserveEm.exit.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %18, i64 12
  br label %bb.gp

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gl
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

bb.gp:                                            ; preds = %bb.gq, %.lr.ph.i102
  %.0326.i = phi i32 [ 0, %.lr.ph.i102 ], [ %i.afh, %bb.gq ] ; 2 uses
  %i.aet = load i32, ptr %i.yg, align 4, !tbaa !185
  %i.aeu = add nsw i32 %i.aet, %.0326.i           ; 2 uses
  %i.aev = load ptr, ptr %i.f, align 8, !tbaa !282, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31, !noalias !960
  store ptr %i.xo, ptr %18, align 8, !tbaa !311, !noalias !960
  %i.aew = sext i32 %i.aeu to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.xr, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !185 ; 2 uses
  store i32 %i.aey, ptr %i.aeq, align 8, !tbaa !312, !noalias !960
  store i32 %i.aeu, ptr %i.aer, align 4, !tbaa !313, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !974
  %i.aez = load ptr, ptr %i.xo, align 8, !tbaa !120, !noalias !975
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 104
  %i.afb = load ptr, ptr %i.afa, align 8, !noalias !975
  %i.afc = invoke noundef i64 %i.afb(ptr noundef nonnull align 8 dereferenceable(94) %i.xo, i32 noundef %i.aey)
          to label %.noexc108.i unwind label %bb.gr, !inline_history !911 ; 2 uses

.noexc108.i:                                      ; preds = %bb.gp
  %i.afd = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.afc) ; 2 uses
  %i.afe = lshr i64 %i.afd, 24
  %i.aff = or i64 %i.afe, 128
  %i.afg = add i64 %i.afd, %i.afc
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESG_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1239") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.aev, i64 %i.afg, i64 %i.aff, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !960
  %i.afh = add nuw nsw i32 %.0326.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.afh, %i.acq
  br i1 %exitcond.not.i, label %.loopexit263.i, label %bb.gp, !llvm.loop !912

bb.gr:                                            ; preds = %.noexc108.i, %bb.gp
  %i.afi = landingpad { ptr, i32 }
end_hunk_0
