Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #34, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.i) #34
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #34
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb1ENS0_6parserIjEEEC2IJA22_cNS0_4descENS0_13LocationClassIjEENS0_12OptionHiddenENS0_11initializerIiEEEEEDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef 0, i32 noundef 0) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i8 0, ptr %i.c, align 4, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr %i.b, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb1ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %1) #34
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nonnull align 1 dereferenceable(22) %1, i64 %i.f) #34
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.g, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !66
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !69
  store ptr @.str.64, ptr %6, align 8, !tbaa !70
  store i8 3, ptr %i.i, align 8, !tbaa !71
  %i.k = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #34
  %i.l = call noundef zeroext i1 @_ZN4llvm2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN4llvm2cl5applyINS0_3optIjLb1ENS0_6parserIjEEEEA22_cJNS0_4descENS0_13LocationClassIjEENS0_12OptionHiddenENS0_11initializerIiEEEEEvPT_RKT0_DpRKT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %3, align 8, !tbaa !1297, !nonnull !51, !align !72 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !61
  %i.n = load i32, ptr %i.m, align 4, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.n, ptr %i.o, align 8, !tbaa !74
  br label %_ZN4llvm2cl5applyINS0_3optIjLb1ENS0_6parserIjEEEEA22_cJNS0_4descENS0_13LocationClassIjEENS0_12OptionHiddenENS0_11initializerIiEEEEEvPT_RKT0_DpRKT1_.exit

_ZN4llvm2cl5applyINS0_3optIjLb1ENS0_6parserIjEEEEA22_cJNS0_4descENS0_13LocationClassIjEENS0_12OptionHiddenENS0_11initializerIiEEEEEvPT_RKT0_DpRKT1_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.m, %bb.c ]
  %i.q = load i32, ptr %4, align 4, !tbaa !76
  %i.r = trunc i32 %i.q to i16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2
  %i.u = shl i16 %i.r, 5
  %i.v = and i16 %i.u, 96
  %i.w = and i16 %i.t, -97
  %i.x = or disjoint i16 %i.v, %i.w
  store i16 %i.x, ptr %i.s, align 2
  %i.y = load ptr, ptr %5, align 8, !tbaa !1299, !nonnull !51, !align !72
  %i.z = load i32, ptr %i.y, align 4, !tbaa !73   ; 2 uses
  store i32 %i.z, ptr %i.p, align 4, !tbaa !73
  store i8 1, ptr %i.c, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !74
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb1ENS0_6parserIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb1ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #34, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.i) #34
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #34
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #34, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.i) #34
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #34
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12RegsForValueC2ERKNS_11SmallVectorINS_8RegisterELj4EEENS_3MVTENS_3EVTESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, i16 %2, i16 %3, ptr %4, i64 %5) unnamed_addr #3 align 2 {
.lr.ph.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !77
  store i16 %3, ptr %i.a, align 8, !tbaa !79
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !81
  store i32 1, ptr %6, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 4, ptr %7, align 8, !tbaa !85
  store i16 %2, ptr %i.d, align 8, !tbaa !79
  store i64 1, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 4, ptr %i.i, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82   ; 6 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = icmp eq ptr %i.f, %1
  %or.cond.i = or i1 %i.l, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EEC2ERKS2_.exit, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = icmp ugt i32 %i.k, 4
  br i1 %i.m, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.a
  %i.n = zext i32 %i.k to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.g, i64 noundef %i.n, i64 noundef 4) #34
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !54
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.a
  %i.o = phi ptr [ %.pre, %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.g, %bb.a ]
  %i.p = phi i32 [ %.pre.i, %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.k, %bb.a ]
  %i.q = zext i32 %i.p to i64
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %gepdiff.i.i = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 4 %i.r, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.k, ptr %i.h, align 8, !tbaa !82
  %.pre10 = load i32, ptr %i.j, align 8, !tbaa !82
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EEC2ERKS2_.exit

_ZN4llvm11SmallVectorINS_8RegisterELj4EEC2ERKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.sink.split.i.i
  %i.s = phi i32 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %.pre10, %.sink.split.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %.ptr9, ptr %i.t, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 4, ptr %i.v, align 4, !tbaa !77
  store i32 %i.s, ptr %.ptr9, align 8, !tbaa !73
  store i32 1, ptr %i.u, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %5, ptr %i.w, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12RegsForValueC2ERNS_11LLVMContextERKNS_14TargetLoweringERKNS_10DataLayoutENS_8RegisterEPNS_4TypeESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(912) %3, i32 %4, ptr noundef %5, i64 %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::TypeSize", align 8    ; 3 uses
  %.sroa.045.0.extract.trunc = trunc i64 %6 to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.d, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 4, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.i, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 4, ptr %i.k, align 4, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.m, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 4, ptr %i.o, align 4, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !88
  store i64 0, ptr %7, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %.sroa.225.0..sroa_idx, align 8
  tail call void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::TypeSize") align 8 %7) #34
  store i64 %6, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %._crit_edge57, label %.lr.ph56

._crit_edge57:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, %bb.a
  ret void

.lr.ph56:                                         ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.03854 = phi ptr [ %i.ba, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ], [ %i.r, %bb.a ] ; 3 uses
  %.sroa.048.053 = phi i32 [ %i.az, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ], [ %4, %bb.a ] ; 2 uses
  %.sroa.018.0.copyload = load i16, ptr %.03854, align 8, !tbaa !79 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.03854, i64 8
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !81 ; 4 uses
  %i.v = load i8, ptr %i.q, align 4, !tbaa !88, !range !50, !noundef !51
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 744
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sroa.045.0.extract.trunc, i16 %.sroa.018.0.copyload, ptr %.sroa.11.0.copyload) #34
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 728
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %.sroa.018.0.copyload, ptr %.sroa.11.0.copyload, i32 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %i.aa, %bb.b ], [ %i.ad, %bb.c ] ; 5 uses
  %i.af = load i8, ptr %i.q, align 4, !tbaa !88, !range !50, !noundef !51
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 736
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i16 %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sroa.045.0.extract.trunc, i16 %.sroa.018.0.copyload, ptr %.sroa.11.0.copyload) #34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = tail call i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %.sroa.018.0.copyload, ptr %.sroa.11.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.08.0 = phi i16 [ %i.ak, %bb.e ], [ %i.al, %bb.f ] ; 2 uses
  %.not4050 = icmp eq i32 %i.ae, 0
  br i1 %.not4050, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.g
  %i.am = load i64, ptr %i.f, align 8, !tbaa !86  ; 2 uses
  %i.an = load i64, ptr %i.g, align 8, !tbaa !85
  %.not.i = icmp ult i64 %i.am, %i.an
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !89

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i16 %.sroa.08.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE9push_backES1_.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.am
  store i16 %.sroa.08.0, ptr %i.ap, align 1
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !86
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.f, align 8, !tbaa !86
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE9push_backES1_.exit: ; preds = %bb.h, %bb.i
  %i.as = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.at = load i32, ptr %i.o, align 4, !tbaa !77
  %.not.i41 = icmp ult i32 %i.as, %i.at
  br i1 %.not.i41, label %bb.k, label %bb.j, !prof !89

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE9push_backES1_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE9push_backES1_.exit
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.au
  store i32 %i.ae, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !82
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.n, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.j, %bb.k
  %i.az = add i32 %i.ae, %.sroa.048.053
  %i.ba = getelementptr inbounds nuw i8, ptr %.03854, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.u
end_hunk_0
