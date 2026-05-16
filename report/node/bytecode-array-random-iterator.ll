inline.NumInlined: 43
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$_ZN2v88internal10ZoneVectorIiE4GrowEm = comdat any

@_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE = external local_unnamed_addr constant [3 x [212 x i8]], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

@_ZN2v88internal11interpreter27BytecodeArrayRandomIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal11interpreter27BytecodeArrayRandomIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEPNS0_4ZoneE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter27BytecodeArrayRandomIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 noundef 0) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %3 = load i32, ptr %.shift.i, align 4           ; 2 uses
  %.off = add i32 %3, 1
  %.not.i.i.not = icmp ult i32 %.off, 3
  br i1 %.not.i.i.not, label %_ZN2v88internal10ZoneVectorIiE7reserveEm.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %3, 2
  %i.g = sext i32 %i.f to i64
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g)
  br label %_ZN2v88internal10ZoneVectorIiE7reserveEm.exit

_ZN2v88internal10ZoneVectorIiE7reserveEm.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal11interpreter27BytecodeArrayRandomIterator10InitializeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter27BytecodeArrayRandomIterator10InitializeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not3 = icmp ult ptr %i.c, %i.d
  br i1 %.not3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.av, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = load i32, ptr %i.f, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = add i64 %i.o, %i.q
  %i.s = sub i64 %i.n, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.ac)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit

_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit: ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.u, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.g, align 8
  store i32 %i.t, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = load i8, ptr %i.k, align 8
  %i.ai = lshr i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.aj
  %i.al = zext i8 %i.ag to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao ; 6 uses
  store ptr %i.ap, ptr %i.a, align 8
  %i.aq = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit
  %i.ar = load i8, ptr %i.ap, align 1             ; 2 uses
  %switch.selectcmp.i.i.i = icmp ult i8 %i.ar, 4
  br i1 %switch.selectcmp.i.i.i, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.as = shl nuw nsw i8 %i.ar, 3
  %switch.shiftamt = zext nneg i8 %i.as to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.k, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.a, align 8
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.k, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e, %switch.lookup
  %i.au = phi ptr [ %i.at, %switch.lookup ], [ %i.ap, %bb.e ]
  %.sink.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.e ]
  store i32 %.sink.i.i, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit, %.sink.split.i.i
  %i.av = phi ptr [ %i.ap, %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit ], [ %i.au, %.sink.split.i.i ] ; 2 uses
  %.not = icmp ult ptr %i.av, %i.aq
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i, label %_ZN2v88internal11interpreter27BytecodeArrayRandomIterator9GoToStartEv.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bb = load i32, ptr %i.ba, align 4
  tail call void @_ZN2v88internal11interpreter21BytecodeArrayIterator18SetOffsetUncheckedEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.bb) #8
  br label %_ZN2v88internal11interpreter27BytecodeArrayRandomIterator9GoToStartEv.exit

_ZN2v88internal11interpreter27BytecodeArrayRandomIterator9GoToStartEv.exit: ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = icmp ugt i64 %i.l, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %i.m, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter27BytecodeArrayRandomIterator21UpdateOffsetFromIndexEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit, label %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit.thread

_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit: ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = icmp ugt i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.o = load i32, ptr %i.n, align 4
  tail call void @_ZN2v88internal11interpreter21BytecodeArrayIterator18SetOffsetUncheckedEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.o) #8
  br label %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit.thread

_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK2v88internal11interpreter27BytecodeArrayRandomIterator7IsValidEv.exit
  ret void
}

declare void @_ZN2v88internal11interpreter21BytecodeArrayIterator18SetOffsetUncheckedEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
end_hunk_0
