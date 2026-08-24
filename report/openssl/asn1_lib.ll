Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/asn1_lib?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn1_lib.c\00", align 1
@__func__.ASN1_get_object = private unnamed_addr constant [16 x i8] c"ASN1_get_object\00", align 1
@__func__.ASN1_STRING_set = private unnamed_addr constant [16 x i8] c"ASN1_STRING_set\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_check_infinite_end(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %_asn1_check_infinite_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %_asn1_check_infinite_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %_asn1_check_infinite_end.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %_asn1_check_infinite_end.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  br label %_asn1_check_infinite_end.exit

_asn1_check_infinite_end.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_const_check_infinite_end(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %_asn1_check_infinite_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %_asn1_check_infinite_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %_asn1_check_infinite_end.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %_asn1_check_infinite_end.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  br label %_asn1_check_infinite_end.exit

_asn1_check_infinite_end.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 192) i32 @ASN1_get_object(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = icmp slt i64 %4, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @__func__.ASN1_get_object) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, ptr noundef null) #14
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = and i32 %i.d, 32                         ; 3 uses
  %i.f = and i32 %i.d, 192
  %i.g = and i32 %i.d, 31                         ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %4, -1                       ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %asn1_get_length.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %.051, %bb.e ], [ %i.a, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.i, %bb.d ]  ; 2 uses
  %.051 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.k = load i8, ptr %.051, align 1, !tbaa !11   ; 3 uses
  %.not = icmp sgt i8 %i.k, -1
  %i.l = shl i64 %.030, 7                         ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.m = and i8 %i.k, 127
  %i.n = zext nneg i8 %i.m to i64
  %i.o = or disjoint i64 %i.l, %i.n               ; 2 uses
  %i.p = add nsw i64 %.0, -1                      ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = icmp sgt i64 %i.o, 16777215
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %asn1_get_length.exit.thread, label %.preheader, !llvm.loop !12

bb.f:                                             ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.t = zext nneg i8 %i.k to i64
  %i.u = or disjoint i64 %i.l, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = add nsw i64 %.0, -1                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %asn1_get_length.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.z = add nsw i64 %4, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %asn1_get_length.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.152 = phi ptr [ %i.s, %bb.f ], [ %i.y, %bb.g ] ; 4 uses
  %.029 = phi i32 [ %i.v, %bb.f ], [ %i.g, %bb.g ]
  %.1 = phi i64 [ %i.w, %bb.f ], [ %i.z, %bb.g ]
  store i32 %.029, ptr %2, align 4, !tbaa !14
  store i32 %i.f, ptr %3, align 4, !tbaa !14
  %i.ab = load i8, ptr %.152, align 1, !tbaa !11  ; 3 uses
  %i.ac = icmp eq i8 %i.ab, -128
  br i1 %i.ac, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i8 %i.ab, 127                       ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.152, i64 1 ; 3 uses
  %.not.i = icmp sgt i8 %i.ab, -1
  %i.af = zext nneg i8 %i.ad to i64               ; 3 uses
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not31.i = icmp samesign ugt i64 %.1, %i.af
  br i1 %.not31.i, label %.preheader33.i, label %asn1_get_length.exit.thread

.preheader33.i:                                   ; preds = %bb.j
  %.not3234.i = icmp eq i8 %i.ad, 0
  br i1 %.not3234.i, label %.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %i.ag = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.ah = getelementptr i8, ptr %.152, i64 %i.af
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvar = phi i32 [ %indvar.next, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.036.i = phi i32 [ %i.al, %bb.k ], [ %i.ag, %.lr.ph.preheader.i ] ; 5 uses
  %.02835.i = phi ptr [ %i.ak, %bb.k ], [ %i.ae, %.lr.ph.preheader.i ] ; 5 uses
  %i.ai = load i8, ptr %.02835.i, align 1, !tbaa !11
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02835.i, i64 1
  %i.al = add nsw i32 %.036.i, -1                 ; 2 uses
  %.not32.i = icmp eq i32 %i.al, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not32.i, label %.thread, label %.lr.ph.i, !llvm.loop !15

.critedge.i:                                      ; preds = %.lr.ph.i
  %5 = icmp samesign ugt i32 %.036.i, 8
  br i1 %5, label %asn1_get_length.exit.thread, label %.critedge.i.a

.critedge.i.a:                                    ; preds = %.critedge.i
  %xtraiter = and i32 %.036.i, 3                  ; 3 uses
  %6 = sub i32 %indvar, %i.ag
  %i.am = icmp ugt i32 %6, -4
  br i1 %i.am, label %.lr.ph44.i.epil.preheader, label %.lr.ph44.i.preheader.new

.lr.ph44.i.preheader.new:                         ; preds = %.critedge.i.a
  %unroll_iter = and i32 %.036.i, 12
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i, %.lr.ph44.i.preheader.new
  %.02642.i = phi i64 [ 0, %.lr.ph44.i.preheader.new ], [ %i.ar, %.lr.ph44.i ]
  %.12941.i = phi ptr [ %.02835.i, %.lr.ph44.i.preheader.new ], [ %i.ao, %.lr.ph44.i ] ; 5 uses
  %.143.i = phi i32 [ 0, %.lr.ph44.i.preheader.new ], [ %i.as, %.lr.ph44.i ]
  %7 = getelementptr inbounds nuw i8, ptr %.12941.i, i64 1
  %8 = load i8, ptr %.12941.i, align 1, !tbaa !11
  %9 = zext i8 %8 to i64
  %10 = shl i64 %.02642.i, 16
  %11 = shl nuw nsw i64 %9, 8
  %12 = or disjoint i64 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %.12941.i, i64 2
  %14 = load i8, ptr %7, align 1, !tbaa !11
  %15 = zext i8 %14 to i64
  %16 = or disjoint i64 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %.12941.i, i64 3
  %18 = load i8, ptr %13, align 1, !tbaa !11
  %19 = zext i8 %18 to i64
  %20 = shl i64 %16, 16
  %i.an = shl nuw nsw i64 %19, 8
  %21 = or disjoint i64 %20, %i.an                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.12941.i, i64 4 ; 2 uses
  %i.ap = load i8, ptr %17, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %21, %i.aq              ; 3 uses
  %i.as = add i32 %.143.i, 4                      ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %i.as, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph44.i, !llvm.loop !16

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph44.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph44.i.epil.preheader

.lr.ph44.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.critedge.i.a
  %.02642.i.epil.init = phi i64 [ 0, %.critedge.i.a ], [ %i.ar, %._crit_edge.i.unr-lcssa ]
  %.12941.i.epil.init = phi ptr [ %.02835.i, %.critedge.i.a ], [ %i.ao, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod123 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph44.i.epil

.lr.ph44.i.epil:                                  ; preds = %.lr.ph44.i.epil, %.lr.ph44.i.epil.preheader
  %.02642.i.epil = phi i64 [ %26, %.lr.ph44.i.epil ], [ %.02642.i.epil.init, %.lr.ph44.i.epil.preheader ]
  %.12941.i.epil = phi ptr [ %23, %.lr.ph44.i.epil ], [ %.12941.i.epil.init, %.lr.ph44.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph44.i.epil ], [ 0, %.lr.ph44.i.epil.preheader ]
  %22 = shl i64 %.02642.i.epil, 8                 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %.12941.i.epil, i64 1
  %24 = load i8, ptr %.12941.i.epil, align 1, !tbaa !11
  %25 = zext i8 %24 to i64
  %26 = or disjoint i64 %22, %25                  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph44.i.epil, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph44.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa111 = phi i64 [ %21, %._crit_edge.i.unr-lcssa ], [ %22, %.lr.ph44.i.epil ]
  %.lcssa = phi i64 [ %i.ar, %._crit_edge.i.unr-lcssa ], [ %26, %.lr.ph44.i.epil ]
  %i.at = zext nneg i32 %.036.i to i64
  %scevgep49.i = getelementptr i8, ptr %.02835.i, i64 %i.at
  %i.au = icmp slt i64 %.lcssa111, 0
  br i1 %i.au, label %asn1_get_length.exit.thread, label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %.preheader33.i, %._crit_edge.i
  %.2.i.ph = phi ptr [ %scevgep49.i, %._crit_edge.i ], [ %i.ae, %.preheader33.i ], [ %i.ae, %bb.i ], [ %scevgep.i, %bb.k ]
  %.127.i.ph = phi i64 [ %.lcssa, %._crit_edge.i ], [ 0, %.preheader33.i ], [ %i.af, %bb.i ], [ 0, %bb.k ] ; 2 uses
  store i64 %.127.i.ph, ptr %1, align 8, !tbaa !19
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.152, i64 1
  store i64 0, ptr %1, align 8, !tbaa !19
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %asn1_get_length.exit.thread, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.aw = phi i64 [ %.127.i.ph, %.thread ], [ 0, %bb.l ]
  %.2.i64 = phi ptr [ %.2.i.ph, %.thread ], [ %i.av, %bb.l ] ; 2 uses
  %.04963 = phi i32 [ 0, %.thread ], [ 1, %bb.l ]
  %i.ax = ptrtoint ptr %.2.i64 to i64
  %i.ay = ptrtoint ptr %i.a to i64
  %.neg = add i64 %4, %i.ay
  %i.az = sub i64 %.neg, %i.ax
  %i.ba = icmp sgt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @__func__.ASN1_get_object) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 155, ptr noundef null) #14
  %i.bb = or disjoint i32 %i.e, 128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.031 = phi i32 [ %i.bb, %bb.n ], [ %i.e, %bb.m ]
  store ptr %.2.i64, ptr %0, align 8, !tbaa !8
  %i.bc = or i32 %.031, %.04963
  br label %bb.p

asn1_get_length.exit.thread:                      ; preds = %bb.e, %._crit_edge.i, %bb.j, %.critedge.i, %bb.l, %bb.g, %bb.f, %bb.d
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 105, ptr noundef nonnull @__func__.ASN1_get_object) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 123, ptr noundef null) #14
  br label %bb.p

bb.p:                                             ; preds = %asn1_get_length.exit.thread, %bb.o, %bb.b
  %.032 = phi i32 [ 128, %bb.b ], [ 128, %asn1_get_length.exit.thread ], [ %i.bc, %bb.o ]
  ret i32 %.032
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ASN1_put_object(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 9 uses
  %.not = icmp eq i32 %1, 0
  %i.b = select i1 %.not, i32 0, i32 32
  %i.c = and i32 %4, 192
  %i.d = or disjoint i32 %i.c, %i.b               ; 2 uses
  %i.e = icmp slt i32 %3, 31
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %3, 31
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = trunc nuw i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.h, ptr %i.a, align 1, !tbaa !11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = trunc nuw i32 %i.d to i8
  %i.k = or disjoint i8 %i.j, 31
  store i8 %i.k, ptr %i.a, align 1, !tbaa !11
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.m = trunc i32 %3 to i8
  %i.n = and i8 %i.m, 127
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !11
  %.not47 = icmp eq i64 %indvars.iv, 0
  br i1 %.not47, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.preheader
  %xtraiter = and i64 %indvars.iv, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %.peel.next.prol
  %indvars.iv41.in.prol = phi i64 [ %indvars.iv41.prol, %.peel.next.prol ], [ %indvars.iv, %.peel.next.preheader ] ; 2 uses
  %.02437.in.prol = phi i32 [ %.02437.prol, %.peel.next.prol ], [ %3, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.prol ], [ 0, %.peel.next.preheader ]
  %.02437.prol = lshr i32 %.02437.in.prol, 7      ; 3 uses
  %indvars.iv41.prol = add nsw i64 %indvars.iv41.in.prol, -1 ; 2 uses
  %i.p = trunc i32 %.02437.prol to i8
  %i.q = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in.prol
  %spec.select.prol = or i8 %i.p, -128
  store i8 %spec.select.prol, ptr %i.q, align 1, !tbaa !11
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !21

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader
  %indvars.iv41.in.unr = phi i64 [ %indvars.iv, %.peel.next.preheader ], [ %indvars.iv41.prol, %.peel.next.prol ]
  %.02437.in.unr = phi i32 [ %3, %.peel.next.preheader ], [ %.02437.prol, %.peel.next.prol ]
  %i.r = icmp samesign ult i64 %indvars.iv, 4
  br i1 %i.r, label %.loopexit, label %.peel.next

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 7 uses
  %.036 = phi i32 [ %3, %bb.c ], [ %i.s, %bb.d ]
  %.02335 = phi i32 [ 0, %bb.c ], [ %i.t, %bb.d ]
  %i.s = lshr i32 %.036, 7                        ; 2 uses
  %i.t = add nuw nsw i32 %.02335, 1               ; 2 uses
  %.not39 = icmp eq i32 %i.s, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not39, label %.preheader, label %bb.d, !llvm.loop !22

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %.peel.next
  %indvars.iv41.in = phi i64 [ %indvars.iv41.3, %.peel.next ], [ %indvars.iv41.in.unr, %.peel.next.prol.loopexit ] ; 6 uses
  %.02437.in = phi i32 [ %.02437.3, %.peel.next ], [ %.02437.in.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.02437 = lshr i32 %.02437.in, 7
  %i.u = trunc i32 %.02437 to i8
  %i.v = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %spec.select = or i8 %i.u, -128
  store i8 %spec.select, ptr %i.v, align 1, !tbaa !11
  %.02437.1 = lshr i32 %.02437.in, 14
  %i.w = trunc i32 %.02437.1 to i8
  %i.x = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %spec.select.1 = or i8 %i.w, -128
  store i8 %spec.select.1, ptr %i.y, align 1, !tbaa !11
  %.02437.2 = lshr i32 %.02437.in, 21
  %i.z = trunc i32 %.02437.2 to i8
  %i.aa = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %spec.select.2 = or i8 %i.z, -128
  store i8 %spec.select.2, ptr %i.ab, align 1, !tbaa !11
  %.02437.3 = lshr i32 %.02437.in, 28             ; 2 uses
  %indvars.iv41.3 = add nsw i64 %indvars.iv41.in, -4
  %i.ac = trunc nuw nsw i32 %.02437.3 to i8
  %i.ad = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.ae = getelementptr i8, ptr %i.ad, i64 -3
  %spec.select.3 = or disjoint i8 %i.ac, -128
  store i8 %spec.select.3, ptr %i.ae, align 1, !tbaa !11
  %i.af = icmp sgt i64 %indvars.iv41.in, 4
  br i1 %i.af, label %.peel.next, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %.peel.next.prol.loopexit, %.peel.next, %.preheader
  %i.ag = zext nneg i32 %i.t to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.033 = phi ptr [ %i.i, %bb.b ], [ %i.ah, %.loopexit ] ; 11 uses
  %i.ai = icmp eq i32 %1, 2
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.033, i64 1
  store i8 -128, ptr %.033, align 1, !tbaa !11
  br label %asn1_put_length.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp slt i32 %2, 128
  br i1 %i.ak, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %bb.g
  %i.al = trunc i32 %2 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.033, i64 1
  store i8 %i.al, ptr %.033, align 1, !tbaa !11
  br label %asn1_put_length.exit

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %bb.g ] ; 5 uses
  %.025.i = phi i32 [ %i.an, %.preheader.i ], [ %2, %bb.g ]
  %.01924.i = phi i32 [ %i.ao, %.preheader.i ], [ 0, %bb.g ]
  %i.an = lshr i32 %.025.i, 8                     ; 2 uses
  %i.ao = add nuw nsw i32 %.01924.i, 1            ; 3 uses
  %.not.i = icmp eq i32 %i.an, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.i, label %.preheader.i, !llvm.loop !25

bb.i:                                             ; preds = %.preheader.i
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.033, align 1, !tbaa !11
  %xtraiter51 = and i64 %indvars.iv.i, 3          ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %indvars.iv28.i.prol = phi i64 [ %indvars.iv.next29.i.prol, %.prol.preheader ], [ %indvars.iv.i, %bb.i ] ; 2 uses
  %.02126.i.prol = phi i32 [ %i.at, %.prol.preheader ], [ %2, %bb.i ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.prol.preheader ], [ 0, %bb.i ]
  %indvars.iv.next29.i.prol = add nsw i64 %indvars.iv28.i.prol, -1 ; 2 uses
  %i.ar = trunc i32 %.02126.i.prol to i8
  %i.as = getelementptr i8, ptr %.033, i64 %indvars.iv28.i.prol
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !11
  %i.at = lshr i32 %.02126.i.prol, 8              ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %indvars.iv28.i.unr = phi i64 [ %indvars.iv.i, %bb.i ], [ %indvars.iv.next29.i.prol, %.prol.preheader ]
  %.02126.i.unr = phi i32 [ %2, %bb.i ], [ %i.at, %.prol.preheader ]
  %i.au = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %i.au, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.new ], [ %indvars.iv28.i.unr, %.prol.loopexit ] ; 6 uses
  %.02126.i = phi i32 [ 0, %.new ], [ %.02126.i.unr, %.prol.loopexit ] ; 4 uses
  %i.av = trunc i32 %.02126.i to i8
  %i.aw = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !11
  %i.ax = lshr i32 %.02126.i, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !11
  %i.bb = lshr i32 %.02126.i, 16
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !11
  %i.bf = lshr i32 %.02126.i, 24
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, -4
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -3
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !11
  %i.bj = icmp sgt i64 %indvars.iv28.i, 4
  br i1 %i.bj, label %.new, label %.unr-lcssa, !llvm.loop !27

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %i.bl = zext nneg i32 %i.ao to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  br label %asn1_put_length.exit

asn1_put_length.exit:                             ; preds = %.unr-lcssa, %bb.h, %bb.f
  %.134 = phi ptr [ %i.aj, %bb.f ], [ %i.am, %bb.h ], [ %i.bm, %.unr-lcssa ]
  store ptr %.134, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ASN1_put_eoc(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !11
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2147483646, -2147483648) i32 @ASN1_object_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 30
  br i1 %i.b, label %.preheader25, label %.loopexit26

.preheader25:                                     ; preds = %bb.b, %.preheader25
  %.021 = phi i32 [ %i.c, %.preheader25 ], [ %2, %bb.b ]
  %.020 = phi i32 [ %i.d, %.preheader25 ], [ 1, %bb.b ]
  %i.c = lshr i32 %.021, 7                        ; 2 uses
  %i.d = add nuw nsw i32 %.020, 1                 ; 2 uses
  %.old1.not = icmp eq i32 %i.c, 0
  br i1 %.old1.not, label %.loopexit26, label %.preheader25

.loopexit26:                                      ; preds = %.preheader25, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %i.d, %.preheader25 ] ; 2 uses
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit26
  %i.f = add nsw i32 %.1, 3
  br label %.loopexit

bb.d:                                             ; preds = %.loopexit26
  %i.g = add nsw i32 %.1, 1                       ; 2 uses
  %i.h = icmp samesign ugt i32 %1, 127
  br i1 %i.h, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader
  %.028 = phi i32 [ %i.i, %.preheader ], [ %1, %bb.d ]
  %.227 = phi i32 [ %i.j, %.preheader ], [ %i.g, %bb.d ]
  %i.i = lshr i32 %.028, 8                        ; 2 uses
  %i.j = add nuw nsw i32 %.227, 1                 ; 2 uses
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %.loopexit, label %.preheader, !llvm.loop !28

.loopexit:                                        ; preds = %.preheader, %bb.d, %bb.c
  %.3 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %.preheader ] ; 2 uses
  %i.k = sub nuw nsw i32 2147483647, %1
  %.not = icmp slt i32 %.3, %i.k
  %i.l = add nsw i32 %.3, %1
  %spec.select = select i1 %.not, i32 %i.l, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a
  %.022 = phi i32 [ %spec.select, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_asn1_string_set_bits_left(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = and i64 %i.b, -16
  %i.d = and i32 %1, 7
  %i.e = or disjoint i32 %i.d, 8
  %i.f = zext nneg i32 %i.e to i64
  %i.g = or disjoint i64 %i.c, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_STRING_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = load i32, ptr %1, align 8, !tbaa !33
  %i.h = tail call i32 @ASN1_STRING_set(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.g)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = and i64 %i.j, 128                        ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  %i.n = and i64 %i.m, -129
  %i.o = or disjoint i64 %i.n, %i.k
  store i64 %i.o, ptr %i.i, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_STRING_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ %i.d, %bb.d ]  ; 6 uses
  %i.e = icmp ugt i64 %.0, 2147483646
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #14
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @__func__.ASN1_STRING_set) #14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, ptr noundef null) #14
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.f = load i32, ptr %0, align 8, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %.not = icmp ult i64 %.0, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  br i1 %.not, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.k = phi ptr [ null, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = add nuw nsw i64 %.0, 1
  %i.n = tail call ptr @CRYPTO_realloc(ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 314) #14 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !32
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.k, ptr %i.l, align 8, !tbaa !32
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.p = phi ptr [ %i.n, %._crit_edge ], [ %i.i, %bb.h ]
  %i.q = trunc nuw nsw i64 %.0 to i32
  store i32 %i.q, ptr %0, align 8, !tbaa !33
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %1, i64 %.0, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.0
  store i8 0, ptr %i.t, align 1, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.i, %bb.f
  %.024 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.i ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define ptr @ASN1_STRING_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ASN1_STRING_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 355) #14 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ASN1_STRING_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  store i32 %i.e, ptr %i.c, align 4, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = load i32, ptr %0, align 8, !tbaa !33
  %i.i = tail call i32 @ASN1_STRING_set(ptr noundef nonnull %i.a, ptr noundef %i.g, i32 noundef %i.h)
  %.not.i = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  br i1 %.not.i, label %bb.d, label %ASN1_STRING_copy.exit

ASN1_STRING_copy.exit:                            ; preds = %bb.c
  %i.l = and i64 %i.k, 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = and i64 %i.n, -129
  %i.p = or disjoint i64 %i.o, %i.l
  store i64 %i.p, ptr %i.j, align 8, !tbaa !29
  br label %ASN1_STRING_free.exit

bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %i.k, 16
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  tail call void @CRYPTO_free(ptr noundef %i.s, ptr noundef nonnull @.str, i32 noundef 367) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = and i64 %i.k, 128
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %ASN1_STRING_free.exit

bb.g:                                             ; preds = %bb.f
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 369) #14
  br label %ASN1_STRING_free.exit

ASN1_STRING_free.exit:                            ; preds = %bb.b, %bb.g, %bb.f, %ASN1_STRING_copy.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ %i.a, %ASN1_STRING_copy.exit ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ASN1_STRING_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 355) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ASN1_STRING_type_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 4, ptr %i.c, align 4, !tbaa !31
  br label %ASN1_STRING_type_new.exit

ASN1_STRING_type_new.exit:                        ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @ASN1_STRING_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ossl_asn1_string_embed_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = and i64 %i.c, 16
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 367) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = and i64 %i.c, 128
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %ossl_asn1_string_embed_free.exit

bb.e:                                             ; preds = %bb.d
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 369) #14
  br label %ossl_asn1_string_embed_free.exit

ossl_asn1_string_embed_free.exit:                 ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define void @ASN1_STRING_set0(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 341) #14
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  store i32 %2, ptr %0, align 8, !tbaa !33
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ASN1_STRING_type_new(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 355) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.c, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_asn1_string_embed_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = and i64 %i.c, 16
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 367) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 369) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @ASN1_STRING_clear_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ASN1_STRING_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = and i64 %i.e, 16
  %.not7 = icmp eq i64 %i.f, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !33
  %i.h = sext i32 %i.g to i64
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef %i.h) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = and i64 %i.j, 16
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str, i32 noundef 367) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = and i64 %i.j, 128
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %ASN1_STRING_free.exit

bb.h:                                             ; preds = %bb.g
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 369) #14
  br label %ASN1_STRING_free.exit

ASN1_STRING_free.exit:                            ; preds = %bb.h, %bb.g, %bb.a
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ASN1_STRING_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !33
  %i.c = sub nsw i32 %i.a, %i.b                   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = sext i32 %i.a to i64
  %i.j = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.i) #15 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = sub nsw i32 %i.m, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %.thread
  %.012 = phi i32 [ %i.p, %.thread ], [ %i.j, %bb.c ], [ %i.c, %bb.a ]
  ret i32 %.012
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ASN1_STRING_length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !33
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ASN1_STRING_length_set(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ASN1_STRING_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ASN1_STRING_get0_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ossl_sk_ASN1_UTF8STRING2text(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.a, ptr @.str.1, ptr %1 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #15
  %.fr57 = freeze i64 %i.b                        ; 5 uses
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not46.not = icmp eq i64 %2, 0
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef 0) #14
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  br i1 %.not46.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.preheader
  %i.i = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph.split, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.k = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.03850.us = phi i64 [ %i.p, %.lr.ph.split.us ], [ %i.g, %.lr.ph.split.us.preheader ]
  %.04049.us = phi i32 [ %i.q, %.lr.ph.split.us ], [ 1, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.04049.us) #14
  %spec.select.us = add i64 %.fr57, %.03850.us
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %spec.select.us, %i.o            ; 2 uses
  %i.q = add nuw nsw i32 %.04049.us, 1            ; 2 uses
  %i.r = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !34

bb.c:                                             ; preds = %.lr.ph.split
  %i.t = add nuw nsw i32 %.04049, 1               ; 2 uses
  %i.u = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split, label %._crit_edge, !llvm.loop !35

.lr.ph.split:                                     ; preds = %bb.b, %bb.c
  %.03850 = phi i64 [ %i.z, %bb.c ], [ %i.g, %bb.b ]
  %.04049 = phi i32 [ %i.t, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.w = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.04049) #14
  %spec.select = add i64 %.fr57, %.03850
  %i.x = load i32, ptr %i.w, align 8, !tbaa !33
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %spec.select, %i.y               ; 3 uses
  %i.aa = icmp ugt i64 %i.z, %2
  br i1 %i.aa, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.split.us, %bb.b, %.lr.ph.split.us.preheader, %bb.a
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph.split.us ], [ %i.g, %.lr.ph.split.us.preheader ], [ %i.g, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = add i64 %.038.lcssa, 1
  %i.ac = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 449) #14 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ae = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.preheader
  %.not58 = icmp eq i64 %.fr57, 0
  %i.ag = add i64 %.fr57, 1
  br i1 %.not58, label %.lr.ph53.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph53
  %i.ah = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef 0) #14 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !33
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  %i.ak = tail call ptr @strncpy(ptr noundef nonnull %i.ac, ptr noundef %.pre, i64 noundef %i.aj) #14 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aj ; 2 uses
  %i.am = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph53.split.peel.next, label %._crit_edge54

.lr.ph53.split.us:                                ; preds = %.lr.ph53, %.lr.ph53.split.us
  %.052.us = phi ptr [ %i.au, %.lr.ph53.split.us ], [ %i.ac, %.lr.ph53 ] ; 2 uses
  %.14151.us = phi i32 [ %i.av, %.lr.ph53.split.us ], [ 0, %.lr.ph53 ] ; 2 uses
  %i.ao = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.14151.us) #14 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !33
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.at = tail call ptr @strncpy(ptr noundef %.052.us, ptr noundef %i.as, i64 noundef %i.aq) #14 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.052.us, i64 %i.aq ; 2 uses
  %i.av = add nuw nsw i32 %.14151.us, 1           ; 2 uses
  %i.aw = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph53.split.us, label %._crit_edge54, !llvm.loop !36

.lr.ph53.split.peel.next:                         ; preds = %bb.d, %.lr.ph53.split.peel.next
  %.052 = phi ptr [ %i.bg, %.lr.ph53.split.peel.next ], [ %i.al, %bb.d ] ; 2 uses
  %.14151 = phi i32 [ %i.bh, %.lr.ph53.split.peel.next ], [ 1, %bb.d ] ; 2 uses
  %i.ay = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.14151) #14 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !33
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = tail call ptr @strncpy(ptr noundef nonnull %.052, ptr noundef nonnull %spec.store.select, i64 noundef %i.ag) #14 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.052, i64 %.fr57 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bf = tail call ptr @strncpy(ptr noundef nonnull %i.bc, ptr noundef %i.be, i64 noundef %i.ba) #14 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba ; 2 uses
  %i.bh = add nuw nsw i32 %.14151, 1              ; 2 uses
  %i.bi = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #14
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph53.split.peel.next, label %._crit_edge54, !llvm.loop !37

._crit_edge54:                                    ; preds = %.lr.ph53.split.peel.next, %.lr.ph53.split.us, %bb.d, %.preheader
  %.0.lcssa = phi ptr [ %i.ac, %.preheader ], [ %i.au, %.lr.ph53.split.us ], [ %i.al, %bb.d ], [ %i.bg, %.lr.ph53.split.peel.next ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.preheader, %._crit_edge, %._crit_edge54
  %.042 = phi ptr [ %i.ac, %._crit_edge54 ], [ null, %._crit_edge ], [ null, %.lr.ph.split.preheader ], [ null, %.lr.ph.split ]
  ret ptr %.042
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = !{!30, !20, i64 16}
!30 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !9, i64 8, !20, i64 16}
!31 = !{!30, !5, i64 4}
!32 = !{!30, !9, i64 8}
!33 = !{!30, !5, i64 0}
!34 = distinct !{!34, !13, !24}
!35 = distinct !{!35, !13, !24}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13, !24}
end_hunk_0
