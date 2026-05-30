inline.NumInlined: 170
inline.NumDeleted: 136
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::Handle" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"class.hermes::vm::Handle.158" = type { %"class.hermes::vm::HandleBase" }

$_ZN6hermes2vm7HadesGC5makeAINS0_9JSWeakRefELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEEEEEPT_jDpOT3_ = comdat any

@_ZN6hermes2vm9JSWeakRef2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 53, i32 40, ptr @_ZN6hermes2vm9JSWeakRef13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm9JSWeakRef13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #1

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #1

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #1

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #1

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #1

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #1

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18JSWeakRefBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 3, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !16
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm9JSWeakRef2vtE, ptr %i.e, align 8, !tbaa !17
  ret void
}

declare void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm9JSWeakRef6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %3 = alloca %"class.hermes::vm::Handle.158", align 8 ; 4 uses
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.c = call noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_9JSWeakRefELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.b, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !3
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm9JSWeakRef9setTargetERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !34 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.c
  %i.e = trunc i64 %i.d to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.e
  %i.f = tail call noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.a, i32 %.sroa.0.0.i.i.i.i.i) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = ptrtoint ptr %i.f to i64
  store i64 %i.h, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 -1688849860263936, 0) i64 @_ZNK6hermes2vm9JSWeakRef5derefERNS0_7RuntimeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZNK6hermes2vm7WeakRefINS0_8JSObjectEE3getERNS0_7RuntimeE.exit

_ZNK6hermes2vm7WeakRefINS0_8JSObjectEE3getERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %i.c to i64
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.d, ptr noundef %i.h) #10
  %i.i = or i64 %i.g, -281474976710656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK6hermes2vm7WeakRefINS0_8JSObjectEE3getERNS0_7RuntimeE.exit
  %.sroa.0.0 = phi i64 [ %i.i, %_ZNK6hermes2vm7WeakRefINS0_8JSObjectEE3getERNS0_7RuntimeE.exit ], [ -1688849860263936, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_9JSWeakRefELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %.not.i.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not.i4.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #12 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !48
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #13
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !50
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !34 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !34 ; 2 uses
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.ai = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aj = sub i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.ak
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i = icmp eq i64 %i.af, 0
  %i.am = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i, %i.ai
  %i.an = trunc i64 %i.am to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i, i32 0, i32 %i.an
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i, ptr %i.al, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ap, align 8, !tbaa !7
  %i.aq = and i32 %1, 16777215
  %i.ar = or disjoint i32 %i.aq, 889192448
  store i32 %i.ar, ptr %i.h, align 8, !tbaa !51
  ret ptr %i.h
}

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(717), i32) local_unnamed_addr #1

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6hermes2vm11WeakRefBaseE", !9, i64 0}
!9 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 4}
!12 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !13, i64 4}
!13 = !{!"bool", !5, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !33, i64 216}
!18 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !19, i64 0, !20, i64 8, !20, i64 56, !20, i64 104, !20, i64 152, !30, i64 200, !12, i64 208, !33, i64 216}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !21, i64 0}
!21 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !22, i64 0}
!22 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !23, i64 0, !25, i64 8}
!23 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !24, i64 0}
!24 = !{!"_ZTSSt4lessIhE"}
!25 = !{!"_ZTSSt15_Rb_tree_header", !26, i64 0, !29, i64 32}
!26 = !{!"_ZTSSt18_Rb_tree_node_base", !27, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!27 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!28 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !31, i64 0, !13, i64 4}
!31 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !32, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!32 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!33 = !{!"p1 _ZTSN6hermes2vm6VTableE", !10, i64 0}
!34 = !{!29, !29, i64 0}
!35 = !{!36, !4, i64 0}
!36 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!37 = !{!38, !19, i64 16}
!38 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !39, i64 0, !19, i64 16, !19, i64 24}
!39 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !19, i64 0, !40, i64 8}
!40 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !10, i64 0}
!41 = !{!38, !19, i64 24}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!44, !45, i64 8}
!44 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !46, i64 0}
!46 = !{!"any p2 pointer", !10, i64 0}
!47 = !{!44, !45, i64 16}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTSN6hermes2vm6GCCellE", !10, i64 0}
!50 = !{!44, !45, i64 0}
!51 = !{!5, !5, i64 0}
end_hunk_0
