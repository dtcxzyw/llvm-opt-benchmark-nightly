Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bufpage?download=true
inline.NumInlined: 49
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PageIndexTupleDelete:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ba
  %i.bn = sub nuw nsw i32 %i.ao, %.pre-phi
  %i.bo = zext nneg i32 %i.bn to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bl, i64 %i.bo, i1 false)
  %.pre81 = load i16, ptr %i.d, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = phi i16 [ %.pre81, %bb.o ], [ %i.bi, %bb.n ]
  %i.bq = trunc nuw i64 %i.ba to i16
  %i.br = add i16 %i.bp, %i.bq
  store i16 %i.br, ptr %i.d, align 2
  %i.bs = load i16, ptr %i.a, align 4
  %i.bt = add i16 %i.bs, -4                       ; 2 uses
  store i16 %i.bt, ptr %i.a, align 4
  %i.bu = icmp ugt i16 %i.bt, 24
  %.not73.not77 = icmp ugt i16 %i.ad, 1
  %or.cond79 = and i1 %i.bu, %.not73.not77
  br i1 %or.cond79, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.p
  %i.bv = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %wide.trip.count = zext i16 %i.ad to i64        ; 2 uses
  %i.bw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i16 %i.ad, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %i.bx = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue96, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue96 ] ; 5 uses
  %i.by = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bz, align 4 ; 3 uses
  %i.ca = and <4 x i32> %wide.load, splat (i32 32767)
  %i.cb = icmp samesign ule <4 x i32> %i.ca, %broadcast.splat90 ; 4 uses
  %i.cc = add <4 x i32> %wide.load, %broadcast.splat
  %i.cd = and <4 x i32> %i.cc, splat (i32 32767)
  %i.ce = and <4 x i32> %wide.load, splat (i32 -32768)
  %i.cf = or disjoint <4 x i32> %i.cd, %i.ce      ; 4 uses
  %i.cg = extractelement <4 x i1> %i.cb, i64 0
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ch = extractelement <4 x i32> %i.cf, i64 0
  store i32 %i.ch, ptr %i.bz, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ci = extractelement <4 x i1> %i.cb, i64 1
  br i1 %i.ci, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue
  %i.cj = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = extractelement <4 x i32> %i.cf, i64 1
  store i32 %i.cl, ptr %i.ck, align 4
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue
  %i.cm = extractelement <4 x i1> %i.cb, i64 2
  br i1 %i.cm, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  %i.cn = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.co = getelementptr i8, ptr %i.cn, i64 12
  %i.cp = extractelement <4 x i32> %i.cf, i64 2
  store i32 %i.cp, ptr %i.co, align 4
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.cq = extractelement <4 x i1> %i.cb, i64 3
  br i1 %i.cq, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  %i.cr = getelementptr [4 x i8], ptr %i.aj, i64 %index
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = extractelement <4 x i32> %i.cf, i64 3
  store i32 %i.ct, ptr %i.cs, align 4
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %pred.store.continue96
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.bx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.cx = and i32 %i.cw, 32767
  %.not74 = icmp samesign ugt i32 %i.cx, %i.ao
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %scalar.ph
  %i.cy = add i32 %i.cw, %i.bv
  %i.cz = and i32 %i.cy, 32767
  %i.da = and i32 %i.cw, -32768
  %i.db = or disjoint i32 %i.cz, %i.da
  store i32 %i.db, ptr %i.cv, align 4
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
  %indvars.iv.a = phi i64 [ %i.m, %.lr.ph120.preheader ], [ %indvars.iv.next.a, %.lr.ph120 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.a
  %i.o = load i16, ptr %i.n, align 2
  tail call void @PageIndexTupleDelete(ptr noundef nonnull %0, i16 noundef zeroext %i.o)
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %.not141 = icmp eq i64 %indvars.iv.a, 0
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
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1218, ptr noundef nonnull @__func__.PageIndexMultiDelete) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ult i16 %i.b, 25
  %i.aa = add nuw nsw i32 %i.c, 262120
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = trunc i32 %i.ab to i16                  ; 2 uses
  %.not100109121 = icmp eq i16 %i.ac, 0
  %.not100109 = select i1 %i.z, i1 true, i1 %.not100109121
  br i1 %.not100109, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %0, i64 20
  %umax = add nuw nsw i16 %i.ac, 1
  %wide.trip.count = zext nneg i16 %umax to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.0116 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.o ] ; 2 uses
  %.078114 = phi i32 [ 0, %.lr.ph ], [ %.179, %bb.o ] ; 4 uses
  %.080113 = phi i64 [ 0, %.lr.ph ], [ %.181, %bb.o ] ; 2 uses
  %.082112 = phi i32 [ 0, %.lr.ph ], [ %.183, %bb.o ] ; 4 uses
  %.084111 = phi ptr [ %3, %.lr.ph ], [ %.185, %bb.o ] ; 5 uses
  %.086110 = phi i32 [ %i.i, %.lr.ph ], [ %.288, %bb.o ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = lshr i32 %i.af, 17                      ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = and i32 %i.af, 32767                    ; 6 uses
  %i.aj = icmp samesign ult i32 %i.ai, %i.f
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  %i.am = icmp samesign ugt i64 %i.al, %i.t
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = add nuw nsw i64 %i.ak, 7
  %i.ao = and i64 %i.an, 65528
  %.not102 = icmp eq i64 %i.ao, %i.ak
  br i1 %.not102, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.aq = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ai, i64 noundef %i.ah) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1243, ptr noundef nonnull @__func__.PageIndexMultiDelete) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = icmp slt i32 %.078114, %2
  br i1 %i.as, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = sext i32 %.078114 to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %5 = zext i16 %i.av to i64
  %i.aw = icmp eq i64 %indvars.iv, %5
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %.078114, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ay = trunc i32 %.082112 to i16
  store i16 %i.ay, ptr %.084111, align 2
  %i.az = trunc nuw nsw i32 %i.ai to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.084111, i64 2
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = icmp sgt i32 %.086110, %i.ai
  %..086 = tail call i32 @llvm.smin.i32(i32 %.086110, i32 %i.ai)
  %.0. = select i1 %i.bb, i1 %.0116, i1 false
  %i.bc = trunc nuw nsw i32 %i.ag to i16
  %i.bd = add nuw i16 %i.bc, 7
  %i.be = and i16 %i.bd, -8                       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.084111, i64 4
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = zext i16 %i.be to i64
  %i.bh = add i64 %.080113, %i.bg
  %i.bi = sext i32 %.082112 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  %i.bk = load i32, ptr %i.ae, align 4
  store i32 %i.bk, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.084111, i64 6
  %i.bm = add i32 %.082112, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.288 = phi i32 [ %.086110, %bb.m ], [ %..086, %bb.n ]
  %.185 = phi ptr [ %.084111, %bb.m ], [ %i.bl, %bb.n ]
  %.183 = phi i32 [ %.082112, %bb.m ], [ %i.bm, %bb.n ] ; 4 uses
  %.181 = phi i64 [ %.080113, %bb.m ], [ %i.bh, %bb.n ] ; 3 uses
  %.179 = phi i32 [ %i.ax, %bb.m ], [ %.078114, %bb.n ] ; 2 uses
  %.2 = phi i1 [ %.0116, %bb.m ], [ %.0., %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.g, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.o
  %i.bn = icmp eq i32 %.179, %2
  br i1 %i.bn, label %bb.p, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %i.bo = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.bp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1270, ptr noundef nonnull @__func__.PageIndexMultiDelete) #11
  unreachable

bb.p:                                             ; preds = %._crit_edge
  %i.bq = sub nuw nsw i32 %i.i, %i.c              ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = icmp ugt i64 %.181, %i.br
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.bu = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.bv = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, i64 noundef %.181, i32 noundef %i.bq) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1276, ptr noundef nonnull @__func__.PageIndexMultiDelete) #11
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = sext i32 %.183 to i64
  %i.by = shl nsw i64 %i.bx, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 16 %4, i64 %i.by, i1 false)
  %i.bz = trunc i64 %i.by to i16
  %i.ca = add i16 %i.bz, 24
  store i16 %i.ca, ptr %i.a, align 4
  %i.cb = icmp sgt i32 %.183, 0
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @compactify_tuples(ptr noundef %3, i32 noundef %.183, ptr noundef nonnull %0, i1 noundef zeroext %.2)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  store i16 %i.h, ptr %i.d, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph120, %.preheader, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PageIndexTupleDeleteNoCompact(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i16, ptr %i.a, align 4              ; 6 uses
  %i.c = icmp ult i16 %i.b, 24
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2              ; 5 uses
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
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1324, ptr noundef nonnull @__func__.PageIndexTupleDeleteNoCompact) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i16 %i.b, 24
  %i.z = zext i16 %i.b to i32
  %i.aa = add nuw nsw i32 %i.z, 262120
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = trunc i32 %i.ab to i16
  %.0.i = select i1 %i.y, i16 0, i16 %i.ac
  %i.ad = freeze i16 %.0.i                        ; 3 uses
  %i.ae = zext nneg i16 %i.ad to i32              ; 2 uses
  %i.af = add i16 %1, -1
  %or.cond71.not = icmp ult i16 %i.af, %i.ad
  br i1 %or.cond71.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = zext i16 %1 to i32
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.ag) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1328, ptr noundef nonnull @__func__.PageIndexTupleDeleteNoCompact) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = zext nneg i16 %1 to i64
  %i.ak = getelementptr i8, ptr %0, i64 20        ; 6 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = lshr i32 %i.am, 17
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = and i32 %i.am, 32767                    ; 7 uses
  %i.aq = zext i16 %i.e to i32                    ; 3 uses
  %i.ar = icmp samesign ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.at = add nuw nsw i64 %i.as, %i.ao
  %i.au = icmp samesign ugt i64 %i.at, %i.k
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add nuw nsw i64 %i.as, 7
  %i.aw = and i64 %i.av, 65528
  %.not67 = icmp eq i64 %i.aw, %i.as
  br i1 %.not67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ay = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.az = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ap, i64 noundef %i.ao) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1340, ptr noundef nonnull @__func__.PageIndexTupleDeleteNoCompact) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i64 %i.ao, 7
  %i.bb = and i64 %i.ba, 65528                    ; 3 uses
  %i.bc = icmp samesign ult i16 %1, %i.ad
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bd = add i16 %i.b, -4                        ; 2 uses
  store i16 %i.bd, ptr %i.a, align 4
  %i.be = add nsw i32 %i.ae, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.val7379 = phi i16 [ %i.b, %bb.m ], [ %i.bd, %bb.n ]
  %.059 = phi i32 [ %i.ae, %bb.m ], [ %i.be, %bb.n ] ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.ap, %i.aq
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = zext i16 %i.e to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  %i.bj = sub nuw nsw i32 %i.ap, %i.aq
  %i.bk = zext nneg i32 %i.bj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  %.pre = load i16, ptr %i.d, align 2
  %.val73.pre = load i16, ptr %i.a, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val73 = phi i16 [ %.val73.pre, %bb.p ], [ %.val7379, %bb.o ]
  %i.bl = phi i16 [ %.pre, %bb.p ], [ %i.e, %bb.o ]
  %i.bm = trunc nuw i64 %i.bb to i16
  %i.bn = add i16 %i.bl, %i.bm
  store i16 %i.bn, ptr %i.d, align 2
  %i.bo = icmp ult i16 %.val73, 25
  %.not6874 = icmp eq i32 %.059, 0
  %or.cond76 = select i1 %i.bo, i1 true, i1 %.not6874
  br i1 %or.cond76, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bp = trunc nuw nsw i64 %i.bb to i32          ; 2 uses
  %i.bq = add nsw i32 %.059, 1
  %wide.trip.count = zext i32 %i.bq to i64        ; 2 uses
  %i.br = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bs = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bp, i64 0
end_hunk_0
