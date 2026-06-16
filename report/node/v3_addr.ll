inline.NumInlined: 158
inline.NumDeleted: 17
begin_hunk_0_@X509v3_addr_is_canonical:bb.a

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 7 uses
  %i.aw = tail call i32 @OPENSSL_sk_num(ptr noundef %i.av) #12
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge75, label %.preheader101

.preheader101:                                    ; preds = %bb.j
  %i.ay = tail call i32 @OPENSSL_sk_num(ptr noundef %i.av) #12
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader101
  %i.ba = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.bb = icmp sgt i32 %i.ao, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.058106 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.r ] ; 2 uses
  %i.bc = tail call ptr @OPENSSL_sk_value(ptr noundef %i.av, i32 noundef %.058106) #12 ; 2 uses
  %i.bd = add nuw nsw i32 %.058106, 1             ; 3 uses
  %i.be = tail call ptr @OPENSSL_sk_value(ptr noundef %i.av, i32 noundef %i.bd) #12
  %i.bf = call fastcc i32 @extract_min_max(ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.ao)
  %.not70 = icmp eq i32 %i.bf, 0
  br i1 %.not70, label %.critedge75, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = call fastcc i32 @extract_min_max(ptr noundef %i.be, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.ao)
  %.not71 = icmp eq i32 %i.bg, 0
  br i1 %.not71, label %.critedge75, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.ba) #13
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %.critedge75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ba) #13
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.critedge75, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = call i32 @memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.ba) #13
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.critedge75, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.o
  br i1 %i.bb, label %.lr.ph140, label %.critedge

.preheader:                                       ; preds = %.lr.ph140
  %i.bn = trunc nuw i64 %i.bp to i32
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph140, label %.critedge, !llvm.loop !38

.lr.ph140:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv139 = phi i64 [ %i.bp, %.preheader ], [ %i.ba, %.preheader.preheader ]
  %i.bp = add nsw i64 %indvars.iv139, -1          ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !19  ; 2 uses
  %i.bs = add i8 %i.br, -1
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !19
  %i.bt = icmp eq i8 %i.br, 0
  br i1 %i.bt, label %.preheader, label %..critedge_crit_edge, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %.lr.ph140
  br label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %i.bu = call i32 @memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.ba) #13
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %.critedge75, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bw = load i32, ptr %i.bc, align 8, !tbaa !27
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = call fastcc i32 @range_should_be_prefix(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.ao)
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %.critedge75, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = tail call i32 @OPENSSL_sk_num(ptr noundef %i.av) #12
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = icmp slt i32 %i.bd, %i.cb
  br i1 %i.cc, label %bb.k, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.r, %.preheader101
  %i.cd = tail call i32 @OPENSSL_sk_num(ptr noundef %i.av) #12
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = tail call ptr @OPENSSL_sk_value(ptr noundef %i.av, i32 noundef %i.ce) #12 ; 3 uses
  %.not68 = icmp eq ptr %i.cf, null
  br i1 %.not68, label %.critedge77, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !27
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.t, label %.critedge77

bb.t:                                             ; preds = %bb.s
  %i.ci = call fastcc i32 @extract_min_max(ptr noundef nonnull %i.cf, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.ao)
  %.not69 = icmp eq i32 %i.ci, 0
  br i1 %.not69, label %.critedge75, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = zext nneg i32 %i.ao to i64
  %i.ck = call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.cj) #13
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.critedge75, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = call fastcc i32 @range_should_be_prefix(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.ao)
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %.critedge75, label %.critedge77

.critedge77:                                      ; preds = %._crit_edge, %bb.s, %bb.v, %bb.h
  %i.co = add nuw nsw i32 %.157107, 1             ; 2 uses
  %i.cp = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #12
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph108, label %.critedge75, !llvm.loop !40

.critedge75:                                      ; preds = %bb.b, %bb.c, %bb.d, %.critedge77, %bb.i, %bb.u, %bb.j, %.thread96, %bb.t, %bb.v, %.lr.ph108, %bb.h, %bb.m, %.critedge, %bb.l, %bb.o, %bb.n, %bb.q, %bb.k, %.preheader102, %bb.a
  %.7 = phi i32 [ 0, %bb.h ], [ 1, %bb.a ], [ 1, %.preheader102 ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %.critedge ], [ 0, %bb.t ], [ 0, %.thread96 ], [ 0, %bb.j ], [ 0, %bb.u ], [ 0, %bb.i ], [ 1, %.critedge77 ], [ 0, %.lr.ph108 ], [ 0, %bb.v ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.7
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @IPAddressFamily_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = sext i32 %. to i64
  %i.l = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.j, i64 noundef %i.k) #13 ; 2 uses
  %.not14 = icmp eq i32 %i.l, 0
  %i.m = sub nsw i32 %i.e, %i.f
  %spec.select = select i1 %.not14, i32 %i.m, i32 %i.l
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @range_should_be_prefix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 17) %2) unnamed_addr #7 {
bb.a:
  %.not42 = icmp eq i32 %2, 0
  br i1 %.not42, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge.loopexit.split.loop.exit48

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !43

.critedge.loopexit.split.loop.exit48:             ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit48, %bb.a
  %.pre-phi = phi i64 [ 0, %bb.a ], [ %wide.trip.count, %.critedge.loopexit.split.loop.exit48 ], [ %wide.trip.count, %bb.b ] ; 2 uses
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.critedge.loopexit.split.loop.exit48 ], [ %2, %bb.b ] ; 5 uses
  %.not67 = icmp eq i64 %.pre-phi, 0
  br i1 %.not67, label %.critedge2, label %.lr.ph66

bb.c:                                             ; preds = %bb.d
  %i.g = icmp sgt i64 %indvars.iv4464, 1
  br i1 %i.g, label %.lr.ph66, label %.critedge2, !llvm.loop !44

.lr.ph66:                                         ; preds = %.critedge, %bb.c
  %indvars.iv4464 = phi i64 [ %indvars.iv.next4565, %bb.c ], [ %.pre-phi, %.critedge ] ; 4 uses
  %indvars.iv.next4565 = add nsw i64 %indvars.iv4464, -1 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next4565
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %.critedge2.split.loop.exit

bb.d:                                             ; preds = %.lr.ph66
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next4565
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.c, label %.critedge2.split.loop.exit53, !llvm.loop !44

.critedge2.split.loop.exit:                       ; preds = %.lr.ph66
  %i.n = trunc nsw i64 %indvars.iv.next4565 to i32
  %3 = trunc nuw nsw i64 %indvars.iv4464 to i32
  br label %.critedge2

.critedge2.split.loop.exit53:                     ; preds = %bb.d
  %i.o = trunc nsw i64 %indvars.iv.next4565 to i32
  %4 = trunc nuw nsw i64 %indvars.iv4464 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %.critedge, %.critedge2.split.loop.exit53, %.critedge2.split.loop.exit
  %.0.in.lcssa = phi i32 [ %4, %.critedge2.split.loop.exit53 ], [ %3, %.critedge2.split.loop.exit ], [ 0, %.critedge ], [ 0, %bb.c ]
  %.0.lcssa = phi i32 [ %i.o, %.critedge2.split.loop.exit53 ], [ %i.n, %.critedge2.split.loop.exit ], [ -1, %.critedge ], [ -1, %bb.c ]
  %i.p = icmp slt i32 %.035.lcssa, %.0.lcssa
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %.not = icmp slt i32 %.035.lcssa, %.0.in.lcssa
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nsw i32 %.035.lcssa, 3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %.035.lcssa to i64         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19    ; 2 uses
  %i.w = xor i8 %i.v, %i.t                        ; 4 uses
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 31) ; 3 uses
  %i.aa = icmp ult i32 %i.z, 64
  %switch.maskindex = zext nneg i32 %i.z to i64
  %switch.shifted = lshr i64 -9223372034707259253, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond68 = select i1 %i.aa, i1 %switch.lobit, i1 false
  br i1 %or.cond68, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %bb.g
  %i.ab = and i8 %i.w, %i.t
  %.not37.a = icmp eq i8 %i.ab, 0
  %i.ac = and i8 %i.w, %i.v
  %.not38 = icmp eq i8 %i.ac, %i.w
  %or.cond = and i1 %.not37.a, %.not38
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %switch.lookup
  %i.ad = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.range_should_be_prefix, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ae = shl nsw i32 %.035.lcssa, 3
  %i.af = or disjoint i32 %i.ae, %switch.ext
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %switch.lookup, %.critedge2, %bb.h, %bb.f
  %.036 = phi i32 [ %i.af, %bb.h ], [ %i.q, %bb.f ], [ -1, %.critedge2 ], [ -1, %bb.g ], [ -1, %switch.lookup ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @X509v3_addr_canonize(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 9 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #12
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.4, i32 noundef 894, ptr noundef nonnull @__func__.X509v3_addr_canonize) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 107, ptr noundef null) #12
  br label %IPAddressOrRanges_canonize.exit.thread

.lr.ph:                                           ; preds = %.preheader, %.critedge
  %.01531 = phi i32 [ %i.bn, %.critedge ], [ 0, %.preheader ] ; 2 uses
  %i.k = call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %.01531) #12 ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !9   ; 2 uses
  %.val.val = load i32, ptr %.val, align 8, !tbaa !18
  %i.l = and i32 %.val.val, -2
  %or.cond.i.not = icmp eq i32 %i.l, 2
  br i1 %or.cond.i.not, label %bb.c, label %IPAddressOrRanges_canonize.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %X509v3_addr_get_afi.exit

X509v3_addr_get_afi.exit:                         ; preds = %bb.d
  %i.v = load i8, ptr %i.t, align 1, !tbaa !19
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %.fr = freeze i32 %i.ab                         ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %.fr, 2
  %spec.select = select i1 %switch.selectcmp.i.i, i32 16, i32 0
  %switch.selectcmp2.i.i = icmp eq i32 %.fr, 1
  %spec.select30 = select i1 %switch.selectcmp2.i.i, i32 4, i32 %spec.select
  br label %.thread

.thread:                                          ; preds = %X509v3_addr_get_afi.exit, %bb.d
  %i.ac = phi i32 [ 0, %bb.d ], [ %spec.select30, %X509v3_addr_get_afi.exit ] ; 7 uses
  call void @OPENSSL_sk_sort(ptr noundef %i.r) #12
  %i.ad = call i32 @OPENSSL_sk_num(ptr noundef %i.r) #12
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread
  %i.af = zext nneg i32 %i.ac to i64              ; 5 uses
  %.not = icmp eq i32 %i.ac, 0
  br label %bb.e

bb.e:                                             ; preds = %.thread58.i, %.lr.ph.i
  %.04568.i = phi i32 [ 0, %.lr.ph.i ], [ %.24761.i, %.thread58.i ] ; 4 uses
  %i.ag = call ptr @OPENSSL_sk_value(ptr noundef %i.r, i32 noundef %.04568.i) #12 ; 2 uses
  %i.ah = add nsw i32 %.04568.i, 1                ; 3 uses
  %i.ai = call ptr @OPENSSL_sk_value(ptr noundef %i.r, i32 noundef %i.ah) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.aj = call fastcc i32 @extract_min_max(ptr noundef %i.ag, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.ac)
  %.not51.i = icmp eq i32 %i.aj, 0
  br i1 %.not51.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = call fastcc i32 @extract_min_max(ptr noundef %i.ai, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.ac)
  %.not52.i = icmp eq i32 %i.ak, 0
  br i1 %.not52.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.af) #13
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = call i32 @memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.af) #13
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call i32 @memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.af) #13
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.thread.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  br i1 %.not, label %.critedge.i, label %.lr.ph36

.preheader.i:                                     ; preds = %.lr.ph36
  %i.ar = icmp sgt i64 %indvars.iv.i35, 1
  br i1 %i.ar, label %.lr.ph36, label %.critedge.i, !llvm.loop !45

.lr.ph36:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %i.af, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i35, -1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19  ; 2 uses
  %i.au = add i8 %i.at, -1
  store i8 %i.au, ptr %i.as, align 1, !tbaa !19
  %i.av = icmp eq i8 %i.at, 0
  br i1 %i.av, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !45

..critedge.i_crit_edge:                           ; preds = %.lr.ph36
  br label %.critedge.i, !llvm.loop !45

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.c, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i, 0
  br i1 %i.aw, label %bb.j, label %.thread58.i

bb.j:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ax = call fastcc i32 @make_addressRange(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef %i.ac)
  %.not53.i = icmp eq i32 %i.ax, 0
  br i1 %.not53.i, label %.thread62.i, label %bb.k

.thread62.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %IPAddressOrRanges_canonize.exit.thread

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %IPAddressOrRanges_canonize.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !25
end_hunk_0
