Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_zone_format?download=true
inline.NumInlined: 515
inline.NumDeleted: 152
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768, %bb.gg
  %.pn = phi { ptr, i32 } [ %i.aqd, %bb.gg ], [ %i.aqe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768 ], [ %i.aqe, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.gi

bb.gi:                                            ; preds = %.loopexit887, %.loopexit.split-lp888, %.loopexit, %.loopexit.split-lp, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770
  %.pn337.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %i.fc, %bb.u ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ %.pn329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %.pn327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ], [ %.pn325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %.pn323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586 ], [ %.pn321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611 ], [ %.pn319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %i.ahv, %bb.ej ], [ %.pn316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ], [ %.pn314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732 ], [ %i.amr, %bb.fo ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit889, %.loopexit887 ], [ %lpad.loopexit.split-lp890, %.loopexit.split-lp888 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.p
  %.pn337.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn, %bb.gi ], [ %i.eo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.o
  %.pn337.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn, %bb.gj ], [ %i.en, %bb.o ]
  %i.aqj = load ptr, ptr %0, align 8, !tbaa !39   ; 2 uses
  %i.aqk = icmp eq ptr %i.aqj, %i.n
  br i1 %i.aqk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771: ; preds = %bb.gk
  %i.aql = load i64, ptr %i.n, align 8, !tbaa !16
  %i.aqm = add i64 %i.aql, 1
  call void @_ZdlPvm(ptr noundef %i.aqj, i64 noundef %i.aqm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771
  resume { ptr, i32 } %.pn337.pn.pn.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK4absl12lts_2026052613time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = shl i64 %i.d, 4
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = add i64 %i.f, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i8 noundef signext 0)
  %i.h = load ptr, ptr %0, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !39
  %i.k = tail call i64 @strftime(ptr noundef nonnull %i.i, i64 noundef %i.f, ptr noundef %i.j, ptr noundef nonnull %2) #18
  %i.l = add i64 %i.k, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i8 noundef signext 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !40
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !39
  %i.i = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.i, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %.noexc
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !13
  %i.m = load ptr, ptr %0, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !54
  %i.b = srem i64 %i.a, 400                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !56    ; 5 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !57    ; 2 uses
  %i.h = sext i8 %i.g to i64                      ; 2 uses
  %i.i = add nsw i64 %i.h, -1
  %or.cond7.i = icmp ult i64 %i.i, 28
  %i.j = add nsw i64 %i.e, -1
  %i.k = icmp ult i64 %i.j, 12
  %or.cond11.i = and i1 %i.k, %or.cond7.i
  br i1 %or.cond11.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %i.d, 12
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i8 %i.d, 12
  %.sext = sext i8 %i.l to i64
  %i.m = add nsw i64 %i.b, %.sext                 ; 2 uses
  %i.n = srem i8 %i.d, 12                         ; 3 uses
  %i.o = icmp slt i8 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.m, -1
  %i.q = add nsw i8 %i.n, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i = phi i8 [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ 12, %bb.b ]
  %.0.i.i = phi i64 [ %i.p, %bb.d ], [ %i.m, %bb.c ], [ %i.b, %bb.b ]
  %i.r = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %.016.i.i, i64 noundef %i.h, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.r, 1 ; 2 uses
  %.fca.0.extract22.i = extractvalue { i64, i64 } %i.r, 0
  %.sroa.6.sroa.6.0.extract.shift112146.i = lshr i64 %.fca.1.extract.i.i, 8
  %i.s = trunc i64 %.fca.1.extract.i.i to i8
  %i.t = trunc i64 %.sroa.6.sroa.6.0.extract.shift112146.i to i8
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i
  %.sroa.6.sroa.6.0.in.i = phi i8 [ %i.g, %bb.a ], [ %i.t, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.6.sroa.0.0.in.i = phi i8 [ %i.d, %bb.a ], [ %i.s, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %.fca.0.extract22.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ] ; 3 uses
  %i.u = srem i64 %.sroa.0.0.i, 400
  %i.v = add nsw i64 %i.u, 2399                   ; 3 uses
  %i.w = lshr i64 %i.v, 2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.v to i16 ; 2 uses
  %i.x = udiv i16 %.lhs.trunc.i.i, 100
  %i.y = udiv i16 %.lhs.trunc.i.i, 400
  %i.z = add nuw nsw i64 %i.w, %i.v
  %i.aa = trunc nuw nsw i64 %i.z to i16
  %reass.sub = sub nsw i16 %i.y, %i.x
  %i.ab = add nuw nsw i16 %reass.sub, 1
  %.lhs.trunc = add nsw i16 %i.ab, %i.aa
  %i.ac = urem i16 %.lhs.trunc, 7
  %.zext = zext nneg i16 %i.ac to i64
  %i.ad = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29
  %i.ai = icmp eq i32 %i.af, %i.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ai, label %.preheader.i, label %bb.e, !llvm.loop !58

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit, label %.preheader.i, !llvm.loop !59

_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i
  %i.am = sub nuw nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %2 = and i64 %i.am, 4294967295
  %i.an = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %2) #18 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ap to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.ap, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.ao, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.ar = sdiv i64 %i.aq, 7
  %i.as = trunc i64 %i.ar to i32
  ret i32 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 5 uses
  %spec.select45 = select i1 %i.a, i8 45, i8 43   ; 2 uses
  %i.b = urem i32 %spec.select, 60                ; 3 uses
  %i.c = udiv i32 %spec.select, 60
  %i.d = urem i32 %i.c, 60                        ; 3 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !16      ; 3 uses
  %.not44 = icmp eq i8 %i.e, 0                    ; 2 uses
  br i1 %.not44, label %.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = icmp eq i8 %i.g, 42
  br i1 %i.h, label %bb.c, label %.thread48

.thread48:                                        ; preds = %bb.b, %bb.a
  %i.i = icmp ne i32 %i.b, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = icmp ne i8 %i.k, 58                      ; 2 uses
  %i.m = icmp ne i32 %i.b, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc58 = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.n = urem i8 %.lhs.trunc58, 10
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !16
  %i.s = udiv i8 %.lhs.trunc58, 10
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = getelementptr inbounds i8, ptr %0, i64 -2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds i8, ptr %0, i64 -3 ; 2 uses
  store i8 %i.e, ptr %i.x, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %.thread48, %bb.c
  %i.y = phi i1 [ %i.i, %.thread48 ], [ false, %bb.c ]
  %.not453 = phi i1 [ true, %.thread48 ], [ false, %bb.c ]
  %i.z = icmp samesign ult i32 %spec.select, 3600
  %i.aa = icmp eq i32 %i.d, 0
  %or.cond3 = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select47 = select i1 %or.cond3, i8 43, i8 %spec.select45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i1 [ %i.m, %bb.d ], [ %i.y, %bb.e ]
  %.not452 = phi i1 [ %i.l, %bb.d ], [ %.not453, %bb.e ]
  %.039 = phi ptr [ %i.x, %bb.d ], [ %0, %bb.e ]  ; 4 uses
  %.1 = phi i8 [ %spec.select45, %bb.d ], [ %spec.select47, %bb.e ]
  %i.ac = icmp ne i32 %i.d, 0
  %or.cond6 = select i1 %.not452, i1 true, i1 %i.ac
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.ab
  br i1 %or.cond8, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc = trunc nuw nsw i32 %i.d to i8      ; 2 uses
  %i.ad = urem i8 %.lhs.trunc, 10
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = getelementptr inbounds i8, ptr %.039, i64 -1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !16
  %i.ai = udiv i8 %.lhs.trunc, 10
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = getelementptr inbounds i8, ptr %.039, i64 -2 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !16
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.039, i64 -3 ; 2 uses
  store i8 %i.e, ptr %i.an, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.140 = phi ptr [ %i.an, %bb.h ], [ %i.am, %bb.g ], [ %.039, %bb.f ] ; 3 uses
  %i.ao = udiv i32 %spec.select, 3600
  %i.ap = urem i32 %i.ao, 10
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = getelementptr inbounds i8, ptr %.140, i64 -1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %i.au = udiv i32 %spec.select, 36000
  %.lhs.trunc56 = trunc nuw i32 %i.au to i16
  %i.av = urem i16 %.lhs.trunc56, 10
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds i8, ptr %.140, i64 -2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !16
  %i.ba = getelementptr inbounds i8, ptr %.140, i64 -3 ; 2 uses
  store i8 %.1, ptr %i.ba, align 1, !tbaa !16
  ret ptr %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %.fold.split [
    i32 0, label %bb.d
    i32 1, label %.thread
  ]

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split
  %.052 = phi i32 [ %1, %bb.c ], [ 1, %.fold.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.04299, -214748364
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.04299, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = sub nsw i32 %i.k, %i.h                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.14998, i64 1 ; 4 uses
  switch i32 %.25497, label %.fold.split123 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split123:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split123
  %.557 = phi i32 [ %.25497, %bb.h ], [ 1, %.fold.split123 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not73 = icmp eq ptr %memchr, null
  br i1 %.not73, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.i, %bb.h, %bb.e
  %.351.ph = phi ptr [ %.048, %bb.e ], [ %i.o, %bb.h ], [ %.14998, %bb.f ], [ %.14998, %.lr.ph ], [ %i.o, %bb.i ], [ %.14998, %bb.g ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397: ; preds = %bb.bk, %bb.bd, %bb.ez, %bb.dk, %bb.cs, %bb.cm, %bb.cg, %bb.ca, %bb.aw, %bb.ad, %bb.x, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.eg, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847, %bb.er, %bb.ep, %bb.em, %bb.ei, %bb.ed, %bb.ec, %select.unfold.i814, %bb.dn, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit
  %.1878 = phi i64 [ %.0877.ph1002, %bb.ez ], [ %.0877.ph1002, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0877.ph1002, %bb.bk ], [ %.0877.ph1002, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0877.ph1002, %bb.ei ], [ %.0877.ph1002, %bb.x ], [ %.0877.ph1002, %bb.ad ], [ %.0877.ph1002, %bb.aw ], [ %.0877.ph1002, %bb.eg ], [ %.0877.ph1002, %bb.dk ], [ %.0877.ph1002, %bb.bs ], [ %.0877.ph1002, %bb.bd ], [ %.0877.ph1002, %bb.ca ], [ %.0877.ph1002, %bb.cg ], [ %.0877.ph1002, %bb.cm ], [ %.0877.ph1002, %bb.cs ], [ %.0877.ph1002, %bb.dn ], [ %.0877.ph1002, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.2879, %select.unfold.i814 ], [ %.0877.ph1002, %bb.ec ], [ %.0877.ph1002, %bb.ed ], [ %.0877.ph1002, %bb.em ], [ %.0877.ph1002, %bb.ep ], [ %.0877.ph1002, %bb.er ] ; 2 uses
  %.1 = phi i32 [ %.0.ph1003, %bb.ez ], [ %.0.ph1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %spec.select938, %bb.bk ], [ %.0.ph1003, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0.ph1003, %bb.ei ], [ -1, %bb.x ], [ -1, %bb.ad ], [ -1, %bb.aw ], [ %.0.ph1003, %bb.eg ], [ %.0.ph1003, %bb.dk ], [ %.0.ph1003, %bb.bs ], [ %spec.select936, %bb.bd ], [ %.0.ph1003, %bb.ca ], [ %.0.ph1003, %bb.cg ], [ %.0.ph1003, %bb.cm ], [ %.0.ph1003, %bb.cs ], [ %.0.ph1003, %bb.dn ], [ %.0.ph1003, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0.ph1003, %select.unfold.i814 ], [ %.0.ph1003, %bb.ec ], [ %.0.ph1003, %bb.ed ], [ %.0.ph1003, %bb.em ], [ %.0.ph1003, %bb.ep ], [ %.0.ph1003, %bb.er ] ; 2 uses
  %.4256 = phi i1 [ %.0252.ph1004, %bb.ez ], [ %.0252.ph1004, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0252.ph1004, %bb.bk ], [ %.0252.ph1004, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %spec.select345, %bb.ei ], [ %.0252.ph1004, %bb.x ], [ %.0252.ph1004, %bb.ad ], [ %.0252.ph1004, %bb.aw ], [ %.0252.ph1004, %bb.eg ], [ %.0252.ph1004, %bb.dk ], [ %.0252.ph1004, %bb.bs ], [ %.0252.ph1004, %bb.bd ], [ %.0252.ph1004, %bb.ca ], [ %.0252.ph1004, %bb.cg ], [ %.0252.ph1004, %bb.cm ], [ %.0252.ph1004, %bb.cs ], [ %spec.select342, %bb.dn ], [ %.0252.ph1004, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0252.ph1004, %select.unfold.i814 ], [ %spec.select344, %bb.ec ], [ %.0252.ph1004, %bb.ed ], [ %.0252.ph1004, %bb.em ], [ %.0252.ph1004, %bb.ep ], [ %.0252.ph1004, %bb.er ] ; 2 uses
  %.7229 = phi ptr [ %.4226, %bb.ez ], [ %.6228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %i.ax, %bb.bk ], [ %i.ax, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %i.ts, %bb.ei ], [ %i.ax, %bb.x ], [ %i.ax, %bb.ad ], [ %i.ax, %bb.aw ], [ %i.tl, %bb.eg ], [ %i.ax, %bb.dk ], [ %i.ax, %bb.bs ], [ %i.ax, %bb.bd ], [ %i.ax, %bb.ca ], [ %i.ax, %bb.cg ], [ %i.ax, %bb.cm ], [ %i.ax, %bb.cs ], [ %i.ax, %bb.dn ], [ %i.ax, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ax, %select.unfold.i814 ], [ %i.td, %bb.ec ], [ %i.ax, %bb.ed ], [ %i.ty, %bb.em ], [ %i.ud, %bb.ep ], [ %i.um, %bb.er ] ; 2 uses
  %.6221 = phi i1 [ %.0215.ph1007, %bb.ez ], [ %.5220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0215.ph1007, %bb.bk ], [ %.0215.ph1007, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0215.ph1007, %bb.ei ], [ %.0215.ph1007, %bb.x ], [ %.0215.ph1007, %bb.ad ], [ %.0215.ph1007, %bb.aw ], [ %.0215.ph1007, %bb.eg ], [ false, %bb.dk ], [ %.0215.ph1007, %bb.bs ], [ %.0215.ph1007, %bb.bd ], [ %.0215.ph1007, %bb.ca ], [ false, %bb.cg ], [ %.0215.ph1007, %bb.cm ], [ %.0215.ph1007, %bb.cs ], [ %.0215.ph1007, %bb.dn ], [ %.0215.ph1007, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0215.ph1007, %select.unfold.i814 ], [ %.0215.ph1007, %bb.ec ], [ %.0215.ph1007, %bb.ed ], [ %.0215.ph1007, %bb.em ], [ %.0215.ph1007, %bb.ep ], [ %.0215.ph1007, %bb.er ] ; 2 uses
  %.2214 = phi i1 [ %.0212.ph1008, %bb.ez ], [ %.1213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0212.ph1008, %bb.bk ], [ %.0212.ph1008, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0212.ph1008, %bb.ei ], [ %.0212.ph1008, %bb.x ], [ %.0212.ph1008, %bb.ad ], [ %.0212.ph1008, %bb.aw ], [ %.0212.ph1008, %bb.eg ], [ %.0212.ph1008, %bb.dk ], [ %.0212.ph1008, %bb.bs ], [ %.0212.ph1008, %bb.bd ], [ %.0212.ph1008, %bb.ca ], [ %.0212.ph1008, %bb.cg ], [ %.0212.ph1008, %bb.cm ], [ %.0212.ph1008, %bb.cs ], [ %.0212.ph1008, %bb.dn ], [ %.0212.ph1008, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0212.ph1008, %select.unfold.i814 ], [ %.0212.ph1008, %bb.ec ], [ %.0212.ph1008, %bb.ed ], [ %.0212.ph1008, %bb.em ], [ %.0212.ph1008, %bb.ep ], [ %.0212.ph1008, %bb.er ] ; 2 uses
  %.1211 = phi i32 [ %.0210.ph1009, %bb.ez ], [ %.0210.ph1009, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ 0, %bb.bk ], [ %.0210.ph1009, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0210.ph1009, %bb.ei ], [ %.0210.ph1009, %bb.x ], [ %.0210.ph1009, %bb.ad ], [ %.0210.ph1009, %bb.aw ], [ %.0210.ph1009, %bb.eg ], [ %.0210.ph1009, %bb.dk ], [ %.0210.ph1009, %bb.bs ], [ 6, %bb.bd ], [ %.0210.ph1009, %bb.ca ], [ %.0210.ph1009, %bb.cg ], [ %.0210.ph1009, %bb.cm ], [ %.0210.ph1009, %bb.cs ], [ %.0210.ph1009, %bb.dn ], [ %.0210.ph1009, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0210.ph1009, %select.unfold.i814 ], [ %.0210.ph1009, %bb.ec ], [ %.0210.ph1009, %bb.ed ], [ %.0210.ph1009, %bb.em ], [ %.0210.ph1009, %bb.ep ], [ %.0210.ph1009, %bb.er ] ; 2 uses
  %.2209 = phi i1 [ %.0207.ph1010, %bb.ez ], [ %.0207.ph1010, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0207.ph1010, %bb.bk ], [ %.0207.ph1010, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0207.ph1010, %bb.ei ], [ %.0207.ph1010, %bb.x ], [ %.0207.ph1010, %bb.ad ], [ %.0207.ph1010, %bb.aw ], [ %.0207.ph1010, %bb.eg ], [ %.0207.ph1010, %bb.dk ], [ %.0207.ph1010, %bb.bs ], [ %.0207.ph1010, %bb.bd ], [ %.0207.ph1010, %bb.ca ], [ %.0207.ph1010, %bb.cg ], [ %.0207.ph1010, %bb.cm ], [ %.0207.ph1010, %bb.cs ], [ %.0207.ph1010, %bb.dn ], [ %.0207.ph1010, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %spec.select343, %select.unfold.i814 ], [ %.0207.ph1010, %bb.ec ], [ %.0207.ph1010, %bb.ed ], [ %.0207.ph1010, %bb.em ], [ %.0207.ph1010, %bb.ep ], [ %.0207.ph1010, %bb.er ] ; 2 uses
  %.4203 = phi i1 [ %.0199.ph1011, %bb.ez ], [ %.0199.ph1011, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0199.ph1011, %bb.bk ], [ %spec.select, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0199.ph1011, %bb.ei ], [ %.0199.ph1011, %bb.x ], [ %.0199.ph1011, %bb.ad ], [ true, %bb.aw ], [ %.0199.ph1011, %bb.eg ], [ %.0199.ph1011, %bb.dk ], [ %.0199.ph1011, %bb.bs ], [ %.0199.ph1011, %bb.bd ], [ %.0199.ph1011, %bb.ca ], [ %.0199.ph1011, %bb.cg ], [ %.0199.ph1011, %bb.cm ], [ %.0199.ph1011, %bb.cs ], [ %.0199.ph1011, %bb.dn ], [ %.0199.ph1011, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0199.ph1011, %select.unfold.i814 ], [ %.0199.ph1011, %bb.ec ], [ %.0199.ph1011, %bb.ed ], [ %.0199.ph1011, %bb.em ], [ %.0199.ph1011, %bb.ep ], [ %.3202, %bb.er ] ; 2 uses
  %.15 = phi ptr [ %.12, %bb.ez ], [ %i.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %spec.select939, %bb.bk ], [ %.4.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %i.to, %bb.ei ], [ %.351.ph.i360, %bb.x ], [ %.351.ph.i382, %bb.ad ], [ %.351.ph.i472, %bb.aw ], [ %i.tk, %bb.eg ], [ %.351.ph.i782, %bb.dk ], [ %.351.ph.i565, %bb.bs ], [ %spec.select937, %bb.bd ], [ %.351.ph.i596, %bb.ca ], [ %.351.ph.i627, %bb.cg ], [ %.351.ph.i658, %bb.cm ], [ %.351.ph.i689, %bb.cs ], [ %i.qx, %bb.dn ], [ %spec.select.i799, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.4.i827, %select.unfold.i814 ], [ %i.sv, %bb.ec ], [ %i.th, %bb.ed ], [ %.7, %bb.em ], [ %.8, %bb.ep ], [ %.9, %bb.er ] ; 3 uses
  %i.wy = icmp ne ptr %.15, null
  %i.wz = icmp ne ptr %.7229, %i.z
  %i.xa = select i1 %i.wy, i1 %i.wz, i1 false
  br i1 %i.xa, label %.lr.ph, label %.outer._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i848: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844
  %i.xb = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.xc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i848, %bb.fe
  %.pn330.pn.pn = phi { ptr, i32 } [ %i.wm, %bb.fe ], [ %i.wn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i848 ], [ %i.wn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.hn

.outer._crit_edge:                                ; preds = %bb.br, %bb.ak, %bb.ap, %select.unfold.i440, %bb.aq, %bb.w, %select.unfold.i564, %bb.cr, %select.unfold.i688, %bb.cl, %select.unfold.i657, %bb.bz, %select.unfold.i595, %select.unfold.i533, %select.unfold.i502, %bb.av, %select.unfold.i471, %select.unfold.i359, %bb.ac, %select.unfold.i381, %bb.ef, %select.unfold.i410, %bb.i, %bb.h, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, %bb.f, %bb.e, %.backedge
  %.0877.ph.lcssa982 = phi i64 [ %.0877.ph1002, %bb.f ], [ %.0877.ph1002, %.backedge ], [ %.0877.ph1002, %bb.e ], [ %.0877.ph1002, %bb.cr ], [ %.0877.ph1002, %select.unfold.i688 ], [ %.0877.ph1002, %bb.cl ], [ %.0877.ph1002, %select.unfold.i657 ], [ %.0877.ph1002, %bb.ap ], [ %.0877.ph1002, %select.unfold.i440 ], [ %.0877.ph1002, %bb.bz ], [ %.0877.ph1002, %select.unfold.i595 ], [ %.0877.ph1002, %select.unfold.i533 ], [ %.0877.ph1002, %select.unfold.i502 ], [ %.0877.ph1002, %bb.av ], [ %.0877.ph1002, %select.unfold.i471 ], [ %.0877.ph1002, %select.unfold.i359 ], [ %.0877.ph1002, %bb.ac ], [ %.0877.ph1002, %select.unfold.i381 ], [ %.0877.ph1002, %bb.ef ], [ %.0877.ph1002, %bb.aq ], [ %.0877.ph1002, %select.unfold.i410 ], [ %.0877.ph1002, %bb.w ], [ %.0877.ph1002, %bb.i ], [ %.0877.ph1002, %bb.h ], [ %.0877.ph1002, %bb.br ], [ %.0877.ph1002, %bb.ak ], [ %.1878, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0877.ph1002, %select.unfold.i564 ]
  %.0.ph.lcssa979 = phi i32 [ %.0.ph1003, %bb.f ], [ %.0.ph1003, %.backedge ], [ %.0.ph1003, %bb.e ], [ %.0.ph1003, %bb.cr ], [ %.0.ph1003, %select.unfold.i688 ], [ %.0.ph1003, %bb.cl ], [ %.0.ph1003, %select.unfold.i657 ], [ -1, %bb.ap ], [ -1, %select.unfold.i440 ], [ %.0.ph1003, %bb.bz ], [ %.0.ph1003, %select.unfold.i595 ], [ %.0.ph1003, %select.unfold.i533 ], [ %.0.ph1003, %select.unfold.i502 ], [ -1, %bb.av ], [ -1, %select.unfold.i471 ], [ -1, %select.unfold.i359 ], [ -1, %bb.ac ], [ -1, %select.unfold.i381 ], [ %.0.ph1003, %bb.ef ], [ -1, %bb.aq ], [ -1, %select.unfold.i410 ], [ -1, %bb.w ], [ %.0.ph1003, %bb.i ], [ %.0.ph1003, %bb.h ], [ %.0.ph1003, %bb.br ], [ -1, %bb.ak ], [ %.1, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0.ph1003, %select.unfold.i564 ]
  %.0252.ph.lcssa976 = phi i1 [ %.0252.ph1004, %bb.f ], [ %.0252.ph1004, %.backedge ], [ %.0252.ph1004, %bb.e ], [ %.0252.ph1004, %bb.cr ], [ %.0252.ph1004, %select.unfold.i688 ], [ %.0252.ph1004, %bb.cl ], [ %.0252.ph1004, %select.unfold.i657 ], [ %.0252.ph1004, %bb.ap ], [ %.0252.ph1004, %select.unfold.i440 ], [ %.0252.ph1004, %bb.bz ], [ %.0252.ph1004, %select.unfold.i595 ], [ %.0252.ph1004, %select.unfold.i533 ], [ %.0252.ph1004, %select.unfold.i502 ], [ %.0252.ph1004, %bb.av ], [ %.0252.ph1004, %select.unfold.i471 ], [ %.0252.ph1004, %select.unfold.i359 ], [ %.0252.ph1004, %bb.ac ], [ %.0252.ph1004, %select.unfold.i381 ], [ %.0252.ph1004, %bb.ef ], [ %.0252.ph1004, %bb.aq ], [ %.0252.ph1004, %select.unfold.i410 ], [ %.0252.ph1004, %bb.w ], [ %.0252.ph1004, %bb.i ], [ %.0252.ph1004, %bb.h ], [ %.0252.ph1004, %bb.br ], [ %.0252.ph1004, %bb.ak ], [ %.4256, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0252.ph1004, %select.unfold.i564 ]
  %.0215.ph.lcssa973 = phi i1 [ %.0215.ph1007, %bb.f ], [ %.0215.ph1007, %.backedge ], [ %.0215.ph1007, %bb.e ], [ %.0215.ph1007, %bb.cr ], [ %.0215.ph1007, %select.unfold.i688 ], [ %.0215.ph1007, %bb.cl ], [ %.0215.ph1007, %select.unfold.i657 ], [ %.0215.ph1007, %bb.ap ], [ %.0215.ph1007, %select.unfold.i440 ], [ %.0215.ph1007, %bb.bz ], [ %.0215.ph1007, %select.unfold.i595 ], [ %.0215.ph1007, %select.unfold.i533 ], [ %.0215.ph1007, %select.unfold.i502 ], [ %.0215.ph1007, %bb.av ], [ %.0215.ph1007, %select.unfold.i471 ], [ %.0215.ph1007, %select.unfold.i359 ], [ %.0215.ph1007, %bb.ac ], [ %.0215.ph1007, %select.unfold.i381 ], [ %.0215.ph1007, %bb.ef ], [ %.0215.ph1007, %bb.aq ], [ %.0215.ph1007, %select.unfold.i410 ], [ %.0215.ph1007, %bb.w ], [ %.0215.ph1007, %bb.i ], [ %.0215.ph1007, %bb.h ], [ %.0215.ph1007, %bb.br ], [ %.0215.ph1007, %bb.ak ], [ %.6221, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0215.ph1007, %select.unfold.i564 ]
  %.0212.ph.lcssa970 = phi i1 [ %.0212.ph1008, %bb.f ], [ %.0212.ph1008, %.backedge ], [ %.0212.ph1008, %bb.e ], [ %.0212.ph1008, %bb.cr ], [ %.0212.ph1008, %select.unfold.i688 ], [ %.0212.ph1008, %bb.cl ], [ %.0212.ph1008, %select.unfold.i657 ], [ %.0212.ph1008, %bb.ap ], [ %.0212.ph1008, %select.unfold.i440 ], [ %.0212.ph1008, %bb.bz ], [ %.0212.ph1008, %select.unfold.i595 ], [ %.0212.ph1008, %select.unfold.i533 ], [ %.0212.ph1008, %select.unfold.i502 ], [ %.0212.ph1008, %bb.av ], [ %.0212.ph1008, %select.unfold.i471 ], [ %.0212.ph1008, %select.unfold.i359 ], [ %.0212.ph1008, %bb.ac ], [ %.0212.ph1008, %select.unfold.i381 ], [ %.0212.ph1008, %bb.ef ], [ %.0212.ph1008, %bb.aq ], [ %.0212.ph1008, %select.unfold.i410 ], [ %.0212.ph1008, %bb.w ], [ %.0212.ph1008, %bb.i ], [ %.0212.ph1008, %bb.h ], [ %.0212.ph1008, %bb.br ], [ %.0212.ph1008, %bb.ak ], [ %.2214, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0212.ph1008, %select.unfold.i564 ]
  %.0210.ph.lcssa967 = phi i32 [ %.0210.ph1009, %bb.f ], [ %.0210.ph1009, %.backedge ], [ %.0210.ph1009, %bb.e ], [ %.0210.ph1009, %bb.cr ], [ %.0210.ph1009, %select.unfold.i688 ], [ %.0210.ph1009, %bb.cl ], [ %.0210.ph1009, %select.unfold.i657 ], [ %.0210.ph1009, %bb.ap ], [ %.0210.ph1009, %select.unfold.i440 ], [ %.0210.ph1009, %bb.bz ], [ %.0210.ph1009, %select.unfold.i595 ], [ 0, %select.unfold.i533 ], [ 6, %select.unfold.i502 ], [ %.0210.ph1009, %bb.av ], [ %.0210.ph1009, %select.unfold.i471 ], [ %.0210.ph1009, %select.unfold.i359 ], [ %.0210.ph1009, %bb.ac ], [ %.0210.ph1009, %select.unfold.i381 ], [ %.0210.ph1009, %bb.ef ], [ %.0210.ph1009, %bb.aq ], [ %.0210.ph1009, %select.unfold.i410 ], [ %.0210.ph1009, %bb.w ], [ %.0210.ph1009, %bb.i ], [ %.0210.ph1009, %bb.h ], [ %.0210.ph1009, %bb.br ], [ %.0210.ph1009, %bb.ak ], [ %.1211, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0210.ph1009, %select.unfold.i564 ]
  %.0207.ph.lcssa964 = phi i1 [ %.0207.ph1010, %bb.f ], [ %.0207.ph1010, %.backedge ], [ %.0207.ph1010, %bb.e ], [ %.0207.ph1010, %bb.cr ], [ %.0207.ph1010, %select.unfold.i688 ], [ %.0207.ph1010, %bb.cl ], [ %.0207.ph1010, %select.unfold.i657 ], [ %.0207.ph1010, %bb.ap ], [ %.0207.ph1010, %select.unfold.i440 ], [ %.0207.ph1010, %bb.bz ], [ %.0207.ph1010, %select.unfold.i595 ], [ %.0207.ph1010, %select.unfold.i533 ], [ %.0207.ph1010, %select.unfold.i502 ], [ %.0207.ph1010, %bb.av ], [ %.0207.ph1010, %select.unfold.i471 ], [ %.0207.ph1010, %select.unfold.i359 ], [ %.0207.ph1010, %bb.ac ], [ %.0207.ph1010, %select.unfold.i381 ], [ %.0207.ph1010, %bb.ef ], [ %.0207.ph1010, %bb.aq ], [ %.0207.ph1010, %select.unfold.i410 ], [ %.0207.ph1010, %bb.w ], [ %.0207.ph1010, %bb.i ], [ %.0207.ph1010, %bb.h ], [ %.0207.ph1010, %bb.br ], [ %.0207.ph1010, %bb.ak ], [ %.2209, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0207.ph1010, %select.unfold.i564 ]
  %.0199.ph.lcssa961 = phi i1 [ %.0199.ph1011, %bb.f ], [ %.0199.ph1011, %.backedge ], [ %.0199.ph1011, %bb.e ], [ %.0199.ph1011, %bb.cr ], [ %.0199.ph1011, %select.unfold.i688 ], [ %.0199.ph1011, %bb.cl ], [ %.0199.ph1011, %select.unfold.i657 ], [ true, %bb.ap ], [ true, %select.unfold.i440 ], [ %.0199.ph1011, %bb.bz ], [ %.0199.ph1011, %select.unfold.i595 ], [ %.0199.ph1011, %select.unfold.i533 ], [ %.0199.ph1011, %select.unfold.i502 ], [ true, %bb.av ], [ true, %select.unfold.i471 ], [ %.0199.ph1011, %select.unfold.i359 ], [ %.0199.ph1011, %bb.ac ], [ %.0199.ph1011, %select.unfold.i381 ], [ %.0199.ph1011, %bb.ef ], [ true, %bb.aq ], [ %.0199.ph1011, %select.unfold.i410 ], [ %.0199.ph1011, %bb.w ], [ %.0199.ph1011, %bb.i ], [ %.0199.ph1011, %bb.h ], [ %.0199.ph1011, %bb.br ], [ true, %bb.ak ], [ %.4203, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ %.0199.ph1011, %select.unfold.i564 ]
  %.1193.lcssa = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %.1193.be, %.backedge ], [ null, %bb.cr ], [ null, %select.unfold.i688 ], [ null, %bb.cl ], [ null, %select.unfold.i657 ], [ null, %bb.ap ], [ null, %select.unfold.i440 ], [ null, %bb.bz ], [ null, %select.unfold.i595 ], [ null, %select.unfold.i533 ], [ null, %select.unfold.i502 ], [ null, %bb.av ], [ null, %select.unfold.i471 ], [ null, %select.unfold.i359 ], [ null, %bb.ac ], [ null, %select.unfold.i381 ], [ null, %bb.ef ], [ null, %bb.aq ], [ null, %select.unfold.i410 ], [ null, %bb.w ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.br ], [ null, %bb.ak ], [ %.15, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ], [ null, %select.unfold.i564 ] ; 2 uses
  %or.cond6 = select i1 %.0215.ph.lcssa973, i1 %.0212.ph.lcssa970, i1 false
  %i.xd = load i32, ptr %i.q, align 8             ; 2 uses
  %i.xe = icmp slt i32 %i.xd, 12
  %or.cond9 = select i1 %or.cond6, i1 %i.xe, i1 false
  br i1 %or.cond9, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.outer._crit_edge
  %i.xf = add nsw i32 %i.xd, 12
  store i32 %i.xf, ptr %i.q, align 8, !tbaa !65
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.outer._crit_edge
  %i.xg = icmp eq ptr %.1193.lcssa, null
  br i1 %i.xg, label %.thread1252, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge.i.i, %bb.fh
  %.0877.ph.lcssa98212181239 = phi i64 [ %.0877.ph.lcssa982, %bb.fh ], [ 0, %._crit_edge.i.i ]
  %.0.ph.lcssa97912191238 = phi i32 [ %.0.ph.lcssa979, %bb.fh ], [ -1, %._crit_edge.i.i ] ; 2 uses
  %.0252.ph.lcssa97612201237 = phi i1 [ %.0252.ph.lcssa976, %bb.fh ], [ false, %._crit_edge.i.i ]
  %.0210.ph.lcssa96712211236 = phi i32 [ %.0210.ph.lcssa967, %bb.fh ], [ 6, %._crit_edge.i.i ]
  %.0207.ph.lcssa96412221235 = phi i1 [ %.0207.ph.lcssa964, %bb.fh ], [ false, %._crit_edge.i.i ]
  %.0199.ph.lcssa96112231234 = phi i1 [ %.0199.ph.lcssa961, %bb.fh ], [ false, %._crit_edge.i.i ]
  %.1193.lcssa12241233 = phi ptr [ %.1193.lcssa, %bb.fh ], [ %.0192, %._crit_edge.i.i ]
  br label %.preheader

.thread1252:                                      ; preds = %bb.cy, %bb.dd, %select.unfold.i750, %bb.de, %bb.dj, %select.unfold.i781, %bb.cf, %select.unfold.i626, %bb.cx, %select.unfold.i719, %bb.fh
  %.not306 = icmp eq ptr %5, null
  br i1 %.not306, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.invoke

bb.fi:                                            ; preds = %.invoke
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.16 = phi ptr [ %i.xl, %.preheader ], [ %.1193.lcssa12241233, %.preheader.preheader ] ; 3 uses
  %i.xi = load i8, ptr %.16, align 1, !tbaa !16
  %i.xj = sext i8 %i.xi to i32
  %i.xk = call i32 @isspace(i32 noundef %i.xj) #21
  %.not288 = icmp eq i32 %i.xk, 0
  %i.xl = getelementptr inbounds nuw i8, ptr %.16, i64 1
  br i1 %.not288, label %bb.fj, label %.preheader, !llvm.loop !66

bb.fj:                                            ; preds = %.preheader
  %.not289 = icmp eq ptr %.16, %i.l
  br i1 %.not289, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not305 = icmp eq ptr %5, null
  br i1 %.not305, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.invoke

.invoke:                                          ; preds = %bb.fk, %.thread1252
  %i.xm = phi ptr [ @.str.10, %.thread1252 ], [ @.str.11, %bb.fk ]
  %i.xn = phi i64 [ 21, %.thread1252 ], [ 37, %bb.fk ]
  %i.xo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !13
  %i.xq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.xp, ptr noundef nonnull %i.xm, i64 noundef %i.xn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.fi ; 0 uses

bb.fl:                                            ; preds = %bb.fj
  br i1 %.0207.ph.lcssa96412221235, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i64 %.0877.ph.lcssa98212181239, ptr %3, align 8, !tbaa !40
  store i64 0, ptr %4, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  br i1 %.0252.ph.lcssa97612201237, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.xr = invoke ptr @_ZN4absl12lts_2026052613time_internal4cctz13utc_time_zoneEv()
          to label %bb.fp unwind label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  %i.xs = ptrtoint ptr %i.xr to i64
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fn
  %i.xt = load i64, ptr %2, align 8, !tbaa !67
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %storemerge = phi i64 [ %i.xt, %bb.fq ], [ %i.xs, %bb.fp ]
  store i64 %storemerge, ptr %12, align 8
  %i.xu = load i32, ptr %6, align 16, !tbaa !69   ; 2 uses
  %i.xv = icmp eq i32 %i.xu, 60
  br i1 %i.xv, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  store i32 59, ptr %6, align 16, !tbaa !69
  %i.xw = load i32, ptr %i.c, align 4, !tbaa !23
  %i.xx = add nsw i32 %i.xw, -1
  store i32 %i.xx, ptr %i.c, align 4, !tbaa !23
  store i64 0, ptr %7, align 8, !tbaa !40
  br label %bb.fu

bb.ft:                                            ; preds = %bb.gf, %bb.fo
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.fu:                                            ; preds = %bb.fs, %bb.fr
  %i.xz = phi i32 [ 59, %bb.fs ], [ %i.xu, %bb.fr ]
  br i1 %.0199.ph.lcssa96112231234, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ya = load i32, ptr %i.n, align 4, !tbaa !28
  %i.yb = sext i32 %i.ya to i64
  %i.yc = add nsw i64 %i.yb, 1900
  store i64 %i.yc, ptr %i.b, align 8, !tbaa !40
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.not290 = icmp eq i32 %.0.ph.lcssa97912191238, -1
  br i1 %.not290, label %._crit_edge, label %bb.fx

._crit_edge:                                      ; preds = %bb.fw
  %.pre1071 = load i32, ptr %i.o, align 16, !tbaa !25
  %.pre1072 = load i64, ptr %i.b, align 8, !tbaa !40
  %.pre1073 = load i32, ptr %i.p, align 4, !tbaa !70
  %i.yd = add nsw i32 %.pre1071, 1
  br label %bb.gg

bb.fx:                                            ; preds = %bb.fw
  %i.ye = load i64, ptr %i.b, align 8, !tbaa !40  ; 5 uses
  %i.yf = srem i64 %i.ye, 400                     ; 4 uses
  %i.yg = add nsw i64 %i.yf, 2399                 ; 3 uses
  %i.yh = lshr i64 %i.yg, 2
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.yg to i16 ; 2 uses
  %i.yi = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.yj = udiv i16 %.lhs.trunc.i.i.i, 400
  %i.yk = add nuw nsw i64 %i.yh, %i.yg
  %i.yl = trunc nuw nsw i64 %i.yk to i16
  %reass.sub = sub nsw i16 %i.yj, %i.yi
  %i.ym = add nuw nsw i16 %reass.sub, 1
  %.lhs.trunc.i = add nsw i16 %i.ym, %i.yl
  %i.yn = urem i16 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i16 %i.yn to i64
  %i.yo = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext.i
  %i.yp = getelementptr i8, ptr %i.yo, i64 24
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !29
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fy, %bb.fx
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.fy ], [ 0, %bb.fx ] ; 4 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i.i
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !29
  %i.yt = icmp eq i32 %i.yq, %i.ys
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.yt, label %.preheader.i.i, label %bb.fy, !llvm.loop !58

.preheader.i.i:                                   ; preds = %bb.fy, %.preheader.i.i
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %.preheader.i.i ], [ %indvars.iv.i.i, %bb.fy ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i.i
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !29
  %i.yw = icmp eq i32 %.0210.ph.lcssa96712211236, %i.yv
  br i1 %i.yw, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, label %.preheader.i.i, !llvm.loop !59

_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i: ; preds = %.preheader.i.i
  %i.yx = sub nuw nsw i64 %indvars.iv.next18.i.i, %indvars.iv.i.i
  %21 = and i64 %i.yx, 4294967295
  %i.yy = sub nsw i64 0, %21
  %i.yz = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.yf, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.yy, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.sroa.3.0.in.in.i = extractvalue { i64, i64 } %i.yz, 1 ; 2 uses
  %i.za = extractvalue { i64, i64 } %i.yz, 0
  %.sroa.22.8.extract.trunc.i.i.i = trunc i64 %.sroa.3.0.in.in.i to i8
  %.sroa.3.0.in.i = shl i64 %.sroa.3.0.in.in.i, 48
  %i.zb = ashr i64 %.sroa.3.0.in.i, 56
  %i.zc = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.za, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i, i64 noundef %i.zb, i64 noundef -1, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.sroa.3.0.in.in.i.i = extractvalue { i64, i64 } %i.zc, 1 ; 4 uses
  %i.zd = extractvalue { i64, i64 } %i.zc, 0      ; 2 uses
  %i.ze = load i32, ptr %i.s, align 8, !tbaa !31
  %i.zf = srem i64 %i.zd, 400
  %i.zg = add nsw i64 %i.zf, 2400
  %.sroa.4.8.extract.trunc.i23.i = trunc i64 %.sroa.3.0.in.in.i.i to i8 ; 2 uses
  %i.zh = icmp slt i8 %.sroa.4.8.extract.trunc.i23.i, 3
  %.neg.i.i24.i = sext i1 %i.zh to i64
  %i.zi = add nsw i64 %i.zg, %.neg.i.i24.i        ; 3 uses
  %i.zj = lshr i64 %i.zi, 2
  %.lhs.trunc.i.i25.i = trunc nuw nsw i64 %i.zi to i16 ; 2 uses
  %i.zk = udiv i16 %.lhs.trunc.i.i25.i, 100
  %.zext.i.i26.i = zext nneg i16 %i.zk to i64
  %i.zl = udiv i16 %.lhs.trunc.i.i25.i, 400
  %.zext10.i.i27.i = zext nneg i16 %i.zl to i64
  %sext.i28.i = shl i64 %.sroa.3.0.in.in.i.i, 56
  %i.zm = ashr exact i64 %sext.i28.i, 54
  %i.zn = getelementptr inbounds i8, ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.zm
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !23
  %.sroa.4.9.extract.shift15.i29.i = lshr i64 %.sroa.3.0.in.in.i.i, 8
  %.sroa.4.9.extract.trunc.i30.i = trunc i64 %.sroa.4.9.extract.shift15.i29.i to i8
  %i.zp = sext i8 %.sroa.4.9.extract.trunc.i30.i to i32
  %i.zq = add nsw i32 %i.zo, %i.zp
  %i.zr = sext i32 %i.zq to i64
  %i.zs = add nuw nsw i64 %i.zj, %i.zi
  %i.zt = add nsw i64 %i.zs, %i.zr
  %i.zu = sub nsw i64 %i.zt, %.zext.i.i26.i
  %i.zv = add nsw i64 %i.zu, %.zext10.i.i27.i
  %i.zw = srem i64 %i.zv, 7
  %i.zx = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.zw
  %i.zy = getelementptr i8, ptr %i.zx, i64 24
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !29
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i, %bb.fz ], [ 0, %_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i ] ; 4 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw, i64 %indvars.iv.i31.i
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !29
  %i.aac = icmp eq i32 %i.zz, %i.aab
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1
  br i1 %i.aac, label %.preheader.i33.preheader.i, label %bb.fz, !llvm.loop !71

.preheader.i33.preheader.i:                       ; preds = %bb.fz
  %switch.tableidx.i.i = add i32 %i.ze, -1
  %switch.tableidx..i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %switch.tableidx.i.i, i32 6)
  br label %.preheader.i33.i

.preheader.i33.i:                                 ; preds = %.preheader.i33.i, %.preheader.i33.preheader.i
  %indvars.iv17.i34.i = phi i64 [ %indvars.iv.next18.i35.i, %.preheader.i33.i ], [ %indvars.iv.i31.i, %.preheader.i33.preheader.i ]
  %indvars.iv.next18.i35.i = add nuw nsw i64 %indvars.iv17.i34.i, 1 ; 3 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw, i64 %indvars.iv.next18.i35.i
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !29
  %i.aaf = icmp eq i32 %switch.tableidx..i.i, %i.aae
  br i1 %i.aaf, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, label %.preheader.i33.i, !llvm.loop !72

_ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i: ; preds = %.preheader.i33.i
  %i.aag = sub nuw nsw i64 %indvars.iv.next18.i35.i, %indvars.iv.i31.i
  %22 = and i64 %i.aag, 4294967295
  %.sroa.3.0.in.i.i = shl i64 %.sroa.3.0.in.in.i.i, 48
  %i.aah = ashr i64 %.sroa.3.0.in.i.i, 56
  %i.aai = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.zd, i8 noundef signext %.sroa.4.8.extract.trunc.i23.i, i64 noundef %i.aah, i64 noundef %22, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.aai, 1 ; 2 uses
  %i.aaj = extractvalue { i64, i64 } %i.aai, 0
  %i.aak = mul nsw i32 %.0.ph.lcssa97912191238, 7
  %i.aal = sext i32 %i.aak to i64
  %.sroa.22.8.extract.trunc.i.i37.i = trunc i64 %.fca.1.extract.i.i.i.i to i8
  %.sroa.2.8.insert.insert.i.i.i.i.i = shl i64 %.fca.1.extract.i.i.i.i, 48
  %i.aam = ashr i64 %.sroa.2.8.insert.insert.i.i.i.i.i, 56
  %i.aan = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.aaj, i8 noundef signext %.sroa.22.8.extract.trunc.i.i37.i, i64 noundef %i.aam, i64 noundef %i.aal, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.aan, 1 ; 2 uses
  %i.aao = extractvalue { i64, i64 } %i.aan, 0    ; 2 uses
  %i.aap = sub nsw i64 %i.aao, %i.yf              ; 4 uses
  %.not.i854 = icmp eq i64 %i.aao, %i.yf
  br i1 %.not.i854, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit, label %bb.ga

bb.ga:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i
  %i.aaq = icmp sgt i64 %i.aap, 0
  br i1 %i.aaq, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aar = sub nuw nsw i64 9223372036854775807, %i.aap
  %i.aas = icmp sgt i64 %i.ye, %i.aar
  br i1 %i.aas, label %bb.ge, label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.aat = sub nsw i64 -9223372036854775808, %i.aap
  %i.aau = icmp slt i64 %i.ye, %i.aat
  br i1 %i.aau, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aav = add nsw i64 %i.aap, %i.ye
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, %bb.gd
  %i.aaw = phi i64 [ %i.ye, %_ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i ], [ %i.aav, %bb.gd ]
  %.sroa.5.8.extract.trunc.i = trunc i64 %.fca.1.extract.i.i.i to i8
  %i.aax = sext i8 %.sroa.5.8.extract.trunc.i to i32 ; 2 uses
  %i.aay = add nsw i32 %i.aax, -1
  store i32 %i.aay, ptr %i.o, align 16, !tbaa !25
  %.sroa.2.8.insert.insert.i.i.i44.i = lshr i64 %.fca.1.extract.i.i.i, 8
  %.sroa.5.9.extract.trunc.i = trunc i64 %.sroa.2.8.insert.insert.i.i.i44.i to i8
  %i.aaz = sext i8 %.sroa.5.9.extract.trunc.i to i32 ; 2 uses
  store i32 %i.aaz, ptr %i.p, align 4, !tbaa !70
  %.pre1074 = load i32, ptr %6, align 16, !tbaa !69
  br label %bb.gg

bb.ge:                                            ; preds = %bb.gc, %bb.gb
  %.not291 = icmp eq ptr %5, null
  br i1 %.not291, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !13
  %i.abc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.abb, ptr noundef nonnull @.str.13, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856 unwind label %bb.ft ; 0 uses

bb.gg:                                            ; preds = %._crit_edge, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit
  %i.abd = phi i32 [ %i.xz, %._crit_edge ], [ %.pre1074, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.abe = phi i32 [ %.pre1073, %._crit_edge ], [ %i.aaz, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.abf = phi i64 [ %.pre1072, %._crit_edge ], [ %i.aaw, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.abg = phi i32 [ %i.yd, %._crit_edge ], [ %i.aax, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.abh = sext i32 %i.abg to i64
  %i.abi = sext i32 %i.abe to i64
  %i.abj = load i32, ptr %i.q, align 8, !tbaa !65
  %i.abk = sext i32 %i.abj to i64
  %i.abl = load i32, ptr %i.r, align 4, !tbaa !73
  %i.abm = sext i32 %i.abl to i64
  %i.abn = sext i32 %i.abd to i64
  %i.abo = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.abf, i64 noundef %i.abh, i64 noundef %i.abi, i64 noundef %i.abk, i64 noundef %i.abm, i64 noundef %i.abn) #18 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.abo, 0
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.abo, 1 ; 3 uses
  store i64 %.fca.0.extract.i, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.fca.1.extract.i to i40
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.abp = trunc i64 %.fca.1.extract.i to i8
  %i.abq = sext i8 %i.abp to i32
  %.not292 = icmp eq i32 %i.abg, %i.abq
  br i1 %.not292, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.abr = lshr i64 %.fca.1.extract.i, 8
  %i.abs = trunc i64 %i.abr to i8
  %i.abt = sext i8 %i.abs to i32
  %i.abu = load i32, ptr %i.p, align 4, !tbaa !70
  %.not293 = icmp eq i32 %i.abu, %i.abt
  br i1 %.not293, label %bb.gl, label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.not301 = icmp eq ptr %5, null
  br i1 %.not301, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !13
  %i.abx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.abw, ptr noundef nonnull @.str.13, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858 unwind label %bb.gk ; 0 uses

bb.gk:                                            ; preds = %bb.gj, %bb.gq
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.gl:                                            ; preds = %bb.gh
  %i.abz = load i32, ptr %i.c, align 4, !tbaa !23 ; 5 uses
  %i.aca = icmp slt i32 %i.abz, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  br i1 %i.aca, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.acb = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS3_10second_tagEE3maxEv() ; 2 uses
  %i.acc = extractvalue { i64, i64 } %i.acb, 0
  %i.acd = extractvalue { i64, i64 } %i.acb, 1
  %i.ace = sext i32 %i.abz to i64
  %i.acf = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 %i.acc, i64 %i.acd, i64 noundef %i.ace) #18 ; 2 uses
  %i.acg = extractvalue { i64, i64 } %i.acf, 0
  store i64 %i.acg, ptr %14, align 8
  %i.ach = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aci = extractvalue { i64, i64 } %i.acf, 1
  store i64 %i.aci, ptr %i.ach, align 8
  %i.acj = call noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  br i1 %i.acj, label %.critedge, label %.critedge11

bb.gn:                                            ; preds = %bb.gl
  %.not946 = icmp eq i32 %i.abz, 0
  br i1 %.not946, label %.critedge11, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ack = zext nneg i32 %i.abz to i64
  %i.acl = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 -9223372036854775808, i64 257, i64 noundef %i.ack) #18 ; 2 uses
  %i.acm = extractvalue { i64, i64 } %i.acl, 0
  store i64 %i.acm, ptr %15, align 8
  %i.acn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aco = extractvalue { i64, i64 } %i.acl, 1
  store i64 %i.aco, ptr %i.acn, align 8
  %i.acp = call noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %i.acp, label %bb.gp, label %bb.gr

.critedge:                                        ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.gp

bb.gp:                                            ; preds = %.critedge, %bb.go
  %.not300 = icmp eq ptr %5, null
  br i1 %.not300, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.acq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858 unwind label %bb.gk ; 0 uses

.critedge11:                                      ; preds = %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.gr

bb.gr:                                            ; preds = %.critedge11, %bb.go
  %i.acr = sext i32 %i.abz to i64
  %.sroa.0.0.copyload.i = load i64, ptr %13, align 8, !tbaa !40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.acs = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEEl(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef %i.acr) #18 ; 2 uses
  %i.act = extractvalue { i64, i64 } %i.acs, 0
  %i.acu = extractvalue { i64, i64 } %i.acs, 1
  store i64 %i.act, ptr %13, align 8, !tbaa !40
  store i64 %i.acu, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZNK4absl12lts_2026052613time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::civil_lookup") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.gs unwind label %bb.gx

bb.gs:                                            ; preds = %bb.gr
  %i.acv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  switch i64 %i.acw, label %bb.hk [
    i64 9223372036854775807, label %bb.gt
    i64 -9223372036854775808, label %bb.hc
  ]

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i64 9223372036854775807, ptr %18, align 8
  invoke void @_ZNK4absl12lts_2026052613time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.gu unwind label %bb.gy

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.acx = call noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  br i1 %i.acx, label %bb.gv, label %.thread932

bb.gv:                                            ; preds = %bb.gu
  %.not294 = icmp eq ptr %5, null
  br i1 %.not294, label %bb.ha, label %bb.gw

end_hunk_1
