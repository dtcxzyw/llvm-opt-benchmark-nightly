begin_hunk_0
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
begin_hunk_1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !98
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !191
end_hunk_1
begin_hunk_2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !98
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !98
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i
end_hunk_2
begin_hunk_3
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !98
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !191
end_hunk_3
begin_hunk_4

bb.j:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !98
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !98
  store <2 x ptr> %i.at, ptr %i.ax, align 8, !tbaa !98
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.k
end_hunk_4
begin_hunk_5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !98
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !191
end_hunk_5
begin_hunk_6

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !98
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !98 ; 2 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !98
  store <2 x ptr> %i.bd, ptr %i.bh, align 8, !tbaa !98
  %.not.i.i9 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.m
end_hunk_6
begin_hunk_7
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
begin_hunk_8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i, label %bb.b
end_hunk_8
begin_hunk_9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2) #21 ; 0 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !98
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %5 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !98
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !98   ; 2 uses
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !98
  store <2 x ptr> %5, ptr %i.m, align 8, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit, label %bb.c
end_hunk_9
begin_hunk_10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.d
end_hunk_10
begin_hunk_11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 2) #21 ; 0 uses
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !tbaa !98
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.d, %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit
  %6 = phi <2 x ptr> [ zeroinitializer, %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !98
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !98 ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !98
  store <2 x ptr> %6, ptr %i.aa, align 8, !tbaa !98
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit, label %bb.e
end_hunk_11
begin_hunk_12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i, label %bb.f
end_hunk_12
begin_hunk_13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ai = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 2) #21 ; 0 uses
  %i.aj = load <2 x ptr>, ptr %i.af, align 8, !tbaa !98
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i: ; preds = %bb.f, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit
  %7 = phi <2 x ptr> [ zeroinitializer, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit ], [ %i.aj, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !98
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !98 ; 2 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !98
  store <2 x ptr> %7, ptr %i.al, align 8, !tbaa !98
  %.not.i.i9 = icmp eq ptr %i.an, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSERKS6_.exit, label %bb.g
end_hunk_13
