Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr?download=true
inline.NumInlined: 388
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

@_ZZN6icu_7813UnicodeString16getStaticClassIDEvE7classID = internal global i8 0, align 1
@_ZTVN6icu_7813UnicodeStringE = constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN6icu_7813UnicodeStringE, ptr @_ZN6icu_7813UnicodeStringD1Ev, ptr @_ZN6icu_7813UnicodeStringD0Ev, ptr @_ZNK6icu_7813UnicodeString17getDynamicClassIDEv, ptr @_ZNK6icu_7813UnicodeString14extractBetweenEiiRS0_, ptr @_ZN6icu_7813UnicodeString20handleReplaceBetweenEiiRKS0_, ptr @_ZN6icu_7813UnicodeString4copyEiii, ptr @_ZNK6icu_7813UnicodeString11hasMetaDataEv, ptr @_ZNK6icu_7813UnicodeString5cloneEv, ptr @_ZNK6icu_7813UnicodeString9getLengthEv, ptr @_ZNK6icu_7813UnicodeString9getCharAtEi, ptr @_ZNK6icu_7813UnicodeString11getChar32AtEi] }, align 8
@_ZTVN6icu_7823UnicodeStringAppendableE = local_unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN6icu_7823UnicodeStringAppendableE, ptr @_ZN6icu_7823UnicodeStringAppendableD1Ev, ptr @_ZN6icu_7823UnicodeStringAppendableD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @_ZN6icu_7823UnicodeStringAppendable14appendCodeUnitEDs, ptr @_ZN6icu_7823UnicodeStringAppendable15appendCodePointEi, ptr @_ZN6icu_7823UnicodeStringAppendable12appendStringEPKDsi, ptr @_ZN6icu_7823UnicodeStringAppendable21reserveAppendCapacityEi, ptr @_ZN6icu_7823UnicodeStringAppendable15getAppendBufferEiiPDsiPi] }, align 8
@_ZTIN6icu_7823UnicodeStringAppendableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7823UnicodeStringAppendableE, ptr @_ZTIN6icu_7810AppendableE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7823UnicodeStringAppendableE = constant [35 x i8] c"N6icu_7823UnicodeStringAppendableE\00", align 1
@_ZTIN6icu_7810AppendableE = external constant ptr
@_ZTVN6icu_7811ReplaceableE = local_unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN6icu_7811ReplaceableE, ptr @_ZN6icu_7811ReplaceableD1Ev, ptr @_ZN6icu_7811ReplaceableD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK6icu_7811Replaceable11hasMetaDataEv, ptr @_ZNK6icu_7811Replaceable5cloneEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7811ReplaceableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7811ReplaceableE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTSN6icu_7811ReplaceableE = constant [23 x i8] c"N6icu_7811ReplaceableE\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr
@_ZTIN6icu_7813UnicodeStringE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7813UnicodeStringE, ptr @_ZTIN6icu_7811ReplaceableE }, align 8
@_ZTSN6icu_7813UnicodeStringE = constant [25 x i8] c"N6icu_7813UnicodeStringE\00", align 1

@_ZN6icu_7811ReplaceableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7811ReplaceableD2Ev
@_ZN6icu_7813UnicodeStringC1Eiii = unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN6icu_7813UnicodeStringC2Eiii
@_ZN6icu_7813UnicodeStringC1EDs = unnamed_addr alias void (ptr, i16), ptr @_ZN6icu_7813UnicodeStringC2EDs
@_ZN6icu_7813UnicodeStringC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN6icu_7813UnicodeStringC2Ei
@_ZN6icu_7813UnicodeStringC1EPKDsi = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6icu_7813UnicodeStringC2EPKDsi
@_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi = unnamed_addr alias void (ptr, i8, ptr, i32), ptr @_ZN6icu_7813UnicodeStringC2EaNS_14ConstChar16PtrEi
@_ZN6icu_7813UnicodeStringC1EPDsii = unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6icu_7813UnicodeStringC2EPDsii
@_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE = unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6icu_7813UnicodeStringC2EPKciNS0_10EInvariantE
@_ZN6icu_7813UnicodeStringC1EPKc = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7813UnicodeStringC2EPKc
@_ZN6icu_7813UnicodeStringC1EPKci = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6icu_7813UnicodeStringC2EPKci
@_ZN6icu_7813UnicodeStringC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7813UnicodeStringC2ERKS0_
@_ZN6icu_7813UnicodeStringC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7813UnicodeStringC2EOS0_
@_ZN6icu_7813UnicodeStringC1ERKS0_i = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6icu_7813UnicodeStringC2ERKS0_i
@_ZN6icu_7813UnicodeStringC1ERKS0_ii = unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6icu_7813UnicodeStringC2ERKS0_ii
@_ZN6icu_7813UnicodeStringD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7813UnicodeStringD2Ev
@_ZN6icu_7823UnicodeStringAppendableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7823UnicodeStringAppendableD2Ev

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7811ReplaceableD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_7813UnicodeString16getStaticClassIDEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7813UnicodeString16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7813UnicodeString17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7813UnicodeString16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_78plERKNS_13UnicodeStringES2_(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !9    ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.i, i32 noundef %i.q, ptr noundef nonnull %i.a)
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.b, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit

_ZN6icu_7813UnicodeString10setToBogusEv.exit:     ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !9
  br label %4

bb.b:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not8 = icmp eq i32 %i.v, 2147483647
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ %i.w, %bb.c ], [ 2147483647, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.x, i32 noundef 0, i32 noundef 0)
  %i.y = load i16, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.g, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab    ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN6icu_7813UnicodeString6appendERKS0_.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.d
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.ad, i32 0)
  %.07.i.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = and i16 %i.y, 2
  %.not.i.i.i = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %.not.i.i.i, ptr %i.ai, ptr %i.ag
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.aj, i32 noundef %spec.select.i.i, i32 noundef %.07.i.i)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.f

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.d, %.sink.split.i.i.i
  %.0.i.i = phi ptr [ %3, %bb.d ], [ %i.ak, %.sink.split.i.i.i ] ; 2 uses
  %i.al = load i16, ptr %i.j, align 8, !tbaa !9   ; 3 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.o, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao   ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6icu_7813UnicodeString6appendERKS0_.exit17, label %.sink.split.i.i.i11

.sink.split.i.i.i11:                              ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %spec.select.i.i12 = call i32 @llvm.smin.i32(i32 %i.aq, i32 0)
  %.07.i.i13 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.as = and i16 %i.al, 2
  %.not.i.i.i14 = icmp eq i16 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %.not.i.i.i14, ptr %i.av, ptr %i.at
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i, ptr noundef %i.aw, i32 noundef %spec.select.i.i12, i32 noundef %.07.i.i13)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit17 unwind label %bb.f

_ZN6icu_7813UnicodeString6appendERKS0_.exit17:    ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit, %.sink.split.i.i.i11
  %.0.i.i15 = phi ptr [ %.0.i.i, %_ZN6icu_7813UnicodeString6appendERKS0_.exit ], [ %i.ax, %.sink.split.i.i.i11 ]
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i15)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit17
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %4

bb.f:                                             ; preds = %.sink.split.i.i.i11, %.sink.split.i.i.i, %_ZN6icu_7813UnicodeString6appendERKS0_.exit17
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.ay

4:                                                ; preds = %_ZN6icu_7813UnicodeString10setToBogusEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 20)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !9
  %i.c = and i16 %i.b, 4
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = atomicrmw add ptr %i.f, i32 -1 seq_cst, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  tail call void @uprv_free_78(ptr noundef nonnull %i.j)
  br label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit

_ZN6icu_7813UnicodeString12releaseArrayEv.exit:   ; preds = %bb.a, %bb.b, %bb.c
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7821unistr_internalConcatERKNS_13UnicodeStringESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, ptr %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = icmp ugt i64 %2, 2147483647
  br i1 %i.b, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %i.l = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.j, i32 noundef %i.k, ptr noundef nonnull %i.a)
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit

_ZN6icu_7813UnicodeString10setToBogusEv.exit:     ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !9
  br label %5

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not6 = icmp eq i32 %i.p, 2147483647
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 2147483647, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.r, i32 noundef 0, i32 noundef 0)
  %i.s = load i16, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.h, align 4
  %i.x = select i1 %i.t, i32 %i.w, i32 %i.v       ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN6icu_7813UnicodeString6appendERKS0_.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.e
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.x, i32 0)
  %.07.i.i = call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %i.z = and i16 %i.s, 2
  %.not.i.i.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i.i.i, ptr %i.ac, ptr %i.aa
  %i.ae = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ad, i32 noundef %spec.select.i.i, i32 noundef %.07.i.i)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.h

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.e, %.sink.split.i.i.i
  %.0.i.i = phi ptr [ %4, %bb.e ], [ %i.ae, %.sink.split.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !9
  %i.ah = and i16 %i.ag, 17
  %.not.i.i.i9 = icmp ne i16 %i.ah, 0
  %i.ai = icmp eq i64 %2, 0
  %or.cond.i.i = or i1 %i.ai, %.not.i.i.i9
  br i1 %or.cond.i.i, label %_ZN6icu_7813UnicodeString6appendISt17basic_string_viewIDsSt11char_traitsIDsEEvEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i, ptr noundef %3, i32 noundef 0, i32 noundef %i.k)
          to label %_ZN6icu_7813UnicodeString6appendISt17basic_string_viewIDsSt11char_traitsIDsEEvEERS0_RKT_.exit unwind label %bb.h

_ZN6icu_7813UnicodeString6appendISt17basic_string_viewIDsSt11char_traitsIDsEEvEERS0_RKT_.exit: ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit, %bb.f
  %.0.i.i10 = phi ptr [ %.0.i.i, %_ZN6icu_7813UnicodeString6appendERKS0_.exit ], [ %i.aj, %bb.f ]
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i10)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN6icu_7813UnicodeString6appendISt17basic_string_viewIDsSt11char_traitsIDsEEvEERS0_RKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %5

bb.h:                                             ; preds = %bb.f, %.sink.split.i.i.i, %_ZN6icu_7813UnicodeString6appendISt17basic_string_viewIDsSt11char_traitsIDsEEvEERS0_RKT_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.ak

5:                                                ; preds = %_ZN6icu_7813UnicodeString10setToBogusEv.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6icu_7813UnicodeString6addRefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = atomicrmw add ptr %i.c, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZN6icu_7813UnicodeString9removeRefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = atomicrmw add ptr %i.c, i32 -1 seq_cst, align 4
  %i.e = add nsw i32 %i.d, -1
  ret i32 %i.e
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZNK6icu_7813UnicodeString8refCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeString12releaseArrayEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !9
  %i.c = and i16 %i.b, 4
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = atomicrmw add ptr %i.f, i32 -1 seq_cst, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  tail call void @uprv_free_78(ptr noundef nonnull %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeStringC2Eiii(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 10)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  store i16 0, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp ugt i32 %2, 1114111
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 28
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %1, 2147483638
  br i1 %i.e, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.f = shl nuw i32 %1, 1
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %i.g, 20
  %i.i = and i64 %i.h, 8589934576                 ; 2 uses
  %i.j = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.i) #24
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %bb.e
  %.not.not.i = icmp eq ptr %i.j, null
  br i1 %.not.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !12
  %i.l = add nuw nsw i64 %i.i, 8589934588
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !9
  %i.n = lshr exact i64 %i.l, 1
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !9
  store i16 4, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

.thread.i:                                        ; preds = %.noexc, %bb.d
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.g:                                             ; preds = %bb.a
  %i.s = icmp samesign ult i32 %2, 65536
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 %3) ; 3 uses
  %i.t = icmp samesign ult i32 %spec.select, 28
  br i1 %i.t, label %._crit_edge93, label %bb.i

._crit_edge93:                                    ; preds = %bb.h
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre95 = load ptr, ptr %.phi.trans.insert94, align 8
  br label %iter.check

bb.i:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i32 %spec.select, 2147483638
  br i1 %i.u, label %bb.j, label %_ZN6icu_7813UnicodeString8allocateEi.exit63

bb.j:                                             ; preds = %bb.i
  %i.v = shl nuw i32 %spec.select, 1
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 20
  %i.y = and i64 %i.x, 8589934576                 ; 2 uses
  %i.z = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.y) #24
          to label %.noexc62 unwind label %bb.z   ; 3 uses

.noexc62:                                         ; preds = %bb.j
  %.not.not.i61 = icmp eq ptr %i.z, null
  br i1 %.not.not.i61, label %_ZN6icu_7813UnicodeString8allocateEi.exit63, label %bb.k

bb.k:                                             ; preds = %.noexc62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i32 1, ptr %i.z, align 4, !tbaa !12
  %i.ab = add nuw nsw i64 %i.y, 8589934588
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !9
  %i.ad = lshr exact i64 %i.ab, 1
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !9
  br label %iter.check

_ZN6icu_7813UnicodeString8allocateEi.exit63:      ; preds = %bb.i, %.noexc62
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

iter.check:                                       ; preds = %bb.k, %._crit_edge93
  %i.ai = phi ptr [ %i.aa, %bb.k ], [ %.pre95, %._crit_edge93 ]
  %storemerge81 = phi i16 [ 4, %bb.k ], [ 2, %._crit_edge93 ] ; 2 uses
  store i16 %storemerge81, ptr %i.a, align 8, !tbaa !9
  %i.aj = and i16 %storemerge81, 2
  %.not.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.al = select i1 %.not.i, ptr %i.ai, ptr %i.ak ; 3 uses
  %i.am = trunc nuw i32 %2 to i16                 ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %min.iters.check107 = icmp ult i32 %3, 4
  br i1 %min.iters.check107, label %.lr.ph85.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i32 %3, 16
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %wide.trip.count, 12
  %n.vec110 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert111 = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %broadcast.splat112 = shufflevector <8 x i16> %broadcast.splatinsert111, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.ph109, %vector.body113
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body113 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index114 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <8 x i16> %broadcast.splat112, ptr %i.ao, align 2, !tbaa !14
  store <8 x i16> %broadcast.splat112, ptr %i.ap, align 2, !tbaa !14
  %index.next115 = add nuw i64 %index114, 16      ; 2 uses
  %i.aq = icmp eq i64 %index.next115, %n.vec110
end_hunk_0
begin_hunk_1_@_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia:._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bi = shl nuw i32 %i.bc, 1
  %i.bj = zext i32 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 2 %i.bh, i64 %i.bj, i1 false)
  br label %_ZL12us_arrayCopyPKDsiPDsii.exit.thread

bb.r:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9
  br label %_ZL12us_arrayCopyPKDsiPDsii.exit

_ZL12us_arrayCopyPKDsiPDsii.exit:                 ; preds = %bb.o, %bb.r
  %.043 = phi ptr [ null, %bb.o ], [ %i.bl, %bb.r ] ; 2 uses
  %i.bm = icmp slt i32 %.04675, 28
  br i1 %i.bm, label %_ZN6icu_7813UnicodeString8allocateEi.exit.thread, label %_ZL12us_arrayCopyPKDsiPDsii.exit.thread

_ZL12us_arrayCopyPKDsiPDsii.exit.thread:          ; preds = %bb.p, %bb.q, %_ZL12us_arrayCopyPKDsiPDsii.exit
  %.04378 = phi ptr [ %.043, %_ZL12us_arrayCopyPKDsiPDsii.exit ], [ %i.a, %bb.q ], [ %i.a, %bb.p ] ; 5 uses
  %i.bn = shl nuw i32 %.04675, 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 20
  %i.bq = and i64 %i.bp, 8589934576               ; 2 uses
  %i.br = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bq) #24 ; 3 uses
  %.not.not.i = icmp eq ptr %i.br, null
  br i1 %.not.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZL12us_arrayCopyPKDsiPDsii.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !12
  %i.bt = add nuw nsw i64 %i.bq, 8589934588
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !9
  %i.bv = lshr exact i64 %i.bt, 1
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit.thread

bb.t:                                             ; preds = %_ZL12us_arrayCopyPKDsiPDsii.exit.thread
  store i16 1, ptr %i.i, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr null, ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !9
  %i.ca = icmp slt i32 %.045, %.04675
  br i1 %i.ca, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp slt i32 %.045, 28
  br i1 %i.cb, label %_ZN6icu_7813UnicodeString8allocateEi.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = shl nuw i32 %.045, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 20
  %i.cf = and i64 %i.ce, 8589934576               ; 2 uses
  %i.cg = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cf) #24 ; 3 uses
  %.not.not.i67 = icmp eq ptr %i.cg, null
  br i1 %.not.not.i67, label %_ZN6icu_7813UnicodeString8allocateEi.exit68, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !12
  %i.ci = add nuw nsw i64 %i.cf, 8589934588
  store ptr %i.ch, ptr %i.by, align 8, !tbaa !9
  %i.cj = lshr exact i64 %i.ci, 1
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.bz, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit.thread

_ZN6icu_7813UnicodeString8allocateEi.exit68:      ; preds = %bb.v
  store ptr null, ptr %i.by, align 8, !tbaa !9
  store i32 0, ptr %i.bz, align 8, !tbaa !9
  br label %bb.ag

_ZN6icu_7813UnicodeString8allocateEi.exit.thread: ; preds = %bb.u, %_ZL12us_arrayCopyPKDsiPDsii.exit, %bb.w, %bb.s
  %.sink = phi i16 [ 4, %bb.w ], [ 2, %_ZL12us_arrayCopyPKDsiPDsii.exit ], [ 4, %bb.s ], [ 2, %bb.u ] ; 5 uses
  %.0437782 = phi ptr [ %.04378, %bb.w ], [ %.043, %_ZL12us_arrayCopyPKDsiPDsii.exit ], [ %.04378, %bb.s ], [ %.04378, %bb.u ] ; 3 uses
  store i16 %.sink, ptr %i.i, align 8, !tbaa !9
  %.not58 = icmp eq i8 %3, 0
  br i1 %.not58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7813UnicodeString8allocateEi.exit.thread
  %i.cl = and i16 %.sink, 2
  %.not.i69 = icmp eq i16 %i.cl, 0                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = select i1 %.not.i69, i32 %i.cn, i32 27
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.bc) ; 5 uses
  %.not59 = icmp eq ptr %.0437782, null
  br i1 %.not59, label %_ZL12us_arrayCopyPKDsiPDsii.exit71, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = icmp sgt i32 %spec.select, 0
  br i1 %i.cp, label %bb.z, label %_ZL12us_arrayCopyPKDsiPDsii.exit71.thread

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ct = select i1 %.not.i69, ptr %i.cr, ptr %i.cs
  %i.cu = shl nuw i32 %spec.select, 1
  %i.cv = zext i32 %i.cu to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ct, ptr nonnull readonly align 2 %.0437782, i64 %i.cv, i1 false)
  %.pre92 = load i16, ptr %i.i, align 8, !tbaa !9
  br label %_ZL12us_arrayCopyPKDsiPDsii.exit71

_ZL12us_arrayCopyPKDsiPDsii.exit71:               ; preds = %bb.z, %bb.x
  %i.cw = phi i16 [ %.pre92, %bb.z ], [ %.sink, %bb.x ] ; 2 uses
  %i.cx = icmp slt i32 %spec.select, 1024
  br i1 %i.cx, label %_ZL12us_arrayCopyPKDsiPDsii.exit71.thread, label %bb.aa

_ZL12us_arrayCopyPKDsiPDsii.exit71.thread:        ; preds = %bb.y, %_ZL12us_arrayCopyPKDsiPDsii.exit71
  %i.cy = phi i16 [ %i.cw, %_ZL12us_arrayCopyPKDsiPDsii.exit71 ], [ %.sink, %bb.y ]
  %i.cz = and i16 %i.cy, 31
  %.tr.i.i = trunc i32 %spec.select to i16
  %i.da = shl i16 %.tr.i.i, 5
  %i.db = or disjoint i16 %i.cz, %i.da
  store i16 %i.db, ptr %i.i, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

bb.aa:                                            ; preds = %_ZL12us_arrayCopyPKDsiPDsii.exit71
  %i.dc = or i16 %i.cw, -32
  store i16 %i.dc, ptr %i.i, align 8, !tbaa !9
  store i32 %spec.select, ptr %i.ba, align 4, !tbaa !9
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

bb.ab:                                            ; preds = %_ZN6icu_7813UnicodeString8allocateEi.exit.thread
  store i16 %.sink, ptr %i.i, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

_ZN6icu_7813UnicodeString9setLengthEi.exit:       ; preds = %bb.aa, %_ZL12us_arrayCopyPKDsiPDsii.exit71.thread, %bb.ab
  %i.dd = and i16 %i.aw, 4
  %.not60 = icmp eq i16 %i.dd, 0
  br i1 %.not60, label %.thread85, label %bb.ac

bb.ac:                                            ; preds = %_ZN6icu_7813UnicodeString9setLengthEi.exit
  %i.de = getelementptr inbounds i8, ptr %.0437782, i64 -4 ; 3 uses
  %i.df = atomicrmw add ptr %i.de, i32 -1 seq_cst, align 4
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.ad, label %.thread85

bb.ad:                                            ; preds = %bb.ac
  %i.dh = icmp eq ptr %4, null
  br i1 %i.dh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @uprv_free_78(ptr noundef nonnull %i.de)
  br label %.thread85

bb.af:                                            ; preds = %bb.ad
  store ptr %i.de, ptr %4, align 8, !tbaa !24
  br label %.thread85

bb.ag:                                            ; preds = %_ZN6icu_7813UnicodeString8allocateEi.exit68, %bb.t
  br i1 %.not55, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %.04378, ptr %i.by, align 8, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.di = phi ptr [ %.04378, %bb.ah ], [ null, %bb.ag ]
  store i16 %i.aw, ptr %i.i, align 8, !tbaa !9
  %i.dj = and i16 %i.aw, 4
  %.not.i.i72 = icmp eq i16 %i.dj, 0
  br i1 %.not.i.i72, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 seq_cst, align 4
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dn = load ptr, ptr %i.by, align 8, !tbaa !9
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  call void @uprv_free_78(ptr noundef nonnull %i.do)
  br label %bb.al

.thread85:                                        ; preds = %bb.ac, %bb.af, %bb.ae, %_ZN6icu_7813UnicodeString9setLengthEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  store i16 1, ptr %i.i, align 8, !tbaa !9
  store ptr null, ptr %i.by, align 8, !tbaa !9
  store i32 0, ptr %i.bz, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.d, %.thread85, %bb.al, %._crit_edge, %_ZN6icu_7813UnicodeString10setToBogusEv.exit64, %_ZN6icu_7813UnicodeString10setToBogusEv.exit
  %.1 = phi i8 [ 0, %_ZN6icu_7813UnicodeString10setToBogusEv.exit64 ], [ 0, %._crit_edge ], [ 0, %bb.al ], [ 0, %_ZN6icu_7813UnicodeString10setToBogusEv.exit ], [ 1, %.thread85 ], [ 1, %bb.d ]
  ret i8 %.1
}

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7813UnicodeString30readOnlyAliasFromU16StringViewESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::UnicodeString") align 8 captures(none) initializes((0, 10)) %0, i64 %1, ptr %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp ult i64 %1, 2147483648
  br i1 %i.b, label %3, label %bb.e

3:                                                ; preds = %bb.a
  %4 = trunc nuw nsw i64 %1 to i32                ; 2 uses
  %5 = icmp eq ptr %2, null
  br i1 %5, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit.i, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24.i

_ZN6icu_7813UnicodeString12releaseArrayEv.exit.i: ; preds = %3
  store i16 2, ptr %i.a, align 8, !tbaa !9
  br label %bb.d

_ZN6icu_7813UnicodeString12releaseArrayEv.exit24.i: ; preds = %3
  %6 = icmp samesign ult i64 %1, 1024
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24.i
  %.tr.i.i.i.i = trunc nuw nsw i64 %1 to i16
  %7 = shl nuw nsw i16 %.tr.i.i.i.i, 5
  %8 = or disjoint i16 %7, 8
  br label %_ZN6icu_7813UnicodeString10setToBogusEv.exit.a

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24.i
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %9, align 4, !tbaa !9
  br label %_ZN6icu_7813UnicodeString10setToBogusEv.exit.a

_ZN6icu_7813UnicodeString10setToBogusEv.exit.a:   ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i16 [ %8, %bb.b ], [ -24, %bb.c ]
  store i16 %.sink.i.i, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.d, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7813UnicodeString10setToBogusEv.exit.a, %_ZN6icu_7813UnicodeString12releaseArrayEv.exit.i
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #22, !srcloc !25
  br label %12

bb.e:                                             ; preds = %bb.a
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %11, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(64) %0, i8 noundef signext %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = and i16 %i.b, 16
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !22     ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.b, 4
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.j = atomicrmw add ptr %i.i, i32 -1 seq_cst, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  tail call void @uprv_free_78(ptr noundef nonnull %i.m)
  br label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit

_ZN6icu_7813UnicodeString12releaseArrayEv.exit:   ; preds = %bb.c, %bb.d, %bb.e
  store i16 2, ptr %i.a, align 8, !tbaa !9
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %3, -1
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i32 %3, -1                       ; 3 uses
  %i.p = icmp ne i8 %1, 0                         ; 3 uses
  %or.cond = or i1 %i.p, %i.o
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %or.cond3 = and i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !14
  %.not22 = icmp eq i16 %i.s, 0
  br i1 %.not22, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.f
  %i.t = and i16 %i.b, 4
  %.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = atomicrmw add ptr %i.w, i32 -1 seq_cst, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  tail call void @uprv_free_78(ptr noundef nonnull %i.aa)
  br label %_ZN6icu_7813UnicodeString10setToBogusEv.exit

_ZN6icu_7813UnicodeString10setToBogusEv.exit:     ; preds = %bb.j, %bb.k, %bb.l
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !9
  br label %bb.t

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ad = and i16 %i.b, 4
  %.not.i23 = icmp eq i16 %i.ad, 0
  br i1 %.not.i23, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 seq_cst, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  tail call void @uprv_free_78(ptr noundef nonnull %i.ak)
  br label %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24

_ZN6icu_7813UnicodeString12releaseArrayEv.exit24: ; preds = %bb.m, %bb.n, %bb.o
  br i1 %i.o, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24
  %i.al = tail call i32 @u_strlen_78(ptr noundef nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24
  %.0 = phi i32 [ %i.al, %bb.p ], [ %3, %_ZN6icu_7813UnicodeString12releaseArrayEv.exit24 ] ; 4 uses
  %i.am = zext i1 %i.p to i32
  %i.an = add nsw i32 %.0, %i.am
  %i.ao = icmp slt i32 %.0, 1024
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.tr.i.i.i = trunc i32 %.0 to i16
  %i.ap = shl i16 %.tr.i.i.i, 5
  %i.aq = or disjoint i16 %i.ap, 8
  br label %_ZN6icu_7813UnicodeString8setArrayEPDsii.exit

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0, ptr %i.ar, align 4, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8setArrayEPDsii.exit

_ZN6icu_7813UnicodeString8setArrayEPDsii.exit:    ; preds = %bb.r, %bb.s
  %.sink.i = phi i16 [ %i.aq, %bb.r ], [ -24, %bb.s ]
  store i16 %.sink.i, ptr %i.a, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.as, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.at, align 8, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7813UnicodeString12releaseArrayEv.exit, %_ZN6icu_7813UnicodeString10setToBogusEv.exit, %_ZN6icu_7813UnicodeString8setArrayEPDsii.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeString30readOnlyAliasFromUnicodeStringERKS0_(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = and i16 %i.c, 1
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %_ZN6icu_7813UnicodeString10setToBogusEv.exit

_ZN6icu_7813UnicodeString10setToBogusEv.exit:     ; preds = %bb.a
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !9
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = and i16 %i.c, 16
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = and i16 %i.c, 2
  %.not2.i = icmp eq i16 %i.h, 0
  br i1 %.not2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ null, %bb.b ] ; 3 uses
  store ptr %.0.i, ptr %2, align 8, !tbaa !22
  %i.l = icmp slt i16 %i.c, 0
  %i.m = ashr i16 %i.c, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 0, ptr noundef nonnull align 8 %2, i32 noundef %i.q)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #22, !srcloc !25
  br label %bb.h

end_hunk_1
