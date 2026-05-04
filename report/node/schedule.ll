inline.NumInlined: 343
inline.NumDeleted: 117
begin_hunk_0_@_ZN2v88internal8compiler10BasicBlock14AddPredecessorEPS2_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler10BasicBlock17RemovePredecessorEm(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10BasicBlock17RemovePredecessorEm:bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr nonnull align 8 %i.g, i64 %i.j, i1 false)
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  store ptr %i.l, ptr %i.d, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10BasicBlock15set_loop_headerEPS2_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8compiler10BasicBlock9TrimNodesEPPNS1_4NodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10BasicBlock9TrimNodesEPPNS1_4NodeE:bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h
  store ptr %i.i, ptr %i.a, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10BasicBlock5PrintEv
define hidden void @_ZN2v88internal8compiler10BasicBlock5PrintEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr null, ptr %i.b, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10BasicBlock5PrintEv:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #21 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1, i64 noundef 3) #21 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.j, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %.sroa.0.0.copyload.i.i.i) #21 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str, i64 noundef 1) #21 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.m = load ptr, ptr %i.g, align 8              ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10BasicBlock5PrintEv:bb.a
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10BasicBlock5PrintEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #21, !inline_history !8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21, !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

end_hunk_7
begin_hunk_8_@_ZN2v88internal12StdoutStreamD1Ev:bb.a
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@_ZN2v88internal12StdoutStreamD1Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #21
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21
  ret void
}

end_hunk_9
begin_hunk_10_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_10BasicBlockE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 3) #21 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.sroa.0.0.copyload.i) #21 ; 0 uses
  ret ptr %0
}

end_hunk_10
begin_hunk_11_@_ZN2v88internal8compilerlsERSoRKNS1_10BasicBlock2IdE
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_10BasicBlock2IdE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.a) #21
  ret ptr %i.b
}

end_hunk_11
begin_hunk_12_@_ZN2v88internal8compilerlsERSoRKNS1_10BasicBlock7ControlE:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 4) #21 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 4) #21 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 4) #21 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 6) #21 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 6) #21 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 10) #21 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 8) #21 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 6) #21 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 5) #21 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #22
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler8ScheduleC2EPNS0_4ZoneEm:bb.a
  br i1 %i.n, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 168) #21
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit.i

end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler8ScheduleC2EPNS0_4ZoneEm:bb.a
  br i1 %i.bb, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit.i5, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler8Schedule13NewBasicBlockEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 noundef 168) #21
  %.pre.i.i.i7 = load i64, ptr %i.ay, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit.i5

end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler8Schedule13NewBasicBlockEv:bb.a
  br i1 %i.p, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 168) #21
  %.pre.i.i = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10BasicBlockEJRPS1_NS4_2IdEEEEPT_DpOT0_.exit

end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler8Schedule8PlanNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 304
  store ptr null, ptr %i.d, align 8
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler8Schedule8PlanNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.h) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.j = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #21 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.12, i64 noundef 10) #21 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 16777215
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %i.o) #21 ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.13, i64 noundef 1) #21 ; 0 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler8Schedule8PlanNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa) #21
  br label %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #21
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.t, i64 noundef %i.ab) #21 ; 0 uses
  br label %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit

_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit: ; preds = %bb.c, %bb.d
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.14, i64 noundef 22) #21 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %.sroa.0.0.copyload.i) #21 ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str, i64 noundef 1) #21 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.c, align 8
  %i.ah = load ptr, ptr %i.i, align 8             ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN2v88internal8compiler8Schedule8PlanNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #21, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit, %bb.e
end_hunk_19
begin_hunk_20_@_ZN2v88internal8compiler8Schedule8PlanNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21, !inline_history !8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #21, !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.a
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 304
  store ptr null, ptr %i.d, align 8
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.h) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.j = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #21 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.15, i64 noundef 8) #21 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 16777215
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %i.o) #21 ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.13, i64 noundef 1) #21 ; 0 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa) #21
  br label %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #21
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.t, i64 noundef %i.ab) #21 ; 0 uses
  br label %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit

_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit: ; preds = %bb.c, %bb.d
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.16, i64 noundef 7) #21 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %.sroa.0.0.copyload.i) #21 ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str, i64 noundef 1) #21 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.c, align 8
  %i.ah = load ptr, ptr %i.i, align 8             ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #21, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_.exit, %bb.e
end_hunk_24
begin_hunk_25_@_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21, !inline_history !8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #21, !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.a
end_hunk_25
begin_hunk_26_@_ZN2v88internal8compiler8Schedule7AddGotoEPNS1_10BasicBlockES4_:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_26
begin_hunk_27_@_ZN2v88internal8compiler8Schedule7AddCallEPNS1_10BasicBlockEPNS1_4NodeES4_S4_:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_27
begin_hunk_28_@_ZN2v88internal8compiler8Schedule9AddBranchEPNS1_10BasicBlockEPNS1_4NodeES4_S4_:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_28
begin_hunk_29_@_ZN2v88internal8compiler8Schedule9AddSwitchEPNS1_10BasicBlockEPNS1_4NodeEPS4_m:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_29
begin_hunk_30_@_ZN2v88internal8compiler8Schedule11AddTailCallEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_30
begin_hunk_31_@_ZN2v88internal8compiler8Schedule9AddReturnEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_31
begin_hunk_32_@_ZN2v88internal8compiler8Schedule13AddDeoptimizeEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_32
begin_hunk_33_@_ZN2v88internal8compiler8Schedule8AddThrowEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_33
begin_hunk_34_@_ZN2v88internal8compiler8Schedule12InsertBranchEPNS1_10BasicBlockES4_PNS1_4NodeES4_S4_:bb.a
  br i1 %.not43, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_34
begin_hunk_35_@_ZN2v88internal8compiler8Schedule12InsertBranchEPNS1_10BasicBlockES4_PNS1_4NodeES4_S4_:bb.a
  br i1 %i.e, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #22
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_35
begin_hunk_36_@_ZN2v88internal8compiler8Schedule12InsertSwitchEPNS1_10BasicBlockES4_PNS1_4NodeEPS4_m:bb.a
  br i1 %.not41, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_36
begin_hunk_37_@_ZN2v88internal8compiler8Schedule12InsertSwitchEPNS1_10BasicBlockES4_PNS1_4NodeEPS4_m:bb.a
  br i1 %i.e, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #22
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_37
begin_hunk_38_@_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv:bb.a
  %i.an = ptrtoint ptr %i.bf to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.q, align 8
end_hunk_38
begin_hunk_39_@_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv:bb.a

..critedge.loopexit_crit_edge.us:                 ; preds = %bb.c, %bb.e
  %i.bc = phi ptr [ %i.bk, %bb.e ], [ %i.aj, %bb.c ]
  tail call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef %i.bc) #21
  tail call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #21
  %i.bd = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.04256.us ; 4 uses
  %i.bf = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
end_hunk_39
begin_hunk_40_@_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv:bb.a
_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.f, %bb.g
  %.sink.i.i = phi ptr [ %i.cj, %bb.g ], [ %i.cf, %bb.f ]
  %i.ck = load ptr, ptr %.sink.i.i, align 8
  tail call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef %i.ck) #21
  tail call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bv) #21
  %i.cl = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.04256 ; 4 uses
  %i.cn = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
end_hunk_40
begin_hunk_41_@_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv:bb.a
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cm, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false)
  %i.ct = load ptr, ptr %i.q, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 2 uses
  store ptr %i.cu, ptr %i.q, align 8
end_hunk_41
begin_hunk_42_@_ZN2v88internal8compiler8Schedule8MovePhisEPNS1_10BasicBlockES4_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.e, align 8
  store ptr %i.m, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.013 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
end_hunk_42
begin_hunk_43_@_ZN2v88internal8compiler8Schedule8MovePhisEPNS1_10BasicBlockES4_:bb.a
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr nonnull align 8 %i.ag, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store ptr %i.al, ptr %i.a, align 8
end_hunk_43
begin_hunk_44_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a
  br i1 %i.l, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph92
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 11) #21 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.o) #21 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.22, i64 noundef 3) #21 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %.sroa.0.0.copyload.i) #21 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i8, ptr %i.t, align 8, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 11) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_44
begin_hunk_45_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 4) #21 ; 0 uses
  %.pre = load ptr, ptr %i.z, align 8
  %.pre96 = load ptr, ptr %i.x, align 8
  br label %bb.f
end_hunk_45
begin_hunk_46_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ah) #21 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not68.peel = icmp eq ptr %i.aj, %i.ac
  br i1 %.not68.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.f
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 5) #21 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 80
end_hunk_46
begin_hunk_47_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a
.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.06476 = phi ptr [ %i.av, %.lr.ph.peel.next ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load ptr, ptr %.06476, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 2) #21 ; 0 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.at) #21 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06476, i64 8 ; 2 uses
  %.not68 = icmp eq ptr %i.av, %i.ac
  br i1 %.not68, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !28
end_hunk_47
begin_hunk_48_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a
.lr.ph81:                                         ; preds = %._crit_edge, %bb.h
  %.06579 = phi ptr [ %i.bf, %bb.h ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.ay = load ptr, ptr %.06579, align 8          ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 2) #21 ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #21 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bb, align 8
  %.not74 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph81
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 3) #21 ; 0 uses
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.bb, align 8
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %.sroa.0.0.copyload.i.i73) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph81
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) #21 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06579, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.bf, %i.ao
  br i1 %.not69, label %._crit_edge82, label %.lr.ph81

bb.i:                                             ; preds = %._crit_edge82
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 2) #21 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.bi, null
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bi) #21 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 4) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 4) #21 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 112
end_hunk_48
begin_hunk_49_@_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE:bb.a

.lr.ph87.preheader:                               ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bn, align 8
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bt) #21 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not72.peel = icmp eq ptr %i.bv, %i.bp
  br i1 %.not72.peel, label %._crit_edge88, label %.lr.ph87.peel.next

._crit_edge88:                                    ; preds = %.lr.ph87.peel.next, %.lr.ph87.preheader, %bb.l
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) #21 ; 0 uses
  br label %bb.m

.lr.ph87.peel.next:                               ; preds = %.lr.ph87.preheader, %.lr.ph87.peel.next
  %.06285 = phi ptr [ %i.cd, %.lr.ph87.peel.next ], [ %i.bv, %.lr.ph87.preheader ] ; 2 uses
  %i.bx = load ptr, ptr %.06285, align 8
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 2) #21 ; 0 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cb) #21 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06285, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.cd, %i.bp
  br i1 %.not72, label %._crit_edge88, label %.lr.ph87.peel.next, !llvm.loop !30
end_hunk_49
begin_hunk_50_@_ZN2v88internal8OFStreamD1Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #21
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21
  ret void
}

end_hunk_50
begin_hunk_51_@_ZN2v88internal8OFStreamD0Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #21, !inline_history !31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21, !inline_history !31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #23
  ret void
}

end_hunk_51
begin_hunk_52_@_ZTv0_n24_N2v88internal8OFStreamD1Ev:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21, !inline_history !31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !31
  ret void
}

end_hunk_52
begin_hunk_53_@_ZTv0_n24_N2v88internal8OFStreamD0Ev:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21, !inline_history !32
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #23, !inline_history !33
  ret void
}

end_hunk_53
begin_hunk_54_@_ZN2v88internal12StdoutStreamD0Ev:bb.a
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_54
begin_hunk_55_@_ZN2v88internal12StdoutStreamD0Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #21, !inline_history !8
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21, !inline_history !8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #23
  ret void
}

end_hunk_55
begin_hunk_56_@_ZTv0_n24_N2v88internal12StdoutStreamD1Ev:bb.a
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_56
begin_hunk_57_@_ZTv0_n24_N2v88internal12StdoutStreamD1Ev:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #21, !inline_history !8
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !8
  ret void
}

end_hunk_57
begin_hunk_58_@_ZTv0_n24_N2v88internal12StdoutStreamD0Ev:bb.a
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !34
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_58
begin_hunk_59_@_ZTv0_n24_N2v88internal12StdoutStreamD0Ev:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #21, !inline_history !34
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #23, !inline_history !35
  ret void
}

end_hunk_59
begin_hunk_60_@_ZdlPvm

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

end_hunk_60
begin_hunk_61_@_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
end_hunk_61
begin_hunk_62_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm:bb.a
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.32) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_62
begin_hunk_63_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm:bb.a
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit

end_hunk_63
begin_hunk_64_@_ZN2v88internal4Zone6ExpandEm
declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
end_hunk_64
begin_hunk_65_@_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm:bb.a
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.32) #22
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_65
begin_hunk_66_@_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm:bb.a
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

end_hunk_66
begin_hunk_67_@_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_67
begin_hunk_68_@llvm.memset.p0.i64
attributes #14 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_68
