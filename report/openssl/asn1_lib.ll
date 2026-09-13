Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/asn1_lib?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
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
  store ptr %i.h, ptr %0, align 8, !tbaa !10
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
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
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  br label %_asn1_check_infinite_end.exit

_asn1_check_infinite_end.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 162) i32 @ASN1_get_object(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = icmp slt i64 %4, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @__func__.ASN1_get_object) #13
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, ptr noundef null) #13
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
  br i1 %or.cond, label %asn1_get_length.exit.thread, label %.preheader, !llvm.loop !20

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
  store i32 %.029, ptr %2, align 4, !tbaa !23
  store i32 %i.f, ptr %3, align 4, !tbaa !23
  %i.ab = load i8, ptr %.152, align 1, !tbaa !11  ; 3 uses
  %i.ac = icmp eq i8 %i.ab, -128
  br i1 %i.ac, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i8 %i.ab, 127                       ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.152, i64 1 ; 3 uses
  %.not.i = icmp sgt i8 %i.ab, -1
  %i.af = zext nneg i8 %i.ad to i64               ; 2 uses
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not31.i = icmp samesign ugt i64 %.1, %i.af
  br i1 %.not31.i, label %.preheader33.i, label %asn1_get_length.exit.thread

.preheader33.i:                                   ; preds = %bb.j
  %.not3234.i = icmp eq i8 %i.ad, 0
  br i1 %.not3234.i, label %.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %i.ag = zext nneg i8 %i.ad to i32
  %narrow.i = add nuw i8 %i.ad, 1
  %5 = zext i8 %narrow.i to i64
  %scevgep.i = getelementptr i8, ptr %.152, i64 %5
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.036.i = phi i32 [ %i.ak, %bb.k ], [ %i.ag, %.lr.ph.preheader.i ] ; 4 uses
  %.02835.i = phi ptr [ %i.aj, %bb.k ], [ %i.ae, %.lr.ph.preheader.i ] ; 4 uses
  %i.ah = load i8, ptr %.02835.i, align 1, !tbaa !11
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.02835.i, i64 1
  %i.ak = add nsw i32 %.036.i, -1                 ; 2 uses
  %.not32.i = icmp eq i32 %i.ak, 0
  br i1 %.not32.i, label %.thread, label %.lr.ph.i, !llvm.loop !21

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.al = icmp samesign ugt i32 %.036.i, 8
  br i1 %i.al, label %asn1_get_length.exit.thread, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.critedge.i, %.lr.ph44.i
  %.143.i = phi i32 [ %i.ar, %.lr.ph44.i ], [ %.036.i, %.critedge.i ] ; 2 uses
  %.02642.i = phi i64 [ %i.aq, %.lr.ph44.i ], [ 0, %.critedge.i ]
  %.12941.i = phi ptr [ %i.an, %.lr.ph44.i ], [ %.02835.i, %.critedge.i ] ; 2 uses
  %i.am = shl i64 %.02642.i, 8                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.12941.i, i64 1
  %i.ao = load i8, ptr %.12941.i, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap            ; 2 uses
  %i.ar = add nsw i32 %.143.i, -1
  %i.as = icmp samesign ugt i32 %.143.i, 1
  br i1 %i.as, label %.lr.ph44.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %.lr.ph44.i
  %i.at = zext nneg i32 %.036.i to i64
  %scevgep49.i = getelementptr i8, ptr %.02835.i, i64 %i.at
  %i.au = icmp slt i64 %i.am, 0
  br i1 %i.au, label %asn1_get_length.exit.thread, label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %.preheader33.i, %._crit_edge.i
  %.2.i.ph = phi ptr [ %scevgep49.i, %._crit_edge.i ], [ %i.ae, %.preheader33.i ], [ %i.ae, %bb.i ], [ %scevgep.i, %bb.k ]
  %.127.i.ph = phi i64 [ %i.aq, %._crit_edge.i ], [ 0, %.preheader33.i ], [ %i.af, %bb.i ], [ 0, %bb.k ] ; 2 uses
  store i64 %.127.i.ph, ptr %1, align 8, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.152, i64 1
  store i64 0, ptr %1, align 8, !tbaa !24
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
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @__func__.ASN1_get_object) #13
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 155, ptr noundef null) #13
  %i.bb = or disjoint i32 %i.e, 128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.031 = phi i32 [ %i.bb, %bb.n ], [ %i.e, %bb.m ]
  store ptr %.2.i64, ptr %0, align 8, !tbaa !10
  %i.bc = or i32 %.031, %.04963
  br label %bb.p

asn1_get_length.exit.thread:                      ; preds = %bb.e, %._crit_edge.i, %bb.j, %.critedge.i, %bb.l, %bb.g, %bb.f, %bb.d
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 105, ptr noundef nonnull @__func__.ASN1_get_object) #13
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 123, ptr noundef null) #13
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 9 uses
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
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !25

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
  br i1 %.not39, label %.preheader, label %bb.d, !llvm.loop !26

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
  br i1 %i.af, label %.peel.next, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %.peel.next.prol.loopexit, %.peel.next, %.preheader
  %i.ag = zext nneg i32 %i.t to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.033 = phi ptr [ %i.i, %bb.b ], [ %i.ah, %.loopexit ] ; 11 uses
  %i.ai = icmp eq i32 %1, 2
  br i1 %i.ai, label %bb.f, label %bb.g

end_hunk_0
