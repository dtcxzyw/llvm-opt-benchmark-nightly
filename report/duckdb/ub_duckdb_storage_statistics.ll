inline.NumInlined: 3702
inline.NumDeleted: 1232
begin_hunk_0_@_ZN6duckdb11StructStats15PushdownExtractERKNS_14BaseStatisticsERKNS_12StorageIndexE:bb.a
  tail call void @_ZNK6duckdb14BaseStatistics15PushdownExtractERKNS_12StorageIndexE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12VariantStats15PushdownExtractERKNS_14BaseStatisticsERKNS_12StorageIndexE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::optional_ptr", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::VariantPathComponent", align 8 ; 8 uses
  tail call fastcc void @_ZN6duckdbL13AssertVariantERKNS_14BaseStatisticsE(ptr noundef nonnull readonly align 8 dereferenceable(128) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call fastcc void @_ZN6duckdbL13AssertVariantERKNS_14BaseStatisticsE(ptr noundef nonnull readonly align 8 dereferenceable(128) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !116
  %i.h = tail call fastcc noundef zeroext i1 @_ZN6duckdbL19CanUseShreddedStatsENS_12optional_ptrIKNS_14BaseStatisticsELb1EEE(ptr nonnull %i.g)
  br i1 %i.h, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %_ZN6duckdb20VariantPathComponentD2Ev.exit
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb12StorageIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i8 1, ptr %4, align 8, !tbaa !118
  store ptr %i.j, ptr %i.i, align 8, !tbaa !121
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.o, ptr %i.a, align 8, !tbaa !123
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !105
  %i.r = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.r, ptr %i.j, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.e
  %i.s = phi ptr [ %i.q, %.noexc.i.i ], [ %i.j, %bb.e ] ; 2 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !43
  store i8 %i.t, ptr %i.s, align 1, !tbaa !43
  br label %_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  store i64 %i.u, ptr %i.k, align 8, !tbaa !122
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZNK6duckdb12optional_ptrIKNS_14BaseStatisticsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !116
  %i.y = invoke ptr @_ZN6duckdb20VariantShreddedStats14FindChildStatsERKNS_14BaseStatisticsERKNS_20VariantPathComponentE(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef nonnull align 8 dereferenceable(44) %4)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.y, ptr %3, align 8, !tbaa !34
  %i.z = invoke fastcc noundef zeroext i1 @_ZN6duckdbL19CanUseShreddedStatsENS_12optional_ptrIKNS_14BaseStatisticsELb1EEE(ptr %i.y)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.z, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %bb.p

bb.l:                                             ; preds = %_ZN6duckdb20VariantPathComponentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.n, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.ac = invoke noundef zeroext i1 @_ZNK6duckdb12StorageIndex11HasChildrenEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %. = select i1 %i.ac, i32 0, i32 3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ %., %bb.o ]
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j
  br i1 %i.ae, label %_ZN6duckdb20VariantPathComponentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %_ZN6duckdb20VariantPathComponentD2Ev.exit

_ZN6duckdb20VariantPathComponentD2Ev.exit:        ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  switch i32 %.0, label %.loopexit [
    i32 0, label %bb.e
    i32 3, label %bb.r
  ], !llvm.loop !124

bb.q:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.aa, %bb.l ]
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.j
  br i1 %i.ag, label %_ZN6duckdb20VariantPathComponentD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.af) #29
  br label %_ZN6duckdb20VariantPathComponentD2Ev.exit29

_ZN6duckdb20VariantPathComponentD2Ev.exit29:      ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_ZN6duckdb20VariantPathComponentD2Ev.exit
  call void @_ZNK6duckdb12optional_ptrIKNS_14BaseStatisticsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ah = load ptr, ptr %3, align 8, !tbaa !116   ; 9 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !30
  %.not.i = icmp eq i8 %i.ai, 100
  br i1 %.not.i, label %bb.s, label %_ZN6duckdb12VariantStats13GetTypedStatsERKNS_14BaseStatisticsE.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 noundef 0)
  br label %_ZN6duckdb12VariantStats13GetTypedStatsERKNS_14BaseStatisticsE.exit

_ZN6duckdb12VariantStats13GetTypedStatsERKNS_14BaseStatisticsE.exit: ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ %i.aj, %bb.s ], [ %i.ah, %bb.r ] ; 4 uses
  %i.ak = call noundef zeroext i1 @_ZNK6duckdb12StorageIndex7HasTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br i1 %i.ak, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6duckdb12VariantStats13GetTypedStatsERKNS_14BaseStatisticsE.exit
  %i.al = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb12StorageIndex7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.am = load i8, ptr %i.al, align 8, !tbaa !30
  %i.an = icmp eq i8 %i.am, 109
  br i1 %i.an, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %_ZN6duckdb12VariantStats13GetTypedStatsERKNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb12VariantStats27WrapExtractedFieldAsVariantERKNS_14BaseStatisticsES3_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  switch i8 %i.ap, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread [
    i8 24, label %bb.w
    i8 23, label %bb.w
    i8 29, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  call fastcc void @_ZN6duckdbL19AssertShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.aq = call noundef i64 @_ZN6duckdb10StructType13GetChildCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 noundef 0)
  %i.at = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 noundef 1) ; 6 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %6 = load i8, ptr %5, align 8, !tbaa !58, !range !59, !noundef !60
  %7 = trunc nuw i8 %6 to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 25
  %i.av = load i8, ptr %i.au, align 1, !range !59
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i = select i1 %7, i1 %i.aw, i1 false
  br i1 %or.cond.i, label %bb.y, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ax = load i8, ptr %i.at, align 8, !tbaa !30
  %i.ay = icmp ne i8 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %8 = load i8, ptr %i.az, align 8, !range !59
  %9 = trunc nuw i8 %8 to i1
  %.0.i16.i = select i1 %i.ay, i1 %9, i1 false
  %10 = getelementptr inbounds nuw i8, ptr %i.at, i64 41
  %i.ba = load i8, ptr %10, align 1, !range !59
  %i.bb = trunc nuw i8 %i.ba to i1
  %.0.i16.i.a = select i1 %.0.i16.i, i1 %i.bb, i1 false
  br i1 %.0.i16.i.a, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread35

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit: ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !43
  %i.bg = or i32 %i.bf, %i.bd
  %.0.i30 = icmp eq i32 %i.bg, 0
  br i1 %.0.i30, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread35

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread35: ; preds = %bb.y, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %.loopexit

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread: ; preds = %bb.x, %bb.v, %bb.w, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb12StorageIndex7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 2 uses
  %i.bi = call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
  br i1 %i.bi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread
  call void @_ZN6duckdb20StatisticsPropagator16TryPropagateCastERKNS_14BaseStatisticsERKNS_11LogicalTypeES6_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %.loopexit

bb.aa:                                            ; preds = %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread
  call void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %.0.i)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb20VariantPathComponentD2Ev.exit, %bb.z, %bb.aa, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread35, %bb.u, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.b
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb8EnumUtil8ToStringINS_14StatisticsTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_14StatisticsTypeEEEPKcT_(i8 noundef zeroext %1) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !121
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !123
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !105
  %i.h = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.h, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !43
  store i8 %i.j, ptr %i.i, align 1, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !122
  %i.m = load ptr, ptr %0, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.250", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !125
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !128, !noalias !125 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131, !noalias !125 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !132

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !128, !noalias !125
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !125
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !125
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !105    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !105    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb14BaseStatistics4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::BaseStatistics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN6duckdb14BaseStatisticsC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  invoke void @_ZN6duckdb14BaseStatistics4CopyERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %bb.f

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN6duckdbL19AssertShreddedStatsERKNS_14BaseStatisticsE:bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.sink.split97

bb.k:                                             ; preds = %bb.j, %bb.i
  %.015 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.015, label %.sink.split97, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.015, label %.sink.split97, label %bb.r

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread67: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !30
  %.not30 = icmp eq i8 %i.bk, 30
  br i1 %.not30, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread67
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bm = load i8, ptr %i.bj, align 8, !tbaa !30
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.bm)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.s unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split96

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ false, %bb.o ], [ true, %bb.n ]  ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bs = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread: ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bw = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.sink.split96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread
  call void @_ZdlPv(ptr noundef %i.bw) #29
  br label %.sink.split96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @_ZdlPv(ptr noundef %i.bs) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0, label %.sink.split97, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0, label %.sink.split97, label %bb.r

.sink.split96:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.thread
  %.pn.pn73.ph = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.thread ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.sink.split97

bb.q:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread67, %bb.a
  ret void

.sink.split97:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %.sink.split96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %.sink.split
  %.sink = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.x, %.sink.split ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.bl, %.sink.split96 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %.pn36.pn.pn.ph = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn36.pn57.ph, %.sink.split ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %.pn.pn73.ph, %.sink.split96 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @__cxa_free_exception(ptr %.sink) #28
  br label %bb.r

bb.r:                                             ; preds = %.sink.split97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn36.pn.pn.ph, %.sink.split97 ]
  resume { ptr, i32 } %.pn36.pn.pn

bb.s:                                             ; preds = %bb.o, %bb.j, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb8EnumUtil8ToStringINS_22VariantChildLookupModeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_22VariantChildLookupModeEEEPKcT_(i8 noundef zeroext %1) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !121
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !123
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !105
  %i.h = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.h, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !43
  store i8 %i.j, ptr %i.i, align 1, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !122
  %i.m = load ptr, ptr %0, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  switch i8 %i.b, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit [
    i8 24, label %bb.b
    i8 23, label %bb.b
    i8 29, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call fastcc void @_ZN6duckdbL19AssertShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.c = tail call noundef i64 @_ZN6duckdb10StructType13GetChildCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 0)
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 1) ; 6 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %2 = load i8, ptr %1, align 8, !tbaa !58, !range !59, !noundef !60
  %3 = trunc nuw i8 %2 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %i.h = load i8, ptr %i.g, align 1, !range !59
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %3, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.f, align 8, !tbaa !30
  %i.k = icmp ne i8 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %4 = load i8, ptr %i.l, align 8, !range !59
  %5 = trunc nuw i8 %4 to i1
  %.0.i16 = select i1 %i.k, i1 %5, i1 false
  %6 = getelementptr inbounds nuw i8, ptr %i.f, i64 41
  %i.m = load i8, ptr %6, align 1, !range !59
  %i.n = trunc nuw i8 %i.m to i1
  %.0.i16.a = select i1 %.0.i16, i1 %i.n, i1 false
  br i1 %.0.i16.a, label %bb.e, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43
  %i.s = or i32 %i.r, %i.p
  %.0 = icmp eq i32 %i.s, 0
  br label %_ZNK6duckdb11LogicalType8IsNestedEv.exit

_ZNK6duckdb11LogicalType8IsNestedEv.exit:         ; preds = %bb.a, %bb.e, %bb.c, %bb.d, %bb.b
  %.2 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ %.0, %bb.e ], [ true, %bb.a ], [ true, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ToStructuredTypeERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::vector.90", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::vector.193", align 8 ; 13 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %7 = alloca %"class.duckdb::vector.90", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.h = load i8, ptr %1, align 8, !tbaa !30
  %.not = icmp eq i8 %i.h, 100
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !30
  switch i8 %i.l, label %bb.at [
    i8 100, label %bb.d
    i8 101, label %bb.aq
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 56                  ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #32
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6duckdb16ToStructuredTypeERKNS7_11LogicalTypeEE3$_0EvT_SC_T0_.exit"

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.w = shl nuw nsw i64 %i.t, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30
          to label %.noexc37 unwind label %bb.r   ; 4 uses

.noexc37:                                         ; preds = %bb.f
  store ptr %i.x, ptr %5, align 8, !tbaa !740
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !742
  store i64 0, ptr %i.x, align 8, !tbaa !123
  %i.aa = getelementptr i8, ptr %i.x, i64 8       ; 3 uses
  %i.ab = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %.noexc37
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ab, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc37, %bb.g
  %.sink = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %.noexc37 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %.sink, ptr %i.ae, align 8, !tbaa !743
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.af = icmp sgt i64 %i.ci, 128
  %.not.i.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6duckdb16ToStructuredTypeERKNS7_11LogicalTypeEE3$_0EvT_SC_T0_.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.loopexit
  %i.ag = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = xor i64 %i.ah, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_T0_T1_"(ptr %i.cf, ptr %i.ce, i64 noundef %i.ai, ptr nonnull %i.m)
          to label %.noexc38 unwind label %bb.x

.noexc38:                                         ; preds = %bb.h
  br i1 %i.af, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.noexc38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.cf, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_T0_"(ptr %i.cf, ptr nonnull %i.aj, ptr nonnull %i.m)
          to label %.noexc39 unwind label %bb.x

.noexc39:                                         ; preds = %bb.i
  %.not41.i.i.i.i = icmp eq ptr %i.aj, %i.ce
  br i1 %.not41.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6duckdb16ToStructuredTypeERKNS7_11LogicalTypeEE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc39
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 56                ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ca, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 4 uses
  %i.aq = load i64, ptr %.sroa.0.042.i.i.i.i, align 8, !tbaa !123 ; 4 uses
  %.not.i.i.i5.i.i.i.i = icmp ult i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !123
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !123
  br i1 %.not.i.i.i5.i.i.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i, label %.noexc.i14.i.i.i.i, !prof !744

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i: ; preds = %bb.j
  %.sroa.0.0.i23.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.042.i.i.i.i, i64 -8 ; 2 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.at = load i64, ptr %.sroa.0.0.i23.i.i.i.i, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.at, ptr %i.f, align 8, !tbaa !123
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i.us38.i.i.i.i = icmp ult i64 %i.at, %i.ap
  br i1 %.not.i.i.i.us38.i.i.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit.us.i.i.i.i, label %.noexc.i.i.i.i.i, !prof !744

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit.us.i.i.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i
  %i.au = phi i64 [ %i.bf, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i ], [ %i.at, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.06.0.i24.us40.i.i.i.i = phi ptr [ %.sroa.0.0.i25.us39.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i ], [ %.sroa.0.042.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i25.us39.i.i.i.i = phi ptr [ %.sroa.0.0.i.us.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i ], [ %.sroa.0.0.i23.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.lr.ph.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !122 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.us.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i.us.i.i.i.i, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.us.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.i.i.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit.us.i.i.i.i
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.bc = call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.ba, i64 noundef %.sroa.speculated.i.i.i.i.i.us.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.us.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.us.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.us.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclImNS_17__normal_iteratorIPmSt6vectorImSaImEEEEEEbRT_T0_.exit.i.us.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.us.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.i.i.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit.us.i.i.i.i
  %i.bd = sub i64 %i.aw, %i.ay
  %spec.select7.i.i.i.i.i.i.us.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.us.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.us.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.us.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.us.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclImNS_17__normal_iteratorIPmSt6vectorImSaImEEEEEEbRT_T0_.exit.i.us.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclImNS_17__normal_iteratorIPmSt6vectorImSaImEEEEEEbRT_T0_.exit.i.us.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.us.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.i.i.i.i
  %.0.i.i.i.i.i.us.i.i.i.i = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.i.i.i.i ], [ %.0.i6.i.i.i.i.i.us.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.us.i.i.i.i ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.us.i.i.i.i, 0
  br i1 %i.be, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_.exit.i.i.i.i"

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit12.us.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclImNS_17__normal_iteratorIPmSt6vectorImSaImEEEEEEbRT_T0_.exit.i.us.i.i.i.i"
  store i64 %i.au, ptr %.sroa.06.0.i24.us40.i.i.i.i, align 8, !tbaa !123
  %.sroa.0.0.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i25.us39.i.i.i.i, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %.sroa.0.0.i.us.i.i.i.i, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.bf, ptr %i.f, align 8, !tbaa !123
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i.us.i.i.i.i = icmp ult i64 %i.bf, %i.ap
  br i1 %.not.i.i.i.us.i.i.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit.us.i.i.i.i, label %.noexc.i.i.i.i.i, !prof !745

.noexc.i14.i.i.i.i:                               ; preds = %bb.j
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb12VariantStats11DeserializeERNS_12DeserializerERNS_14BaseStatisticsE:bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #28, !inline_history !466
  br label %.body52

_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit54: ; preds = %.noexc51
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !30
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9) #28, !noalias !784, !inline_history !78
  invoke void @_ZN6duckdb14BaseStatistics17CreateUnknownTypeENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %8, ptr noundef nonnull %2)
          to label %bb.x unwind label %.body55, !inline_history !78

.body55:                                          ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28, !inline_history !78
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  br label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28, !inline_history !78
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 1, ptr %i.cp, align 8, !tbaa !58, !alias.scope !784
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 25
  store i8 1, ptr %i.cq, align 1, !tbaa !61, !alias.scope !784
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cr = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseStatisticsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.cs, ptr noundef nonnull align 8 dereferenceable(128) %8) #28 ; 0 uses
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !34
  br label %bb.ae

bb.y:                                             ; preds = %.noexc43, %.noexc42, %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.z:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %.noexc63, %.noexc50, %_ZN6duckdb12Deserializer3SetIRKNS_11LogicalTypeEEEvT_.exit49
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.ab:                                            ; preds = %bb.af, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.body55, %bb.ac
  %.pn24 = phi { ptr, i32 } [ %i.co, %.body55 ], [ %i.cy, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ah

bb.ae:                                            ; preds = %bb.x, %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit54
  %i.cz = phi ptr [ %.pre, %bb.x ], [ %i.ck, %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit54 ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  invoke void @_ZN6duckdb14BaseStatistics4CopyERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.da, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.af unwind label %bb.ab

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb17SerializationData5UnsetINS_11LogicalTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(616) %i.ax)
          to label %_ZN6duckdb12Deserializer5UnsetINS_11LogicalTypeEEEvv.exit58 unwind label %bb.ab

_ZN6duckdb12Deserializer5UnsetINS_11LogicalTypeEEEvv.exit58: ; preds = %bb.af
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.k, %_ZN6duckdb12Deserializer5UnsetINS_11LogicalTypeEEEvv.exit58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  %.pn26 = phi { ptr, i32 } [ %i.cx, %bb.ab ], [ %.pn24, %bb.ad ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #28
  br label %.body52

.body52:                                          ; preds = %bb.u, %bb.t, %bb.aa, %bb.ah
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ah ], [ %i.cj, %bb.u ], [ %i.cw, %bb.aa ], [ %i.cf, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ai

bb.ai:                                            ; preds = %.body52, %bb.z
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %.body52 ], [ %i.cv, %bb.z ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  br label %.body45

.body45:                                          ; preds = %bb.y, %common.resume.i, %bb.ai
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ai ], [ %i.cu, %bb.y ], [ %common.resume.op.i, %common.resume.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body

.body:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %.body45, %.body38
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %.body45 ], [ %.pn, %.body38 ], [ %i.ba, %bb.l ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL16ToStringInternalB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %2 = alloca %"class.std::vector.250", align 8   ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::vector.250", align 8   ; 9 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::vector.193", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i64 0, ptr %i.k, align 8, !tbaa !122
  store i8 0, ptr %i.j, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i64 18, ptr %i.i, align 8, !tbaa !123
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %7, align 8, !tbaa !105
  %i.n = load i64, ptr %i.i, align 8, !tbaa !123  ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.m, ptr noundef nonnull align 1 dereferenceable(18) @.str.100, i64 18, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !122
  %i.p = load ptr, ptr %7, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  switch i8 %i.s, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread [
    i8 24, label %bb.a
    i8 23, label %bb.a
    i8 29, label %bb.a
  ]

bb.a:                                             ; preds = %.noexc, %.noexc, %.noexc
  invoke fastcc void @_ZN6duckdbL19AssertShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %.noexc65 unwind label %bb.u

.noexc65:                                         ; preds = %bb.a
  %i.t = invoke noundef i64 @_ZN6duckdb10StructType13GetChildCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %.noexc66 unwind label %bb.u

.noexc66:                                         ; preds = %.noexc65
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread, label %bb.b

bb.b:                                             ; preds = %.noexc66
  %i.v = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef 0)
          to label %.noexc67 unwind label %bb.u

.noexc67:                                         ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef 1)
          to label %bb.c unwind label %bb.u       ; 6 uses

bb.c:                                             ; preds = %.noexc67
  %14 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %15 = load i8, ptr %14, align 8, !tbaa !58, !range !59, !noundef !60
  %16 = trunc nuw i8 %15 to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 25
  %i.y = load i8, ptr %i.x, align 1, !range !59
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i = select i1 %16, i1 %i.z, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.w, align 8, !tbaa !30
  %i.ab = icmp ne i8 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %17 = load i8, ptr %i.ac, align 8, !range !59
  %18 = trunc nuw i8 %17 to i1
  %.0.i16.i = select i1 %i.ab, i1 %18, i1 false
  %19 = getelementptr inbounds nuw i8, ptr %i.w, i64 41
  %i.ad = load i8, ptr %19, align 1, !range !59
  %i.ae = trunc nuw i8 %i.ad to i1
  %.0.i16.i.a = select i1 %.0.i16.i, i1 %i.ae, i1 false
  br i1 %.0.i16.i.a, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !43
  %i.aj = or i32 %i.ai, %i.ag
  %.fr = freeze i32 %i.aj
  %.0.i = icmp eq i32 %.fr, 0
  br i1 %.0.i, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread: ; preds = %bb.c, %.noexc, %.noexc66, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit
  br label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164: ; preds = %bb.d, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread
  %20 = phi ptr [ @.str.6, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread ], [ @.str.7, %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit ], [ @.str.7, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %20, ptr %i.h, align 8, !tbaa !163, !noalias !787
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !790
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164
  %i.ak = load ptr, ptr %5, align 8, !tbaa !128, !noalias !790 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !131, !noalias !790 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ao) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !132

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !128, !noalias !790
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.as = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.as) #29
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit.thread164
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !790
  br label %.body

bb.h:                                             ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = load ptr, ptr %0, align 8, !tbaa !105   ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.j
  %i.aw = load ptr, ptr %6, align 8, !tbaa !105   ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ay, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !122 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %.not21.i = icmp eq ptr %6, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !44

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ba, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !43
  store i8 %i.bc, ptr %i.au, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !122 ; 2 uses
  store i64 %i.bd, ptr %i.k, align 8, !tbaa !122
  %i.be = load ptr, ptr %0, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !43
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aw, ptr %0, align 8, !tbaa !105
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !43
  store <2 x i64> %i.bh, ptr %i.k, align 8, !tbaa !43
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !43
  store ptr %i.aw, ptr %0, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !43
  store <2 x i64> %i.bk, ptr %i.k, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %6, align 8, !tbaa !105
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.m ], [ %i.ax, %bb.n ], [ %i.aw, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !122
  store i8 0, ptr %i.bl, align 1, !tbaa !43
  %i.bn = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.l
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bs = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef 0)
          to label %bb.o unwind label %bb.v       ; 4 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !30
  switch i8 %i.bt, label %bb.bt [
    i8 101, label %bb.p
    i8 100, label %bb.aa
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = load i64, ptr %i.k, align 8, !tbaa !122
  %i.bv = add i64 %i.bu, -4611686018427387895
  %i.bw = icmp ult i64 %i.bv, 9
  br i1 %i.bw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.p
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.101, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.by = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.bs)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke fastcc void @_ZN6duckdbL16ToStringInternalB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.by)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !122 ; 2 uses
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !122
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #32
          to label %.noexc74 unwind label %bb.z

.noexc74:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.ce = load ptr, ptr %8, align 8, !tbaa !105
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cg = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
end_hunk_2
begin_hunk_3_@_ZN6duckdbL14WrapTypedValueERKNS_14BaseStatisticsENS_12optional_ptrIS0_Lb1EEE:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.z, %bb.v ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #28
  %i.ac = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #29
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !360

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 16, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.v
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %bb.v ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.w
  %i.ah = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 0)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  invoke void @_ZN6duckdb14BaseStatistics4CopyERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ai = load ptr, ptr %6, align 8, !tbaa !847
  %.not32 = icmp eq ptr %i.ai, null
  br i1 %.not32, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aj = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 1)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK6duckdb12optional_ptrINS_14BaseStatisticsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ak = load ptr, ptr %6, align 8, !tbaa !847
  invoke void @_ZN6duckdb14BaseStatistics4CopyERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.aj, ptr noundef nonnull align 8 dereferenceable(128) %i.ak)
          to label %bb.af unwind label %bb.ae

bb.ac:                                            ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.ac
  %.pn13 = phi { ptr, i32 } [ %.pn.i17, %.body ], [ %i.al, %bb.ac ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #28
  br label %bb.ah

bb.ae:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %bb.x, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  br label %bb.ah

bb.af:                                            ; preds = %bb.y, %bb.ab
  %i.an = load ptr, ptr %7, align 16, !tbaa !48   ; 3 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i18 = icmp eq ptr %i.an, %i.ao
  br i1 %.not4.i.i.i18, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i26, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %bb.af, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22
  %.05.i.i.i20 = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22 ], [ %i.an, %bb.af ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #28
  %i.aq = load ptr, ptr %.05.i.i.i20, align 8, !tbaa !105 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i19
  call void @_ZdlPv(ptr noundef %i.aq) #29
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22: ; preds = %.lr.ph.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 56 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.at, %i.ao
  br i1 %.not.i.i.i23, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i24, label %.lr.ph.i.i.i19, !llvm.loop !360

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i24: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i22
  %.pr.i25 = load ptr, ptr %7, align 16, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i26

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i26: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i24, %bb.af
  %i.au = phi ptr [ %.pr.i25, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i24 ], [ %i.an, %bb.af ] ; 2 uses
  %.not.i.i1.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit29, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i26
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit29

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit29: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i26, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae, %bb.ad, %bb.o, %bb.l
  %.pn15 = phi { ptr, i32 } [ %i.am, %bb.ae ], [ %.pn13, %bb.ad ], [ %.pn11, %bb.o ], [ %.pn, %bb.l ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit29, %_ZNK6duckdb14BaseStatistics4CopyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !834  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !815 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !835

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !808
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !810
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !808    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL19CanUseShreddedStatsENS_12optional_ptrIKNS_14BaseStatisticsELb1EEE(ptr %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.duckdb::optional_ptr", align 8 ; 3 uses
  store ptr %0, ptr %1, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrIKNS_14BaseStatisticsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !116    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31
  switch i8 %i.c, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit [
    i8 24, label %bb.c
    i8 23, label %bb.c
    i8 29, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  call fastcc void @_ZN6duckdbL19AssertShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = call noundef i64 @_ZN6duckdb10StructType13GetChildCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 0)
  %i.g = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 1) ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %3 = load i8, ptr %2, align 8, !tbaa !58, !range !59, !noundef !60
  %4 = trunc nuw i8 %3 to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %i.i = load i8, ptr %i.h, align 1, !range !59
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %4, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.g, align 8, !tbaa !30
  %i.l = icmp ne i8 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %5 = load i8, ptr %i.m, align 8, !range !59
  %6 = trunc nuw i8 %5 to i1
  %.0.i16.i = select i1 %i.l, i1 %6, i1 false
  %7 = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.n = load i8, ptr %7, align 1, !range !59
  %i.o = trunc nuw i8 %i.n to i1
  %.0.i16.i.a = select i1 %.0.i16.i, i1 %i.o, i1 false
  br i1 %.0.i16.i.a, label %bb.f, label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !43
  %i.t = or i32 %i.s, %i.q
  %.0.i = icmp eq i32 %i.t, 0
  br label %_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit

_ZN6duckdb20VariantShreddedStats15IsFullyShreddedERKNS_14BaseStatisticsE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %8 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.c ], [ %.0.i, %bb.f ], [ true, %bb.b ], [ true, %bb.d ]
  ret i1 %8
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb12StorageIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6duckdb12StorageIndex11HasChildrenEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6duckdb12StorageIndex7HasTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !855
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !855
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !352    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6duckdb5ValueEE8allocateEmPKv.exit.i.i.i, !prof !44

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN6duckdb5ValueEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6duckdb5ValueEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !352
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !856
  %i.m = load ptr, ptr %1, align 8, !tbaa !345    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !857

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb5ValueEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueEEvT_S3_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6duckdb5ValueEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !354
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !352    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #29
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #22

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30, !noalias !858 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !37, !noalias !858
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !39, !noalias !858
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !40, !noalias !858
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN6duckdb13SelectionDataC1Em(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !858

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !858
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !863
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !863
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.b, align 8, !tbaa !3, !noalias !863
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !863 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load atomic i64, ptr %i.b acquire, align 8, !noalias !863 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f
end_hunk_3
