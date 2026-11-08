Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/asn1_lib?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cbs_st = type { ptr, i64 }

@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/asn1/asn1_lib.c\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 129) i32 @ASN1_get_object(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.cbs_st, align 8             ; 4 uses
  %6 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = icmp slt i64 %4, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str, i32 noundef 80) #8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  call void @CBS_init(ptr noundef nonnull %5, ptr noundef %i.f, i64 noundef %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.g = call i32 @cbs_get_any_asn1_element(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !19
  %i.i = call i32 @CBS_skip(ptr noundef nonnull %6, i64 noundef %i.h) #8
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i64 @CBS_len(ptr noundef nonnull %6) #8
  %i.k = icmp ugt i64 %i.j, 1073741823
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str, i32 noundef 104) #8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.m = lshr i32 %i.l, 24                        ; 2 uses
  %i.n = and i32 %i.m, 192                        ; 2 uses
  %i.o = and i32 %i.l, 536870911                  ; 2 uses
  %i.p = icmp eq i32 %i.n, 0
  %i.q = icmp samesign ugt i32 %i.o, 255
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str, i32 noundef 117) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.c, align 4, !tbaa !20
  %.not15 = icmp ne i32 %i.r, 0
  %i.s = zext i1 %.not15 to i32
  %i.t = and i32 %i.m, 32
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = call ptr @CBS_data(ptr noundef nonnull %6) #8
  store ptr %i.v, ptr %0, align 8, !tbaa !10
  %i.w = call i64 @CBS_len(ptr noundef nonnull %6) #8
  store i64 %i.w, ptr %1, align 8, !tbaa !19
  store i32 %i.o, ptr %2, align 4, !tbaa !20
  store i32 %i.n, ptr %3, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.1 = phi i32 [ 128, %bb.f ], [ 128, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.2 = phi i32 [ 128, %bb.b ], [ %.1, %bb.j ]
  ret i32 %.2
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @cbs_get_any_asn1_element(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBS_skip(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #1

declare ptr @CBS_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

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
  store i8 %i.h, ptr %i.a, align 1, !tbaa !12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = trunc nuw i32 %i.d to i8
  %i.k = or disjoint i8 %i.j, 31
  store i8 %i.k, ptr %i.a, align 1, !tbaa !12
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.m = trunc i32 %3 to i8
  %i.n = and i8 %i.m, 127
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !12
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
  store i8 %spec.select.prol, ptr %i.q, align 1, !tbaa !12
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
  store i8 %spec.select, ptr %i.v, align 1, !tbaa !12
  %.02437.1 = lshr i32 %.02437.in, 14
  %i.w = trunc i32 %.02437.1 to i8
  %i.x = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %spec.select.1 = or i8 %i.w, -128
  store i8 %spec.select.1, ptr %i.y, align 1, !tbaa !12
  %.02437.2 = lshr i32 %.02437.in, 21
  %i.z = trunc i32 %.02437.2 to i8
  %i.aa = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %spec.select.2 = or i8 %i.z, -128
  store i8 %spec.select.2, ptr %i.ab, align 1, !tbaa !12
  %.02437.3 = lshr i32 %.02437.in, 28             ; 2 uses
  %indvars.iv41.3 = add nsw i64 %indvars.iv41.in, -4
  %i.ac = trunc nuw nsw i32 %.02437.3 to i8
  %i.ad = getelementptr i8, ptr %i.a, i64 %indvars.iv41.in
  %i.ae = getelementptr i8, ptr %i.ad, i64 -3
  %spec.select.3 = or disjoint i8 %i.ac, -128
  store i8 %spec.select.3, ptr %i.ae, align 1, !tbaa !12
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
  store i8 -128, ptr %.033, align 1, !tbaa !12
  br label %asn1_put_length.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp slt i32 %2, 128
  br i1 %i.ak, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %bb.g
  %i.al = trunc i32 %2 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.033, i64 1
  store i8 %i.al, ptr %.033, align 1, !tbaa !12
  br label %asn1_put_length.exit

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %bb.g ] ; 5 uses
  %.025.i = phi i32 [ %i.an, %.preheader.i ], [ %2, %bb.g ]
  %.01924.i = phi i32 [ %i.ao, %.preheader.i ], [ 0, %bb.g ]
  %i.an = lshr i32 %.025.i, 8                     ; 2 uses
  %i.ao = add nuw nsw i32 %.01924.i, 1            ; 3 uses
  %.not.i = icmp eq i32 %i.an, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1
  br i1 %.not.i, label %bb.i, label %.preheader.i, !llvm.loop !24

bb.i:                                             ; preds = %.preheader.i
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.033, align 1, !tbaa !12
  %xtraiter51 = and i64 %indvars.iv.i.a, 3        ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %indvars.iv28.i.prol = phi i64 [ %indvars.iv.next29.i.prol, %.prol.preheader ], [ %indvars.iv.i.a, %bb.i ] ; 2 uses
  %.02126.i.prol = phi i32 [ %i.at, %.prol.preheader ], [ %2, %bb.i ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.prol.preheader ], [ 0, %bb.i ]
  %indvars.iv.next29.i.prol = add nsw i64 %indvars.iv28.i.prol, -1 ; 2 uses
  %i.ar = trunc i32 %.02126.i.prol to i8
  %i.as = getelementptr i8, ptr %.033, i64 %indvars.iv28.i.prol
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !12
  %i.at = lshr i32 %.02126.i.prol, 8              ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %indvars.iv28.i.unr = phi i64 [ %indvars.iv.i.a, %bb.i ], [ %indvars.iv.next29.i.prol, %.prol.preheader ]
  %.02126.i.unr = phi i32 [ %2, %bb.i ], [ %i.at, %.prol.preheader ]
  %i.au = icmp samesign ult i64 %indvars.iv.i.a, 4
  br i1 %i.au, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.new ], [ %indvars.iv28.i.unr, %.prol.loopexit ] ; 6 uses
  %.02126.i = phi i32 [ 0, %.new ], [ %.02126.i.unr, %.prol.loopexit ] ; 4 uses
  %i.av = trunc i32 %.02126.i to i8
  %i.aw = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !12
  %i.ax = lshr i32 %.02126.i, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !12
  %i.bb = lshr i32 %.02126.i, 16
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !12
  %i.bf = lshr i32 %.02126.i, 24
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, -4
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = getelementptr i8, ptr %.033, i64 %indvars.iv28.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -3
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !12
  %i.bj = icmp sgt i64 %indvars.iv28.i, 4
  br i1 %i.bj, label %.new, label %.unr-lcssa, !llvm.loop !26

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %5 = zext nneg i32 %i.ao to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %5
  br label %asn1_put_length.exit

asn1_put_length.exit:                             ; preds = %.unr-lcssa, %bb.h, %bb.f
  %.134 = phi ptr [ %i.aj, %bb.f ], [ %i.am, %bb.h ], [ %i.bl, %.unr-lcssa ]
  store ptr %.134, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ASN1_put_eoc(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !12
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2147483646, -2147483648) i32 @ASN1_object_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 30
  br i1 %i.b, label %.preheader26, label %.loopexit27

.preheader26:                                     ; preds = %bb.b, %.preheader26
  %.021 = phi i32 [ %i.c, %.preheader26 ], [ %2, %bb.b ]
  %.020 = phi i32 [ %i.d, %.preheader26 ], [ 1, %bb.b ]
  %i.c = lshr i32 %.021, 7                        ; 2 uses
  %i.d = add nuw nsw i32 %.020, 1                 ; 2 uses
  %.old1.not = icmp eq i32 %i.c, 0
  br i1 %.old1.not, label %.loopexit27, label %.preheader26

.loopexit27:                                      ; preds = %.preheader26, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %i.d, %.preheader26 ] ; 2 uses
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit27
  %i.f = add nsw i32 %.1, 3
  br label %.loopexit

bb.d:                                             ; preds = %.loopexit27
  %i.g = add nsw i32 %.1, 1                       ; 2 uses
  %i.h = icmp samesign ugt i32 %1, 127
  br i1 %i.h, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader
  %.029 = phi i32 [ %i.i, %.preheader ], [ %1, %bb.d ]
  %.228 = phi i32 [ %i.j, %.preheader ], [ %i.g, %bb.d ]
  %i.i = lshr i32 %.029, 8                        ; 2 uses
  %i.j = add nuw nsw i32 %.228, 1                 ; 2 uses
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %.loopexit, label %.preheader, !llvm.loop !29

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

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_STRING_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = load i32, ptr %1, align 8, !tbaa !16
  %i.e = sext i32 %i.d to i64
  %i.f = tail call i32 @ASN1_STRING_set(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.e)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_STRING_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.028 = phi i64 [ %i.c, %bb.c ], [ %2, %bb.a ]  ; 7 uses
  %i.d = icmp ugt i64 %.028, 67108864
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 265) #8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.e = load i32, ptr %0, align 8, !tbaa !16
  %i.f = trunc nuw nsw i64 %.028 to i32           ; 2 uses
  %.not = icmp sgt i32 %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 5 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.h, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.m = phi ptr [ %i.j, %.thread ], [ %i.k, %bb.h ]
  %i.n = add nuw nsw i64 %.028, 1
  %i.o = tail call ptr @OPENSSL_malloc(i64 noundef %i.n) #8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = add nuw nsw i64 %.028, 1
  %i.q = tail call ptr @OPENSSL_realloc(ptr noundef nonnull %i.h, i64 noundef %i.p) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = phi ptr [ %i.k, %bb.j ], [ %i.m, %bb.i ] ; 2 uses
  %i.s = phi ptr [ %i.h, %bb.j ], [ null, %bb.i ]
  %storemerge = phi ptr [ %i.q, %bb.j ], [ %i.o, %bb.i ] ; 3 uses
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !15
  %.not34 = icmp eq ptr %storemerge, null
  br i1 %.not34, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store ptr %i.s, ptr %i.r, align 8, !tbaa !15
  br label %bb.o

.critedge:                                        ; preds = %bb.k, %bb.g
  %i.t = phi ptr [ %storemerge, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !16
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.u = icmp eq i64 %.028, 0
  br i1 %i.u, label %OPENSSL_memcpy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %1, i64 range(i64 0, 67108865) %.028, i1 false)
  %.pre36 = load ptr, ptr %i.v, align 8, !tbaa !15
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.m, %bb.n
  %i.w = phi ptr [ %i.t, %bb.m ], [ %.pre36, %bb.n ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.028
  store i8 0, ptr %i.x, align 1, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %.critedge, %OPENSSL_memcpy.exit, %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %OPENSSL_memcpy.exit ], [ 1, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define ptr @ASN1_STRING_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
end_hunk_0
