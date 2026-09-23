Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DummyObject?download=true
inline.NumInlined: 148
inline.NumDeleted: 109
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.hermes::vm::VTable" = type { i64, i32, i32, ptr, ptr, ptr }
%"class.std::lock_guard" = type { ptr }

$_ZN6hermes2vm6GCBase10makeAFixedINS0_11testhelpers11DummyObjectELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7HadesGCEEEEPT_DpOT2_ = comdat any

@_ZN6hermes2vm11testhelpers11DummyObject2vtE = hidden constant %"struct.hermes::vm::VTable" { i64 -47381121442796770, i32 78, i32 96, ptr @_ZN6hermes2vm11testhelpers11DummyObject13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE, ptr @_ZN6hermes2vm11testhelpers11DummyObject15_mallocSizeImplEPNS0_6GCCellE, ptr null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"HermesBool\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"HermesDouble\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"HermesUndefined\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"HermesEmpty\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"HermesNative\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HermesNull\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6hermes2vm11testhelpers11DummyObjectC1ERNS0_7HadesGCE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6hermes2vm11testhelpers11DummyObjectC2ERNS0_7HadesGCE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11testhelpers11DummyObject13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = xor i64 %i.d, %i.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %.not = icmp eq i64 %i.d, %i.b                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFvvEEclEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #10
  unreachable

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #11, !inline_history !39
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i8, ptr %i.k, align 8, !tbaa !18, !range !19, !noundef !20
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i8 1, ptr %i.p monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  tail call void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.r) #11
  store i32 0, ptr %i.q, align 8, !tbaa !32
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3) #11, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #12
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN6hermes2vm11testhelpers11DummyObject15_mallocSizeImplEPNS0_6GCCellE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11testhelpers11DummyObjectC2ERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(96) initializes((4, 64), (72, 73), (80, 88)) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store <4 x i64> splat (i64 -1688849860263936), ptr %i.d, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 -1688849860263936, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 -1688849860263936, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.l, align 4, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = and i64 %i.o, -4194304
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = icmp ne ptr %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 7633 ; 6 uses
  %i.t = load i8, ptr %i.s, align 1, !range !19
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i = select i1 %i.r, i1 %i.u, i1 false, !prof !47
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 -1688849860263936) #11
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.n, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  store i64 -1407374883553279, ptr %i.d, align 8, !tbaa !48
  %i.w = ptrtoint ptr %i.e to i64
  %i.x = and i64 %i.w, -4194304
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp ne ptr %i.v, %i.y
  %i.aa = load i8, ptr %i.s, align 1, !range !19
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i12 = select i1 %i.z, i1 %i.ab, i1 false, !prof !47
  br i1 %or.cond.i.i12, label %bb.c, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14, !prof !47

bb.c:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %i.e, align 8, !tbaa !10
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 %.sroa.0.0.copyload.i.i13) #11
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit, %bb.c
  %i.ac = phi ptr [ %i.v, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %.pre27, %bb.c ] ; 2 uses
  store i64 4614253070214989087, ptr %i.e, align 8, !tbaa !48
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = and i64 %i.ad, -4194304
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = icmp ne ptr %i.ac, %i.af
  %i.ah = load i8, ptr %i.s, align 1, !range !19
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i15 = select i1 %i.ag, i1 %i.ai, i1 false, !prof !47
  br i1 %or.cond.i.i15, label %bb.d, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17, !prof !47

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14
  %.sroa.0.0.copyload.i.i16 = load i64, ptr %i.h, align 8, !tbaa !10
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 %.sroa.0.0.copyload.i.i16) #11
  %.pre28 = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14, %bb.d
  %i.aj = phi ptr [ %i.ac, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit14 ], [ %.pre28, %bb.d ] ; 2 uses
  store i64 -1125899906842610, ptr %i.h, align 8, !tbaa !48
  %i.ak = ptrtoint ptr %i.f to i64
  %i.al = and i64 %i.ak, -4194304
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = icmp ne ptr %i.aj, %i.am
  %i.ao = load i8, ptr %i.s, align 1, !range !19
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i.i18 = select i1 %i.an, i1 %i.ap, i1 false, !prof !47
  br i1 %or.cond.i.i18, label %bb.e, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20, !prof !47

bb.e:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17
  %.sroa.0.0.copyload.i.i19 = load i64, ptr %i.f, align 8, !tbaa !10
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 %.sroa.0.0.copyload.i.i19) #11
  %.pre29 = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17, %bb.e
  %i.aq = phi ptr [ %i.aj, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit17 ], [ %.pre29, %bb.e ] ; 2 uses
  store i64 -1688849860263936, ptr %i.f, align 8, !tbaa !48
  %i.ar = ptrtoint ptr %i.g to i64
  %i.as = and i64 %i.ar, -4194304
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp ne ptr %i.aq, %i.at
  %i.av = load i8, ptr %i.s, align 1, !range !19
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i.i21 = select i1 %i.au, i1 %i.aw, i1 false, !prof !47
  br i1 %or.cond.i.i21, label %bb.f, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit23, !prof !47

bb.f:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20
  %.sroa.0.0.copyload.i.i22 = load i64, ptr %i.g, align 8, !tbaa !10
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 %.sroa.0.0.copyload.i.i22) #11
  %.pre30 = load ptr, ptr %i.m, align 8, !tbaa !37
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit23

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit23: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20, %bb.f
  %i.ax = phi ptr [ %i.aq, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit20 ], [ %.pre30, %bb.f ]
  store i64 -1970324836974592, ptr %i.g, align 8, !tbaa !48
  %i.ay = ptrtoint ptr %i.i to i64
  %i.az = and i64 %i.ay, -4194304
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = icmp ne ptr %i.ax, %i.ba
  %i.bc = load i8, ptr %i.s, align 1, !range !19
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i24 = select i1 %i.bb, i1 %i.bd, i1 false, !prof !47
  br i1 %or.cond.i.i24, label %bb.g, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit26, !prof !47

bb.g:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit23
  %.sroa.0.0.copyload.i.i25 = load i64, ptr %i.i, align 8, !tbaa !10
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %1, i64 %.sroa.0.0.copyload.i.i25) #11
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit26

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit26: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit23, %bb.g
  store i64 -1548112371908608, ptr %i.i, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11testhelpers11DummyObject13acquireExtMemERNS0_7HadesGCEj(ptr noundef nonnull align 8 dereferenceable(96) initializes((80, 84)) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %2, ptr %i.a, align 8, !tbaa !32
  tail call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull %0, i32 noundef %2) #11
  ret void
}

declare void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11testhelpers11DummyObject13releaseExtMemERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  tail call void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull %0, i32 noundef %i.b) #11
  store i32 0, ptr %i.a, align 8, !tbaa !32
  ret void
}

declare void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11testhelpers11DummyObject10setPointerERNS0_7HadesGCEPS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92, !nonnull !20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm9GCPointerINS0_11testhelpers11DummyObjectEE3setERNS0_11PointerBaseEPS3_RNS0_7HadesGCE.exit, label %bb.b, !prof !93

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %2) #11
  br label %_ZN6hermes2vm9GCPointerINS0_11testhelpers11DummyObjectEE3setERNS0_11PointerBaseEPS3_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11testhelpers11DummyObjectEE3setERNS0_11PointerBaseEPS3_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %2, null
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.m
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm11testhelpers11DummyObject6createERNS0_7HadesGCERNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6hermes2vm6GCBase10makeAFixedINS0_11testhelpers11DummyObjectELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7HadesGCEEEEPT_DpOT2_(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(8112) %0) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  store i64 %i.d, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %i.f, align 8, !tbaa !18
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.j
  %i.k = tail call noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 %.sroa.0.0.i.i.i.i.i) #11
  store ptr %i.k, ptr %i.e, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm6GCBase10makeAFixedINS0_11testhelpers11DummyObjectELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7HadesGCEEEEPT_DpOT2_(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
end_hunk_0
