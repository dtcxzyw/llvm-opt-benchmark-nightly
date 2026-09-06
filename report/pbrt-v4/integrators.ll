Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEEZNS0_19ImageTileIntegrator6RenderEvE3$_4E9_M_invokeERKSt9_Any_dataOS2_":bb.a
  %.sroa.031.049.i.i.i = phi i64 [ %.val2, %.lr.ph51.i.i.i ], [ %.sroa.031.1.i.i.i, %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i ] ; 6 uses
  call void @_ZN4pbrt21StatsReportPixelStartENS_6Point2IiEE(i64 %.sroa.031.049.i.i.i)
  store i64 %.sroa.031.049.i.i.i, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !2705, !nonnull !137, !align !637
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49 ; 2 uses
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !2704, !nonnull !137, !align !637
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i

_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i:        ; preds = %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, %bb.c
  call void @_ZN4pbrt19StatsReportPixelEndENS_6Point2IiEE(i64 %.sroa.031.049.i.i.i)
  %i.av = add nsw i32 %.sroa.031.0.extract.trunc50.i.i.i, 1 ; 2 uses
  %.sroa.031.0.insert.ext.i.i.i = zext i32 %i.av to i64
  %.sroa.031.0.insert.mask.i.i.i = and i64 %.sroa.031.049.i.i.i, -4294967296 ; 2 uses
  %.sroa.031.0.insert.insert.i.i.i = or disjoint i64 %.sroa.031.0.insert.mask.i.i.i, %.sroa.031.0.insert.ext.i.i.i
  %i.aw = icmp eq i32 %i.av, %.sroa.7.8.extract.trunc.i.i.i
  %.sroa.031.4.insert.insert.i.reass.i.i = add i64 %invariant.op.i.i, %.sroa.031.0.insert.mask.i.i.i
  %.sroa.031.1.i.i.i = select i1 %i.aw, i64 %.sroa.031.4.insert.insert.i.reass.i.i, i64 %.sroa.031.0.insert.insert.i.i.i ; 3 uses
  %.sroa.031.0.extract.trunc.i.i.i = trunc i64 %.sroa.031.1.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.031.0.extract.trunc.i.i.i
  %.sroa.031.4.extract.shift.i.i.i = lshr i64 %.sroa.031.1.i.i.i, 32
  %.sroa.031.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.031.4.extract.shift.i.i.i to i32
  %i.ax = icmp ne i32 %i.k, %.sroa.031.4.extract.trunc.i.i.i
  %i.ay = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i
  %.044.i.i.i = phi i32 [ %i.bt, %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i ], [ %i.ar, %bb.c ] ; 4 uses
  store i32 %.044.i.i.i, ptr %i.o, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.031.049.i.i.i, ptr %2, align 8
  store i32 %.044.i.i.i, ptr %i.a, align 4, !tbaa !49
  store i32 0, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %2, ptr %3, align 8, !tbaa !91
  store ptr %i.a, ptr %i.p, align 8, !tbaa !74
  store ptr %i.b, ptr %i.q, align 8, !tbaa !74
  %i.az = load i64, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.ba = and i64 %i.az, 144115188075855871
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = lshr i64 %i.az, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.bb, i32 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !53
  store i64 %i.bf, ptr %4, align 8, !tbaa !53
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 %.sroa.031.049.i.i.i, i32 noundef %.044.i.i.i, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr noundef nonnull align 64 dereferenceable(40) %i.g), !inline_history !2696
  %.sroa.07.010.i.i.i.i = load ptr, ptr %i.r, align 16, !tbaa !86 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %.sroa.07.010.i.i.i.i, %i.r
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 16, !tbaa !86
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.010.i.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.r
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 32) #39
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i
  %.sroa.07.012.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i ], [ %.sroa.07.010.i.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i, i64 16
  %i.bm = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #38 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !217 ; 2 uses
  %.not.i.i5.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !218
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.bp, i64 noundef 64), !inline_history !2697
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i.i = load ptr, ptr %.sroa.07.012.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i, %i.r
  br i1 %.not.i30.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i.i.i.i
  store <2 x ptr> %i.v, ptr %i.r, align 16, !tbaa !734
  store i64 0, ptr %i.s, align 32, !tbaa !87
  store i32 0, ptr %i.t, align 4, !tbaa !84
  %i.bt = add nsw i32 %.044.i.i.i, 1              ; 2 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !2704, !nonnull !137, !align !637
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !49
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i.i, label %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i, !llvm.loop !2698

"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_4JNS0_7Bounds2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEEZNS0_19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4", ptr %0, align 8, !tbaa !719
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !165
  store ptr %.val, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !2706
  store ptr %i.a, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !165 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #39
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 64 dereferenceable(40) ptr @_ZN4pbrt11ThreadLocalINS_13ScratchBufferEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pbrt::ScratchBuffer", align 64 ; 12 uses
  %3 = alloca %"struct.pbrt::ThreadLocal<pbrt::ScratchBuffer>::Entry", align 64 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.c = tail call i64 @pthread_self() #44
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !211
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 192
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !211  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 192                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 1, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.x, ptr %i.b, align 8, !tbaa !145
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #41
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.194, i32 noundef 72, ptr noundef nonnull @.str.185, ptr noundef nonnull align 1 dereferenceable(8) @.str.195, ptr noundef nonnull align 1 dereferenceable(17) @.str.196, ptr noundef nonnull align 1 dereferenceable(8) @.str.195, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.196, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #41
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02850 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 4 uses
  %indvars62 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.z = zext i32 %.02850 to i64                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [192 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load i8, ptr %i.ab, align 64, !tbaa !214, !range !136, !noundef !137
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 64, !tbaa !145
  %i.ae = icmp eq i64 %.sroa.03.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit37, label %bb.r

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit37: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ag = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  %i.ah = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38
  %i.ai = icmp eq i32 %i.ah, 35
  br i1 %i.ai, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #41
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95, !noalias !2712
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFN4pbrt13ScratchBufferEvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #41, !noalias !2712
  unreachable

_ZNKSt8functionIFN4pbrt13ScratchBufferEvEEclEv.exit: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97, !noalias !2712
  call void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::ScratchBuffer") align 64 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al), !inline_history !2709
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !211 ; 4 uses
  %i.ap = getelementptr inbounds nuw [192 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load i8, ptr %i.aq, align 64, !tbaa !214, !range !136, !noundef !137
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNKSt8functionIFN4pbrt13ScratchBufferEvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 192               ; 2 uses
  %.rhs.trunc40 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.130 = phi i32 [ %i.az, %bb.k ], [ %indvars62, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02850, %.preheader ]
  %i.ay = add i32 %.1, %.130                      ; 3 uses
  %i.az = add nuw nsw i32 %.130, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc40           ; 2 uses
  %.pre67 = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre67, %bb.j ], [ %i.ba, %bb.i ]
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [192 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = load i8, ptr %i.bd, align 64, !tbaa !214, !range !136, !noundef !137
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %.loopexit, !llvm.loop !2710

.loopexit:                                        ; preds = %bb.k, %_ZNKSt8functionIFN4pbrt13ScratchBufferEvEEclEv.exit
  %.3 = phi i32 [ %.02850, %_ZNKSt8functionIFN4pbrt13ScratchBufferEvEEclEv.exit ], [ %.2, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.bg = load i64, ptr %1, align 8, !tbaa !145   ; 2 uses
  store i64 %i.bg, ptr %3, align 64, !tbaa !145
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.bm = load ptr, ptr %2, align 64, !tbaa !82   ; 2 uses
  store ptr %i.bm, ptr %i.bh, align 64, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load <2 x i32>, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  store <2 x i32> %i.bo, ptr %i.bi, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !85
  store ptr %i.bj, ptr %i.bj, align 16, !tbaa !86
  store i64 0, ptr %i.bl, align 32, !tbaa !87
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !86 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bp
  br i1 %i.br, label %_ZN4pbrt13ScratchBufferC2EOS0_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  store ptr %i.bq, ptr %i.bj, align 16, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !85
  store ptr %i.bj, ptr %i.bt, align 8, !tbaa !86
  %i.bu = load ptr, ptr %i.bj, align 16, !tbaa !86 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bj, ptr %i.bv, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 32, !tbaa !87
  store i64 %i.bx, ptr %i.bl, align 32, !tbaa !87
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !85
  store ptr %i.bp, ptr %i.bp, align 16, !tbaa !86
  store i64 0, ptr %i.bw, align 32, !tbaa !87
  br label %_ZN4pbrt13ScratchBufferC2EOS0_.exit

_ZN4pbrt13ScratchBufferC2EOS0_.exit:              ; preds = %.loopexit, %bb.l
  %i.by = phi ptr [ %i.bj, %.loopexit ], [ %i.bu, %bb.l ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) %2, i8 0, i64 16, i1 false)
  %i.bz = zext i32 %.3 to i64                     ; 2 uses
  %i.ca = getelementptr inbounds nuw [192 x i8], ptr %i.ao, i64 %i.bz ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 128 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 64, !tbaa !214, !range !136, !noundef !137
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5resetEv.exit.i

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i: ; preds = %_ZN4pbrt13ScratchBufferC2EOS0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  call void @_ZN4pbrt13ScratchBufferD2Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.ce) #38
  store i8 0, ptr %i.cb, align 64, !tbaa !214
  %.pre = load i64, ptr %3, align 64, !tbaa !145
  %.pre63 = load ptr, ptr %i.bh, align 64, !tbaa !82
  %i.cf = load <2 x i32>, ptr %i.bi, align 8, !tbaa !49
  %.pre66 = load ptr, ptr %i.bj, align 16, !tbaa !86
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5resetEv.exit.i

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5resetEv.exit.i: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i, %_ZN4pbrt13ScratchBufferC2EOS0_.exit
  %i.cg = phi ptr [ %.pre66, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i ], [ %i.by, %_ZN4pbrt13ScratchBufferC2EOS0_.exit ] ; 2 uses
  %i.ch = phi ptr [ %.pre63, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i ], [ %i.bm, %_ZN4pbrt13ScratchBufferC2EOS0_.exit ]
  %i.ci = phi i64 [ %.pre, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i ], [ %i.bg, %_ZN4pbrt13ScratchBufferC2EOS0_.exit ]
  %i.cj = phi <2 x i32> [ %i.cf, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5valueEv.exit.i.i ], [ %i.bo, %_ZN4pbrt13ScratchBufferC2EOS0_.exit ]
  store i64 %i.ci, ptr %i.ca, align 64, !tbaa !145
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 88 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 96 ; 2 uses
  store ptr %i.ch, ptr %i.ck, align 64, !tbaa !82
  store <2 x i32> %i.cj, ptr %i.cl, align 8, !tbaa !49
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !85
  store ptr %i.cm, ptr %i.cm, align 16, !tbaa !86
  store i64 0, ptr %i.co, align 32, !tbaa !87
  %i.cp = icmp eq ptr %i.cg, %i.bj
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5resetEv.exit.i
  store ptr %i.cg, ptr %i.cm, align 16, !tbaa !86
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !85
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !86
  %i.cr = load ptr, ptr %i.cm, align 16, !tbaa !86
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cm, ptr %i.cs, align 8, !tbaa !85
  %i.ct = load i64, ptr %i.bl, align 32, !tbaa !87
  store i64 %i.ct, ptr %i.co, align 32, !tbaa !87
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !85
  store ptr %i.bj, ptr %i.bj, align 16, !tbaa !86
  store i64 0, ptr %i.bl, align 32, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEE5resetEv.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) %i.bh, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cb, align 64, !tbaa !214
  call void @_ZN4pbrt13ScratchBufferD2Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.bh) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !211
  %i.cv = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.bz ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.cx = load i8, ptr %i.cw, align 64, !tbaa !214, !range !136, !noundef !137
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cz = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  call void @_ZN4pbrt13ScratchBufferD2Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13ScratchBufferD2Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.da

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit
  %i.db = add i32 %.02850, %indvars62             ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.dc = zext i32 %i.db to i64
  %.not35 = icmp ugt i64 %i.x, %i.dc
  br i1 %.not35, label %_ZNSt12shared_mutex11lock_sharedEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = urem i32 %i.db, %.rhs.trunc
  br label %_ZNSt12shared_mutex11lock_sharedEv.exit

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.s, %bb.r
  %.4 = phi i32 [ %i.dd, %bb.s ], [ %i.db, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.de = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.de, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.x, ptr %i.b, align 8, !tbaa !145
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !2711

bb.t:                                             ; preds = %bb.p, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit37
  %.pn36 = phi ptr [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_13ScratchBufferEE5EntryEEptEv.exit37 ], [ %i.cv, %bb.p ]
  %.027 = getelementptr inbounds nuw i8, ptr %.pn36, i64 64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret ptr %.027
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalINS_7SamplerEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pbrt::Sampler", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.c = tail call i64 @pthread_self() #44
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !207
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !207  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 1, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.x, ptr %i.b, align 8, !tbaa !145
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #41
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.194, i32 noundef 72, ptr noundef nonnull @.str.185, ptr noundef nonnull align 1 dereferenceable(8) @.str.195, ptr noundef nonnull align 1 dereferenceable(17) @.str.196, ptr noundef nonnull align 1 dereferenceable(8) @.str.195, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.196, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #41
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02445 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 3 uses
  %indvars57 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.z = zext i32 %.02445 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !2719, !range !136, !noundef !137
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.02.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !145
  %i.ae = icmp eq i64 %.sroa.02.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit31, label %bb.l

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit31: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ag = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  %i.ah = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38
  %i.ai = icmp eq i32 %i.ah, 35
  br i1 %i.ai, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #41
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95, !noalias !2720
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFN4pbrt7SamplerEvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #41, !noalias !2720
  unreachable

_ZNKSt8functionIFN4pbrt7SamplerEvEEclEv.exit:     ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101, !noalias !2720
  call void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Sampler") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al), !inline_history !2715
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !207 ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !2719, !range !136, !noundef !137
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit32

.preheader:                                       ; preds = %_ZNKSt8functionIFN4pbrt7SamplerEvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %.rhs.trunc35 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.126 = phi i32 [ %i.az, %bb.k ], [ %indvars57, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02445, %.preheader ]
  %i.ay = add i32 %.1, %.126                      ; 3 uses
  %i.az = add nuw nsw i32 %.126, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc35           ; 2 uses
  %.pre = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !2719, !range !136, !noundef !137
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit32, !llvm.loop !2716

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit32: ; preds = %bb.k, %_ZNKSt8functionIFN4pbrt7SamplerEvEEclEv.exit
  %.pre-phi58 = phi i64 [ %i.z, %_ZNKSt8functionIFN4pbrt7SamplerEvEEclEv.exit ], [ %.pre-phi, %bb.k ]
  %i.bg = load i64, ptr %1, align 8, !tbaa !145
  %i.bh = load i64, ptr %2, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi58 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !145
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !53
  store i8 1, ptr %i.bj, align 8, !tbaa !2719
  %i.bl = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.n

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit
  %i.bm = add i32 %.02445, %indvars57             ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %.not30 = icmp ugt i64 %i.x, %i.bn
  br i1 %.not30, label %_ZNSt12shared_mutex11lock_sharedEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = urem i32 %i.bm, %.rhs.trunc
  br label %_ZNSt12shared_mutex11lock_sharedEv.exit

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.bo, %bb.m ], [ %i.bm, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.bp = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.x, ptr %i.b, align 8, !tbaa !145
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !2717

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit32, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit31
  %.pn = phi ptr [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit31 ], [ %i.bi, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7SamplerEE5EntryEEptEv.exit32 ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret ptr %.0
}

declare void @_ZN4pbrt21StatsReportPixelStartENS_6Point2IiEE(i64) local_unnamed_addr #1

declare void @_ZN4pbrt19StatsReportPixelEndENS_6Point2IiEE(i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !43, !alias.scope !2723
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !46, !alias.scope !2723
  store i8 0, ptr %i.a, align 8, !tbaa !47, !alias.scope !2723
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJRA17_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !2723 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !47, !alias.scope !2723
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #39
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !48    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !47
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %common.resume
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #30

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJRA17_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(17) %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 42, i64 noundef 0) #38
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 115, i64 noundef 0) #38
  %.not21 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 100, i64 noundef 0) #38
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i64 %i.d, -1
  br i1 %.not22, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.i = load ptr, ptr %8, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !43, !alias.scope !2734
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !46, !alias.scope !2734
  store i8 0, ptr %i.j, align 8, !tbaa !47, !alias.scope !2734
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !657, !noalias !2734 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2734 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !658, !noalias !2734 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %11, align 8, !tbaa !48, !alias.scope !2734 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #38, !noalias !2735
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ae, ptr %10, align 8, !tbaa !43, !alias.scope !2735
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !46, !alias.scope !2735
  store i8 0, ptr %i.ae, align 8, !tbaa !47, !alias.scope !2735
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !2735
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #38 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !46, !alias.scope !2735
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #42
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !2735 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body31, label %.body31.sink.split
end_hunk_0
