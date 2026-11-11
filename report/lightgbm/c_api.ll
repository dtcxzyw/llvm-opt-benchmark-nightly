Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@LGBM_NetworkFree:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !63
  %i.t = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.s) #24 ; 0 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !66
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @__cxa_end_catch()
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable
}

declare void @_ZN8LightGBM7Network7DisposeEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @LGBM_NetworkInitWithFunctions(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8LightGBM7Network4InitEiiPFvPciiPKiS3_iS1_iRKPFvPKcS1_iiEEPFvS1_iS3_S3_iS1_iE(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.j unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #24, !inline_history !0
  %i.l = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.k) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #24
  %i.o = icmp eq i32 %i.d, %i.n
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.c) #24
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.r = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.q) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %4, align 8, !tbaa !63
  %i.u = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.t) #24 ; 0 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !66
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ab

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #40
  unreachable
}

declare void @_ZN8LightGBM7Network4InitEiiPFvPciiPKiS3_iS1_iRKPFvPKcS1_iiEEPFvS1_iS3_S3_iS1_iE(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @LGBM_SetMaxThreads(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %. = select i1 %i.a, i32 -1, i32 %0
  store i32 %., ptr @LGBM_MAX_NUM_THREADS, align 4, !tbaa !103
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @LGBM_GetMaxThreads(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #33 {
bb.a:
  %i.a = load i32, ptr @LGBM_MAX_NUM_THREADS, align 4, !tbaa !103
  store i32 %i.a, ptr %0, align 4, !tbaa !103
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.a = load i32, ptr %2, align 4, !tbaa !103, !noalias !1708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.b = load i32, ptr %1, align 8, !tbaa !1711, !noalias !1712 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1712
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc8.i.i.i

.noexc8.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43, !noalias !1712 ; 8 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 3 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !126, !noalias !1712
  %i.h = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.i = add nsw i64 %i.c, -1                     ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !126, !noalias !1712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc8.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.h, %.noexc8.i.i.i ], [ %i.k, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.pr.i.i.i = load i32, ptr %1, align 8, !tbaa !1711, !noalias !1712 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1713, !noalias !1712
  %3 = sext i32 %.pr.i.i.i to i64
  %i.n = sext i32 %i.a to i64
  %i.o = mul nsw i64 %3, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pr.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load = load <2 x float>, ptr %i.r, align 4, !tbaa !288, !noalias !1712
  %wide.load3 = load <2 x float>, ptr %i.s, align 4, !tbaa !288, !noalias !1712
  %i.t = fpext <2 x float> %wide.load to <2 x double>
  %i.u = fpext <2 x float> %wide.load3 to <2 x double>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.t, ptr %i.v, align 8, !tbaa !126, !noalias !1712
  store <2 x double> %i.u, ptr %i.w, align 8, !tbaa !126, !noalias !1712
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !288, !noalias !1712
  %i.aa = fpext float %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !126, !noalias !1712
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !1705

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i22.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.09.021.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.f, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i ]
  %.sroa.12.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.g, %middle.block ], [ %i.g, %.lr.ph.i.i.i ]
  store ptr %.sroa.09.021.i.i.i, ptr %0, align 8, !tbaa !186, !alias.scope !1712
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i22.i.i.i, ptr %i.ac, align 8, !tbaa !289, !alias.scope !1712
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.020.i.i.i, ptr %i.ad, align 8, !tbaa !187, !alias.scope !1712
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1714
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE0_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !68     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.b = load i32, ptr %2, align 4, !tbaa !103, !noalias !1726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1729, !noalias !1730 ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1730
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc7.i.i.i

.noexc7.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.f = shl nuw nsw i64 %i.d, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43, !noalias !1730 ; 13 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d ; 4 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !126, !noalias !1730
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %i.j = add nsw i64 %i.d, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !126, !noalias !1730
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.i, %.noexc7.i.i.i ], [ %i.l, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.pr.i.i.i = load i32, ptr %i.a, align 8, !tbaa !1729, !noalias !1730 ; 3 uses
  %i.m = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1731, !noalias !1730
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1732, !noalias !1730 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 5 uses
  %i.s = sext i32 %i.b to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.o, i64 %i.s ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %.pr.i.i.i, 3
  %ident.check.not = icmp eq i32 %i.q, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %wide.load = load <2 x float>, ptr %i.t, align 4, !tbaa !288, !noalias !1730
  %wide.load3 = load <2 x float>, ptr %i.u, align 4, !tbaa !288, !noalias !1730
  %i.v = fpext <2 x float> %wide.load to <2 x double>
  %i.w = fpext <2 x float> %wide.load3 to <2 x double>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !126, !noalias !1730
  store <2 x double> %i.w, ptr %i.y, align 8, !tbaa !126, !noalias !1730
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = mul nsw i64 %indvars.iv.i.i.i.prol, %i.r
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.aa
  %i.ab = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !288, !noalias !1730
  %i.ac = fpext float %i.ab to double
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i.prol
  store double %i.ac, ptr %i.ad, align 8, !tbaa !126, !noalias !1730
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1722

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = mul nsw i64 %indvars.iv.i.i.i, %i.r
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ag
  %i.ah = load float, ptr %gep.i.i.i, align 4, !tbaa !288, !noalias !1730
  %i.ai = fpext float %i.ah to double
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  store double %i.ai, ptr %i.aj, align 8, !tbaa !126, !noalias !1730
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = mul nsw i64 %indvars.iv.next.i.i.i, %i.r
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ak
  %i.al = load float, ptr %gep.i.i.i.1, align 4, !tbaa !288, !noalias !1730
  %i.am = fpext float %i.al to double
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i
  store double %i.am, ptr %i.an, align 8, !tbaa !126, !noalias !1730
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = mul nsw i64 %indvars.iv.next.i.i.i.1, %i.r
  %gep.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ao
  %i.ap = load float, ptr %gep.i.i.i.2, align 4, !tbaa !288, !noalias !1730
  %i.aq = fpext float %i.ap to double
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.1
  store double %i.aq, ptr %i.ar, align 8, !tbaa !126, !noalias !1730
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = mul nsw i64 %indvars.iv.next.i.i.i.2, %i.r
  %gep.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.as
  %i.at = load float, ptr %gep.i.i.i.3, align 4, !tbaa !288, !noalias !1730
  %i.au = fpext float %i.at to double
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.2
  store double %i.au, ptr %i.av, align 8, !tbaa !126, !noalias !1730
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph, !llvm.loop !1723

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i21.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph.prol.loopexit ]
  %.sroa.08.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ], [ %i.g, %scalar.ph.prol.loopexit ]
  %.sroa.12.019.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.h, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.h, %middle.block ], [ %i.h, %scalar.ph ], [ %i.h, %scalar.ph.prol.loopexit ]
  store ptr %.sroa.08.020.i.i.i, ptr %0, align 8, !tbaa !186, !alias.scope !1730
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i21.i.i.i, ptr %i.aw, align 8, !tbaa !289, !alias.scope !1730
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.019.i.i.i, ptr %i.ax, align 8, !tbaa !187, !alias.scope !1730
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !68
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !1733
  store ptr %i.c, ptr %0, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #39
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %i.a = load i32, ptr %2, align 4, !tbaa !103, !noalias !1744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.b = load i32, ptr %1, align 8, !tbaa !1747, !noalias !1748 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1748
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc8.i.i.i

.noexc8.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43, !noalias !1748 ; 8 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 3 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !126, !noalias !1748
  %i.h = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.i = add nsw i64 %i.c, -1                     ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !126, !noalias !1748
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc8.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.h, %.noexc8.i.i.i ], [ %i.k, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.pr.i.i.i = load i32, ptr %1, align 8, !tbaa !1747, !noalias !1748 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1749, !noalias !1748
  %3 = sext i32 %.pr.i.i.i to i64
  %i.n = sext i32 %i.a to i64
  %i.o = mul nsw i64 %3, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pr.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !126, !noalias !1748
  %wide.load3 = load <2 x double>, ptr %i.s, align 8, !tbaa !126, !noalias !1748
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load, ptr %i.t, align 8, !tbaa !126, !noalias !1748
  store <2 x double> %wide.load3, ptr %i.u, align 8, !tbaa !126, !noalias !1748
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !126, !noalias !1748
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i
  store double %i.x, ptr %i.y, align 8, !tbaa !126, !noalias !1748
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !1741

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i22.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.09.021.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.f, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i ]
  %.sroa.12.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.g, %middle.block ], [ %i.g, %.lr.ph.i.i.i ]
  store ptr %.sroa.09.021.i.i.i, ptr %0, align 8, !tbaa !186, !alias.scope !1748
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i22.i.i.i, ptr %i.z, align 8, !tbaa !289, !alias.scope !1748
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.020.i.i.i, ptr %i.aa, align 8, !tbaa !187, !alias.scope !1748
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1750
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE0_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !68     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.b = load i32, ptr %2, align 4, !tbaa !103, !noalias !1762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1765, !noalias !1766 ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1766
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc7.i.i.i

.noexc7.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.f = shl nuw nsw i64 %i.d, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43, !noalias !1766 ; 13 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d ; 4 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !126, !noalias !1766
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %i.j = add nsw i64 %i.d, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !126, !noalias !1766
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.i, %.noexc7.i.i.i ], [ %i.l, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.pr.i.i.i = load i32, ptr %i.a, align 8, !tbaa !1765, !noalias !1766 ; 3 uses
  %i.m = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1767, !noalias !1766
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1768, !noalias !1766 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 5 uses
  %i.s = sext i32 %i.b to i64
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.o, i64 %i.s ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %.pr.i.i.i, 3
  %ident.check.not = icmp eq i32 %i.q, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !126, !noalias !1766
  %wide.load3 = load <2 x double>, ptr %i.u, align 8, !tbaa !126, !noalias !1766
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %wide.load, ptr %i.v, align 8, !tbaa !126, !noalias !1766
  store <2 x double> %wide.load3, ptr %i.w, align 8, !tbaa !126, !noalias !1766
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = mul nsw i64 %indvars.iv.i.i.i.prol, %i.r
  %gep.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.y
  %i.z = load double, ptr %gep.i.i.i.prol, align 8, !tbaa !126, !noalias !1766
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i.prol
  store double %i.z, ptr %i.aa, align 8, !tbaa !126, !noalias !1766
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1758

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = mul nsw i64 %indvars.iv.i.i.i, %i.r
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.ad
  %i.ae = load double, ptr %gep.i.i.i, align 8, !tbaa !126, !noalias !1766
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !126, !noalias !1766
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv.next.i.i.i, %i.r
  %gep.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.ag
  %i.ah = load double, ptr %gep.i.i.i.1, align 8, !tbaa !126, !noalias !1766
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i
  store double %i.ah, ptr %i.ai, align 8, !tbaa !126, !noalias !1766
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = mul nsw i64 %indvars.iv.next.i.i.i.1, %i.r
  %gep.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.aj
  %i.ak = load double, ptr %gep.i.i.i.2, align 8, !tbaa !126, !noalias !1766
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.1
  store double %i.ak, ptr %i.al, align 8, !tbaa !126, !noalias !1766
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = mul nsw i64 %indvars.iv.next.i.i.i.2, %i.r
  %gep.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.am
  %i.an = load double, ptr %gep.i.i.i.3, align 8, !tbaa !126, !noalias !1766
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.2
  store double %i.an, ptr %i.ao, align 8, !tbaa !126, !noalias !1766
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph, !llvm.loop !1759

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i21.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph.prol.loopexit ]
  %.sroa.08.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ], [ %i.g, %scalar.ph.prol.loopexit ]
  %.sroa.12.019.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.h, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.h, %middle.block ], [ %i.h, %scalar.ph ], [ %i.h, %scalar.ph.prol.loopexit ]
  store ptr %.sroa.08.020.i.i.i, ptr %0, align 8, !tbaa !186, !alias.scope !1766
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i21.i.i.i, ptr %i.ap, align 8, !tbaa !289, !alias.scope !1766
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.019.i.i.i, ptr %i.aq, align 8, !tbaa !187, !alias.scope !1766
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
end_hunk_0
