Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/gif?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@gif_encode_frame
define internal range(i32 -2147483648, 1) i32 @gif_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 13 uses
  %i.b = alloca [256 x i32], align 16             ; 7 uses
  %i.c = alloca [256 x i8], align 16              ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  %i.j = mul i32 %i.g, 7
  %i.k = mul i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 5
  %i.m = add nsw i32 %i.l, 16384
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.n) #10 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !67
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = icmp eq i32 %i.x, 11
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1084 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !69
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ad, ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i64 1024, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.1, %.preheader.i ] ; 4 uses
  %.020.i = phi i32 [ 255, %bb.d ], [ %spec.select17.i.1, %.preheader.i ] ; 2 uses
  %.01218.i = phi i32 [ -1, %bb.d ], [ %spec.select.i.1, %.preheader.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.ag = lshr i32 %i.af, 24                      ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, %.020.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 %.01218.i
  %spec.select17.i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %.020.i) ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = lshr i32 %i.ak, 24                      ; 2 uses
  %i.am = icmp samesign ult i32 %i.al, %spec.select17.i
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select.i.1 = select i1 %i.am, i32 %i.an, i32 %spec.select.i ; 2 uses
  %spec.select17.i.1 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %spec.select17.i) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %get_palette_transparency_index.exit, label %.preheader.i, !llvm.loop !40

get_palette_transparency_index.exit:              ; preds = %.preheader.i
  %i.ao = icmp samesign ult i32 %spec.select17.i.1, 128
  %i.ap = select i1 %i.ao, i32 %spec.select.i.1, i32 -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !33
  store i32 1, ptr %i.ab, align 4, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !71
  %.not44 = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not44, ptr %i.aa, ptr null
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.ad, ptr noundef nonnull dereferenceable(1024) %i.aa, i64 1024)
  %.not45 = icmp eq i32 %bcmp, 0
  %spec.store.select = select i1 %.not45, ptr null, ptr %i.aa
  br label %bb.f

bb.f:                                             ; preds = %get_palette_transparency_index.exit, %bb.e, %bb.b
  %.0 = phi ptr [ %spec.store.select, %bb.e ], [ null, %bb.b ], [ %spec.select, %get_palette_transparency_index.exit ] ; 8 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !68    ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34 ; 10 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !28  ; 16 uses
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !30  ; 13 uses
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !29  ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1088
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !33 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !72 ; 3 uses
  %i.bd = and i32 %i.bc, 2
  %.not.i52 = icmp eq i32 %i.bd, 0
  br i1 %.not.i52, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73
  %.not199.i = icmp eq ptr %i.bf, null
  br i1 %.not199.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not200.i = icmp eq ptr %.0, null
  %i.bg = zext i1 %.not200.i to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.bg, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 -1, i64 1024, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 52 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !74
  %.not201.i = icmp eq i32 %i.bj, 0
  %i.bk = icmp sgt i32 %i.ba, -1
  %or.cond79.not84.i = select i1 %.not201.i, i1 %i.bk, i1 false
  %.not2330.i.i = icmp sgt i32 %i.ax, 0
  %or.cond80.i = select i1 %or.cond79.not84.i, i1 %.not2330.i.i, i1 false
  br i1 %or.cond80.i, label %.preheader.lr.ph.i.i, label %is_image_translucent.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %.not28.i.i = icmp sgt i32 %i.ay, 0
  %i.bl = sext i32 %i.av to i64                   ; 5 uses
  br i1 %.not28.i.i, label %.preheader.us.preheader.i.i, label %is_image_translucent.exit.thread.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ay to i64 ; 3 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %..critedge_crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.01732.us.i.i = phi i32 [ %i.br, %..critedge_crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ]
  %.02131.us.i.i = phi ptr [ %i.bq, %..critedge_crit_edge.us.i.i ], [ %i.at, %.preheader.us.preheader.i.i ] ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %..critedge_crit_edge.us.i.i, label %bb.k, !llvm.loop !41

bb.k:                                             ; preds = %bb.j, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02131.us.i.i, i64 %indvars.iv.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !75
  %i.bo = zext i8 %i.bn to i32
  %i.bp = icmp eq i32 %i.ba, %i.bo
  br i1 %i.bp, label %is_image_translucent.exit.i, label %bb.j

..critedge_crit_edge.us.i.i:                      ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %.02131.us.i.i, i64 %i.bl
  %i.br = add nuw nsw i32 %.01732.us.i.i, 1       ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.br, %i.ax
  br i1 %exitcond38.not.i.i, label %is_image_translucent.exit.thread.i, label %.preheader.us.i.i, !llvm.loop !42

is_image_translucent.exit.i:                      ; preds = %bb.k
  %i.bs = trunc i32 %i.bc to i1
  br i1 %i.bs, label %bb.l, label %gif_crop_translucent.exit.i

bb.l:                                             ; preds = %is_image_translucent.exit.i
  %i.bt = add nsw i32 %i.ay, -1                   ; 7 uses
  %i.bu = add nsw i32 %i.ax, -1                   ; 6 uses
  %i.bv = icmp sgt i32 %i.ax, 1
  br i1 %i.bv, label %.preheader116.us.preheader.i.i, label %.thread104.i.i

.preheader116.us.preheader.i.i:                   ; preds = %bb.l
  %wide.trip.count156.i = zext nneg i32 %i.bu to i64
  br label %.preheader116.us.i.i

.preheader116.us.i.i:                             ; preds = %._crit_edge.us.i.i, %.preheader116.us.preheader.i.i
  %indvars.iv150.i.i = phi i64 [ 0, %.preheader116.us.preheader.i.i ], [ %indvars.iv.next151.i.i, %._crit_edge.us.i.i ] ; 4 uses
  %i.bw = mul nsw i64 %indvars.iv150.i.i, %i.bl
  %invariant.gep.i.i = getelementptr i8, ptr %i.at, i64 %i.bw
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next.i221.i = add nuw nsw i64 %indvars.iv.i220.i, 1 ; 2 uses
  %exitcond.not.i222.i = icmp eq i64 %indvars.iv.next.i221.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i222.i, label %._crit_edge.us.i.i, label %bb.n, !llvm.loop !43

bb.n:                                             ; preds = %bb.m, %.preheader116.us.i.i
  %indvars.iv.i220.i = phi i64 [ 0, %.preheader116.us.i.i ], [ %indvars.iv.next.i221.i, %bb.m ] ; 2 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i220.i
  %i.bx = load i8, ptr %gep.i.i, align 1, !tbaa !75
  %i.by = zext i8 %i.bx to i32
  %.not.us.i.i = icmp eq i32 %i.ba, %i.by
  br i1 %.not.us.i.i, label %bb.m, label %.thread.i.i

._crit_edge.us.i.i:                               ; preds = %bb.m
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %exitcond157.i = icmp eq i64 %indvars.iv.next151.i.i, %wide.trip.count156.i
  br i1 %exitcond157.i, label %.thread104.i.i, label %.preheader116.us.i.i

.thread.i.i:                                      ; preds = %bb.n
  %indvars155.le.i.a = trunc i64 %indvars.iv150.i.i to i32 ; 4 uses
  %i.bz = icmp sgt i32 %i.bu, %indvars155.le.i.a
  br i1 %i.bz, label %.preheader.us.preheader.i217.i, label %.thread104.i.i

.preheader.us.preheader.i217.i:                   ; preds = %.thread.i.i
  %i.ca = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.cb = add nsw i64 %i.ca, -1
  %sext205.i = shl i64 %indvars.iv150.i.i, 32
  %i.cc = ashr exact i64 %sext205.i, 32           ; 2 uses
  %4 = add nsw i64 %i.ca, -2
  %smin.i = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.cc)
  br label %.preheader.us.i218.i

.preheader.us.i218.i:                             ; preds = %._crit_edge.us125.i.i, %.preheader.us.preheader.i217.i
  %indvars.iv159.i.i = phi i64 [ %i.cb, %.preheader.us.preheader.i217.i ], [ %indvars.iv.next160.i.i, %._crit_edge.us125.i.i ] ; 3 uses
  %i.cd = mul nsw i64 %indvars.iv159.i.i, %i.bl
  %invariant.gep204.i.i = getelementptr i8, ptr %i.at, i64 %i.cd
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next155.i.i = add nuw nsw i64 %indvars.iv154.i.i, 1 ; 2 uses
  %exitcond158.not.i.i = icmp eq i64 %indvars.iv.next155.i.i, %wide.trip.count.i.i
  br i1 %exitcond158.not.i.i, label %._crit_edge.us125.i.i, label %bb.p, !llvm.loop !44

bb.p:                                             ; preds = %bb.o, %.preheader.us.i218.i
  %indvars.iv154.i.i = phi i64 [ 0, %.preheader.us.i218.i ], [ %indvars.iv.next155.i.i, %bb.o ] ; 2 uses
  %gep205.i.i = getelementptr i8, ptr %invariant.gep204.i.i, i64 %indvars.iv154.i.i
  %i.ce = load i8, ptr %gep205.i.i, align 1, !tbaa !75
  %i.cf = zext i8 %i.ce to i32
  %.not91.us.i.i = icmp eq i32 %i.ba, %i.cf
  br i1 %.not91.us.i.i, label %bb.o, label %.thread104.loopexit.i.i

._crit_edge.us125.i.i:                            ; preds = %bb.o
  %indvars.iv.next160.i.i = add nsw i64 %indvars.iv159.i.i, -1 ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv.next160.i.i, %i.cc
  br i1 %i.cg, label %.preheader.us.i218.i, label %.thread104.loopexit.i.i.a

.thread104.loopexit.i.i:                          ; preds = %bb.p
  %5 = trunc nsw i64 %indvars.iv159.i.i to i32
  br label %.thread104.i.i

.thread104.loopexit.i.i.a:                        ; preds = %._crit_edge.us125.i.i
  %i.ch = trunc nsw i64 %smin.i to i32
  br label %.thread104.i.i

.thread104.i.i:                                   ; preds = %._crit_edge.us.i.i, %.thread104.loopexit.i.i.a, %.thread104.loopexit.i.i, %.thread.i.i, %bb.l
  %.241.i = phi i32 [ %indvars155.le.i.a, %.thread104.loopexit.i.i.a ], [ %indvars155.le.i.a, %.thread104.loopexit.i.i ], [ 0, %bb.l ], [ %indvars155.le.i.a, %.thread.i.i ], [ %i.bu, %._crit_edge.us.i.i ] ; 5 uses
  %.083121.i.i = phi i32 [ %i.ch, %.thread104.loopexit.i.i.a ], [ %5, %.thread104.loopexit.i.i ], [ %i.bu, %bb.l ], [ %i.bu, %.thread.i.i ], [ %i.bu, %._crit_edge.us.i.i ] ; 4 uses
  %.not85.i = icmp eq i32 %i.ay, 1
  br i1 %.not85.i, label %.thread109.i.i, label %.lr.ph128.preheader.i.i

.lr.ph128.preheader.i.i:                          ; preds = %.thread104.i.i
  %i.ci = icmp slt i32 %.241.i, %.083121.i.i
  %i.cj = sext i32 %.241.i to i64                 ; 2 uses
  br i1 %i.ci, label %.lr.ph128.i.us.preheader.i, label %.thread109.i.i

.lr.ph128.i.us.preheader.i:                       ; preds = %.lr.ph128.preheader.i.i
  %wide.trip.count160.i = zext nneg i32 %i.bt to i64 ; 2 uses
  br label %.lr.ph128.i.us.i

.lr.ph128.i.us.i:                                 ; preds = %._crit_edge.i.loopexit.us.i, %.lr.ph128.i.us.preheader.i
  %indvars.iv167.i.us.i = phi i64 [ 0, %.lr.ph128.i.us.preheader.i ], [ %indvars.iv.next168.i.us.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  %invariant.gep206.i.us.i = getelementptr i8, ptr %i.at, i64 %indvars.iv167.i.us.i
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.q, %.lr.ph128.i.us.i
  %indvars.iv162.i.us.i = phi i64 [ %i.cj, %.lr.ph128.i.us.i ], [ %indvars.iv.next163.i.us.i, %bb.q ] ; 2 uses
  %i.ck = mul nsw i64 %indvars.iv162.i.us.i, %i.bl
  %gep207.i.us.i = getelementptr i8, ptr %invariant.gep206.i.us.i, i64 %i.ck
  %i.cl = load i8, ptr %gep207.i.us.i, align 1, !tbaa !75
  %i.cm = zext i8 %i.cl to i32
  %.not93.i.us.i = icmp eq i32 %i.ba, %i.cm
  br i1 %.not93.i.us.i, label %bb.q, label %.thread107.i.i

bb.q:                                             ; preds = %.lr.ph.i.us.i
  %indvars.iv.next163.i.us.i = add nsw i64 %indvars.iv162.i.us.i, 1 ; 2 uses
  %lftr.wideiv165.i.us.i = trunc i64 %indvars.iv.next163.i.us.i to i32
  %exitcond166.not.i.us.i = icmp eq i32 %.083121.i.i, %lftr.wideiv165.i.us.i
  br i1 %exitcond166.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !45

._crit_edge.i.loopexit.us.i:                      ; preds = %bb.q
  %indvars.iv.next168.i.us.i = add nuw i64 %indvars.iv167.i.us.i, 1 ; 2 uses
  %exitcond161.i = icmp eq i64 %indvars.iv.next168.i.us.i, %wide.trip.count160.i
  br i1 %exitcond161.i, label %.thread109.i.i, label %.lr.ph128.i.us.i

.thread107.i.i:                                   ; preds = %.lr.ph.i.us.i
  %indvars133.le = trunc i64 %indvars.iv167.i.us.i to i32 ; 5 uses
  %i.cn = icmp sgt i32 %i.bt, %indvars133.le
  br i1 %i.cn, label %.lr.ph131.us.preheader.i.i, label %.thread109.i.i

.lr.ph131.us.preheader.i.i:                       ; preds = %.thread107.i.i
  %sext206.i = shl i64 %indvars.iv167.i.us.i, 32
  %i.co = ashr exact i64 %sext206.i, 32
  br label %.lr.ph131.us.i.i

.lr.ph131.us.i.i:                                 ; preds = %._crit_edge132.us.i.i, %.lr.ph131.us.preheader.i.i
  %indvars.iv177.i.i = phi i64 [ %wide.trip.count160.i, %.lr.ph131.us.preheader.i.i ], [ %indvars.iv.next178.i.i, %._crit_edge132.us.i.i ] ; 3 uses
  %invariant.gep208.i.i = getelementptr i8, ptr %i.at, i64 %indvars.iv177.i.i
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next173.i.i = add nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %lftr.wideiv175.i.i = trunc i64 %indvars.iv.next173.i.i to i32
  %exitcond176.not.i.i = icmp eq i32 %.083121.i.i, %lftr.wideiv175.i.i
  br i1 %exitcond176.not.i.i, label %._crit_edge132.us.i.i, label %bb.s, !llvm.loop !46

bb.s:                                             ; preds = %bb.r, %.lr.ph131.us.i.i
  %indvars.iv172.i.i = phi i64 [ %i.cj, %.lr.ph131.us.i.i ], [ %indvars.iv.next173.i.i, %bb.r ] ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv172.i.i, %i.bl
  %gep209.i.i = getelementptr i8, ptr %invariant.gep208.i.i, i64 %i.cp
  %i.cq = load i8, ptr %gep209.i.i, align 1, !tbaa !75
  %i.cr = zext i8 %i.cq to i32
  %.not95.us.i.i = icmp eq i32 %i.ba, %i.cr
  br i1 %.not95.us.i.i, label %bb.r, label %.thread109.loopexit.i.i

._crit_edge132.us.i.i:                            ; preds = %bb.r
  %indvars.iv.next178.i.i = add nsw i64 %indvars.iv177.i.i, -1 ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next178.i.i, %i.co
  br i1 %i.cs, label %.lr.ph131.us.i.i, label %.thread109.i.i

.thread109.loopexit.i.i:                          ; preds = %bb.s
  %i.ct = trunc nsw i64 %indvars.iv177.i.i to i32
  br label %.thread109.i.i

.thread109.i.i:                                   ; preds = %._crit_edge.i.loopexit.us.i, %._crit_edge132.us.i.i, %.thread109.loopexit.i.i, %.thread107.i.i, %.lr.ph128.preheader.i.i, %.thread104.i.i
  %.246.i = phi i32 [ %indvars133.le, %.thread107.i.i ], [ %i.bt, %.lr.ph128.preheader.i.i ], [ %indvars133.le, %.thread109.loopexit.i.i ], [ 0, %.thread104.i.i ], [ %indvars133.le, %._crit_edge132.us.i.i ], [ %i.bt, %._crit_edge.i.loopexit.us.i ] ; 3 uses
  %.086119.i.i = phi i32 [ %i.bt, %.thread107.i.i ], [ %i.bt, %.lr.ph128.preheader.i.i ], [ %i.ct, %.thread109.loopexit.i.i ], [ 0, %.thread104.i.i ], [ %indvars133.le, %._crit_edge132.us.i.i ], [ %i.bt, %._crit_edge.i.loopexit.us.i ]
  %reass.sub = sub i32 %.083121.i.i, %.241.i
  %i.cu = add i32 %reass.sub, 1                   ; 2 uses
  %reass.sub131.i = sub i32 %.086119.i.i, %.246.i
  %i.cv = add i32 %reass.sub131.i, 1              ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.22, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef %.246.i, i32 noundef %.241.i, i32 noundef %i.ay, i32 noundef %i.ax) #10
  br label %gif_crop_translucent.exit.i

is_image_translucent.exit.thread.i:               ; preds = %..critedge_crit_edge.us.i.i, %.preheader.lr.ph.i.i, %bb.i
  %i.cw = and i32 %i.bc, 1
  %.not.i223.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i223.i, label %gif_crop_translucent.exit.i, label %bb.t

bb.t:                                             ; preds = %is_image_translucent.exit.thread.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = icmp ne ptr %.0, null
  %or.cond.i224.i = or i1 %i.da, %i.cz
  br i1 %or.cond.i224.i, label %gif_crop_translucent.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !68 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = add i32 %i.ay, -1                       ; 9 uses
  %i.df = add i32 %i.ax, -1                       ; 9 uses
  %i.dg = icmp sgt i32 %i.ax, 1
  br i1 %i.dg, label %.lr.ph.preheader.i232.i, label %._crit_edge111.i.i

.lr.ph.preheader.i232.i:                          ; preds = %bb.u
  %i.dh = sext i32 %i.dd to i64                   ; 2 uses
  %i.di = sext i32 %i.av to i64                   ; 2 uses
  %wide.trip.count.i233.i = zext nneg i32 %i.df to i64
  %i.dj = sext i32 %i.ay to i64                   ; 3 uses
  %bcmp.i104.i = tail call i32 @bcmp(ptr %i.db, ptr readonly %i.at, i64 %i.dj)
  %.not84.i105.i = icmp eq i32 %bcmp.i104.i, 0
  br i1 %.not84.i105.i, label %.lr.ph.i.preheader, label %._crit_edge.i225.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i232.i
  %exitcond.not.i237.i205 = icmp eq i32 %i.df, 1
  br i1 %exitcond.not.i237.i205, label %._crit_edge111.i.i, label %.lr.ph.i234.i.lr.ph, !llvm.loop !47

.lr.ph.i234.i.lr.ph:                              ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i234.i, !llvm.loop !47

.lr.ph.i234.i:                                    ; preds = %.lr.ph.i234.i.lr.ph, %.lr.ph.i
  %indvars.iv.next.i236.i206 = phi i64 [ 1, %.lr.ph.i234.i.lr.ph ], [ %indvars.iv.next.i236.i, %.lr.ph.i ] ; 5 uses
  %i.dk = mul nsw i64 %indvars.iv.next.i236.i206, %i.dh
  %i.dl = getelementptr inbounds i8, ptr %i.db, i64 %i.dk
  %i.dm = mul nsw i64 %indvars.iv.next.i236.i206, %i.di
  %i.dn = getelementptr inbounds i8, ptr %i.at, i64 %i.dm
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.dl, ptr readonly %i.dn, i64 %i.dj)
  %.not84.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not84.i.i, label %.lr.ph.i, label %._crit_edge.i225.loopexit.i, !llvm.loop !47

.lr.ph.i:                                         ; preds = %.lr.ph.i234.i
  %indvars.iv.next.i236.i = add nuw nsw i64 %indvars.iv.next.i236.i206, 1 ; 2 uses
  %exitcond.not.i237.i = icmp eq i64 %indvars.iv.next.i236.i, %wide.trip.count.i233.i
  br i1 %exitcond.not.i237.i, label %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge, label %.lr.ph.i234.i, !llvm.loop !47

._crit_edge.i225.loopexit.i:                      ; preds = %.lr.ph.i234.i
  %i.do = trunc nuw nsw i64 %indvars.iv.next.i236.i206 to i32
  br label %._crit_edge.i225.i

._crit_edge.i225.i:                               ; preds = %.lr.ph.preheader.i232.i, %._crit_edge.i225.loopexit.i
  %.443.lcssa.i = phi i32 [ %i.do, %._crit_edge.i225.loopexit.i ], [ 0, %.lr.ph.preheader.i232.i ] ; 2 uses
  %indvars.iv.i235.lcssa.i = phi i64 [ %indvars.iv.next.i236.i206, %._crit_edge.i225.loopexit.i ], [ 0, %.lr.ph.preheader.i232.i ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.i235.lcssa.i to i32 ; 3 uses
  %i.dq = zext nneg i32 %i.ax to i64
  %i.dr = add nsw i64 %i.dq, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %._crit_edge.i225.i
  %indvars.iv138.i.i = phi i64 [ %i.dr, %._crit_edge.i225.i ], [ %indvars.iv.next139.i.i, %bb.w ] ; 4 uses
  %i.ds = mul nsw i64 %indvars.iv138.i.i, %i.dh
  %i.dt = getelementptr inbounds i8, ptr %i.db, i64 %i.ds
  %i.du = mul nsw i64 %indvars.iv138.i.i, %i.di
  %i.dv = getelementptr inbounds i8, ptr %i.at, i64 %i.du
  %bcmp85.i.i = tail call i32 @bcmp(ptr %i.dt, ptr readonly %i.dv, i64 %i.dj)
  %.not86.i.i = icmp eq i32 %bcmp85.i.i, 0
  br i1 %.not86.i.i, label %bb.w, label %._crit_edge111.loopexit.split.loop.exit.i.i

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next139.i.i = add nsw i64 %indvars.iv138.i.i, -1 ; 2 uses
  %i.dw = icmp sgt i64 %indvars.iv.next139.i.i, %indvars.iv.i235.lcssa.i
  br i1 %i.dw, label %bb.v, label %._crit_edge111.i.i, !llvm.loop !48

._crit_edge111.loopexit.split.loop.exit.i.i:      ; preds = %bb.v
  %i.dx = trunc nsw i64 %indvars.iv138.i.i to i32
  br label %._crit_edge111.i.i

.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge111.i.i, !llvm.loop !47

._crit_edge111.i.i:                               ; preds = %bb.w, %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge, %._crit_edge111.loopexit.split.loop.exit.i.i, %bb.u
  %.6.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ 0, %bb.u ], [ %.443.lcssa.i, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %.443.lcssa.i, %bb.w ] ; 4 uses
  %.lcssa105169.i.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ 0, %bb.u ], [ %i.dp, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %i.dp, %bb.w ]
  %.079.lcssa.i.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ %i.df, %bb.u ], [ %i.dx, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %i.dp, %bb.w ] ; 3 uses
  %reass.sub.i.i = sub i32 %.079.lcssa.i.i, %.lcssa105169.i.i
  %i.dy = add i32 %reass.sub.i.i, 1               ; 2 uses
  %i.dz = icmp sgt i32 %i.de, 0
  br i1 %i.dz, label %.lr.ph121.preheader.i.i, label %.thread96.i.i

.lr.ph121.preheader.i.i:                          ; preds = %._crit_edge111.i.i
  %i.ea = sext i32 %i.dd to i64                   ; 2 uses
  %i.eb = sext i32 %i.av to i64                   ; 2 uses
  %i.ec = add i32 %.079.lcssa.i.i, 1              ; 2 uses
  %.not87.not115.i.i = icmp sgt i32 %.6.i, %.079.lcssa.i.i
  %i.ed = sext i32 %.6.i to i64                   ; 2 uses
  br i1 %.not87.not115.i.i, label %.thread96.i.i, label %.lr.ph121.i.preheader.i

.lr.ph121.i.preheader.i:                          ; preds = %.lr.ph121.preheader.i.i
  %wide.trip.count.i = zext nneg i32 %i.de to i64 ; 2 uses
  br label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %._crit_edge119.i.loopexit.i, %.lr.ph121.i.preheader.i
  %indvars.iv145.i.i = phi i64 [ %indvars.iv.next146.i.i, %._crit_edge119.i.loopexit.i ], [ 0, %.lr.ph121.i.preheader.i ] ; 5 uses
  %invariant.gep.i230.i = getelementptr i8, ptr %i.db, i64 %indvars.iv145.i.i
  %invariant.gep177.i.i = getelementptr i8, ptr %i.at, i64 %indvars.iv145.i.i
  br label %.lr.ph118.i.i

end_hunk_0
begin_hunk_1_@gif_encode_frame:bb.a
  %i.qw = getelementptr inbounds i8, ptr %.0122.i, i64 %i.pt
  %i.qx = add nuw nsw i32 %.0186120.i, 1          ; 2 uses
  %exitcond178.not.i = icmp eq i32 %i.qx, %.258.i
  br i1 %exitcond178.not.i, label %.loopexit.i, label %bb.az, !llvm.loop !63

bb.be:                                            ; preds = %bb.be, %.lr.ph115.i
  %.2182114.i = phi ptr [ %i.pc, %.lr.ph115.i ], [ %i.rb, %bb.be ] ; 2 uses
  %.1187113.i = phi i32 [ 0, %.lr.ph115.i ], [ %i.rc, %bb.be ]
  %.1190112.i = phi i32 [ 0, %.lr.ph115.i ], [ %i.ra, %bb.be ]
  %i.qy = load ptr, ptr %i.nk, align 8, !tbaa !35
  %i.qz = tail call i32 @ff_lzw_encode(ptr noundef %i.qy, ptr noundef %.2182114.i, i32 noundef %.255.i) #10
  %i.ra = add nsw i32 %i.qz, %.1190112.i          ; 2 uses
  %i.rb = getelementptr inbounds i8, ptr %.2182114.i, i64 %i.pe
  %i.rc = add nuw nsw i32 %.1187113.i, 1          ; 2 uses
  %exitcond172.not.i = icmp eq i32 %i.rc, %.258.i
  br i1 %exitcond172.not.i, label %.loopexit.i, label %bb.be, !llvm.loop !64

.loopexit.i:                                      ; preds = %bb.be, %._crit_edge.i, %bb.ay, %.preheader.i53
  %.2191.i = phi i32 [ %i.qu, %._crit_edge.i ], [ 0, %bb.ay ], [ 0, %.preheader.i53 ], [ %i.ra, %bb.be ]
  %i.rd = load ptr, ptr %i.nk, align 8, !tbaa !35
  %i.re = tail call i32 @ff_lzw_encode_flush(ptr noundef %i.rd) #10
  %i.rf = add nsw i32 %i.re, %.2191.i             ; 2 uses
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %.lr.ph129.i, label %._crit_edge130.i

.lr.ph129.i:                                      ; preds = %.loopexit.i
  %i.rh = load ptr, ptr %i.nm, align 8, !tbaa !37
  %i.ri = ptrtoint ptr %i.v to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.lr.ph129.i
  %.5 = phi ptr [ %i.nj, %.lr.ph129.i ], [ %i.rp, %bb.bg ] ; 2 uses
  %.3127.i = phi ptr [ %i.rh, %.lr.ph129.i ], [ %i.rq, %bb.bg ] ; 2 uses
  %.3192126.i = phi i32 [ %i.rf, %.lr.ph129.i ], [ %i.rr, %bb.bg ] ; 2 uses
  %i.rj = tail call i32 @llvm.umin.i32(i32 %.3192126.i, i32 255) ; 3 uses
  %i.rk = trunc nuw i32 %i.rj to i8
  store i8 %i.rk, ptr %.5, align 1, !tbaa !75
  %i.rl = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = sub i64 %i.ri, %i.rm
  %i.ro = zext nneg i32 %i.rj to i64              ; 4 uses
  %.not215.i = icmp slt i64 %i.rn, %i.ro
  br i1 %.not215.i, label %gif_image_write_image.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rl, ptr noundef nonnull align 1 dereferenceable(1) %.3127.i, i64 %i.ro, i1 false)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.ro ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.3127.i, i64 %i.ro
  %i.rr = sub nuw nsw i32 %.3192126.i, %i.rj      ; 2 uses
  %.not242.i = icmp eq i32 %i.rr, 0
  br i1 %.not242.i, label %._crit_edge130.i, label %bb.bf

._crit_edge130.i:                                 ; preds = %bb.bg, %.loopexit.i
  %.4 = phi ptr [ %i.nj, %.loopexit.i ], [ %i.rp, %bb.bg ] ; 2 uses
  store i8 0, ptr %.4, align 1, !tbaa !75
  %i.rs = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %gif_image_write_image.exit

gif_image_write_image.exit:                       ; preds = %bb.bf, %bb.av, %._crit_edge130.i
  %.6 = phi ptr [ %i.nj, %bb.av ], [ %i.rs, %._crit_edge130.i ], [ %i.rl, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !73 ; 2 uses
  %.not46 = icmp eq ptr %i.ru, null
  br i1 %.not46, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %gif_image_write_image.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !74
  %.not47 = icmp eq i32 %i.rw, 0
  br i1 %.not47, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.rx = tail call ptr @av_frame_alloc() #10     ; 3 uses
  store ptr %i.rx, ptr %i.rt, align 8, !tbaa !73
  %.not48 = icmp eq ptr %i.rx, null
  br i1 %.not48, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %gif_image_write_image.exit
  %i.ry = phi ptr [ %i.rx, %bb.bi ], [ null, %bb.bh ], [ %i.ru, %gif_image_write_image.exit ]
  %i.rz = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !74
  %.not49 = icmp eq i32 %i.sa, 0
  br i1 %.not49, label %bb.bk, label %.thread

.thread:                                          ; preds = %bb.bj
  %i.sb = load ptr, ptr %i.q, align 8, !tbaa !66
  %i.sc = ptrtoint ptr %.6 to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = trunc i64 %i.se to i32
  store i32 %i.sf, ptr %i.s, align 8, !tbaa !67
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.sg = tail call i32 @av_frame_replace(ptr noundef %i.ry, ptr noundef nonnull %2) #10 ; 2 uses
  %i.sh = icmp slt i32 %i.sg, 0
  br i1 %i.sh, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.pr = load i32, ptr %i.rz, align 4, !tbaa !74
  %i.si = load ptr, ptr %i.q, align 8, !tbaa !66
  %i.sj = ptrtoint ptr %.6 to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = trunc i64 %i.sl to i32
  store i32 %i.sm, ptr %i.s, align 8, !tbaa !67
  %.not50 = icmp eq i32 %.pr, 0
  br i1 %.not50, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !76
  %.not51 = icmp eq i64 %i.so, 0
  br i1 %.not51, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.thread, %bb.bm, %bb.bl
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !81
  %i.sr = or i32 %i.sq, 1
  store i32 %i.sr, ptr %i.sp, align 8, !tbaa !81
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  store i32 1, ptr %3, align 4, !tbaa !34
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bk, %bb.bi, %bb.a, %bb.bo
  %.041 = phi i32 [ %i.o, %bb.a ], [ 0, %bb.bo ], [ -12, %bb.bi ], [ %i.sg, %bb.bk ]
  ret i32 %.041
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @gif_encode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  tail call void @av_freep(ptr noundef nonnull %i.h) #10
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare i32 @avpriv_set_systematic_pal2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @ff_lzw_encode_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_encode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_encode_flush(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1>, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 112}
!30 = !{!27, !6, i64 116}
!31 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!32 = !{!"GIFContext", !10, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !31, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !5, i64 60, !6, i64 1084, !6, i64 1088, !14, i64 1096}
!33 = !{!32, !6, i64 1088}
!34 = !{!6, !6, i64 0}
!35 = !{!32, !9, i64 8}
!36 = !{!32, !6, i64 32}
!37 = !{!32, !14, i64 16}
!38 = !{!32, !14, i64 1096}
!39 = !{!27, !6, i64 136}
!40 = distinct !{!40, !70}
!41 = distinct !{!41, !70}
!42 = distinct !{!42, !70}
!43 = distinct !{!43, !70}
!44 = distinct !{!44, !70}
!45 = distinct !{!45, !70}
!46 = distinct !{!46, !70}
!47 = distinct !{!47, !70}
!48 = distinct !{!48, !70}
!49 = distinct !{!49, !70}
!50 = distinct !{!50, !70}
!51 = distinct !{!51, !70}
!52 = distinct !{!52, !70, !77, !78}
!53 = distinct !{!53, !70}
!54 = distinct !{!54, !79}
!55 = distinct !{!55, !70}
!56 = distinct !{!56, !70}
!57 = distinct !{!57, !70}
!58 = distinct !{!58, !70}
!59 = distinct !{!59, !79}
!60 = distinct !{!60, !70}
!61 = distinct !{!61, !70}
!62 = distinct !{!62, !70}
!63 = distinct !{!63, !70}
!64 = distinct !{!64, !70}
!65 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!66 = !{!65, !14, i64 24}
!67 = !{!65, !6, i64 32}
!68 = !{!14, !14, i64 0}
!69 = !{!32, !6, i64 1084}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!32, !6, i64 56}
!72 = !{!32, !6, i64 48}
!73 = !{!32, !31, i64 40}
!74 = !{!32, !6, i64 52}
!75 = !{!5, !5, i64 0}
!76 = !{!27, !13, i64 824}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!32, !14, i64 24}
!81 = !{!65, !6, i64 40}
end_hunk_1
