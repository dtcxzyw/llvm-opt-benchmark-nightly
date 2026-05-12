inline.NumInlined: 474
inline.NumDeleted: 60
begin_hunk_0_@u_charFromName_78
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::LocalPointer", align 8 ; 40 uses
  %i.a = alloca i32, align 4                      ; 67 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 19 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 2                          ; 2 uses
  %.not43 = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #9 ; 5 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7810UnicodeSetC1ERKNS_13UnicodeStringEjPKNS_11SymbolTableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.t, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %29

.thread:                                          ; preds = %bb.b
  %i.y = load i32, ptr %i.a, align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, label %29

29:                                               ; preds = %.thread, %bb.c
  %30 = load ptr, ptr %3, align 8                 ; 3 uses
  %31 = icmp eq ptr %30, null
  br i1 %31, label %bb.d, label %32

32:                                               ; preds = %29
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %30) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %30) #9
  br label %bb.d

bb.d:                                             ; preds = %32, %29
  store ptr %i.u, ptr %3, align 8
  br i1 %i.v, label %bb.e, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.f:                                             ; preds = %bb.c
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.u) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.u) #9
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %33 = load i32, ptr %i.a, align 4               ; 2 uses
  %i.aa = icmp slt i32 %33, 1
  %i.ab = icmp eq i32 %33, 7
  %or.cond = or i1 %i.aa, %i.ab
  br i1 %or.cond, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59, label %bb.g

end_hunk_1
begin_hunk_2_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  %i.am = call noundef ptr @_ZNK6icu_7810UnicodeSet13cloneAsThawedEv(ptr noundef nonnull align 8 dereferenceable(200) %i.al) #9 ; 5 uses
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %34

34:                                               ; preds = %bb.h
  %35 = load ptr, ptr %3, align 8                 ; 3 uses
  %36 = icmp eq ptr %35, null
  br i1 %36, label %bb.i, label %37

37:                                               ; preds = %34
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %35) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %35) #9
  br label %bb.i

bb.i:                                             ; preds = %37, %34
  store ptr %i.am, ptr %3, align 8
  %i.ap = icmp eq ptr %i.am, null
  br i1 %i.ap, label %bb.j, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59
end_hunk_2
begin_hunk_3_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.ay, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.az = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #9 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %i.ba, label %.thread84, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN6icu_7810UnicodeSetC1Eii(ptr noundef nonnull align 8 dereferenceable(200) %i.az, i32 noundef 0, i32 noundef 1114111) #9
  %i.bb = load i32, ptr %i.a, align 4
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %38

.thread84:                                        ; preds = %bb.n
  %i.bd = load i32, ptr %i.a, align 4
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59, label %38

38:                                               ; preds = %.thread84, %bb.o
  %39 = load ptr, ptr %3, align 8                 ; 3 uses
  %40 = icmp eq ptr %39, null
  br i1 %40, label %bb.p, label %41

41:                                               ; preds = %38
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %39) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %39) #9
  br label %bb.p

bb.p:                                             ; preds = %41, %38
  store ptr %i.az, ptr %3, align 8
  br i1 %i.ba, label %bb.q, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59

bb.q:                                             ; preds = %bb.p
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59

end_hunk_3
begin_hunk_4_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.a, align 4
  %i.bp = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #9 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null                 ; 2 uses
  br i1 %i.bq, label %.thread86, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bp) #9
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.w, label %42

.thread86:                                        ; preds = %bb.u
  %i.bt = load i32, ptr %i.a, align 4
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread, label %42

42:                                               ; preds = %.thread86, %bb.v
  %43 = load ptr, ptr %3, align 8                 ; 3 uses
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %43) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %43) #9
  br label %46

46:                                               ; preds = %45, %42
  store ptr %i.bp, ptr %3, align 8
  br i1 %i.bq, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread115, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread115: ; preds = %46
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread

bb.w:                                             ; preds = %bb.v
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bp) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bp) #9
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61: ; preds = %46, %bb.w
  %.pr113 = load i32, ptr %i.a, align 4
  %i.bv = icmp slt i32 %.pr113, 1
  br i1 %i.bv, label %_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread

_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit:    ; preds = %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 2) #9
  %47 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.bw, align 8
  %i.bx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 5, ptr nonnull @.str.5) #9 ; 0 uses
  %i.by = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet18applyPropertyAliasERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %47, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
end_hunk_4
begin_hunk_5_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.a, align 4
  %i.do = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #9 ; 5 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  br i1 %i.dp, label %.thread88, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.do) #9
  %i.dq = load i32, ptr %i.a, align 4
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.an, label %48

.thread88:                                        ; preds = %bb.al
  %i.ds = load i32, ptr %i.a, align 4
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread, label %48

48:                                               ; preds = %.thread88, %bb.am
  %49 = load ptr, ptr %3, align 8                 ; 3 uses
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %49) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %49) #9
  br label %52

52:                                               ; preds = %51, %48
  store ptr %i.do, ptr %3, align 8
  br i1 %i.dp, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62.thread119, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62.thread119: ; preds = %52
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread

bb.an:                                            ; preds = %bb.am
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.do) #9
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.do) #9
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62: ; preds = %52, %bb.an
  %.pr117 = load i32, ptr %i.a, align 4
  %i.du = icmp slt i32 %.pr117, 1
  br i1 %i.du, label %bb.ao, label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread

bb.ao:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62
  store ptr @.str.12, ptr %10, align 8
  %i.dv = call noundef signext i8 @_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %10, i32 noundef -1)
  %i.dw = icmp eq i8 %i.dv, 0
end_hunk_5
begin_hunk_6_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %53 = load ptr, ptr %3, align 8                 ; 2 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %53, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.dy = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEv(ptr noundef nonnull align 8 dereferenceable(200) %53) #9 ; 0 uses
  br label %bb.by

bb.aq:                                            ; preds = %bb.ao
end_hunk_6
begin_hunk_7_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %54 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %54, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.as:                                            ; preds = %bb.aq
end_hunk_7
begin_hunk_8_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.ed, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %55 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L22addIdentifierIgnorableEPNS_10UnicodeSetER10UErrorCode(ptr noundef %55, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.au:                                            ; preds = %bb.as
end_hunk_8
begin_hunk_9_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.eg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %56 = load ptr, ptr %3, align 8
  %i.ei = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %56, i32 noundef 0, i32 noundef 31) #9
  %i.ej = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.ei, i32 noundef 127, i32 noundef 159) #9 ; 0 uses
  br label %bb.by

end_hunk_9
begin_hunk_10_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.el, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %57 = load ptr, ptr %3, align 8                 ; 8 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 33554432, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 4194304, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 1024, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 256, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %57, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L22addIdentifierIgnorableEPNS_10UnicodeSetER10UErrorCode(ptr noundef %57, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.ay:                                            ; preds = %bb.aw
end_hunk_10
begin_hunk_11_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.eo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %58 = load ptr, ptr %3, align 8                 ; 4 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %58, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %58, i32 noundef 1024, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %58, i32 noundef 33554432, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %58, i32 noundef 4194304, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.ba:                                            ; preds = %bb.ay
end_hunk_11
begin_hunk_12_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.er, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %59 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %59, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bc:                                            ; preds = %bb.ba
end_hunk_12
begin_hunk_13_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.eu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %60 = load ptr, ptr %3, align 8                 ; 2 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %60, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %60, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.be:                                            ; preds = %bb.bc
end_hunk_13
begin_hunk_14_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %61 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %61, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bg:                                            ; preds = %bb.be
end_hunk_14
begin_hunk_15_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fa, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %62 = load ptr, ptr %3, align 8
  %i.fc = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet21applyIntPropertyValueE9UPropertyiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %62, i32 noundef 3, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9 ; 0 uses
  br label %bb.by

bb.bi:                                            ; preds = %bb.bg
end_hunk_15
begin_hunk_16_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fe, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %63 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %63, i32 noundef 28672, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bk:                                            ; preds = %bb.bi
end_hunk_16
begin_hunk_17_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %64 = load ptr, ptr %3, align 8
  %i.fj = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %64, i32 noundef 65536, i32 noundef 1114111) #9 ; 0 uses
  br label %bb.by

bb.bm:                                            ; preds = %bb.bk
end_hunk_17
begin_hunk_18_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %65 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %65, i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
end_hunk_18
begin_hunk_19_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fo, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %66 = load ptr, ptr %3, align 8                 ; 2 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %66, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %66, i32 noundef 1024, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bq:                                            ; preds = %bb.bo
end_hunk_19
begin_hunk_20_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %67 = load ptr, ptr %3, align 8                 ; 7 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 4194304, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 1024, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 256, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %67, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call fastcc void @_ZN6icu_78L22addIdentifierIgnorableEPNS_10UnicodeSetER10UErrorCode(ptr noundef %67, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bs:                                            ; preds = %bb.bq
end_hunk_20
begin_hunk_21_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %68 = load ptr, ptr %3, align 8
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %68, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
end_hunk_21
begin_hunk_22_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.fx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %69 = load ptr, ptr %3, align 8
  %i.fz = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %69, i32 noundef 0, i32 noundef 1114111) #9 ; 0 uses
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
end_hunk_22
begin_hunk_23_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  br i1 %i.gb, label %bb.bx, label %.thread121

bb.bx:                                            ; preds = %bb.bw
  %70 = load ptr, ptr %3, align 8                 ; 3 uses
  call fastcc void @_ZN6icu_78L11addCategoryEPNS_10UnicodeSetEiR10UErrorCode(ptr noundef %70, i32 noundef 28672, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #9
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %28) #9
  %i.gd = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %28, i32 noundef 160) #9
  %i.ge = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.gd, i32 noundef 8199) #9
  %i.gf = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ge, i32 noundef 8239) #9
  %i.gg = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %70, ptr noundef nonnull align 8 dereferenceable(200) %i.gf) #9 ; 0 uses
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %28) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #9
  %i.gh = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %70, i32 noundef 9, i32 noundef 13) #9
  %i.gi = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.gh, i32 noundef 28, i32 noundef 31) #9 ; 0 uses
  br label %bb.by

end_hunk_23
begin_hunk_24_@_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa:bb.a
  store i32 66308, ptr %i.a, align 4
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread: ; preds = %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62.thread119, %.thread88, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread115, %.thread86, %.thread121, %bb.by, %bb.ca, %bb.bz, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62, %bb.ah, %bb.aj, %bb.ai, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61, %bb.cb, %bb.aa, %_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit
  %.1 = phi i8 [ %2, %bb.cb ], [ %2, %_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit ], [ %2, %bb.aa ], [ %2, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61 ], [ %.035, %bb.ah ], [ %2, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62 ], [ %.035, %bb.ai ], [ %.035, %bb.aj ], [ %2, %bb.bz ], [ %2, %bb.ca ], [ %2, %bb.by ], [ %2, %.thread121 ], [ %2, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread115 ], [ %2, %.thread86 ], [ %2, %.thread88 ], [ %2, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit62.thread119 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59

_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit59: ; preds = %.thread84, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.j, %bb.i, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread
  %.2 = phi i8 [ %.1, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit61.thread ], [ %2, %_ZN6icu_7812LocalPointerINS_10UnicodeSetEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit ], [ %2, %bb.l ], [ %2, %bb.i ], [ %2, %bb.j ], [ %2, %bb.k ], [ %2, %bb.r ], [ %2, %bb.p ], [ %2, %bb.q ], [ %2, %.thread84 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.gn = load i32, ptr %i.a, align 4             ; 3 uses
end_hunk_24
