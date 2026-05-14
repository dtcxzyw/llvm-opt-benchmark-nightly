inline.NumInlined: 1651
inline.NumDeleted: 1097
begin_hunk_0_@_ZN6hermes2vm8GCConfig7Builder5buildEv:bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !4
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.j) ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !39
  br label %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %1, align 8, !tbaa !549    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !39
  br label %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit

_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.n = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !4
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %i.p)
  store i32 %i.q, ptr %i.o, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !56
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !101  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !550  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.w, ptr %i.a, align 8, !tbaa !132
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !101
  %i.z = load i64, ptr %i.a, align 8, !tbaa !132
  store i64 %i.z, ptr %i.t, align 8, !tbaa !87
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.t, %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !87
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !550
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !551
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !551
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 2) #20, !inline_history !552 ; 0 uses
  %i.ap = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !553
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !553
  br label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i

_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i:   ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load i32, ptr %i.ar, align 8
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i32 noundef 2) #20, !inline_history !554 ; 0 uses
  %i.az = load <2 x ptr>, ptr %i.au, align 8, !tbaa !553
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !553
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.i, %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.not.i7.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.not.i7.i, label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i32 noundef 2) #20, !inline_history !555 ; 0 uses
  %i.bg = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !553
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !553
  br label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit

_ZN6hermes2vm8GCConfigC2ERKS1_.exit:              ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, %bb.j
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamENS1_8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64) local_unnamed_addr #4

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvh21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN4llvh21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZN4llvh22EnablePrettyStackTraceEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.14", align 16 ; 9 uses
  %3 = alloca %"class.std::function.11", align 16 ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !101  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !550  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !87
  store i8 %i.l, ptr %i.c, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !550  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !550
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !87
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.a, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !550
  store i64 %i.s, ptr %i.q, align 8, !tbaa !550
  %i.t = load i64, ptr %i.g, align 8, !tbaa !87
  store i64 %i.t, ptr %i.d, align 8, !tbaa !87
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !87
  store ptr %i.f, ptr %i.a, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !550
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !550
  %i.y = load i64, ptr %i.g, align 8, !tbaa !87
  store i64 %i.y, ptr %i.d, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !101
  store i64 %i.u, ptr %i.g, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !550
  store i8 0, ptr %i.z, align 1, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !551
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !551
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !553
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !98
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !556
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %4, align 16, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !556
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !553
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !553 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 16, !tbaa !553
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !553
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #20, !inline_history !557 ; 0 uses
  br label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit

_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit:      ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = load i32, ptr %i.ap, align 8
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !553
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !98
  %.not.i.i.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %3, align 16, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 16, i1 false), !tbaa.struct !556
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ar, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !553
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !553 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 16, !tbaa !553
  store <2 x ptr> %i.at, ptr %i.ax, align 8, !tbaa !553
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #20, !inline_history !558 ; 0 uses
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !553
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !98
  %.not.i.i.not.i.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !556
  store <16 x i8> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.bb, align 8, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !553
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !553 ; 2 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 16, !tbaa !553
  store <2 x ptr> %i.bd, ptr %i.bh, align 8, !tbaa !553
  %.not.i.i9 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !559 ; 0 uses
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(269) %0, ptr noundef nonnull align 8 dereferenceable(269) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !56
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !550  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.g, ptr %i.a, align 8, !tbaa !132
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !101
  %i.j = load i64, ptr %i.a, align 8, !tbaa !132
  store i64 %i.j, ptr %i.d, align 8, !tbaa !87
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !87
  store i8 %i.l, ptr %i.k, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !550
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !551
  store i32 %i.s, ptr %i.q, align 8, !tbaa !551
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98   ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 2) #20, !inline_history !552 ; 0 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !553
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !553
  br label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i

_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i:   ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load i32, ptr %i.ab, align 8
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 2) #20, !inline_history !554 ; 0 uses
  %i.aj = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !553
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !553
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.f, %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.not.i7.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i7.i, label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 2) #20, !inline_history !555 ; 0 uses
  %i.aq = load <2 x ptr>, ptr %i.al, align 8, !tbaa !553
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !553
  br label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit

_ZN6hermes2vm8GCConfigC2ERKS1_.exit:              ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ar, ptr noundef nonnull align 8 dereferenceable(45) %i.as, i64 45, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !553
  store <2 x ptr> %i.ax, ptr %i.at, align 8, !tbaa !553
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm8GCConfigC2ERKS1_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !4
  br label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit: ; preds = %_ZN6hermes2vm8GCConfigC2ERKS1_.exit, %bb.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bd, ptr noundef nonnull align 8 dereferenceable(5) %i.be, i64 5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !560
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !560
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes2vm13RuntimeModule19createUninitializedERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS0_18RuntimeModuleFlagsEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress norecurse nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_19benchmarkERN6hermes2vm7RuntimeEddENK3$_0clERNS0_3hbc25BytecodeFunctionGeneratorEi"(ptr %.0.val, ptr %.8.val, ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
end_hunk_0
