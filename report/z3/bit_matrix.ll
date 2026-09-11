Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bit_matrix?download=true
inline.NumInlined: 210
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.bit_matrix::col_iterator" = type <{ %"class.bit_matrix::row", i32, [4 x i8] }>
%"class.bit_matrix::row" = type { ptr, ptr }
%"struct.bit_matrix::report" = type { ptr, %class.stopwatch }
%class.stopwatch = type <{ %"class.std::chrono::time_point", %"class.std::chrono::duration", i8, [7 x i8] }>
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%class.svector = type { %class.vector.0 }
%class.vector.0 = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN10bit_matrix6reportD2Ev = comdat any

$_ZN6vectorIjLb0EjED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIPmLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"solve \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" :time \00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK10bit_matrix3row5beginEv(ptr dead_on_unwind noalias nofree writable sret(%"class.bit_matrix::col_iterator") align 8 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = and i64 %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph17.i.i, label %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit.loopexit

.lr.ph17.i.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge2.i.i, %.lr.ph17.i.i
  %storemerge16.i.i = phi i32 [ 1, %.lr.ph17.i.i ], [ %storemerge.i.i, %.critedge2.i.i ] ; 5 uses
  %i.l = lshr i32 %storemerge16.i.i, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = and i32 %storemerge16.i.i, 63            ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.o
  %.not4.i.i = icmp eq i64 %i.s, 0
  br i1 %.not4.i.i, label %.preheader.i.i, label %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit.loopexit

.preheader.i.i:                                   ; preds = %bb.c
  %2 = icmp eq i32 %i.p, 0
  br i1 %2, label %.preheader.i.i.a, label %.critedge2.i.i

.preheader.i.i.a:                                 ; preds = %.preheader.i.i, %.lr.ph.i
  %storemerge16.i.i4 = phi i32 [ %i.t, %.lr.ph.i ], [ %storemerge16.i.i, %.preheader.i.i ] ; 4 uses
  %i.t = add i32 %storemerge16.i.i4, 64           ; 2 uses
  %i.u = icmp ult i32 %i.t, %i.h
  br i1 %i.u, label %.lr.ph.i, label %.critedge2.i.i

.lr.ph.i:                                         ; preds = %.preheader.i.i.a
  %i.v = lshr exact i32 %storemerge16.i.i4, 6
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %.preheader.i.i.a, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i.a, %.preheader.i.i
  %.promoted8.i.i = phi i32 [ %storemerge16.i.i, %.preheader.i.i ], [ %storemerge16.i.i4, %.preheader.i.i.a ], [ %storemerge16.i.i4, %.lr.ph.i ]
  %storemerge.i.i = add i32 %.promoted8.i.i, 1    ; 3 uses
  %i.z = icmp ult i32 %storemerge.i.i, %i.h
  br i1 %i.z, label %bb.c, label %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit.loopexit, !llvm.loop !0

_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit.loopexit: ; preds = %.critedge2.i.i, %bb.c, %bb.b
  %storemerge.i.i1 = phi i32 [ 1, %bb.b ], [ %storemerge16.i.i, %bb.c ], [ %storemerge.i.i, %.critedge2.i.i ]
  store i32 %storemerge.i.i1, ptr %i.a, align 8, !tbaa !18
  br label %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit

_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit: ; preds = %bb.a, %_ZN10bit_matrix12col_iteratorC2ERKNS_3rowEb.exit.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK10bit_matrix3row3endEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.bit_matrix::col_iterator") align 8 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !23, !align !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  store i32 %i.d, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10bit_matrix12col_iterator4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %.promoted7 = load i32, ptr %i.a, align 8, !tbaa !18
  %storemerge15 = add i32 %.promoted7, 1          ; 3 uses
  %i.e = icmp ult i32 %storemerge15, %i.d
  br i1 %i.e, label %.lr.ph17, label %.critedge2

.lr.ph17:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph17, %.lr.ph
  %storemerge16 = phi i32 [ %storemerge15, %.lr.ph17 ], [ %i.v, %.lr.ph ] ; 5 uses
  %i.h = lshr i32 %storemerge16, 6
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = and i32 %storemerge16, 63                ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.k, %i.n
  %.not4 = icmp eq i64 %i.o, 0
  br i1 %.not4, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.b
  %1 = icmp eq i32 %i.l, 0
  br i1 %1, label %.preheader.a, label %.lr.ph

.preheader.a:                                     ; preds = %.preheader, %.lr.ph20
  %2 = phi i32 [ %i.p, %.lr.ph20 ], [ %storemerge16, %.preheader ] ; 4 uses
  %i.p = add i32 %2, 64                           ; 2 uses
  %i.q = icmp ult i32 %i.p, %i.d
  br i1 %i.q, label %.lr.ph20, label %.lr.ph

.lr.ph20:                                         ; preds = %.preheader.a
  %i.r = lshr exact i32 %2, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.preheader.a, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20, %.preheader.a, %.preheader
  %.promoted8 = phi i32 [ %storemerge16, %.preheader ], [ %2, %.preheader.a ], [ %2, %.lr.ph20 ]
  %i.v = add i32 %.promoted8, 1                   ; 3 uses
  %i.w = icmp ult i32 %i.v, %i.d
  br i1 %i.w, label %bb.b, label %.critedge2, !llvm.loop !0

.critedge2:                                       ; preds = %bb.b, %.lr.ph, %bb.a
  %.promoted8.a = phi i32 [ %storemerge15, %bb.a ], [ %i.v, %.lr.ph ], [ %storemerge16, %bb.b ]
  store i32 %.promoted8.a, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10bit_matrix3rowixEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = lshr i32 %1, 6
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = and i64 %i.f, %i.i
  %i.k = icmp ne i64 %i.j, 0
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10bit_matrix3row7displayERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !23, !align !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  ret ptr %1

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.b ]  ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.g = lshr i32 %.05, 6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = and i32 %.05, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.j, %i.m
  %.not = icmp eq i64 %i.n, 0
  %.str..str.1 = select i1 %.not, ptr @.str.1, ptr @.str
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str..str.1, i64 noundef 1) ; 0 uses
  %i.p = add nuw i32 %.05, 1                      ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !23, !align !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = icmp ult i32 %i.p, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10bit_matrix5resetEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6region5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIPmLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !37
  br label %_ZN6vectorIPmLb0EjE5resetEv.exit

_ZN6vectorIPmLb0EjE5resetEv.exit:                 ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.d, align 8, !tbaa !33
  %i.e = add i32 %1, 63
  %i.f = lshr i32 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.f, ptr %i.g, align 4, !tbaa !38
  ret void
}

declare void @_ZN6region5resetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZN10bit_matrix7add_rowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6vectorIPmLb0EjE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIPmLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !37
  br label %_ZN6vectorIPmLb0EjE9push_backERKS0_.exit

_ZN6vectorIPmLb0EjE9push_backERKS0_.exit:         ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %.pre2.i, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  store ptr %i.e, ptr %i.r, align 8, !tbaa !14
  %i.s = add i32 %i.n, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !37
  %i.t = load i32, ptr %i.a, align 4, !tbaa !38
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.v, i1 false)
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.e, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN10bit_matrix3rowpLERKS0_(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !23, !align !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 8 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.h
  %scevgep7 = getelementptr i8, ptr %i.e, i64 %i.h
  %bound0 = icmp ult ptr %i.g, %scevgep7
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !21, !alias.scope !64
  %wide.load8 = load <2 x i64>, ptr %i.j, align 8, !tbaa !21, !alias.scope !64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !21, !alias.scope !65, !noalias !64
  %wide.load10 = load <2 x i64>, ptr %i.l, align 8, !tbaa !21, !alias.scope !65, !noalias !64
  %i.m = xor <2 x i64> %wide.load9, %wide.load
  %i.n = xor <2 x i64> %wide.load10, %wide.load8
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !21, !alias.scope !65, !noalias !64
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !21, !alias.scope !65, !noalias !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.prol
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.prol ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = xor i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !62

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret ptr %0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21
  %i.aa = xor i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = xor i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = xor i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = xor i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !63
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10bit_matrix5solveEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN10bit_matrix11basic_solveEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10bit_matrix11basic_solveEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZN10bit_matrix3endEv.exit:
  %1 = alloca %"struct.bit_matrix::report", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !21
  store i8 1, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36, !noalias !82 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14, !noalias !82 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37, !noalias !83 ; 2 uses
  %.not55 = icmp eq i32 %i.i, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %_ZN10bit_matrix3endEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33, !noalias !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN10bit_matrix12row_iteratorppEv.exit24, %_ZN10bit_matrix3endEv.exit
  call void @_ZN10bit_matrix6reportD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.a:                                             ; preds = %.lr.ph58, %_ZN10bit_matrix12row_iteratorppEv.exit24
  %indvars.iv61 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next62, %_ZN10bit_matrix12row_iteratorppEv.exit24 ]
  %.sroa.8.056 = phi ptr [ %i.g, %.lr.ph58 ], [ %.sroa.8.1, %_ZN10bit_matrix12row_iteratorppEv.exit24 ] ; 13 uses
  %i.n = load i64, ptr %.sroa.8.056, align 8, !tbaa !21, !noalias !85
  %i.o = and i64 %i.n, 1
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.j, align 8, !tbaa !33, !noalias !85 ; 3 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %.critedge2.i.i.i
  %storemerge16.i.i.i = phi i32 [ %storemerge.i.i.i, %.critedge2.i.i.i ], [ 1, %bb.b ] ; 5 uses
  %i.r = lshr i32 %storemerge16.i.i.i, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21, !noalias !85
  %i.v = and i32 %storemerge16.i.i.i, 63          ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %i.x, %i.u
  %.not4.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not4.i.i.i, label %.preheader.i.i.i, label %.loopexit

.preheader.i.i.i:                                 ; preds = %bb.c
  %2 = icmp eq i32 %i.v, 0
  br i1 %2, label %.preheader.i.i.i.a, label %.critedge2.i.i.i

.preheader.i.i.i.a:                               ; preds = %.preheader.i.i.i, %.lr.ph.i.i
  %storemerge16.i.i4.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ %storemerge16.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.z = add i32 %storemerge16.i.i4.i, 64         ; 2 uses
  %i.aa = icmp ult i32 %i.z, %i.p
  br i1 %i.aa, label %.lr.ph.i.i, label %.critedge2.i.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i.i.a
  %i.ab = lshr exact i32 %storemerge16.i.i4.i, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21, !noalias !85
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %.preheader.i.i.i.a, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i.a, %.preheader.i.i.i
  %.promoted8.i.i.i = phi i32 [ %storemerge16.i.i.i, %.preheader.i.i.i ], [ %storemerge16.i.i4.i, %.preheader.i.i.i.a ], [ %storemerge16.i.i4.i, %.lr.ph.i.i ]
  %storemerge.i.i.i = add i32 %.promoted8.i.i.i, 1 ; 3 uses
  %i.af = icmp ult i32 %storemerge.i.i.i, %i.p
  br i1 %i.af, label %bb.c, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %.critedge2.i.i.i, %bb.b, %bb.a
  %.sroa.635.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ %storemerge.i.i.i, %.critedge2.i.i.i ], [ %storemerge16.i.i.i, %bb.c ] ; 3 uses
  %.not47.a = icmp eq i32 %.sroa.635.0, %i.k
  br i1 %.not47.a, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23, label %_ZN10bit_matrix3endEv.exit22

_ZN10bit_matrix3endEv.exit22:                     ; preds = %.loopexit
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !37, !noalias !86 ; 2 uses
  %.not4852 = icmp eq i32 %i.ag, 0
  br i1 %.not4852, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10bit_matrix3endEv.exit22
  %i.ah = lshr i32 %.sroa.635.0, 6
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = and i32 %.sroa.635.0, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = zext i32 %i.ag to i64                   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN10bit_matrix12row_iteratorppEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10bit_matrix12row_iteratorppEv.exit ]
  %.sroa.6.054 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.6.1, %_ZN10bit_matrix12row_iteratorppEv.exit ] ; 11 uses
  %.not49.a = icmp eq ptr %.sroa.6.054, %.sroa.8.056
  br i1 %.not49.a, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %i.ai
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = and i64 %i.ao, %i.al
  %.not50 = icmp eq i64 %i.ap, 0
  br i1 %.not50, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !38  ; 3 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count.i = zext i32 %i.aq to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ar = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.6.054, i64 %i.ar
  %scevgep71 = getelementptr i8, ptr %.sroa.8.056, i64 %i.ar
  %bound0 = icmp ult ptr %.sroa.6.054, %scevgep71
  %bound1 = icmp ult ptr %.sroa.8.056, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !21, !alias.scope !87
  %wide.load72 = load <2 x i64>, ptr %i.at, align 8, !tbaa !21, !alias.scope !87
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load73 = load <2 x i64>, ptr %i.au, align 8, !tbaa !21, !alias.scope !88, !noalias !87
  %wide.load74 = load <2 x i64>, ptr %i.av, align 8, !tbaa !21, !alias.scope !88, !noalias !87
  %i.aw = xor <2 x i64> %wide.load73, %wide.load
  %i.ax = xor <2 x i64> %wide.load74, %wide.load72
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !21, !alias.scope !88, !noalias !87
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !21, !alias.scope !88, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %indvars.iv.i.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %indvars.iv.i.prol ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bd = xor i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %indvars.iv.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !21
  %i.bk = xor i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %indvars.iv.next.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %indvars.iv.next.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !21
  %i.bp = xor i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !21
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %indvars.iv.next.i.1
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bu = xor i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !21
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.056, i64 %indvars.iv.next.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.054, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !21
  %i.bz = xor i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, label %scalar.ph, !llvm.loop !81

_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i:             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.ca, label %bb.g, label %_ZN10bit_matrix12row_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !14
  br label %_ZN10bit_matrix12row_iteratorppEv.exit

_ZN10bit_matrix12row_iteratorppEv.exit:           ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i, %bb.g
  %.sroa.6.1 = phi ptr [ %.sroa.6.054, %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i ], [ %i.cc, %bb.g ]
  %.not48 = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %.not48, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23, label %bb.d

_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23:           ; preds = %_ZN10bit_matrix12row_iteratorppEv.exit, %_ZN10bit_matrix3endEv.exit22, %.loopexit
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 4 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next62, %i.m
  br i1 %i.cd, label %bb.h, label %_ZN10bit_matrix12row_iteratorppEv.exit24

bb.h:                                             ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next62
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !14
  br label %_ZN10bit_matrix12row_iteratorppEv.exit24

_ZN10bit_matrix12row_iteratorppEv.exit24:         ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23, %bb.h
  %.sroa.8.1 = phi ptr [ %.sroa.8.056, %_ZNK6vectorIPmLb0EjE4sizeEv.exit.i.i23 ], [ %i.cf, %bb.h ]
  %.not = icmp eq i64 %indvars.iv.next62, %i.m
  br i1 %.not, label %._crit_edge, label %bb.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10bit_matrix6reportD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !89, !noundef !23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN9stopwatch4stopEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.f = sub i64 %i.e, %.sroa.0.0.copyload.i2.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !90
  %i.i = add nsw i64 %i.f, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !90
  store i8 0, ptr %i.b, align 8, !tbaa !46
  br label %_ZN9stopwatch4stopEv.exit

_ZN9stopwatch4stopEv.exit:                        ; preds = %bb.b, %bb.a
  %i.j = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %_ZN9stopwatch4stopEv.exit
  %i.k = icmp ugt i32 %i.j, 9
  br i1 %i.k, label %bb.d, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
end_hunk_0
