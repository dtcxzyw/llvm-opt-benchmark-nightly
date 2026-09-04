Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_math?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_sqrt:bb.a
  %i.b = add i32 %.0, %.012                       ; 3 uses
  %i.c = mul i32 %i.b, %i.b
  %.not = icmp ugt i32 %i.c, %i.a
  %spec.select = select i1 %.not, i32 %.0, i32 %i.b ; 3 uses
  %i.d = lshr i32 %.012, 1                        ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.c, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %spec.select, 4
  %i.f = trunc i32 %i.e to i16
  store i16 %i.f, ptr %1, align 2, !tbaa !36
  %.1.tr = trunc i32 %spec.select to i16
  %i.g = shl i16 %.1.tr, 4
  %i.h = and i16 %i.g, 240
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.h, ptr %i.i, align 2, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, -2147483648) i32 @lv_sqrt32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 65535
  br i1 %i.a, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 16777215
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i32 %0, 268435455
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i32 %0, 1073741823
  br i1 %i.d, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ugt i32 %0, -131072
  br i1 %i.e, label %bb.z, label %bb.w

bb.f:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i32 %0, 67108863       ; 2 uses
  %. = select i1 %i.f, i32 20, i32 18
  %.47 = select i1 %i.f, i32 6, i32 5
  br label %bb.w

bb.g:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i32 %0, 1048575
  br i1 %i.g, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ugt i32 %0, 4194303
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = lshr i32 %0, 16
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !38
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 4
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.o = lshr i32 %0, 14
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  br label %bb.x

bb.k:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %0, 262143
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = lshr i32 %0, 12
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 2
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ab = lshr i32 %0, 10
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 1
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  %i.ah = icmp samesign ugt i32 %0, 255
  br i1 %i.ah, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp samesign ugt i32 %0, 4095
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp samesign ugt i32 %0, 16383
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = lshr i32 %0, 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, 1
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.aq = lshr i32 %0, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38
  %i.au = lshr i8 %i.at, 1
  %narrow41 = add nuw i8 %i.au, 1
  %i.av = zext i8 %narrow41 to i32
  br label %bb.y

bb.s:                                             ; preds = %bb.o
  %i.aw = icmp samesign ugt i32 %0, 1023
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = lshr i32 %0, 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !38
  %i.bb = lshr i8 %i.ba, 2
  %narrow40 = add nuw nsw i8 %i.bb, 1
  %i.bc = zext nneg i8 %narrow40 to i32
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bd = lshr i32 %0, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !38
  %i.bh = lshr i8 %i.bg, 3
  %narrow = add nuw nsw i8 %i.bh, 1
  %i.bi = zext nneg i8 %narrow to i32
  br label %bb.y

bb.v:                                             ; preds = %bb.n
  %i.bj = zext nneg i32 %0 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !38
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = zext nneg i8 %i.bm to i32
  br label %bb.z

bb.w:                                             ; preds = %bb.f, %bb.d, %bb.e
  %.sink46 = phi i32 [ %., %bb.f ], [ 22, %bb.d ], [ 24, %bb.e ]
  %.sink43 = phi i32 [ %.47, %bb.f ], [ 7, %bb.d ], [ 8, %bb.e ]
  %i.bo = lshr i32 %0, %.sink46
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @lv_sqrt32.sqq_table, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, %.sink43         ; 2 uses
  %i.bu = or disjoint i32 %i.bt, 1
  %i.bv = udiv i32 %0, %i.bt
  %i.bw = add nuw nsw i32 %i.bu, %i.bv
  %i.bx = lshr i32 %i.bw, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.j, %bb.i, %bb.m, %bb.l, %bb.w
  %.1 = phi i32 [ %i.bx, %bb.w ], [ %i.n, %bb.i ], [ %i.t, %bb.j ], [ %i.aa, %bb.l ], [ %i.ag, %bb.m ] ; 2 uses
  %i.by = add nuw nsw i32 %.1, 1
  %i.bz = udiv i32 %0, %.1
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = lshr i32 %i.ca, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.q, %bb.u, %bb.t, %bb.x
  %.2 = phi i32 [ %i.cb, %bb.x ], [ %i.ap, %bb.q ], [ %i.av, %bb.r ], [ %i.bc, %bb.t ], [ %i.bi, %bb.u ] ; 3 uses
  %i.cc = mul nsw i32 %.2, %.2
  %i.cd = icmp sgt i32 %i.cc, %0
  %i.ce = sext i1 %i.cd to i32
  %spec.select = add nsw i32 %.2, %i.ce
  br label %bb.z

bb.z:                                             ; preds = %bb.e, %bb.y, %bb.v
  %.038 = phi i32 [ %i.bn, %bb.v ], [ %spec.select, %bb.y ], [ 65535, %bb.e ]
  ret i32 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @lv_atan2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %spec.select = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 3 uses
  %.lobit = lshr i32 %0, 31
  %spec.select61 = trunc nuw nsw i32 %.lobit to i8 ; 2 uses
  %2 = icmp slt i32 %1, 0
  %3 = or disjoint i8 %spec.select61, 2
  %.050 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %.148 = select i1 %2, i8 %3, i8 %spec.select61  ; 2 uses
  %i.a = icmp samesign ugt i32 %spec.select, %.050
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul i32 %.050, 45
  %i.c = udiv i32 %i.b, %spec.select
  %4 = or disjoint i8 %.148, 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = mul i32 %spec.select, 45
  %i.e = udiv i32 %i.d, %.050
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.249 = phi i8 [ %4, %bb.b ], [ %.148, %bb.c ]
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ]  ; 2 uses
  %i.f = and i32 %.0, 255                         ; 9 uses
  %i.g = icmp samesign ugt i32 %i.f, 22
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %i.f, 45
  %spec.select62 = zext i1 %i.h to i32
  %i.i = icmp samesign ult i32 %i.f, 42
  %.145 = select i1 %i.i, i32 2, i32 %spec.select62
  %i.j = icmp samesign ult i32 %i.f, 38
  %i.k = icmp samesign ult i32 %i.f, 33
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i32 %i.f, 1
  %spec.select63 = zext i1 %i.l to i32
  %i.m = icmp samesign ugt i32 %i.f, 5
  %.4 = select i1 %i.m, i32 2, i32 %spec.select63
  %i.n = icmp samesign ugt i32 %i.f, 9
  %i.o = icmp samesign ugt i32 %i.f, 14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink70 = phi i1 [ %i.o, %bb.f ], [ %i.k, %bb.e ]
  %.sink69.in = phi i1 [ %i.n, %bb.f ], [ %i.j, %bb.e ]
  %.4.sink = phi i32 [ %.4, %bb.f ], [ %.145, %bb.e ]
  %.sink69 = zext i1 %.sink69.in to i32
  %i.p = zext i1 %.sink70 to i32
  %.5 = add nuw nsw i32 %i.p, %.sink69
  %spec.select67 = add nuw nsw i32 %.5, %.4.sink
  %i.q = add i32 %spec.select67, %.0              ; 2 uses
  %5 = zext nneg i8 %.249 to i32                  ; 3 uses
  %i.r = and i32 %5, 16
  %.not = icmp eq i32 %i.r, 0
  %i.s = sub i32 90, %i.q
  %spec.select64 = select i1 %.not, i32 %i.q, i32 %i.s ; 4 uses
  %i.t = and i32 %5, 2
  %.not58 = icmp eq i32 %i.t, 0
  %i.u = and i32 %5, 1
  %.not59 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not58, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i32 %spec.select64, 180
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.w = sub i32 180, %spec.select64
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = sub i32 360, %spec.select64
  %spec.select65 = select i1 %.not59, i32 %spec.select64, i32 %i.x
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.2 = phi i32 [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ %spec.select65, %bb.k ]
  %i.y = trunc i32 %.2 to i16
  ret i16 %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @lv_pow(i64 noundef %0, i8 noundef signext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i8 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not21 = icmp eq i8 %1, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %.loopexit [
    i64 -1, label %bb.d
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.b = and i8 %1, 1
  %.not20 = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not20, i64 1, i64 -1
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi i64 [ %spec.select, %.lr.ph ], [ 1, %.preheader ]
  %.01423 = phi i8 [ %i.f, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.01522 = phi i64 [ %i.g, %.lr.ph ], [ %0, %.preheader ] ; 3 uses
  %i.d = and i8 %.01423, 1
  %.not19 = icmp eq i8 %i.d, 0
  %i.e = select i1 %.not19, i64 1, i64 %.01522
  %spec.select = mul nsw i64 %i.e, %.024          ; 2 uses
  %i.f = lshr i8 %.01423, 1                       ; 2 uses
  %i.g = mul nsw i64 %.01522, %.01522
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !39

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b, %bb.d, %bb.c
  %.016 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.c, %bb.d ], [ 1, %.preheader ], [ %spec.select, %.lr.ph ]
  ret i64 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_map(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %2, %1                     ; 2 uses
  %.not35 = icmp slt i32 %0, %2
  %or.cond = or i1 %.not, %.not35
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not36 = icmp sgt i32 %0, %1
  %or.cond40 = or i1 %.not36, %.not
  br i1 %or.cond40, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not37 = icmp sgt i32 %2, %1                   ; 2 uses
  %.not38 = icmp sgt i32 %0, %2
  %or.cond41 = or i1 %.not37, %.not38
  br i1 %or.cond41, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not39 = icmp slt i32 %0, %1
  %or.cond42 = or i1 %.not39, %.not37
  br i1 %or.cond42, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.b = sub nsw i32 %2, %1
  %i.c = sub nsw i32 %4, %3
  %i.d = sub nsw i32 %0, %1
  %i.e = mul nsw i32 %i.c, %i.d
  %i.f = sdiv i32 %i.e, %i.b
  %i.g = add nsw i32 %i.f, %3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %i.g, %bb.f ], [ %3, %bb.a ], [ %4, %bb.b ], [ %3, %bb.c ], [ %4, %bb.d ], [ %3, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_rand_set_seed(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @lv_rand(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !32 ; 2 uses
  %i.b = shl i32 %i.a, 13
  %i.c = xor i32 %i.b, %i.a                       ; 2 uses
  %i.d = lshr i32 %i.c, 17
  %i.e = xor i32 %i.d, %i.c                       ; 2 uses
  %i.f = shl i32 %i.e, 5
  %i.g = xor i32 %i.f, %i.e                       ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !32
  %reass.sub = sub i32 %1, %0
  %i.h = add i32 %reass.sub, 1
  %i.i = urem i32 %i.g, %i.h
  %i.j = add i32 %i.i, %0
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -65535, 65536) i32 @lv_trigo_cos(i16 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, 90                           ; 2 uses
  %smax.i = tail call i16 @llvm.smax.i16(i16 %i.a, i16 0)
  %reass.sub = sub i16 %smax.i, %0
  %i.b = add i16 %reass.sub, 269                  ; 2 uses
  %i.c = urem i16 %i.b, 360
  %i.d = sub nuw i16 %i.b, %i.c
  %i.e = add i16 %i.d, %i.a                       ; 2 uses
  %i.f = tail call i16 @llvm.umax.i16(i16 %i.e, i16 359) ; 2 uses
  %i.g = urem i16 %i.f, 360
  %.neg.i = sub i16 %i.g, %i.f
  %i.h = add i16 %.neg.i, %i.e                    ; 7 uses
  %i.i = icmp samesign ult i16 %i.h, 90
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i16 %i.h to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !9
  %i.m = zext i16 %i.l to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i16 %i.h, 180
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i16 180, %i.h
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i16 %i.h, 270
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i16 %i.h to i64
  %i.v = getelementptr [2 x i8], ptr @sin0_90_table, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -360
  %i.x = load i16, ptr %i.w, align 2, !tbaa !9
  %i.y = zext i16 %i.x to i32
  %i.z = sub nsw i32 0, %i.y
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = sub nuw nsw i16 360, %i.h
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !9
  %i.ae = zext i16 %i.ad to i32
  %i.af = sub nsw i32 0, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  switch i32 %.0.i, label %bb.j [
    i32 32767, label %lv_trigo_sin.exit
    i32 -32767, label %bb.i
  ]

end_hunk_0
