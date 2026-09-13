Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_mul?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @bn_sub_part_words(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @bn_sub_words(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 ; 6 uses
  %i.b = icmp eq i32 %4, 0
  br i1 %i.b, label %.thread157, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %3 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.c ; 5 uses
  %i.e = icmp slt i32 %4, 0
  br i1 %i.e, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = add i64 %i.a, %i.g
  %i.i = sub i64 0, %i.h
  store i64 %i.i, ptr %i.d, align 8, !tbaa !9
  %.not143184 = icmp eq i64 %i.g, 0
  %spec.select185 = select i1 %.not143184, i64 %i.a, i64 1 ; 2 uses
  %i.j = icmp eq i32 %4, -1
  br i1 %i.j, label %.thread157, label %.lr.ph190

.lr.ph190:                                        ; preds = %.preheader, %bb.e
  %spec.select189 = phi i64 [ %spec.select, %bb.e ], [ %spec.select185, %.preheader ] ; 2 uses
  %.0101188 = phi i32 [ %i.ac, %bb.e ], [ %4, %.preheader ] ; 4 uses
  %.0110187 = phi ptr [ %i.ad, %bb.e ], [ %i.f, %.preheader ] ; 4 uses
  %.0114186 = phi ptr [ %i.ae, %bb.e ], [ %i.d, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0110187, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = add i64 %spec.select189, %i.l
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0114186, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !9
  %.not144 = icmp eq i64 %i.l, 0
  %spec.select147 = select i1 %.not144, i64 %spec.select189, i64 1 ; 3 uses
  %i.p = icmp eq i32 %.0101188, -2
  br i1 %i.p, label %.thread157, label %bb.c

bb.c:                                             ; preds = %.lr.ph190
  %i.q = getelementptr inbounds nuw i8, ptr %.0110187, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = add i64 %spec.select147, %i.r
  %i.t = sub i64 0, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0114186, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !9
  %.not145 = icmp eq i64 %i.r, 0
  %spec.select148 = select i1 %.not145, i64 %spec.select147, i64 1 ; 3 uses
  %i.v = icmp samesign ugt i32 %.0101188, -4
  br i1 %i.v, label %.thread157, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0110187, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = add i64 %spec.select148, %i.x
  %i.z = sub i64 0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0114186, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !9
  %.not146 = icmp eq i64 %i.x, 0
  %spec.select149 = select i1 %.not146, i64 %spec.select148, i64 1 ; 3 uses
  %i.ab = icmp eq i32 %.0101188, -4
  br i1 %i.ab, label %.thread157, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add nuw nsw i32 %.0101188, 4            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0110187, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0114186, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !9  ; 2 uses
  %i.ag = add i64 %spec.select149, %i.af
  %i.ah = sub i64 0, %i.ag
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !9
  %.not143 = icmp eq i64 %i.af, 0
  %spec.select = select i1 %.not143, i64 %spec.select149, i64 1 ; 2 uses
  %i.ai = icmp eq i32 %i.ac, -1
  br i1 %i.ai, label %.thread157, label %.lr.ph190

bb.f:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %.not170 = icmp eq i64 %i.a, 0
  br i1 %.not170, label %.preheader163, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9  ; 2 uses
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.d, align 8, !tbaa !9
  %.not139215 = icmp eq i64 %i.ak, 0
  %spec.select150216 = select i1 %.not139215, i64 %i.a, i64 0 ; 2 uses
  %i.am = icmp slt i32 %4, 2
  br i1 %i.am, label %.thread157, label %.lr.ph221

.lr.ph:                                           ; preds = %bb.i
  %i.an = load i64, ptr %i.bg, align 8, !tbaa !9  ; 2 uses
  %i.ao = sub i64 %i.an, %spec.select152
  store i64 %i.ao, ptr %i.bh, align 8, !tbaa !9
  %.not139 = icmp eq i64 %i.an, 0
  %spec.select150 = select i1 %.not139, i64 %spec.select152, i64 0 ; 2 uses
  %i.ap = icmp slt i32 %.0174217, 6
  br i1 %i.ap, label %.thread157, label %.lr.ph221, !llvm.loop !11

.lr.ph221:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %spec.select150220 = phi i64 [ %spec.select150, %.lr.ph ], [ %spec.select150216, %.lr.ph.preheader ] ; 2 uses
  %.1115171219 = phi ptr [ %i.bh, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %.0111172218 = phi ptr [ %i.bg, %.lr.ph ], [ %i.aj, %.lr.ph.preheader ] ; 4 uses
  %.0174217 = phi i32 [ %i.bf, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0111172218, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !9  ; 2 uses
  %i.as = sub i64 %i.ar, %spec.select150220
  %i.at = getelementptr inbounds nuw i8, ptr %.1115171219, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !9
  %.not140 = icmp eq i64 %i.ar, 0
  %spec.select151 = select i1 %.not140, i64 %spec.select150220, i64 0 ; 3 uses
  %i.au = icmp eq i32 %.0174217, 2
  br i1 %i.au, label %.thread157, label %bb.g

bb.g:                                             ; preds = %.lr.ph221
  %i.av = getelementptr inbounds nuw i8, ptr %.0111172218, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9  ; 2 uses
  %i.ax = sub i64 %i.aw, %spec.select151
  %i.ay = getelementptr inbounds nuw i8, ptr %.1115171219, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !9
  %.not141 = icmp eq i64 %i.aw, 0
  %spec.select152 = select i1 %.not141, i64 %spec.select151, i64 0 ; 5 uses
  %i.az = icmp samesign ult i32 %.0174217, 4
  br i1 %i.az, label %.thread157, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.0111172218, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9  ; 2 uses
  %i.bc = sub i64 %i.bb, %spec.select152
  %i.bd = getelementptr inbounds nuw i8, ptr %.1115171219, i64 24
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !9
  %.not142 = icmp eq i64 %i.bb, 0
  %spec.select153 = select i1 %.not142, i64 %spec.select152, i64 0 ; 2 uses
  %i.be = icmp eq i32 %.0174217, 4
  br i1 %i.be, label %.thread157, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %.0174217, -4               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0111172218, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1115171219, i64 32 ; 3 uses
  %.not = icmp eq i64 %spec.select153, 0
  br i1 %.not, label %.preheader163, label %.lr.ph, !llvm.loop !11

.preheader163:                                    ; preds = %bb.i, %bb.f
  %.1115.lcssa = phi ptr [ %i.d, %bb.f ], [ %i.bh, %bb.i ] ; 2 uses
  %.0111.lcssa = phi ptr [ %i.aj, %bb.f ], [ %i.bg, %bb.i ] ; 2 uses
  %.0.lcssa = phi i32 [ %4, %bb.f ], [ %i.bf, %bb.i ] ; 2 uses
  %5 = load i64, ptr %.0111.lcssa, align 8, !tbaa !9
  store i64 %5, ptr %.1115.lcssa, align 8, !tbaa !9
  %6 = icmp eq i32 %.0.lcssa, 1
  br i1 %6, label %.thread157, label %.lr.ph180

.lr.ph180:                                        ; preds = %.preheader163, %bb.l
  %.7108179 = phi i32 [ %i.bu, %bb.l ], [ %.0.lcssa, %.preheader163 ] ; 5 uses
  %.2113178 = phi ptr [ %i.bv, %bb.l ], [ %.0111.lcssa, %.preheader163 ] ; 4 uses
  %.3117177 = phi ptr [ %i.bw, %bb.l ], [ %.1115.lcssa, %.preheader163 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2113178, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %.3117177, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !9
  %i.bl = icmp eq i32 %.7108179, 2
  br i1 %i.bl, label %.thread157, label %bb.j

bb.j:                                             ; preds = %.lr.ph180
  %i.bm = getelementptr inbounds nuw i8, ptr %.2113178, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %.3117177, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !9
  %i.bp = icmp samesign ult i32 %.7108179, 4
  br i1 %i.bp, label %.thread157, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.2113178, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.3117177, i64 24
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !9
  %i.bt = icmp eq i32 %.7108179, 4
  br i1 %i.bt, label %.thread157, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i32 %.7108179, -4
  %i.bv = getelementptr inbounds nuw i8, ptr %.2113178, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3117177, i64 32 ; 2 uses
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !9
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !9
  %i.by = icmp samesign ult i32 %.7108179, 6
  br i1 %i.by, label %.thread157, label %.lr.ph180

.thread157:                                       ; preds = %bb.h, %bb.g, %.lr.ph221, %.lr.ph, %bb.k, %bb.j, %.lr.ph180, %bb.l, %bb.e, %.lr.ph190, %bb.c, %bb.d, %.lr.ph.preheader, %.preheader163, %.preheader, %bb.a
  %.0109 = phi i64 [ %i.a, %bb.a ], [ 0, %bb.k ], [ %spec.select150216, %.lr.ph.preheader ], [ 0, %.preheader163 ], [ %spec.select185, %.preheader ], [ %spec.select149, %bb.d ], [ %spec.select148, %bb.c ], [ %spec.select147, %.lr.ph190 ], [ %spec.select, %bb.e ], [ 0, %bb.l ], [ 0, %.lr.ph180 ], [ 0, %bb.j ], [ %spec.select150, %.lr.ph ], [ %spec.select151, %.lr.ph221 ], [ %spec.select152, %bb.g ], [ %spec.select153, %bb.h ]
  ret i64 %.0109
}

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 7 uses
  %i.b = add nsw i32 %i.a, %4                     ; 5 uses
  %i.c = add nsw i32 %5, %i.a                     ; 5 uses
  %i.d = icmp eq i32 %3, 8
  %i.e = or i32 %5, %4
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  %or.cond3 = and i1 %i.d, %i.f
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %3, 16
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %4, %3
  %i.i = add nsw i32 %5, %3
  tail call void @bn_mul_normal(ptr noundef %0, ptr noundef %1, i32 noundef %i.h, ptr noundef %2, i32 noundef %i.i)
  %i.j = add nsw i32 %5, %4                       ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.l = shl nsw i32 %3, 1
  %i.m = add nsw i32 %i.l, %4
  %i.n = add nsw i32 %i.m, %5
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o
  %i.q = sub nsw i32 0, %i.j
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.a to i64                ; 9 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 7 uses
  %i.v = sub i32 0, %4                            ; 3 uses
  %i.w = tail call i32 @bn_cmp_part_words(ptr noundef %1, ptr noundef %i.u, i32 noundef %i.b, i32 noundef %i.v) #4
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 7 uses
  %i.y = tail call i32 @bn_cmp_part_words(ptr noundef %i.x, ptr noundef %2, i32 noundef %i.c, i32 noundef %5) #4
  %i.z = mul nsw i32 %i.w, 3
  %i.aa = add nsw i32 %i.z, %i.y
  switch i32 %i.aa, label %bb.k [
    i32 -4, label %bb.g
    i32 -3, label %.thread247
    i32 -2, label %bb.h
    i32 -1, label %.thread247
    i32 0, label %.thread247
    i32 1, label %.thread247
    i32 2, label %bb.i
    i32 3, label %.thread247
    i32 4, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef %i.u, ptr noundef %1, i32 noundef %i.b, i32 noundef %4) ; 0 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  %i.ad = sub i32 0, %5
  %i.ae = tail call i64 @bn_sub_part_words(ptr noundef %i.ac, ptr noundef %2, ptr noundef %i.x, i32 noundef %i.c, i32 noundef %i.ad) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.af = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef %i.u, ptr noundef %1, i32 noundef %i.b, i32 noundef %4) ; 0 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  %i.ah = tail call i64 @bn_sub_part_words(ptr noundef %i.ag, ptr noundef %i.x, ptr noundef %2, i32 noundef %i.c, i32 noundef %5) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ai = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef %1, ptr noundef %i.u, i32 noundef %i.b, i32 noundef %i.v) ; 0 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  %i.ak = sub i32 0, %5
  %i.al = tail call i64 @bn_sub_part_words(ptr noundef %i.aj, ptr noundef %2, ptr noundef %i.x, i32 noundef %i.c, i32 noundef %i.ak) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.am = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef %1, ptr noundef %i.u, i32 noundef %i.b, i32 noundef %i.v) ; 0 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  %i.ao = tail call i64 @bn_sub_part_words(ptr noundef %i.an, ptr noundef %i.x, ptr noundef %2, i32 noundef %i.c, i32 noundef %5) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.not232 = phi i1 [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.i ], [ false, %bb.h ], [ true, %bb.j ] ; 2 uses
  %i.ap = and i32 %3, 2147483646
  %i.aq = icmp eq i32 %i.ap, 16
  %or.cond11 = and i1 %i.aq, %i.f
  br i1 %or.cond11, label %bb.l, label %bb.n

.thread247:                                       ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ar = and i32 %3, 2147483646
  %i.as = icmp eq i32 %i.ar, 16
  %or.cond11250 = and i1 %i.as, %i.f
  br i1 %or.cond11250, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.at = zext nneg i32 %3 to i64                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.au, ptr noundef %6, ptr noundef nonnull %i.av) #4
  br label %.split

bb.m:                                             ; preds = %.thread247
  %i.aw = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i8 0, i64 128, i1 false)
  br label %.split

.split:                                           ; preds = %bb.m, %bb.l
  %.pre-phi = phi i64 [ %i.aw, %bb.m ], [ %i.at, %bb.l ] ; 3 uses
  %.not232238253258 = phi i1 [ true, %bb.m ], [ %.not232, %bb.l ]
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  tail call void @bn_mul_comba8(ptr noundef %i.ay, ptr noundef nonnull %i.u, ptr noundef nonnull %i.x) #4
  %i.az = tail call i64 @bn_add_words(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %i.ay, i32 noundef %3) #4
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %.not232238253258, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.bb = shl nuw nsw i32 %3, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bc ; 2 uses
  %i.be = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  tail call void @bn_mul_recursive(ptr noundef nonnull %i.bf, ptr noundef %6, ptr noundef %i.bg, i32 noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.bd)
  br label %bb.p

bb.o:                                             ; preds = %.thread247
  %i.bh = shl nuw nsw i32 %3, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bi
  %i.bk = zext nneg i32 %3 to i64                 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bk
  %i.bm = shl nuw nsw i64 %i.bk, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bl, i8 0, i64 %i.bm, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pre-phi266 = phi i64 [ %i.be, %bb.n ], [ %i.bk, %bb.o ] ; 3 uses
  %i.bn = phi ptr [ %i.bd, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  %.not232238254263 = phi i1 [ %.not232, %bb.n ], [ true, %bb.o ]
  tail call void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi266 ; 2 uses
  tail call void @bn_mul_recursive(ptr noundef %i.bo, ptr noundef %i.u, ptr noundef %i.x, i32 noundef %i.a, i32 noundef %4, i32 noundef %5, ptr noundef %i.bn)
  %i.bp = tail call i64 @bn_add_words(ptr noundef %6, ptr noundef %0, ptr noundef %i.bo, i32 noundef %3) #4
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %.not232238254263, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.split, %bb.p
  %i.br = phi i32 [ %i.ba, %.split ], [ %i.bq, %bb.p ]
  %i.bs = phi i64 [ %.pre-phi, %.split ], [ %.pre-phi266, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bs ; 2 uses
  %i.bu = tail call i64 @bn_sub_words(ptr noundef %i.bt, ptr noundef %6, ptr noundef %i.bt, i32 noundef %3) #4
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub nsw i32 %i.br, %i.bv
  br label %bb.s

bb.r:                                             ; preds = %.split, %bb.p
  %i.bx = phi i32 [ %i.ba, %.split ], [ %i.bq, %bb.p ]
  %i.by = phi i64 [ %.pre-phi, %.split ], [ %.pre-phi266, %bb.p ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.by ; 2 uses
  %i.ca = tail call i64 @bn_add_words(ptr noundef %i.bz, ptr noundef %i.bz, ptr noundef %6, i32 noundef %3) #4
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add nsw i32 %i.bx, %i.cb
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cd = phi i64 [ %i.bs, %bb.q ], [ %i.by, %bb.r ]
  %.0226 = phi i32 [ %i.bw, %bb.q ], [ %i.cc, %bb.r ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cd
  %i.cg = tail call i64 @bn_add_words(ptr noundef %i.ce, ptr noundef %i.ce, ptr noundef %i.cf, i32 noundef %3) #4
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add nsw i32 %.0226, %i.ch               ; 2 uses
  %.not233 = icmp eq i32 %i.ci, 0
  br i1 %.not233, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = add nuw nsw i32 %i.a, %3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9
  %i.cn = sext i32 %i.ci to i64                   ; 2 uses
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !9
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.t, %.preheader
end_hunk_0
