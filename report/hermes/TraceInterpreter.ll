begin_hunk_0
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfig7Builder6updateERKS2_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::GCConfig::Builder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i43 = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function.4", align 8   ; 14 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function.1", align 8   ; 14 uses
  %.sroa.0.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 14 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.hermes::vm::GCTripwireConfig", align 8 ; 5 uses
end_hunk_0
begin_hunk_1
  store i32 %i.cv, ptr %i.db, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_1
begin_hunk_2
  store i32 %.pre, ptr %i.dn, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i: ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread, %bb.af, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  %i.dp = phi ptr [ %i.dc, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.do, %bb.af ], [ %i.do, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dq = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dl, %bb.af ], [ %i.dl, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dr = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dm, %bb.af ], [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !203 ; 3 uses
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !203
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !203
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !203
end_hunk_2
begin_hunk_3
_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i

bb.at:                                            ; preds = %bb.as
end_hunk_3
begin_hunk_4
  store ptr %i.fy, ptr %i.fk, align 8, !tbaa !148, !alias.scope !411
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i38 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.not.i.i.i38, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread, %bb.ax, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit
  %i.ga = phi ptr [ %i.fo, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.fz, %bb.ax ], [ %i.fz, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %i.gb = phi ptr [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.fy, %bb.ax ], [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %i.gc = phi ptr [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.fx, %bb.ax ], [ %i.fx, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !203 ; 3 uses
  store ptr %i.gf, ptr %i.gd, align 8, !tbaa !203
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !203
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !203
end_hunk_4
begin_hunk_5
_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i

bb.bd:                                            ; preds = %bb.bc
end_hunk_5
begin_hunk_6
  store ptr %i.hh, ptr %i.gt, align 8, !tbaa !148, !alias.scope !416
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i44 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.not.i.i.i44, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread, %bb.bh, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit
  %i.hj = phi ptr [ %i.gx, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hi, %bb.bh ], [ %i.hi, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %i.hk = phi ptr [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hh, %bb.bh ], [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %i.hl = phi ptr [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hg, %bb.bh ], [ %i.hg, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i43)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i43, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i43)
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !203 ; 3 uses
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !203
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !203
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !203
end_hunk_6
begin_hunk_7
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i7 = alloca { i64, i64 }, align 8  ; 4 uses
  %2 = alloca %"class.std::function.4", align 8   ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function.1", align 8   ; 9 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
end_hunk_7
begin_hunk_8
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !396
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !203
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !148
end_hunk_8
begin_hunk_9

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !398
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !203 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !203
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !203
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i
end_hunk_9
begin_hunk_10
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !203
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !148
end_hunk_10
begin_hunk_11

bb.k:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.k, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !203
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !203 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !203
  store <2 x ptr> %i.av, ptr %i.az, align 8, !tbaa !203
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.l
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !203
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !148
end_hunk_12
begin_hunk_13

bb.n:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.n, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !203
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !203 ; 2 uses
  store <2 x ptr> %i.bm, ptr %i.bk, align 8, !tbaa !203
  store <2 x ptr> %i.bh, ptr %i.bl, align 8, !tbaa !203
  %.not.i.i9 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.o
end_hunk_13
