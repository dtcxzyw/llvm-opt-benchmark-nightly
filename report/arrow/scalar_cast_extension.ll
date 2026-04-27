inline.NumInlined: 493
inline.NumDeleted: 293
begin_hunk_0_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  br label %bb.as

bb.d:                                             ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i, %.lr.ph.i
  %.sroa.026.034.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.ds, %_ZN5arrow7compute9InputTypeD2Ev.exit.i ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.026.034.i, align 4, !tbaa !43 ; 2 uses
  %i.ab = load ptr, ptr %8, align 16, !tbaa !49, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !40
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  invoke void @_ZNK5arrow9ArraySpan7ToArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.q)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %5, align 8, !tbaa !129    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !135
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.z = load ptr, ptr %5, align 8, !tbaa !129
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.at:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.fw = load ptr, ptr %4, align 16, !tbaa !73   ; 3 uses
  store ptr %i.fw, ptr %15, align 8, !tbaa !73
end_hunk_3
