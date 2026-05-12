inline.NumInlined: 1176
inline.NumDeleted: 734
begin_hunk_0_@_ZN6hermes2vm15NopCrashManagerD1Ev
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i7 = alloca { i64, i64 }, align 8  ; 4 uses
  %2 = alloca %"class.std::function.112", align 8 ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function.109", align 8 ; 9 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !101
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !198
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !101
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !101
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !101
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !198
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a

bb.j:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !101
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !101
  store <2 x ptr> %i.at, ptr %i.ax, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.k
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !101
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !198
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !101
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !101
  store <2 x ptr> %i.bd, ptr %i.bh, align 8, !tbaa !101
  %.not.i.i9 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.m
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm13RuntimeConfigC2ERKS1_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i7 = alloca { i64, i64 }, align 8  ; 4 uses
  %2 = alloca %"class.std::function.112", align 8 ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function.109", align 8 ; 9 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i, label %bb.b
end_hunk_8
begin_hunk_9_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !101
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !101  ; 2 uses
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !101
  store <2 x ptr> %i.l, ptr %i.n, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit, label %bb.c
end_hunk_9
begin_hunk_10_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.d
end_hunk_10
begin_hunk_11_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.d, %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit
  %i.aa = phi <2 x ptr> [ splat (ptr null), %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !101
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !101
  store <2 x ptr> %i.aa, ptr %i.ac, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit, label %bb.e
end_hunk_11
begin_hunk_12_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.not.i.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i, label %bb.f
end_hunk_12
begin_hunk_13_@_ZN6hermes2vm8GCConfigaSERKS1_:bb.a

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i: ; preds = %bb.f, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit
  %i.am = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !101
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !101
  store <2 x ptr> %i.am, ptr %i.ao, align 8, !tbaa !101
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSERKS6_.exit, label %bb.g
end_hunk_13
