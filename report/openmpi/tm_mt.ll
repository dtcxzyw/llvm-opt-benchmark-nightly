inline.NumInlined: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = internal global [624 x i64] zeroinitializer, align 16
@p0 = internal unnamed_addr global ptr null, align 8
@p1 = internal unnamed_addr global ptr null, align 8
@pm = internal unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @tm_init_genrand(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 4294967295                   ; 2 uses
  store i64 %i.a, ptr @x, align 16, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.a, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv        ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 624
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  store ptr @x, ptr @p0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), ptr @p1, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw (i8, ptr @x, i64 3176), ptr @pm, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @init_by_array(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  store i64 19650218, ptr @x, align 16, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 19650218, %bb.a ], [ %i.l, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i
  %i.b = lshr i64 %store_forwarded, 30
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul nuw nsw i64 %i.c, 1812433253
  %i.e = add nuw nsw i64 %i.d, %indvars.iv.i      ; 2 uses
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %tm_init_genrand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i
  %i.h = lshr i64 %i.f, 30
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, 1812433253
  %i.k = add i64 %i.j, %indvars.iv.next.i
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

tm_init_genrand.exit:                             ; preds = %bb.b
  store ptr @x, ptr @p0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), ptr @p1, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw (i8, ptr @x, i64 3176), ptr @pm, align 8, !tbaa !10
  %i.m = tail call i32 @llvm.smax.i32(i32 %1, i32 624)
  br label %bb.d

bb.d:                                             ; preds = %tm_init_genrand.exit, %bb.f
  %.030 = phi i32 [ %i.m, %tm_init_genrand.exit ], [ %i.ag, %bb.f ]
  %.02129 = phi i32 [ 0, %tm_init_genrand.exit ], [ %spec.store.select, %bb.f ] ; 2 uses
  %.02228 = phi i32 [ 1, %tm_init_genrand.exit ], [ %.123, %bb.f ] ; 3 uses
  %i.n = sext i32 %.02228 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @x, i64 %i.n ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr i8, ptr %i.o, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8    ; 2 uses
  %i.s = lshr i64 %i.r, 30
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, 1664525
  %i.v = xor i64 %i.u, %i.p
  %i.w = sext i32 %.02129 to i64                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !8
  %i.z = add i64 %i.y, %i.w
  %i.aa = add i64 %i.z, %i.v
  %i.ab = and i64 %i.aa, 4294967295
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !8
  %i.ac = add nsw i32 %.02228, 1
  %i.ad = icmp sgt i32 %.02228, 622
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @x, i64 4984), align 8, !tbaa !8
  store i64 %i.ae, ptr @x, align 16, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.123 = phi i32 [ 1, %bb.e ], [ %i.ac, %bb.d ]  ; 2 uses
  %i.af = add nsw i32 %.02129, 1                  ; 2 uses
  %.not27 = icmp slt i32 %i.af, %1
  %spec.store.select = select i1 %.not27, i32 %i.af, i32 0
  %i.ag = add nsw i32 %.030, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !13

.preheader:                                       ; preds = %bb.f, %bb.h
  %.132 = phi i32 [ %i.av, %bb.h ], [ 623, %bb.f ]
  %.231 = phi i32 [ %.3, %bb.h ], [ %.123, %bb.f ] ; 3 uses
  %i.ah = sext i32 %.231 to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr @x, i64 %i.ah ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %i.am = lshr i64 %i.al, 30
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, 1566083941
  %i.ap = xor i64 %i.ao, %i.aj
  %i.aq = sub i64 %i.ap, %i.ah
  %i.ar = and i64 %i.aq, 4294967295
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !8
  %i.as = add nsw i32 %.231, 1
  %i.at = icmp sgt i32 %.231, 622
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @x, i64 4984), align 8, !tbaa !8
  store i64 %i.au, ptr @x, align 16, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %.3 = phi i32 [ 1, %bb.g ], [ %i.as, %.preheader ]
  %i.av = add nsw i32 %.132, -1                   ; 2 uses
  %.not26 = icmp eq i32 %i.av, 0
  br i1 %.not26, label %bb.i, label %.preheader, !llvm.loop !15

bb.i:                                             ; preds = %bb.h
  store i64 2147483648, ptr @x, align 16, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @tm_genrand_int32() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9 = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i      ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %tm_init_genrand.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.c

tm_init_genrand.exit:                             ; preds = %bb.c, %._crit_edge
  %i.n = phi ptr [ %.pre9, %._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  ret i64 %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, -9223372036854775808) i64 @tm_genrand_int31() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i.i    ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 19
  %i.ap = lshr i64 %i.an, 1
  %i.aq = xor i64 %i.ao, %i.ap
  ret i64 %i.aq
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_real1() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i.i    ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = fmul nnan double %i.aq, f0x3DF0000000100000
  ret double %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_real2() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i.i    ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = fmul nnan double %i.aq, f0x3DF0000000000000
  ret double %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_real3() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i.i    ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = fadd nnan double %i.aq, 5.000000e-01
  %i.as = fmul nnan double %i.ar, f0x3DF0000000000000
  ret double %i.as
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_res53() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw nsw i64 %i.e, %indvars.iv.i.i    ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 4 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  %spec.select = select i1 %i.ad, ptr @x, ptr %i.q ; 2 uses
  %i.ae = icmp eq ptr %i.ac, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  %.pre9.i5 = select i1 %i.ae, ptr @x, ptr %i.ac  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  store ptr %i.af, ptr @pm, align 8, !tbaa !10
  %i.ag = xor i64 %i.y, %i.ab                     ; 2 uses
  store i64 %i.ag, ptr %i.o, align 8, !tbaa !8
  %i.ah = load i64, ptr %spec.select, align 8, !tbaa !8
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !8
  %i.aj = and i64 %i.ai, 2147483648
  %i.ak = load i64, ptr %.pre9.i5, align 8, !tbaa !8 ; 2 uses
  %i.al = and i64 %i.ak, 2147483646
  %i.am = or disjoint i64 %i.al, %i.aj
  %i.an = lshr exact i64 %i.am, 1
  %i.ao = xor i64 %i.an, %i.ah
  %i.ap = and i64 %i.ak, 1
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 0, i64 2567483615
  %i.as = xor i64 %i.ao, %i.ar                    ; 2 uses
  store i64 %i.as, ptr %i.n, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %.pre9.i5, i64 8 ; 2 uses
  store ptr %i.at, ptr @p1, align 8, !tbaa !10
  store ptr %.pre9.i5, ptr @p0, align 8, !tbaa !10
  %i.au = icmp eq ptr %i.af, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.av = icmp eq ptr %i.at, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.av, label %bb.g, label %tm_genrand_int32.exit10

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit10

tm_genrand_int32.exit10:                          ; preds = %bb.f, %bb.g
  %i.aw = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.ax = insertelement <2 x i64> %i.aw, i64 %i.as, i64 1 ; 2 uses
  %i.ay = lshr <2 x i64> %i.ax, splat (i64 11)
  %i.az = xor <2 x i64> %i.ay, %i.ax              ; 2 uses
  %i.ba = shl <2 x i64> %i.az, splat (i64 7)
  %i.bb = and <2 x i64> %i.ba, splat (i64 2636928640)
  %i.bc = xor <2 x i64> %i.bb, %i.az              ; 2 uses
  %i.bd = shl <2 x i64> %i.bc, splat (i64 15)
  %i.be = and <2 x i64> %i.bd, splat (i64 4022730752)
  %i.bf = xor <2 x i64> %i.be, %i.bc              ; 2 uses
  %i.bg = lshr <2 x i64> %i.bf, <i64 23, i64 24>
  %i.bh = lshr <2 x i64> %i.bf, <i64 5, i64 6>
  %i.bi = xor <2 x i64> %i.bg, %i.bh
  %i.bj = uitofp nneg <2 x i64> %i.bi to <2 x double> ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1
  %i.bm = tail call nnan double @llvm.fmuladd.f64(double %i.bk, double f0x4190000000000000, double %i.bl)
  %i.bn = fmul nnan double %i.bm, f0x3CA0000000000000
  ret double %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 long", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
end_hunk_0
