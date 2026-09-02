Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bufpage?download=true
inline.NumInlined: 49
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@compactify_tuples:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr nonnull align 1 %i.ew, i64 %i.ey, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %._crit_edge144
  %.7121 = phi i32 [ %.2116.lcssa, %._crit_edge144 ], [ %.6120.lcssa, %._crit_edge ]
  %i.ez = trunc i32 %.7121 to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 %i.ez, ptr %i.fa, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PageTruncateLinePointerArray(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %.val = load i16, ptr %i.a, align 4             ; 3 uses
  %i.b = icmp ult i16 %.val, 25
  %i.c = zext i16 %.val to i32
  %i.d = add nuw nsw i32 %i.c, 262120
  %i.e = lshr i32 %i.d, 2
  %i.f = and i32 %i.e, 65535                      ; 2 uses
  %.not383948 = icmp eq i32 %i.f, 0
  %.not3839 = select i1 %i.b, i1 true, i1 %.not383948
  br i1 %.not3839, label %.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01843 = phi i32 [ %i.f, %.lr.ph ], [ %i.n, %bb.d ] ; 3 uses
  %.01942 = phi i32 [ 0, %.lr.ph ], [ %.237, %bb.d ] ; 3 uses
  %.02340 = phi i1 [ false, %.lr.ph ], [ %.22535, %bb.d ] ; 2 uses
  %i.h = zext nneg i32 %.01843 to i64
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h
  %i.j = icmp eq i32 %.01843, 1
  %or.cond.not = or i1 %.02340, %i.j
  %i.k = load i32, ptr %i.i, align 4
  %i.l = and i32 %i.k, 98304
  %.not.not = icmp eq i32 %i.l, 0                 ; 3 uses
  br i1 %or.cond.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %not..not27 = xor i1 %.not.not, true
  %i.m = zext i1 %.not.not to i32
  %spec.select28 = add i32 %.01942, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.237 = phi i32 [ %spec.select28, %.thread ], [ %.01942, %bb.c ] ; 2 uses
  %.22535 = phi i1 [ %not..not27, %.thread ], [ %.02340, %bb.c ]
  %i.n = add nsw i32 %.01843, -1                  ; 2 uses
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.019.lcssa = phi i32 [ %.237, %bb.d ], [ %.01942, %bb.c ] ; 2 uses
  %.222 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.o = icmp sgt i32 %.019.lcssa, 0
  br i1 %i.o, label %.split, label %bb.e

.split:                                           ; preds = %._crit_edge
  %i.p = trunc i32 %.019.lcssa to i16
  %i.q = shl i16 %i.p, 2
  %i.r = sub i16 %.val, %i.q
  store i16 %i.r, ptr %i.a, align 4
  br i1 %.222, label %bb.f, label %.thread53

bb.e:                                             ; preds = %._crit_edge
  br i1 %.222, label %bb.f, label %.thread53

bb.f:                                             ; preds = %.split, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2
  %i.u = or i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 2
  br label %bb.g

.thread53:                                        ; preds = %bb.a, %.split, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, -2
  store i16 %i.x, ptr %i.v, align 2
  br label %bb.g

bb.g:                                             ; preds = %.thread53, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 65532) i64 @PageGetFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %narrow = add nsw i32 %i.h, -4
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @PageGetFreeSpaceForMultipleTuples(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl i32 %1, 2                            ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  %i.j = sub i32 %i.g, %i.h
  %narrow = select i1 %i.i, i32 0, i32 %i.j
  %.0 = sext i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 65536) i64 @PageGetExactFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, 65532) i64 @PageGetHeapFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = sub nsw i32 %i.c, %i.f
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %narrow.i = add nsw i32 %i.h, -4                ; 3 uses
  %.not = icmp eq i32 %narrow.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i16 %i.e, 25
  %i.j = add nuw nsw i32 %i.f, 262120
  %i.k = lshr i32 %i.j, 2
  %i.l = trunc i32 %i.k to i16
  %.0.i23 = select i1 %i.i, i16 0, i16 %i.l       ; 2 uses
  %i.m = icmp samesign ugt i16 %.0.i23, 290
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 10
  %.val22 = load i16, ptr %i.n, align 2
  %i.o = trunc i16 %.val22 to i1
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.q = add i16 %.01424, 1                       ; 2 uses
  %.not20 = icmp ugt i16 %i.q, %.0.i23
  br i1 %.not20, label %.loopexit, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %.preheader, %bb.d
  %.01424 = phi i16 [ 1, %.preheader ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = zext i16 %.01424 to i64
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 98304
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.1.shrunk = phi i32 [ 0, %bb.a ], [ %narrow.i, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %narrow.i, %bb.e ]
  %.1 = zext nneg i32 %.1.shrunk to i64
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @PageIndexTupleDelete(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i16, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp ult i16 %i.b, 24
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2              ; 4 uses
  %i.f = icmp ugt i16 %i.b, %i.e
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i16, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ugt i16 %i.e, %i.h
  %i.j = icmp ugt i16 %i.h, 8192
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i16 %i.h to i64                ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = and i64 %i.l, 32760
  %.not = icmp eq i64 %i.m, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.p = load i16, ptr %i.a, align 4
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i16, ptr %i.u, align 8
  %i.w = zext i16 %i.v to i32
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.w) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1083, ptr noundef nonnull @__func__.PageIndexTupleDelete) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i16 %i.b, 24
  %i.z = zext i16 %i.b to i32                     ; 2 uses
  %i.aa = add nuw nsw i32 %i.z, 262120
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = trunc i32 %i.ab to i16
  %.0.i = select i1 %i.y, i16 0, i16 %i.ac
  %i.ad = freeze i16 %.0.i                        ; 4 uses
  %i.ae = add i16 %1, -1
  %or.cond75.not = icmp ult i16 %i.ae, %i.ad
  br i1 %or.cond75.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = zext i16 %1 to i32
  %i.ag = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.af) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1087, ptr noundef nonnull @__func__.PageIndexTupleDelete) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i16 %1 to i64                 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 20        ; 6 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = lshr i32 %i.al, 17
  %i.an = zext nneg i32 %i.am to i64              ; 3 uses
  %i.ao = and i32 %i.al, 32767                    ; 7 uses
  %i.ap = zext i16 %i.e to i32                    ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, %i.an
  %i.at = icmp samesign ugt i64 %i.as, %i.k
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add nuw nsw i64 %i.ar, 7
  %i.av = and i64 %i.au, 65528
  %.not72 = icmp eq i64 %i.av, %i.ar
  br i1 %.not72, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ax = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ao, i64 noundef %i.an) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1102, ptr noundef nonnull @__func__.PageIndexTupleDelete) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.az = add nuw nsw i64 %i.an, 7
  %i.ba = and i64 %i.az, 65528                    ; 3 uses
  %.tr = zext nneg i16 %1 to i32
  %2 = shl nuw nsw i32 %.tr, 2
  %reass.sub = sub nsw i32 %i.z, %2               ; 2 uses
  %i.bb = icmp sgt i32 %reass.sub, 24
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %3 = add nsw i32 %reass.sub, -24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.ai ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %4 = zext nneg i32 %3 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.be, ptr nonnull align 4 %i.bd, i64 %4, i1 false)
  %.pre = load i16, ptr %i.d, align 2             ; 2 uses
  %.pre82.a = zext i16 %.pre to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi = phi i32 [ %.pre82.a, %bb.m ], [ %i.ap, %bb.l ] ; 2 uses
  %i.bf = phi i16 [ %.pre, %bb.m ], [ %i.e, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ugt i32 %i.ao, %.pre-phi
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = zext i16 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = sub nuw nsw i32 %i.ao, %.pre-phi
  %i.bl = zext nneg i32 %i.bk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bi, i64 %i.bl, i1 false)
  %.pre81 = load i16, ptr %i.d, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi i16 [ %.pre81, %bb.o ], [ %i.bf, %bb.n ]
  %i.bn = trunc nuw i64 %i.ba to i16
  %i.bo = add i16 %i.bm, %i.bn
  store i16 %i.bo, ptr %i.d, align 2
  %i.bp = load i16, ptr %i.a, align 4
  %i.bq = add i16 %i.bp, -4                       ; 2 uses
  store i16 %i.bq, ptr %i.a, align 4
  %i.br = icmp ugt i16 %i.bq, 24
  %.not73.not77 = icmp ugt i16 %i.ad, 1
  %or.cond79 = and i1 %i.br, %.not73.not77
  br i1 %or.cond79, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.p
  %i.bs = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %wide.trip.count = zext i16 %i.ad to i64        ; 2 uses
  %i.bt = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i16 %i.ad, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue96, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue96 ] ; 5 uses
  %i.bv = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bw, align 4 ; 3 uses
  %i.bx = and <4 x i32> %wide.load, splat (i32 32767)
  %i.by = icmp samesign ule <4 x i32> %i.bx, %broadcast.splat90 ; 4 uses
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat
  %i.ca = and <4 x i32> %i.bz, splat (i32 32767)
  %i.cb = and <4 x i32> %wide.load, splat (i32 -32768)
  %i.cc = or disjoint <4 x i32> %i.ca, %i.cb      ; 4 uses
  %i.cd = extractelement <4 x i1> %i.by, i64 0
  br i1 %i.cd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ce = extractelement <4 x i32> %i.cc, i64 0
  store i32 %i.ce, ptr %i.bw, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cf = extractelement <4 x i1> %i.by, i64 1
  br i1 %i.cf, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue
  %i.cg = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = extractelement <4 x i32> %i.cc, i64 1
  store i32 %i.ci, ptr %i.ch, align 4
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue
  %i.cj = extractelement <4 x i1> %i.by, i64 2
  br i1 %i.cj, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  %i.ck = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.cl = getelementptr i8, ptr %i.ck, i64 12
  %i.cm = extractelement <4 x i32> %i.cc, i64 2
  store i32 %i.cm, ptr %i.cl, align 4
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.cn = extractelement <4 x i1> %i.by, i64 3
  br i1 %i.cn, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  %i.co = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %i.cq = extractelement <4 x i32> %i.cc, i64 3
  store i32 %i.cq, ptr %i.cp, align 4
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %pred.store.continue96
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.bu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4            ; 3 uses
  %i.cu = and i32 %i.ct, 32767
  %.not74 = icmp samesign ugt i32 %i.cu, %i.ao
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %scalar.ph
  %i.cv = add i32 %i.ct, %i.bs
  %i.cw = and i32 %i.cv, 32767
  %i.cx = and i32 %i.ct, -32768
  %i.cy = or disjoint i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.cs, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.r, %middle.block, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PageIndexMultiDelete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca [408 x %struct.itemIdCompactData], align 16 ; 4 uses
  %4 = alloca [408 x %struct.ItemIdData], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4              ; 4 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2              ; 3 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i16, ptr %i.g, align 8              ; 5 uses
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.j = icmp slt i32 %2, 3
  br i1 %i.j, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.k = add i32 %2, -1                           ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.lr.ph120.preheader, label %.loopexit

.lr.ph120.preheader:                              ; preds = %.preheader
  %i.m = zext nneg i32 %i.k to i64
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv = phi i64 [ %i.m, %.lr.ph120.preheader ], [ %indvars.iv.next, %.lr.ph120 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2
  tail call void @PageIndexTupleDelete(ptr noundef nonnull %0, i16 noundef zeroext %i.o)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not141 = icmp eq i64 %indvars.iv, 0
  br i1 %.not141, label %.loopexit, label %.lr.ph120, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ult i16 %i.b, 24
  %i.q = icmp ugt i16 %i.b, %i.e
  %or.cond103 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond103, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i16 %i.e, %i.h
  %i.s = icmp ugt i16 %i.h, 8192
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i16 %i.h to i64                ; 3 uses
  %i.u = add nuw nsw i64 %i.t, 7
  %i.v = and i64 %i.u, 32760
  %.not = icmp eq i64 %i.v, %i.t
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.c, i32 noundef %i.f, i32 noundef %i.i) #11 ; 0 uses
end_hunk_0
