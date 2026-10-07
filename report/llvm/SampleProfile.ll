Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfile?download=true
inline.NumInlined: 13228
inline.NumDeleted: 6562
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm23SampleProfileLoaderPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  br i1 %i.iv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.it, align 8, !tbaa !330
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !331
  %i.iy = load ptr, ptr %i.iq, align 8, !tbaa !60
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #24, !inline_history !1005
  %i.jb = load ptr, ptr %i.iq, align 8, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #24, !inline_history !1005
  br label %_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !279
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.iw, %bb.af ], [ %i.jg, %bb.ag ]
  %i.jh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jh, label %bb.ah, label %_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i, !prof !332

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #24
  br label %_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i

_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad, %.critedge54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.ji = load ptr, ptr %54, align 8, !tbaa !333  ; 5 uses
  %.not.i74.i = icmp eq ptr %i.ji, null
  br i1 %.not.i74.i, label %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfileSymbolListESt14default_deleteIS2_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jj) #24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !336 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %_ZNKSt14default_deleteIN4llvm10sampleprof17ProfileSymbolListEEclEPS2_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !337
  %i.jp = zext i32 %i.jl to i64                   ; 2 uses
  %i.jq = shl nuw nsw i64 %i.jp, 4
  %i.jr = add nuw nsw i64 %i.jp, 31
  %i.js = lshr i64 %i.jr, 3
  %i.jt = and i64 %i.js, 1073741820
  %i.ju = add nuw nsw i64 %i.jt, %i.jq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jo, i64 noundef %i.ju, i64 noundef 8) #24
  br label %_ZNKSt14default_deleteIN4llvm10sampleprof17ProfileSymbolListEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm10sampleprof17ProfileSymbolListEEclEPS2_.exit.i.i: ; preds = %bb.aj, %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef 112) #25
  br label %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfileSymbolListESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm10sampleprof17ProfileSymbolListESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm10sampleprof17ProfileSymbolListEEclEPS2_.exit.i.i, %_ZNSt10shared_ptrIN4llvm10sampleprof17ProfileSymbolListEEaSIS2_St14default_deleteIS2_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS3_E4typeEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  %i.jv = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27DisableSampleLoaderInliningE, i64 8), align 8, !tbaa !1217
  %.not.i27 = icmp eq i16 %i.jv, 0
  br i1 %.not.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfileSymbolListESt14default_deleteIS2_EED2Ev.exit.i
  %i.jw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27DisableSampleLoaderInliningE, i64 120), align 8, !tbaa !265, !range !74, !noundef !75
  store i8 %i.jw, ptr %i.dy, align 1, !tbaa !267
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfileSymbolListESt14default_deleteIS2_EED2Ev.exit.i
  %i.jx = load i8, ptr %i.dz, align 2, !tbaa !1131, !range !74, !noundef !75
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jz = load ptr, ptr %i.ge, align 8, !tbaa !295 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 146
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !1218, !range !74, !noundef !75
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @_ZN4llvm10sampleprof16ProfileConverter14flattenProfileERNS0_16SampleProfileMapEb(ptr noundef nonnull align 8 dereferenceable(56) %i.ka, i1 noundef zeroext %i.kd)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ke = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28ProfileAccurateForSymsInListE, i64 120), align 8, !tbaa !265, !range !74, !noundef !75
  %i.kf = trunc nuw i8 %i.ke to i1
  %i.kg = load ptr, ptr %i.dv, align 8
  %.not216.i = icmp ne ptr %i.kg, null
  %or.cond.not = select i1 %i.kf, i1 %.not216.i, i1 false
  br i1 %or.cond.not, label %bb.ao, label %.critedge56.i

bb.ao:                                            ; preds = %bb.an
  %i.kh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21ProfileSampleAccurateE, i64 120), align 8, !tbaa !265, !range !74, !noundef !75 ; 2 uses
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = xor i8 %i.kh, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %65, i64 1544
  store i8 %i.kj, ptr %i.kk, align 8, !tbaa !346
  br i1 %i.ki, label %bb.bb, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %65, i64 1496 ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %65, i64 1508 ; 6 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !347
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !348 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %65, i64 1504
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !349 ; 2 uses
  %i.ks = zext i32 %i.kr to i64
  %.idx.i.i = shl nuw nsw i64 %i.ks, 3
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx.i.i
  %.not12.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not12.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.as, %bb.aq
  store i32 0, ptr %i.km, align 4, !tbaa !347
  br label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.as
  %.013.i.i = phi ptr [ %i.kx, %bb.as ], [ %i.kp, %bb.aq ] ; 3 uses
  %i.ku = load ptr, ptr %.013.i.i, align 8, !tbaa !351 ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ku, null
  br i1 %.not11.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !353
  %i.kw = add i64 %i.kv, 9
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, i64 noundef %i.kw, i64 noundef 8) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i.i
  store ptr null, ptr %.013.i.i, align 8, !tbaa !351
  %i.kx = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.kx, %i.kt
  br i1 %.not.i75.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i: ; preds = %._crit_edge.i.i, %bb.ap
  %i.ky = getelementptr inbounds nuw i8, ptr %65, i64 1536 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !354 ; 2 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i
  %i.lb = shl i32 %i.kz, 2
  %i.lc = getelementptr inbounds nuw i8, ptr %65, i64 1540
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !355 ; 3 uses
  %i.le = icmp ult i32 %i.lb, %i.ld
  %i.lf = icmp ugt i32 %i.ld, 64
  %or.cond.i.i.i = and i1 %i.le, %i.lf
  br i1 %or.cond.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i

bb.av:                                            ; preds = %bb.at
  %i.lg = getelementptr inbounds nuw i8, ptr %65, i64 1528
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !356
  %i.li = zext i32 %i.ld to i64
  %i.lj = add nuw nsw i64 %i.li, 31
  %i.lk = lshr i64 %i.lj, 3
  %i.ll = and i64 %i.lk, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.lh, i8 0, i64 %i.ll, i1 false)
  store i32 0, ptr %i.ky, align 8, !tbaa !354
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i: ; preds = %bb.av, %bb.au, %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.lm = load ptr, ptr %i.ge, align 8, !tbaa !295 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !60
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.579") align 8 %55, ptr noundef nonnull align 8 dereferenceable(190) %i.lm) #24, !inline_history !1004
  %i.lq = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples6UseMD5E, align 1, !tbaa !326, !range !74, !noundef !75
  %i.lr = trunc nuw i8 %i.lq to i1
  %.sroa.0.0.copyload.i76.i = load ptr, ptr %55, align 8 ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %55, i64 16
  %.sroa.0.0.copyload.i80.i = load ptr, ptr %i.ls, align 8 ; 5 uses
  %.not218223.i = icmp eq ptr %.sroa.0.0.copyload.i76.i, %.sroa.0.0.copyload.i80.i ; 2 uses
  br i1 %i.lr, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i
  br i1 %.not218223.i, label %.loopexit.i, label %.lr.ph225.i

.lr.ph225.i:                                      ; preds = %bb.aw
  %.sroa.2.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i77.i, align 8
  %i.lt = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.lt, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i: ; preds = %.lr.ph225.i, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i
  %.sroa.0184.0224.us.i = phi ptr [ %i.lv, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i ], [ %.sroa.0.0.copyload.i76.i, %.lr.ph225.i ] ; 2 uses
  %.0.copyload.i.i.pn.i.us.i = load i64, ptr %.sroa.0184.0224.us.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %.0.copyload.i.i.pn.i.us.i, ptr %i.f, align 8, !tbaa !124
  %i.lu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !1219 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0184.0224.us.i, i64 8 ; 2 uses
  %.not218.us.i = icmp eq ptr %i.lv, %.sroa.0.0.copyload.i80.i
  br i1 %.not218.us.i, label %.loopexit.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i: ; preds = %.lr.ph225.i, %_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i
  %.sroa.0184.0224.i = phi ptr [ %i.lx, %_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i ], [ %.sroa.0.0.copyload.i76.i, %.lr.ph225.i ] ; 3 uses
  %.sroa.0.0.copyload.i85.i = load ptr, ptr %.sroa.0184.0224.i, align 8, !tbaa !290 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0184.0224.i, i64 8
  %.0.copyload.i.i.pn.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %.not.i86.i = icmp eq ptr %.sroa.0.0.copyload.i85.i, null
  br i1 %.not.i86.i, label %_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %41) #24
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %41, ptr nonnull %.sroa.0.0.copyload.i85.i, i64 %.0.copyload.i.i.pn.i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %41, ptr noundef nonnull align 1 dereferenceable(16) %42) #24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %42, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i

_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i: ; preds = %bb.ax, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i
  %.0.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.ax ], [ %.0.copyload.i.i.pn.i.i, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i ]
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !124
  %i.lw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !1219 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0184.0224.i, i64 16 ; 2 uses
  %.not218.i = icmp eq ptr %i.lx, %.sroa.0.0.copyload.i80.i
  br i1 %.not218.i, label %.loopexit.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.i

bb.ay:                                            ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5clearEv.exit.i
  br i1 %.not218223.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay
  %.sroa.2.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.sroa.2.0.copyload.i89.i = load i8, ptr %.sroa.2.0..sroa_idx.i88.i, align 8
  %i.ly = trunc nuw i8 %.sroa.2.0.copyload.i89.i to i1
  br i1 %i.ly, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.us.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.i

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.us.i: ; preds = %.lr.ph.i, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i
  %.sroa.0171.0222.us.i = phi ptr [ %i.mk, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i ], [ %.sroa.0.0.copyload.i76.i, %.lr.ph.i ]
  %i.lz = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr null, i64 0) #24
  %i.ma = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kl, ptr null, i64 0, i32 noundef %i.lz) #24 ; 2 uses
  %i.mb = load ptr, ptr %i.kl, align 8, !tbaa !348
  %i.mc = zext i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.mc ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !351
  %.not.i.i.i.us.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.us.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us.i, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us.i: ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.us.i
  %i.mf = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 9, i64 noundef 8) #24 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i8 0, ptr %i.mg, align 1, !tbaa !69
  store i64 0, ptr %i.mf, align 8, !tbaa !353
  store ptr %i.mf, ptr %i.md, align 8, !tbaa !351
  %i.mh = load i32, ptr %i.km, align 4, !tbaa !347
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.km, align 4, !tbaa !347
  %i.mj = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kl, i32 noundef %i.ma) #24 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us.i, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.us.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0171.0222.us.i, i64 8 ; 2 uses
  %.not217.us.i = icmp eq ptr %i.mk, %.sroa.0.0.copyload.i80.i
  br i1 %.not217.us.i, label %.loopexit.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.us.i

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.i: ; preds = %.lr.ph.i, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i
  %.sroa.0171.0222.i = phi ptr [ %i.my, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i ], [ %.sroa.0.0.copyload.i76.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.copyload.i97.i = load ptr, ptr %.sroa.0171.0222.i, align 8, !tbaa !290 ; 4 uses
  %.sroa.3.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %.sroa.0171.0222.i, i64 8
  %.0.copyload.i.i.pn.i101.i = load i64, ptr %.sroa.3.0..sroa_idx.i98.i, align 8
  %.not.i104.i = icmp eq ptr %.sroa.0.0.copyload.i97.i, null
  %.sroa.4.0.i105.i = select i1 %.not.i104.i, i64 0, i64 %.0.copyload.i.i.pn.i101.i ; 7 uses
  %i.ml = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.copyload.i97.i, i64 %.sroa.4.0.i105.i) #24
  %i.mm = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kl, ptr %.sroa.0.0.copyload.i97.i, i64 %.sroa.4.0.i105.i, i32 noundef %i.ml) #24 ; 2 uses
  %i.mn = load ptr, ptr %i.kl, align 8, !tbaa !348
  %i.mo = zext i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mo ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !351
  %.not.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i, label %bb.az, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i

bb.az:                                            ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.i
  %i.mr = add i64 %.sroa.4.0.i105.i, 9
  %i.ms = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.mr, i64 noundef 8) #24 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %.not.i.i.i.i.i108.i = icmp eq i64 %.sroa.4.0.i105.i, 0
  br i1 %.not.i.i.i.i.i108.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mt, ptr align 1 %.sroa.0.0.copyload.i97.i, i64 %.sroa.4.0.i105.i, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ba, %bb.az
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.sroa.4.0.i105.i
  store i8 0, ptr %i.mu, align 1, !tbaa !69
  store i64 %.sroa.4.0.i105.i, ptr %i.ms, align 8, !tbaa !353
  store ptr %i.ms, ptr %i.mp, align 8, !tbaa !351
  %i.mv = load i32, ptr %i.km, align 4, !tbaa !347
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr %i.km, align 4, !tbaa !347
  %i.mx = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kl, i32 noundef %i.mm) #24 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.i
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0171.0222.i, i64 16 ; 2 uses
  %.not217.i = icmp eq ptr %i.my, %.sroa.0.0.copyload.i80.i
  br i1 %.not217.i, label %.loopexit.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit103.i

.loopexit.i:                                      ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us.i, %_ZNK4llvm10sampleprof10FunctionId11getHashCodeEv.exit.i, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us.i, %bb.ay, %bb.aw
  %i.mz = getelementptr inbounds nuw i8, ptr %65, i64 1064
  store i8 1, ptr %i.mz, align 8, !tbaa !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.bb

.critedge56.i:                                    ; preds = %bb.an
  %i.na = getelementptr inbounds nuw i8, ptr %65, i64 1544
  store i8 0, ptr %i.na, align 8, !tbaa !346
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge56.i, %.loopexit.i, %bb.ao
  %i.nb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileInlineReplayFileB5cxx11, i64 128), align 8, !tbaa !123 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  store ptr null, ptr %57, align 8, !tbaa !1221
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  %i.nd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileInlineReplayFileB5cxx11, i64 120), align 8, !tbaa !68
  store ptr %i.nd, ptr %58, align 8, !tbaa !1208
  %i.ne = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %i.nb, ptr %i.ne, align 8, !tbaa !278
  %i.nf = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24ProfileInlineReplayScope, i64 120), align 8, !tbaa !362
  store i32 %i.ng, ptr %i.nf, align 8, !tbaa !1224
  %i.nh = getelementptr inbounds nuw i8, ptr %58, i64 20
  %i.ni = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL27ProfileInlineReplayFallback, i64 120), align 8, !tbaa !369
  store i32 %i.ni, ptr %i.nh, align 4, !tbaa !1225
  %i.nj = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.nk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL25ProfileInlineReplayFormat, i64 120), align 8, !tbaa !374
  store i32 %i.nk, ptr %i.nj, align 8, !tbaa !1226
  %i.nl = load i32, ptr %i.dl, align 8, !tbaa !259
  %.sroa.0.0.insert.ext.i28 = zext i32 %i.nl to i64
  %.sroa.0.0.insert.insert.i29 = or disjoint i64 %.sroa.0.0.insert.ext.i28, 25769803776
  call void @_ZN4llvm22getReplayInlineAdvisorERNS_6ModuleERNS_15AnalysisManagerINS_8FunctionEJEEERNS_11LLVMContextESt10unique_ptrINS_13InlineAdvisorESt14default_deleteIS9_EERKNS_21ReplayInlinerSettingsEbNS_13InlineContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.375") align 8 %56, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr nofree noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(28) %58, i1 noundef zeroext false, i64 %.sroa.0.0.insert.insert.i29) #24
  %i.nm = load ptr, ptr %56, align 8, !tbaa !375
  store ptr null, ptr %56, align 8, !tbaa !375
  %i.nn = load ptr, ptr %i.ea, align 8, !tbaa !375 ; 3 uses
  store ptr %i.nm, ptr %i.ea, align 8, !tbaa !375
  %.not.i.i.i.i109.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i109.i, label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.bc
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !60
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(80) %i.nn) #24, !inline_history !1012
  %.pr.i = load ptr, ptr %56, align 8, !tbaa !375 ; 3 uses
  %.not.i110.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i110.i, label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EEaSEOS4_.exit.i
  %i.nr = load ptr, ptr %.pr.i, align 8, !tbaa !60
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(80) %.pr.i) #24, !inline_history !1013
  br label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  %i.nu = load ptr, ptr %57, align 8, !tbaa !375  ; 3 uses
  %.not.i111.i = icmp eq ptr %i.nu, null
  br i1 %.not.i111.i, label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit113.i, label %_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i112.i

_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i112.i: ; preds = %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !60
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(80) %i.nu) #24, !inline_history !1013
  br label %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit113.i

_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit113.i: ; preds = %_ZNKSt14default_deleteIN4llvm13InlineAdvisorEEclEPS1_.exit.i112.i, %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13InlineAdvisorESt14default_deleteIS1_EED2Ev.exit113.i, %bb.bb
  %i.ny = load ptr, ptr %i.ge, align 8, !tbaa !295 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 146
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !1218, !range !74, !noundef !75
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 147
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !1227, !range !74, !noundef !75
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.of = getelementptr inbounds nuw i8, ptr %i.ny, i64 145
  %i.og = load i8, ptr %i.of, align 1, !tbaa !1228, !range !74, !noundef !75
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.bg, label %_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEEaSIjEERiOT_.exit141.i

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.oi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 8), align 8, !tbaa !1217
  %.not42.i = icmp eq i16 %i.oi, 0
  br i1 %.not42.i, label %bb.bh, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 120), align 8, !tbaa !326
  %i.oj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i.i30 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.not.i.i30, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i:           ; preds = %bb.bh
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 176), align 8, !tbaa !1230
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i, %bb.bh, %bb.bg
  %i.ol = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 8), align 8, !tbaa !1217
  %.not43.i = icmp eq i16 %i.ol, 0
  br i1 %.not43.i, label %bb.bi, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i

bb.bi:                                            ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 120), align 8, !tbaa !326
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i114.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i.not.i114.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i115.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i115.i:        ; preds = %bb.bi
  %i.on = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 176), align 8, !tbaa !1230
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i115.i, %bb.bi, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i
  %i.oo = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 8), align 8, !tbaa !1217
  %.not44.i = icmp eq i16 %i.oo, 0
  br i1 %.not44.i, label %bb.bj, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i

bb.bj:                                            ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 120), align 8, !tbaa !326
  %i.op = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i117.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i.not.i117.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i118.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i118.i:        ; preds = %bb.bj
  %i.oq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 176), align 8, !tbaa !1230
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i118.i, %bb.bj, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit116.i
  %i.or = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 8), align 8, !tbaa !1217
  %.not45.i = icmp eq i16 %i.or, 0
  br i1 %.not45.i, label %bb.bk, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i

bb.bk:                                            ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 120), align 8, !tbaa !326
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i120.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.not.i120.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i121.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i121.i:        ; preds = %bb.bk
  %i.ot = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 176), align 8, !tbaa !1230
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17ProfileSizeInlineE, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i121.i, %bb.bk, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit119.i
  %i.ou = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 8), align 8, !tbaa !1217
  %.not46.i = icmp eq i16 %i.ou, 0
  br i1 %.not46.i, label %bb.bl, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i

bb.bl:                                            ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 120), align 8, !tbaa !326
  %i.ov = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i123.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.not.i123.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i124.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i124.i:        ; preds = %bb.bl
  %i.ow = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 176), align 8, !tbaa !1230
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL25CallsitePrioritizedInline, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i124.i, %bb.bl, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit122.i
  %i.ox = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 8), align 8, !tbaa !1217
  %.not47.i = icmp eq i16 %i.ox, 0
  br i1 %.not47.i, label %bb.bm, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit128.i

bb.bm:                                            ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 120), align 8, !tbaa !326
  %i.oy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 168), align 8, !tbaa !63
  %.not.i.i.not.i126.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.not.i126.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit128.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i127.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i127.i:        ; preds = %bb.bm
  %i.oz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 176), align 8, !tbaa !1230
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL20AllowRecursiveInline, i64 120)) #24, !inline_history !1014
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit128.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit128.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i127.i, %bb.bm, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit125.i
  %i.pa = load ptr, ptr %i.ge, align 8, !tbaa !295 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 147
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !1227, !range !74, !noundef !75
  %i.pd = trunc nuw i8 %i.pc to i1
end_hunk_0
