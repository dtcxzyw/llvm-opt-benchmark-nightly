inline.NumInlined: 145
inline.NumDeleted: 41
begin_hunk_0_@uloc_isRightToLeft_78:bb.a
bb.n:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit25
  %i.ar = load ptr, ptr %2, align 8
  call void @uprv_free_78(ptr noundef %i.ar) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit27

_ZN6icu_7810CharStringD2Ev.exit27:                ; preds = %_ZN6icu_7810CharStringD2Ev.exit25, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i8 %.3
}

declare void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_7810CharStringES5_S5_S5_PPKcR10UErrorCode(i64, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @u_getPropertyValueEnum_78(i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @uscript_isRightToLeft_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK6icu_786Locale13isRightToLeftEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  %i.b = tail call signext i8 @uloc_isRightToLeft_78(ptr noundef %i.a)
  ret i8 %i.b
}

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z39ulocimp_getRegionForSupplementalData_78PKcbR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::CharString") align 8 %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.g, align 8
  store i8 0, ptr %i.d, align 1
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 2, ptr nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @uloc_getDefault_78() #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %i.m, %bb.f ], [ %1, %bb.e ]   ; 2 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #10
  call void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %4, i64 %i.o, ptr nonnull %i.n, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %i.p = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4) #10 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i8, ptr %i.q, align 4
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.s) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.t = load i32, ptr %3, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.v = load i32, ptr %i.j, align 8
  %i.w = icmp eq i32 %i.v, 0
  %or.cond = and i1 %2, %i.w
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call fastcc void @_ZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef %1, i64 2, ptr nonnull @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.x = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %5) #10 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.z = load i8, ptr %i.y, align 4
  %.not.i.i.i23 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i23, label %_ZN6icu_7810CharStringD2Ev.exit24, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.aa) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit24

_ZN6icu_7810CharStringD2Ev.exit24:                ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ab = load i32, ptr %3, align 4
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = load i32, ptr %i.j, align 8
  %.not36 = icmp eq i32 %i.ad, 0
  %or.cond37 = select i1 %i.ac, i1 %.not36, i1 false
  br i1 %or.cond37, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_Z27ulocimp_addLikelySubtags_78PKcR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ag = load ptr, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  call void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, i64 %i.aj, ptr %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %i.ak = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %7) #10 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.am = load i8, ptr %i.al, align 4
  %.not.i.i.i27 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i27, label %_ZN6icu_7810CharStringD2Ev.exit28, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.an) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit28

_ZN6icu_7810CharStringD2Ev.exit28:                ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit28, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ap = load i8, ptr %i.ao, align 4
  %.not.i.i.i29 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i29, label %_ZN6icu_7810CharStringD2Ev.exit30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %6, align 8
  call void @uprv_free_78(ptr noundef %i.aq) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit30

_ZN6icu_7810CharStringD2Ev.exit30:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.d, %_ZN6icu_7810CharStringD2Ev.exit24, %_ZN6icu_7810CharStringD2Ev.exit30, %bb.i, %_ZN6icu_7810CharStringD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, ptr noundef %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %4, align 4
  %i.h = icmp slt i32 %i.g, 1
  %i.i = add i32 %i.f, -3
  %i.j = icmp ult i32 %i.i, 4
  %or.cond3 = and i1 %i.j, %i.h
  br i1 %or.cond3, label %bb.b, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %5, align 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.l) #10
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.p) #10
  %.not12 = icmp eq i8 %i.q, 0
  br i1 %.not12, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.g, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid) #10
  %.not13 = icmp eq i32 %i.t, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817RegionValidateMapE, i64 16), ptr @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, i64 8), ptr noundef nonnull align 16 dereferenceable(88) @_ZN12_GLOBAL__N_115gValidRegionMapE, i64 88, i1 false)
  %i.u = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7817RegionValidateMapD2Ev, ptr nonnull @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, ptr nonnull @__dso_handle) #10 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = load ptr, ptr %5, align 8                ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.w) #10
  %.not.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.y) #10
  %.not5.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not5.i.i, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i

_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i:  ; preds = %bb.h
  %i.ab = call signext i8 @uprv_toupper_78(i8 noundef signext %i.w) #10
  %i.ac = sext i8 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, 26
  %i.ae = call signext i8 @uprv_toupper_78(i8 noundef signext %i.y) #10
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ad, -1755
  %i.ah = add nsw i32 %i.ag, %i.af                ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit

_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit:    ; preds = %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i
  %i.aj = lshr i32 %i.ah, 5
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, i64 8), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = and i32 %i.ah, 31
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.an
  %.not17 = icmp eq i64 %i.ar, 0
  br i1 %.not17, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit
  %i.as = load ptr, ptr %5, align 8
  %i.at = load i8, ptr %i.as, align 1
  %i.au = call signext i8 @uprv_toupper_78(i8 noundef signext %i.at) #10
  %i.av = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 noundef signext %i.au, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 0 uses
  %i.aw = load ptr, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = call signext i8 @uprv_toupper_78(i8 noundef signext %i.ay) #10
  %i.ba = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 noundef signext %i.az, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 0 uses
  br label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread

_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i, %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit, %bb.i, %bb.c, %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bc = load i8, ptr %i.bb, align 4
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread
  %i.bd = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.bd) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

declare void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7817RegionValidateMapC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817RegionValidateMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 16 dereferenceable(88) @_ZN12_GLOBAL__N_115gValidRegionMapE, i64 88, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817RegionValidateMapD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817RegionValidateMapD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7817RegionValidateMap5isSetEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.a) #10
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.d) #10
  %.not5.i = icmp eq i8 %i.e, 0
  br i1 %.not5.i, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread

_ZNK6icu_7817RegionValidateMap5valueEPKc.exit:    ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1
  %i.j = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.i) #10
  %i.k = sext i8 %i.j to i32
  %i.l = mul nsw i32 %i.k, 26
  %i.m = load i8, ptr %i.c, align 1
  %i.n = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.m) #10
  %i.o = sext i8 %i.n to i32
  %i.p = add nsw i32 %i.l, -1755
  %i.q = add nsw i32 %i.p, %i.o                   ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = lshr i32 %i.q, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = and i32 %i.q, 31
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 1, %i.z
  %i.ab = and i64 %i.aa, %i.x
  %i.ac = icmp ne i64 %i.ab, 0
  br label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread

_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit, %bb.d
  %.0 = phi i1 [ %i.ac, %bb.d ], [ false, %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -5211, 1675) i32 @_ZNK6icu_7817RegionValidateMap5valueEPKc(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.a) #10
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.d) #10
end_hunk_0
