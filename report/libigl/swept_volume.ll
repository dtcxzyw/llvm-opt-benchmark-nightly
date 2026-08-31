Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/swept_volume?download=true
inline.NumInlined: 803
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_:bb.a
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.i.preheader44:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !11
  %i.ba = fsub double %i.az, %i.ag
  store double %i.ba, ptr %i.ay, align 8, !tbaa !11
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.aj
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !33

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !25
  %i.be = fsub <2 x double> %i.bd, %i.ao
  store <2 x double> %i.be, ptr %i.bc, align 16, !tbaa !25
  %i.bf = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.al
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  %i.bh = load i32, ptr %10, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35
  invoke void @_ZN3igl14marching_cubesIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEjjjNS7_6ScalarERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %11, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.bm = load ptr, ptr %12, align 8, !tbaa !26
  call void @free(ptr noundef %i.bm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.bn = load ptr, ptr %11, align 8, !tbaa !36
  call void @free(ptr noundef %i.bn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %.not.i34 = icmp eq ptr %i.bp, null
  br i1 %.not.i34, label %_ZNSt14_Function_baseD2Ev.exit35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit35 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit35:                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.loopexit, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %12, align 8, !tbaa !26
  call void @free(ptr noundef %i.bv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.m ], [ %i.bt, %bb.l ]
  %i.bw = load ptr, ptr %11, align 8, !tbaa !36
  call void @free(ptr noundef %i.bw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit35
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %_ZNSt14_Function_baseD2Ev.exit35 ], [ %.pn.pn.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl25swept_volume_bounding_boxERKmRKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEmdEES1_RNS3_10AlignedBoxIdLi3EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @_ZN3igl10voxel_gridIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN3igl28swept_volume_signed_distanceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEERKmS4_RKNS1_IiLi1ELi3ELi1ELi1ELi3EEEddRNS1_IdLin1ELi1ELi0ELin1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(12), double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl14marching_cubesIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEjjjNS7_6ScalarERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEmdEZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS5_RS8_E3$_0E9_M_invokeERKSt9_Any_dataOmOd"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.57") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i = alloca [4 x double], align 16 ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Transform", align 16 ; 11 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !tbaa !39 ; 3 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !9
  %.val5 = load double, ptr %3, align 8, !tbaa !11
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !36, !noalias !40
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val6 = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.d = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %.val4 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11, !noalias !55 ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.val.val6
  %i.g = load double, ptr %i.f, align 8, !tbaa !11, !noalias !55
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %.val.val6, 4
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  store double %.val5, ptr %i.a, align 8, !tbaa !11, !noalias !56
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24, !noalias !56
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #13, !noalias !56
  unreachable

"_ZSt10__invoke_rIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %bb.a
  %.sroa.08.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.e, i64 0 ; 2 uses
  %.sroa.08.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.08.0.vec.insert.i.i.i, double %i.g, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !56
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %4, ptr noundef nonnull align 8 dereferenceable(32) %.val3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !55, !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store <2 x double> %.sroa.08.8.vec.insert.i.i.i, ptr %.sroa.0.i.i.i.i.i, align 16, !tbaa !25, !noalias !62
  %i.n = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.i, i64 0
  %.sroa.0.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 16
  store <2 x double> %i.n, ptr %.sroa.0.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx10, align 16, !tbaa !11, !noalias !62
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !25, !noalias !62
  %i.p = shufflevector <2 x double> %.sroa.08.0.vec.insert.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !25, !noalias !62
  %.sroa.0.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 8
  %.sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i.i.i.i = load <2 x double>, ptr %.sroa.0.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !62 ; 2 uses
  %i.t = shufflevector <2 x double> %.sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fadd <2 x double> %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load <2 x double>, ptr %i.w, align 16, !tbaa !25, !noalias !62
  %.sroa.0.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 16
  %.sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i.i.i.i = load <2 x double>, ptr %.sroa.0.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !62 ; 3 uses
  %i.y = shufflevector <2 x double> %.sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.x, %i.y
  %i.aa = fadd <2 x double> %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !25, !noalias !62
  %i.ad = shufflevector <2 x double> %.sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = fmul <2 x double> %i.ac, %i.ad
  %i.af = fadd <2 x double> %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %5 = load <2 x double>, ptr %i.ag, align 16, !tbaa !25, !noalias !62
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %6 = load <2 x double>, ptr %i.ah, align 16, !tbaa !25, !noalias !62
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  %7 = load <2 x double>, ptr %i.ai, align 16, !tbaa !25, !noalias !62
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %9 = load <2 x double>, ptr %8, align 16, !tbaa !25, !noalias !62
  %10 = extractelement <2 x double> %5, i64 0
  %i.aj = fmul double %i.e, %10
  %11 = extractelement <2 x double> %.sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i.i.i.i, i64 0
  %i.ak = extractelement <2 x double> %6, i64 0
  %i.al = fmul double %11, %i.ak
  %i.am = fadd double %i.aj, %i.al
  %12 = shufflevector <2 x double> %7, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %13 = fmul <2 x double> %.sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i.i.i.i, %12 ; 2 uses
  %i.an = extractelement <2 x double> %13, i64 0
  %14 = fadd double %i.am, %i.an
  %15 = extractelement <2 x double> %13, i64 1
  %.sroa.4.16.vec.extract.i.i.i.i.i = fadd double %15, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !25, !alias.scope !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.4.16.vec.extract.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !11, !alias.scope !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEmdEZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS5_RS8_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS2_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_E3$_0", ptr %0, align 8, !tbaa !67
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS2_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !69
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS2_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !70
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS2_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS2_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!14, !10, i64 8}
!14 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !15, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"p1 double", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !16, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSt8functionIFN5Eigen9TransformIdLi3ELi2ELi0EEEdEE", !16, i64 0}
!21 = !{!22, !16, i64 24}
!22 = !{!"_ZTSSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEmdEE", !23, i64 0, !16, i64 24}
!23 = !{!"_ZTSSt14_Function_base", !7, i64 0, !16, i64 16}
!24 = !{!23, !16, i64 16}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !15, i64 0}
!27 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !15, i64 0, !10, i64 8}
!28 = !{!27, !10, i64 8}
!29 = distinct !{!29, !30, !31, !32}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !30, !32, !31}
!34 = distinct !{!34, !30}
!35 = !{!6, !6, i64 0}
!36 = !{!14, !15, i64 0}
!37 = !{!38, !18, i64 0}
!38 = !{!"_ZTSZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_E3$_0", !18, i64 0, !20, i64 8}
!39 = !{!38, !20, i64 8}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!42 = distinct !{!42, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!43 = distinct !{!43, !44, !"_ZZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_ENK3$_0clEmd: argument 0"}
!44 = distinct !{!44, !"_ZZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_ENK3$_0clEmd"}
!45 = !{!43}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZSt10__invoke_rIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_: argument 0"}
!48 = distinct !{!48, !"_ZSt10__invoke_rIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt13__invoke_implIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!51 = distinct !{!51, !"_ZSt13__invoke_implIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERZN3igl12swept_volumeERKNS1_IdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS4_RS7_E3$_0JmdEET_St14__invoke_otherOT0_DpOT1_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_ENK3$_0clEmd: argument 0"}
!54 = distinct !{!54, !"_ZZN3igl12swept_volumeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKSt8functionIFNS0_9TransformIdLi3ELi2ELi0EEEdEEmmmRS2_RS5_ENK3$_0clEmd"}
!55 = !{!53, !50, !47}
!56 = !{!57, !53, !50, !47}
!57 = distinct !{!57, !58, !"_ZNKSt8functionIFN5Eigen9TransformIdLi3ELi2ELi0EEEdEEclEd: argument 0"}
!58 = distinct !{!58, !"_ZNKSt8functionIFN5Eigen9TransformIdLi3ELi2ELi0EEEdEEclEd"}
!59 = !{!60, !16, i64 24}
!60 = !{!"_ZTSSt8functionIFN5Eigen9TransformIdLi3ELi2ELi0EEEdEE", !23, i64 0, !16, i64 24}
!61 = distinct !{null, null, null, null}
!62 = !{!63, !65, !53, !50, !47}
!63 = distinct !{!63, !64, !"_ZN5Eigen8internal28transform_right_product_implINS_9TransformIdLi3ELi2ELi0EEENS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi2ELi1EE3runERKS3_RKS5_: argument 0"}
!64 = distinct !{!64, !"_ZN5Eigen8internal28transform_right_product_implINS_9TransformIdLi3ELi2ELi0EEENS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi2ELi1EE3runERKS3_RKS5_"}
!65 = distinct !{!65, !66, !"_ZNK5Eigen9TransformIdLi3ELi2ELi0EEmlINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS_8internal28transform_right_product_implIS1_T_XquLNS5_16transform_traitsIS1_EUt_E0ELi0EqueqcvisrS7_17RowsAtCompileTimecviLSA_4ELi1ELi2EEXsrS7_17ColsAtCompileTimeEE10ResultTypeERKNS_9EigenBaseIS7_EE: argument 0"}
!66 = distinct !{!66, !"_ZNK5Eigen9TransformIdLi3ELi2ELi0EEmlINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS_8internal28transform_right_product_implIS1_T_XquLNS5_16transform_traitsIS1_EUt_E0ELi0EqueqcvisrS7_17RowsAtCompileTimecviLSA_4ELi1ELi2EEXsrS7_17ColsAtCompileTimeEE10ResultTypeERKNS_9EigenBaseIS7_EE"}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSSt9type_info", !16, i64 0}
!69 = !{!16, !16, i64 0}
!70 = !{i64 0, i64 8, !17, i64 8, i64 8, !19}
end_hunk_0
