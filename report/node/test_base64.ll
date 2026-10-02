Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/test_base64?download=true
inline.NumInlined: 160
inline.NumDeleted: 97
begin_hunk_0_@"_ZZN22Base64Test_Decode_Test8TestBodyEvENK3$_0clEPKcS2_":bb.a
  call void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef %i.aa) #11
  call void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ab = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #11, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN6nbytes12Base64DecodeIcEEmPcmPKT_m.exit, %_ZN7testing7MessageD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i10, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #15
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #15
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @_ZdaPv(ptr noundef nonnull %i.c) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22Base64Test_Encode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25Base64Test_EncodeURL_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22Base64Test_Decode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI22Base64Test_Encode_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI22Base64Test_Encode_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 3 uses
  tail call void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22Base64Test_Encode_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf25base64_length_from_binaryEmNS_14base64_optionsE(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_S2_S2_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI25Base64Test_EncodeURL_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI25Base64Test_EncodeURL_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 3 uses
  tail call void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV25Base64Test_EncodeURL_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI22Base64Test_Decode_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI22Base64Test_Decode_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 3 uses
  tail call void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22Base64Test_Decode_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes16Base64DecodeFastIcEEmPcmPKT_mm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %1, i64 %4) ; 3 uses
  %i.d = urem i64 %i.c, 3
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = and i64 %3, -4                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.c, 2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.j = phi i64 [ %i.az, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %i.k = phi i64 [ %i.ba, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %.03446 = phi i64 [ %.2, %bb.e ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 4 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1               ; 3 uses
  %i.v = getelementptr i8, ptr %i.l, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %i.aa = getelementptr i8, ptr %i.l, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = zext i8 %i.p to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = zext i8 %i.u to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %5 = or disjoint i32 %i.ai, %i.ag
  %i.aj = zext i8 %i.z to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = zext i8 %i.ae to i32
  %i.am = or disjoint i32 %5, %i.ak
  %i.an = or disjoint i32 %i.am, %i.al
  %i.ao = and i32 %i.an, -2139062144
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ap = call noundef zeroext i1 @_ZN6nbytes21Base64DecodeGroupSlowIcEEbPcmPKT_mPmS5_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.ap, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ar = sub i64 %3, %i.aq
  %i.as = and i64 %i.ar, -4
  %i.at = add i64 %i.as, %i.aq
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %6 = shl i8 %i.p, 2
  %7 = lshr i8 %i.u, 4
  %8 = and i8 %7, 3
  %9 = or disjoint i8 %8, %6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 3 uses
  store i8 %9, ptr %i.au, align 1
  %10 = shl i8 %i.u, 4
  %11 = lshr i8 %i.z, 2
  %12 = and i8 %11, 15
  %13 = or disjoint i8 %12, %10
  %i.av = getelementptr i8, ptr %i.au, i64 1
  store i8 %13, ptr %i.av, align 1
  %14 = shl i8 %i.z, 6
  %15 = and i8 %i.ae, 63
  %16 = or disjoint i8 %15, %14
  %i.aw = getelementptr i8, ptr %i.au, i64 2
  store i8 %16, ptr %i.aw, align 1
  %i.ax = add i64 %i.k, 4                         ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = add i64 %i.j, 3                         ; 2 uses
  store i64 %i.ay, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.az = phi i64 [ %i.ay, %bb.d ], [ %.pre, %bb.c ] ; 3 uses
  %i.ba = phi i64 [ %i.ax, %bb.d ], [ %i.aq, %bb.c ] ; 3 uses
  %.2 = phi i64 [ %.03446, %bb.d ], [ %i.at, %bb.c ] ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %.2
  %i.bc = icmp ult i64 %i.az, %i.e
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.lcssa44 = phi i64 [ 0, %bb.a ], [ %i.ba, %bb.e ]
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.az, %bb.e ]
  %i.be = icmp ult i64 %.lcssa44, %3
  %i.bf = icmp ult i64 %.lcssa, %1
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge
  %i.bg = call noundef zeroext i1 @_ZN6nbytes21Base64DecodeGroupSlowIcEEbPcmPKT_mPmS5_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge, %bb.f
  %.237 = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.237
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6nbytes21Base64DecodeGroupSlowIcEEbPcmPKT_mPmS5_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.promoted = load i64, ptr %4, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = phi i64 [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = add i64 %i.a, 1                          ; 4 uses
  store i64 %i.g, ptr %4, align 8
  %i.h = icmp ult i8 %i.f, 64
  %i.i = icmp eq i8 %i.c, 61
  %.not = icmp uge i64 %i.g, %3                   ; 2 uses
  %or.cond.not = or i1 %i.i, %.not
  %spec.select = zext i1 %or.cond.not to i32
  %.0 = select i1 %i.h, i32 2, i32 %spec.select
  switch i32 %.0, label %.loopexit [
    i32 0, label %bb.b
    i32 2, label %bb.c
  ], !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %5, align 8
  %.not75 = icmp ult i64 %i.j, %1
  br i1 %.not75, label %.preheader97, label %.loopexit

.preheader97:                                     ; preds = %bb.d, %.preheader97
  %i.k = phi i64 [ %i.q, %.preheader97 ], [ %i.g, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.q, ptr %4, align 8
  %i.r = icmp ult i8 %i.p, 64
  %i.s = icmp eq i8 %i.m, 61
  %.not76 = icmp uge i64 %i.q, %3
  %or.cond85.not = or i1 %i.s, %.not76
  %spec.select88 = zext i1 %or.cond85.not to i32
  %.1 = select i1 %i.r, i32 4, i32 %spec.select88
  switch i32 %.1, label %.loopexit [
    i32 0, label %.preheader97
    i32 4, label %bb.e
  ], !llvm.loop !12

bb.e:                                             ; preds = %.preheader97
  %i.t = shl i8 %i.f, 2
  %i.u = lshr i8 %i.p, 4
  %i.v = and i8 %i.u, 3
  %i.w = or disjoint i8 %i.v, %i.t
  %i.x = load i64, ptr %5, align 8                ; 2 uses
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store i8 %i.w, ptr %i.z, align 1
  %i.aa = load i64, ptr %4, align 8               ; 2 uses
  %.not77 = icmp ult i64 %i.aa, %3
  br i1 %.not77, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %5, align 8
  %.not78 = icmp ult i64 %i.ab, %1
  br i1 %.not78, label %.preheader95, label %.loopexit

.preheader95:                                     ; preds = %bb.f, %.preheader95
  %i.ac = phi i64 [ %i.ai, %.preheader95 ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1             ; 3 uses
  %i.ai = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ai, ptr %4, align 8
  %i.aj = icmp ult i8 %i.ah, 64
  %i.ak = icmp eq i8 %i.ae, 61
  %.not79 = icmp uge i64 %i.ai, %3
  %or.cond86.not = or i1 %i.ak, %.not79
  %spec.select89 = zext i1 %or.cond86.not to i32
  %.2 = select i1 %i.aj, i32 6, i32 %spec.select89
  switch i32 %.2, label %.loopexit [
    i32 0, label %.preheader95
    i32 6, label %bb.g
  ], !llvm.loop !13

bb.g:                                             ; preds = %.preheader95
  %i.al = shl i8 %i.p, 4
  %i.am = lshr i8 %i.ah, 2
  %i.an = and i8 %i.am, 15
  %i.ao = or disjoint i8 %i.an, %i.al
  %i.ap = load i64, ptr %5, align 8               ; 2 uses
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  store i8 %i.ao, ptr %i.ar, align 1
  %i.as = load i64, ptr %4, align 8               ; 2 uses
  %.not80 = icmp ult i64 %i.as, %3
  br i1 %.not80, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %5, align 8
  %.not81 = icmp ult i64 %i.at, %1
  br i1 %.not81, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h, %.preheader
  %i.au = phi i64 [ %i.ba, %.preheader ], [ %i.as, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN6nbytes14unbase64_tableE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ba, ptr %4, align 8
  %i.bb = icmp ult i8 %i.az, 64
  %i.bc = icmp eq i8 %i.aw, 61
  %.not82 = icmp uge i64 %i.ba, %3
  %or.cond87.not = or i1 %i.bc, %.not82
  %spec.select90 = zext i1 %or.cond87.not to i32
  %.3 = select i1 %i.bb, i32 8, i32 %spec.select90
  switch i32 %.3, label %.loopexit [
    i32 0, label %.preheader
    i32 8, label %bb.i
  ], !llvm.loop !14

bb.i:                                             ; preds = %.preheader
  %i.bd = shl i8 %i.ah, 6
  %i.be = and i8 %i.az, 63
  %i.bf = or disjoint i8 %i.be, %i.bd
  %i.bg = load i64, ptr %5, align 8               ; 2 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %5, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.bf, ptr %i.bi, align 1
  %i.bj = load i64, ptr %4, align 8
  %.not83 = icmp ult i64 %i.bj, %3
  br i1 %.not83, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %5, align 8
  %.not84 = icmp ult i64 %i.bk, %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader97, %.preheader95, %.preheader, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.8 = phi i1 [ false, %.preheader97 ], [ false, %bb.i ], [ false, %bb.c ], [ false, %.preheader95 ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.preheader ], [ false, %bb.f ], [ false, %bb.g ], [ %.not84, %bb.j ], [ false, %bb.h ], [ false, %bb.b ]
  ret i1 %.8
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_test_base64.cc:bb.a
  store ptr %i.e, ptr %7, align 8
  store i64 32, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 32, ptr %i.i, align 8
  store ptr %i.d, ptr %8, align 8
  store i64 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 10, ptr %i.j, align 8
  %i.k = call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() #11
  %i.l = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 10)
  %i.m = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 10)
  %i.n = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Base64Test_Encode_TestEE, i64 16), ptr %i.n, align 8
  %i.o = call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.n) #11
  %i.p = load ptr, ptr %7, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.r = load i64, ptr %i.h, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.t = load ptr, ptr %8, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.x = load ptr, ptr %6, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.z = load i64, ptr %i.a, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #15
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  store ptr %i.o, ptr @_ZN22Base64Test_Encode_Test10test_info_E, align 8
  %i.ab = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Base64Test_Encode_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ac, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ac, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.af, ptr %5, align 8
  %i.ag = call noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #13 ; 3 uses
  store i64 0, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) @.str.2, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ag, ptr %4, align 8
  store i64 32, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 32, ptr %i.ak, align 8
  store ptr %i.af, ptr %5, align 8
  store i64 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 49, ptr %i.al, align 8
  %i.am = call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() #11
  %i.an = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 49)
  %i.ao = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 49)
  %i.ap = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Base64Test_EncodeURL_TestEE, i64 16), ptr %i.ap, align 8
  %i.aq = call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull %i.ap) #11
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aj
  br i1 %i.as, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %__cxx_global_var_init.exit
  %i.at = load i64, ptr %i.aj, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #15
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i2

_ZN7testing8internal12CodeLocationD2Ev.exit.i2:   ; preds = %__cxx_global_var_init.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.av = load ptr, ptr %5, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i3: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i2
  %i.ax = load i64, ptr %i.af, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i3
  %i.az = load ptr, ptr %3, align 8               ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %__cxx_global_var_init.17.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4
  %i.bb = load i64, ptr %i.ac, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #15
  br label %__cxx_global_var_init.17.exit

__cxx_global_var_init.17.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i5
  store ptr %i.aq, ptr @_ZN25Base64Test_EncodeURL_Test10test_info_E, align 8
  %i.bd = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25Base64Test_EncodeURL_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.be, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bh, ptr %2, align 8
  %i.bi = call noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #13 ; 3 uses
  store i64 0, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 1 dereferenceable(32) @.str.2, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bi, ptr %1, align 8
  store i64 32, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 32, ptr %i.bm, align 8
  store ptr %i.bh, ptr %2, align 8
  store i64 0, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 67, ptr %i.bn, align 8
  %i.bo = call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() #11
  %i.bp = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 67)
  %i.bq = call noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 67)
  %i.br = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Base64Test_Decode_TestEE, i64 16), ptr %i.br, align 8
  %i.bs = call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef nonnull %i.br) #11
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bl
  br i1 %i.bu, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %__cxx_global_var_init.17.exit
  %i.bv = load i64, ptr %i.bl, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #15
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i10

_ZN7testing8internal12CodeLocationD2Ev.exit.i10:  ; preds = %__cxx_global_var_init.17.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  %i.bx = load ptr, ptr %2, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bh
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i11: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i10
  %i.bz = load i64, ptr %i.bh, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i11
  %i.cb = load ptr, ptr %0, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.be
  br i1 %i.cc, label %__cxx_global_var_init.23.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12
  %i.cd = load i64, ptr %i.be, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #15
  br label %__cxx_global_var_init.23.exit

__cxx_global_var_init.23.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i13
  store ptr %i.bs, ptr @_ZN22Base64Test_Decode_Test10test_info_E, align 8
  %i.cf = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Base64Test_Decode_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
end_hunk_1
