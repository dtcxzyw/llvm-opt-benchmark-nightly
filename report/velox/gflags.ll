Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gflags?download=true
inline.NumInlined: 1784
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_:bb.a

._crit_edge.thread.i54.i.i.i.i:                   ; preds = %._crit_edge.i45.i.i.i.i, %bb.au
  %.010.lcssa20.i55.i.i.i.i = phi ptr [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ], [ %i.dy, %bb.au ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %.val9.i56.i.i.i.i = load ptr, ptr %i.ge, align 8, !tbaa !150
  %i.gf = icmp eq ptr %.010.lcssa20.i55.i.i.i.i, %.val9.i56.i.i.i.i
  br i1 %i.gf, label %.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge.thread.i54.i.i.i.i
  %i.gg = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i55.i.i.i.i) #43 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !162
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i45.i.i.i.i
  %i.gh = phi ptr [ %.pre.i.i.i.i, %bb.av ], [ %i.gc, %._crit_edge.i45.i.i.i.i ]
  %.010.lcssa19.i46.i.i.i.i = phi ptr [ %.010.lcssa20.i55.i.i.i.i, %bb.av ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %.sroa.01.0.i47.i.i.i.i = phi ptr [ %i.gg, %bb.av ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %i.gi = icmp ult ptr %i.gh, %.val.val.i.i.i.i.i.i.i
  br i1 %i.gi, label %.thread.i.i.i, label %.thread13.i.i.i

bb.ax:                                            ; preds = %bb.ar, %bb.ak
  %.sroa.021.2.i.i.i.i = phi ptr [ null, %bb.ar ], [ %i.fc, %bb.ak ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.ft, %bb.ar ], [ %i.fc, %bb.ak ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i, label %.thread13.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ax, %bb.aw, %._crit_edge.thread.i54.i.i.i.i, %bb.at, %bb.ap, %._crit_edge.thread.i33.i.i.i.i, %bb.am, %bb.ai, %._crit_edge.thread.i.i.i.i.i, %bb.af
  %.sroa.12.2.i10.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %bb.ax ], [ %.010.lcssa19.i25.i.i.i.i, %bb.ap ], [ %.010.lcssa19.i.i.i.i.i, %bb.ai ], [ %spec.select22.i.i.i.i, %bb.am ], [ %.010.lcssa20.i55.i.i.i.i, %._crit_edge.thread.i54.i.i.i.i ], [ %.010.lcssa20.i34.i.i.i.i, %._crit_edge.thread.i33.i.i.i.i ], [ %.010.lcssa20.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select24.i.i.i.i, %bb.at ], [ %i.em, %bb.af ], [ %.010.lcssa19.i46.i.i.i.i, %bb.aw ] ; 3 uses
  %.sroa.021.2.i9.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.ax ], [ null, %bb.ap ], [ null, %bb.ai ], [ %spec.select.i.i.i.i, %bb.am ], [ null, %._crit_edge.thread.i54.i.i.i.i ], [ null, %._crit_edge.thread.i33.i.i.i.i ], [ null, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select23.i.i.i.i, %bb.at ], [ null, %bb.af ], [ null, %bb.aw ]
  %.not.i.i11.i.i.i = icmp ne ptr %.sroa.021.2.i9.i.i.i, null
  %i.gj = icmp eq ptr %.sroa.12.2.i10.i.i.i, %i.dy
  %or.cond.i.i.i.i.i = select i1 %.not.i.i11.i.i.i, i1 true, i1 %i.gj
  br i1 %or.cond.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i10.i.i.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !162
  %i.gm = icmp ult ptr %.val.val.i.i.i.i.i.i.i, %i.gl
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %i.gn = phi i1 [ %i.gm, %bb.ay ], [ true, %.thread.i.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gn, ptr noundef nonnull %i.eh, ptr noundef nonnull %.sroa.12.2.i10.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #42
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 88 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !152
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !152
  br label %_ZN6google12_GLOBAL__N_112FlagRegistry12RegisterFlagEPNS0_15CommandLineFlagE.exit

.thread13.i.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.aq, %bb.ap, %bb.ai
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.ax ], [ %.sroa.01.0.i26.i.i.i.i, %bb.ap ], [ %.sroa.01.0.i.i.i.i.i, %bb.ai ], [ %.sroa.01.0.i47.i.i.i.i, %bb.aw ], [ %.08.lcssa.i.i.i18.i.i, %bb.aq ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 48) #40
  br label %_ZN6google12_GLOBAL__N_112FlagRegistry12RegisterFlagEPNS0_15CommandLineFlagE.exit

_ZN6google12_GLOBAL__N_112FlagRegistry12RegisterFlagEPNS0_15CommandLineFlagE.exit: ; preds = %bb.ad, %bb.az, %.thread13.i.i.i
  %.sroa.016.0.i.i = phi ptr [ %.19.i.i.i.i20.i, %bb.ad ], [ %i.eh, %bb.az ], [ %.sroa.01.0.ph.i.i.i, %.thread13.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 40
  store ptr %i.b, ptr %i.gr, align 8, !tbaa !165
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2IiEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5IiEEPKcS3_S3_PT_S5_) align 2 personality ptr @__gxx_personality_v0 !guid !240 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2IjEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5IjEEPKcS3_S3_PT_S5_) align 2 personality ptr @__gxx_personality_v0 !guid !241 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 2, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 2, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2IlEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5IlEEPKcS3_S3_PT_S5_) align 2 personality ptr @__gxx_personality_v0 !guid !242 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 3, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 3, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2ImEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5ImEEPKcS3_S3_PT_S5_) align 2 personality ptr @__gxx_personality_v0 !guid !243 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 4, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 4, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5IdEEPKcS3_S3_PT_S5_) align 2 personality ptr @__gxx_personality_v0 !guid !244 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 5, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 5, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6google14FlagRegistererC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcS9_S9_PT_SB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat($_ZN6google14FlagRegistererC5INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcS9_S9_PT_SB_) align 2 personality ptr @__gxx_personality_v0 !guid !245 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 6, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 6, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !131
  tail call fastcc void @_ZN6google12_GLOBAL__N_123RegisterCommandLineFlagEPKcS2_S2_PNS0_9FlagValueES4_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.d)
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6google11GetAllFlagsEPSt6vectorINS_19CommandLineFlagInfoESaIS1_EE(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !guid !248 {
bb.a:
  %1 = alloca %"struct.google::CommandLineFlagInfo", align 8 ; 26 uses
  %i.a = load atomic i8, ptr @_ZGVZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEvE4lock acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !141

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEvE4lock) #42
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEvE4lock) #42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load ptr, ptr @_ZN6google12_GLOBAL__N_112FlagRegistry16global_registry_E, align 8, !tbaa !143 ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %bb.e, label %_ZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEv.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #41 ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !151
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.k, ptr %i.m, align 8, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.k, ptr %i.n, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %i.o, align 8, !tbaa !152
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i32 0, ptr %i.p, align 8, !tbaa !154
  store ptr %i.e, ptr @_ZN6google12_GLOBAL__N_112FlagRegistry16global_registry_E, align 8, !tbaa !143
  br label %_ZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEv.exit

_ZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.d, %bb.e
  %.val10.a = phi ptr [ %i.e, %bb.e ], [ %i.d, %bb.d ] ; 2 uses
  %2 = getelementptr i8, ptr %.val10.a, i64 24
  %.val10 = load ptr, ptr %2, align 8, !tbaa !150 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.a, i64 8 ; 2 uses
  %i.r = icmp eq ptr %.val10, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN6google19CommandLineFlagInfoD2Ev.exit, %_ZN6google12_GLOBAL__N_112FlagRegistry14GlobalRegistryEv.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !167   ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !167 ; 6 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS2_19FilenameFlagnameCmpEEvT_SA_T0_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = sdiv exact i64 %i.ar, 208
  %i.at = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = xor i64 %i.au, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_19FilenameFlagnameCmpEEEEvT_SD_T0_T1_(ptr %i.al, ptr %i.an, i64 noundef %i.av)
  %i.aw = icmp sgt i64 %i.ar, 3328
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 3328 ; 3 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_19FilenameFlagnameCmpEEEEvT_SD_T0_(ptr %i.al, ptr nonnull %i.ax)
  %i.ay = icmp eq ptr %i.ax, %i.an
  br i1 %i.ay, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS2_19FilenameFlagnameCmpEEvT_SA_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_19FilenameFlagnameCmpEEEEvT_T0_(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 208 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.an
  br i1 %i.ba, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS2_19FilenameFlagnameCmpEEvT_SA_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !246

bb.h:                                             ; preds = %bb.f
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_19FilenameFlagnameCmpEEEEvT_SD_T0_(ptr %i.al, ptr %i.an)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS2_19FilenameFlagnameCmpEEvT_SA_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google19CommandLineFlagInfoESt6vectorIS3_SaIS3_EEEENS2_19FilenameFlagnameCmpEEvT_SA_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %._crit_edge, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZN6google19CommandLineFlagInfoD2Ev.exit
  %.sroa.018.019 = phi ptr [ %.val10, %.lr.ph ], [ %i.cf, %_ZN6google19CommandLineFlagInfoD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  store ptr %i.s, ptr %1, align 8, !tbaa !168
  store i64 0, ptr %i.t, align 8, !tbaa !169
  store i8 0, ptr %i.s, align 8, !tbaa !125
  store ptr %i.v, ptr %i.u, align 8, !tbaa !168
  store i64 0, ptr %i.w, align 8, !tbaa !169
  store i8 0, ptr %i.v, align 8, !tbaa !125
  store ptr %i.y, ptr %i.x, align 8, !tbaa !168
  store i64 0, ptr %i.z, align 8, !tbaa !169
  store i8 0, ptr %i.y, align 8, !tbaa !125
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !168
  store i64 0, ptr %i.ac, align 8, !tbaa !169
  store i8 0, ptr %i.ab, align 8, !tbaa !125
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !168
  store i64 0, ptr %i.af, align 8, !tbaa !169
  store i8 0, ptr %i.ae, align 8, !tbaa !125
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !168
  store i64 0, ptr %i.ai, align 8, !tbaa !169
  store i8 0, ptr %i.ah, align 8, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.018.019, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !160
  invoke fastcc void @_ZN6google12_GLOBAL__N_115CommandLineFlag23FillCommandLineFlagInfoEPNS_19CommandLineFlagInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !171 ; 3 uses
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !172
  %.not.i14 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google19CommandLineFlagInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !171
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  store ptr %i.bg, ptr %i.aj, align 8, !tbaa !171
  br label %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.m

_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.l
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ah
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE9push_backERKS1_.exit
  %i.bj = load i64, ptr %i.ah, align 8, !tbaa !125
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ae
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.ae, align 8, !tbaa !125
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bp = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ab
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.br = load i64, ptr %i.ab, align 8, !tbaa !125
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !124 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.y
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.bv = load i64, ptr %i.y, align 8, !tbaa !125
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !124 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.v
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !125
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.cb = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.s
  br i1 %i.cc, label %_ZN6google19CommandLineFlagInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !125
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #40
  br label %_ZN6google19CommandLineFlagInfoD2Ev.exit

_ZN6google19CommandLineFlagInfoD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.019) #43 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.q
  br i1 %i.cg, label %._crit_edge, label %bb.i, !llvm.loop !247

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google19CommandLineFlagInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  resume { ptr, i32 } %i.ch
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google12_GLOBAL__N_115CommandLineFlag23FillCommandLineFlagInfoEPNS_19CommandLineFlagInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !249 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !134   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !169
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val) #42
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %.val, i64 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val10 = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.f = getelementptr i8, ptr %.val10, i64 8
  %.val10.val = load i8, ptr %i.f, align 8, !tbaa !130 ; 2 uses
  %i.g = icmp sgt i8 %.val10.val, 6
  %i.h = sext i8 %.val10.val to i64
  %i.i = mul nsw i64 %i.h, 7
  %i.j = getelementptr inbounds i8, ptr @_ZZNK6google12_GLOBAL__N_19FlagValue8TypeNameEvE5types, i64 %i.i
  %.0.i.i = select i1 %i.g, ptr @.str, ptr %i.j   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i) #42
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %.0.i.i, i64 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.p, align 8, !tbaa !135 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !169
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val11) #42
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull %.val11, i64 noundef %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.val12 = load ptr, ptr %i.v, align 8, !tbaa !139 ; 2 uses
  %.val12.val = load ptr, ptr %.val12, align 8
  %i.w = getelementptr i8, ptr %.val12, i64 8
  %.val12.val13 = load i8, ptr %i.w, align 8, !tbaa !130
  call fastcc void @_ZNK6google12_GLOBAL__N_19FlagValue8ToStringB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr readonly %.val12.val, i8 %.val12.val13)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = load ptr, ptr %2, align 8, !tbaa !124   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac                ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.ad, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.ad, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !169 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %.not21.i = icmp eq ptr %2, %i.x
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !173

bb.c:                                             ; preds = %bb.b
  switch i64 %i.af, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !125
  store i8 %i.ah, ptr %i.y, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

end_hunk_0
