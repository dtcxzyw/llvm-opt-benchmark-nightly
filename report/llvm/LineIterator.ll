Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LineIterator?download=true
inline.NumInlined: 37
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::MemoryBufferRef" = type { %"class.llvm::StringRef", %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

@_ZN4llvm13line_iteratorC1ERKNS_12MemoryBufferEbc = unnamed_addr alias void (ptr, ptr, i1, i8), ptr @_ZN4llvm13line_iteratorC2ERKNS_12MemoryBufferEbc
@_ZN4llvm13line_iteratorC1ERKNS_15MemoryBufferRefEbc = unnamed_addr alias void (ptr, ptr, i1, i8), ptr @_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13line_iteratorC2ERKNS_12MemoryBufferEbc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((32, 33), (40, 42), (44, 64)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i8 noundef signext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #5
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %3, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.a, ptr %i.f, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.g, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %3, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.a, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.l, align 4, !tbaa !22
  %i.m = load ptr, ptr %4, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.o, align 8, !tbaa !12
  br i1 %2, label %_ZL11isAtLineEndPKc.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.m, align 1, !tbaa !27
  switch i8 %i.p, label %_ZL11isAtLineEndPKc.exit.i [
    i8 10, label %_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc.exit
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc.exit, label %_ZL11isAtLineEndPKc.exit.i

_ZL11isAtLineEndPKc.exit.i:                       ; preds = %bb.d, %bb.c, %bb.b
  call void @_ZN4llvm13line_iterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc.exit

_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc.exit: ; preds = %.thread, %bb.c, %bb.d, %_ZL11isAtLineEndPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm13line_iteratorC2ERKNS_15MemoryBufferRefEbc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((32, 33), (40, 42), (44, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2, i8 noundef signext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %3, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.a, ptr %i.f, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.g, align 4, !tbaa !22
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !25
  %.pre = load i64, ptr %i.b, align 8, !tbaa !12
  %.pre.fr = freeze i64 %.pre
  %i.h = icmp eq i64 %.pre.fr, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %3, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.a, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.l, align 4, !tbaa !22
  %i.m = load ptr, ptr %1, align 8
  %spec.select = select i1 %i.h, ptr null, ptr %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.n = phi ptr [ %spec.select, %bb.b ], [ null, %.thread ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.p, align 8, !tbaa !12
  %i.q = load i64, ptr %i.b, align 8, !tbaa !12
  %.not10 = icmp eq i64 %i.q, 0
  br i1 %.not10, label %_ZL11isAtLineEndPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %_ZL11isAtLineEndPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  switch i8 %i.s, label %_ZL11isAtLineEndPKc.exit [
    i8 10, label %_ZL11isAtLineEndPKc.exit.thread
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !27
  %i.v = icmp eq i8 %i.u, 10
  br i1 %i.v, label %_ZL11isAtLineEndPKc.exit.thread, label %_ZL11isAtLineEndPKc.exit

_ZL11isAtLineEndPKc.exit:                         ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZN4llvm13line_iterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZL11isAtLineEndPKc.exit.thread

_ZL11isAtLineEndPKc.exit.thread:                  ; preds = %bb.f, %bb.e, %_ZL11isAtLineEndPKc.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm13line_iterator7advanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  switch i8 %i.f, label %_ZL15skipIfAtLineEndRPKc.exit.thread [
    i8 10, label %bb.c
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.c, label %_ZL15skipIfAtLineEndRPKc.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink7.i = phi i64 [ 1, %bb.a ], [ 2, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink7.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !22
  br label %_ZL15skipIfAtLineEndRPKc.exit.thread

_ZL15skipIfAtLineEndRPKc.exit.thread:             ; preds = %bb.b, %bb.a, %bb.c
  %.534 = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.a ], [ %i.e, %bb.b ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21, !range !32, !noundef !33
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZL11isAtLineEndPKc.exit.thread79, label %bb.d

bb.d:                                             ; preds = %_ZL15skipIfAtLineEndRPKc.exit.thread
  %i.q = load i8, ptr %.534, align 1, !tbaa !27   ; 2 uses
  switch i8 %i.q, label %_ZL11isAtLineEndPKc.exit [
    i8 10, label %.preheader.preheader
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.534, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %.preheader.preheader, label %_ZL11isAtLineEndPKc.exit

_ZL11isAtLineEndPKc.exit:                         ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !20    ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.preheader52, label %.preheader54

_ZL11isAtLineEndPKc.exit.thread79:                ; preds = %_ZL15skipIfAtLineEndRPKc.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i8, ptr %i.x, align 8, !tbaa !20    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.preheader52, label %.preheader54.thread

.preheader54.thread:                              ; preds = %_ZL11isAtLineEndPKc.exit.thread79
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted183 = load i32, ptr %i.aa, align 4
  br label %.preheader54.split.us

.preheader54:                                     ; preds = %_ZL11isAtLineEndPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted = load i32, ptr %i.ab, align 4
  br label %.preheader54.split

.preheader54.split.us:                            ; preds = %.preheader54.thread, %.critedge.thread45.us
  %i.ac = phi i32 [ %i.ao, %.critedge.thread45.us ], [ %.promoted183, %.preheader54.thread ]
  %.1.us = phi ptr [ %i.an, %.critedge.thread45.us ], [ %.534, %.preheader54.thread ] ; 5 uses
  %i.ad = load i8, ptr %.1.us, align 1, !tbaa !27 ; 3 uses
  %i.ae = icmp eq i8 %i.ad, %i.y
  br i1 %i.ae, label %.preheader53.us, label %.critedge.us

.preheader53.us:                                  ; preds = %.preheader54.split.us, %.preheader53.us.backedge
  %.2.us = phi ptr [ %i.af, %.preheader53.us.backedge ], [ %.1.us, %.preheader54.split.us ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2.us, i64 1 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !27
  switch i8 %i.ag, label %.preheader53.us.backedge [
    i8 0, label %_ZL11isAtLineEndPKc.exit.thread.thread
    i8 10, label %.critedge.thread45.us
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %.preheader53.us
  %i.ah = getelementptr inbounds nuw i8, ptr %.2.us, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.critedge.us.thread, label %.preheader53.us.backedge

.preheader53.us.backedge:                         ; preds = %bb.f, %.preheader53.us
  br label %.preheader53.us, !llvm.loop !28

.critedge.us:                                     ; preds = %.preheader54.split.us
  switch i8 %i.ad, label %_ZL11isAtLineEndPKc.exit.thread [
    i8 10, label %.critedge.thread45.us
    i8 13, label %.critedge.us.thread
  ]

.critedge.us.thread:                              ; preds = %bb.f, %.critedge.us
  %.3.ph.ph.us84 = phi ptr [ %.1.us, %.critedge.us ], [ %i.af, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3.ph.ph.us84, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %.critedge.thread45.us, label %.preheader.preheader

.critedge.thread45.us:                            ; preds = %.preheader53.us, %.critedge.us.thread, %.critedge.us
  %.3.ph48.us = phi ptr [ %.1.us, %.critedge.us ], [ %.3.ph.ph.us84, %.critedge.us.thread ], [ %i.af, %.preheader53.us ]
  %.sink7.i18.us = phi i64 [ 1, %.critedge.us ], [ 2, %.critedge.us.thread ], [ 1, %.preheader53.us ]
  %i.an = getelementptr inbounds nuw i8, ptr %.3.ph48.us, i64 %.sink7.i18.us
  %i.ao = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.aa, align 4, !tbaa !22
  br label %.preheader54.split.us, !llvm.loop !29

.preheader52:                                     ; preds = %_ZL11isAtLineEndPKc.exit.thread79, %_ZL11isAtLineEndPKc.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted184 = load i32, ptr %i.ap, align 4
  br label %bb.g

bb.g:                                             ; preds = %.preheader52, %bb.i
  %i.aq = phi i32 [ %i.aw, %bb.i ], [ %.promoted184, %.preheader52 ]
  %.031 = phi ptr [ %i.av, %bb.i ], [ %.534, %.preheader52 ] ; 5 uses
  %i.ar = load i8, ptr %.031, align 1, !tbaa !27  ; 2 uses
  switch i8 %i.ar, label %_ZL11isAtLineEndPKc.exit.thread [
    i8 10, label %bb.i
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.i, label %.preheader.preheader

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink7.i10 = phi i64 [ 1, %bb.g ], [ 2, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %.031, i64 %.sink7.i10
  %i.aw = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !22
  br label %bb.g, !llvm.loop !30

.preheader54.split:                               ; preds = %.preheader54, %.critedge.thread45
  %i.ax = phi i32 [ %i.bl, %.critedge.thread45 ], [ %.promoted, %.preheader54 ]
  %.1 = phi ptr [ %i.bk, %.critedge.thread45 ], [ %.534, %.preheader54 ] ; 8 uses
  %i.ay = load i8, ptr %.1, align 1, !tbaa !27    ; 5 uses
  switch i8 %i.ay, label %_ZL11isAtLineEndPKc.exit13 [
    i8 10, label %.preheader.preheader
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %.preheader54.split
  %i.az = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %.not = icmp eq i8 %i.ba, 10
  br i1 %.not, label %.preheader.preheader, label %_ZL11isAtLineEndPKc.exit13

_ZL11isAtLineEndPKc.exit13:                       ; preds = %bb.j, %.preheader54.split
  %i.bb = icmp eq i8 %i.ay, %i.v
  br i1 %i.bb, label %.preheader53, label %.critedge

end_hunk_0
