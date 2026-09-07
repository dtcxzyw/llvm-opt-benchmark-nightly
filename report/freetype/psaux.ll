Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_hintmap_map:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !414  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !349
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !354
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f                   ; 2 uses
  %i.k = ashr i64 %i.j, 63
  %i.l = add nsw i64 %i.j, 32768
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !415  ; 3 uses
  %i.r = add i32 %i.b, -1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not54.not = icmp ult i32 %i.q, %i.r
  br i1 %exitcond.not54.not, label %.lr.ph57, label %.critedge

.lr.ph57:                                         ; preds = %bb.d
  %i.s = zext i32 %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !749

bb.f:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv55 = phi i64 [ %i.s, %.lr.ph57 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !417
  %.not38 = icmp slt i32 %1, %i.v
  br i1 %.not38, label %.critedge.split.loop.exit50, label %bb.e, !llvm.loop !749

.critedge.split.loop.exit50:                      ; preds = %bb.f
  %i.w = trunc nuw i64 %indvars.iv55 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.split.loop.exit50
  %.0.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit50 ], [ %umax, %bb.d ], [ %umax, %bb.e ] ; 2 uses
  %.not3942 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.143 = phi i32 [ %i.ac, %bb.g ], [ %.0.lcssa, %.critedge ] ; 4 uses
  %i.x = zext i32 %.143 to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph
  %i.ac = add i32 %.143, -1                       ; 2 uses
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !750

.critedge2:                                       ; preds = %.lr.ph
  store i32 %.143, ptr %i.p, align 4, !tbaa !415
  %i.ad = zext i32 %.143 to i64
  br label %._crit_edge._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.critedge
  store i32 0, ptr %i.p, align 4, !tbaa !415
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !417 ; 2 uses
  %i.ag = icmp slt i32 %1, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge._crit_edge

bb.h:                                             ; preds = %._crit_edge
  %i.ah = sub i32 %1, %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !354
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai                ; 2 uses
  %i.an = ashr i64 %i.am, 63
  %i.ao = add nsw i64 %i.am, 32768
  %i.ap = add nsw i64 %i.ao, %i.an
  %i.aq = lshr i64 %i.ap, 16
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !419
  %i.au = add i32 %i.at, %i.ar
  br label %bb.i

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %.critedge2
  %.141 = phi i64 [ %i.ad, %.critedge2 ], [ 0, %._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.141 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !417
  %i.az = sub i32 %1, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !418
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba                ; 2 uses
  %i.bf = ashr i64 %i.be, 63
  %i.bg = add nsw i64 %i.be, 32768
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, 16
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !419
  %i.bm = add i32 %i.bl, %i.bj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge, %bb.c
  %.135 = phi i32 [ %i.o, %bb.c ], [ %i.au, %bb.h ], [ %i.bm, %._crit_edge._crit_edge ]
  ret i32 %.135
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_hintmap_insertHint(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %.val100 = load i32, ptr %1, align 8, !tbaa !416
  %.not107 = icmp eq i32 %.val100, 0
  br i1 %.not107, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val99 = load i32, ptr %2, align 8, !tbaa !416
  %.not = icmp eq i32 %.val99, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !417
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.not88105 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 5 uses
  %.084104 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %2, %bb.a ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !414  ; 3 uses
  %.not117 = icmp eq i32 %i.g, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %.084104, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !417  ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !417  ; 3 uses
  %.not89 = icmp slt i32 %i.l, %i.i
  br i1 %.not89, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !751

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = icmp eq i32 %i.l, %i.i
  br i1 %i.p, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not88105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !417
  %.not90 = icmp sgt i32 %i.l, %i.r
  br i1 %.not90, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val101 = load i32, ptr %i.o, align 8, !tbaa !416
  %i.s = and i32 %.val101, 8
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.i
  %.081110 = phi i32 [ %i.m, %bb.i ], [ 0, %.thread ], [ %i.g, %bb.e ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !351  ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load i8, ptr %i.v, align 8, !tbaa !402
  %.not92 = icmp eq i8 %.val, 0
  br i1 %.not92, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.084.val = load i32, ptr %.084104, align 8, !tbaa !416
  %i.w = and i32 %.084.val, 16
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.084104, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !417  ; 3 uses
  br i1 %.not88105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ab = sub i32 %i.aa, %i.y
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !417
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !354
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am                ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add nsw i64 %i.an, 32768
  %i.aq = add nsw i64 %i.ap, %i.ao
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = sub i32 %i.ae, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !419
  %i.av = add i32 %i.ae, %i.as
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.y)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink127 = phi ptr [ %2, %bb.l ], [ %.084104, %bb.m ]
  %.sink = phi i32 [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink127, i64 20
  store i32 %.sink, ptr %i.ax, align 4, !tbaa !419
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %.loopexit
  %.not95 = icmp eq i32 %.081110, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !419
  %i.ba = add i32 %.081110, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !419
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !414 ; 8 uses
  %i.bh = icmp ult i32 %.081110, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = zext i32 %.081110 to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !419 ; 2 uses
  br i1 %.not88105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !419
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %bb.v, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !419
  %i.br = icmp sgt i32 %i.bq, %i.bl
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.bs = add i32 %i.bg, 1                        ; 2 uses
  %i.bt = select i1 %.not88105, i32 %i.bg, i32 %i.bs ; 4 uses
  %i.bu = sub i32 %i.bg, %.081110                 ; 4 uses
  %i.bv = icmp ugt i32 %i.bt, 191
  br i1 %i.bv, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.t
  %.not97112 = icmp eq i32 %i.bu, 0
  br i1 %.not97112, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.neg = add i32 %.081110, 1
  %xtraiter = and i32 %i.bu, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %i.bx = add nsw i32 %i.bu, -1
  %.080.prol = add i32 %i.bg, -1                  ; 2 uses
  %i.by = add nsw i32 %i.bt, -1
  %i.bz = zext nneg i32 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = zext i32 %.080.prol to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !753
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph116
  %.0115.unr = phi i32 [ %i.bu, %.lr.ph116 ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %.079114.unr = phi i32 [ %i.bt, %.lr.ph116 ], [ %i.by, %.prol.loopexit.unr-lcssa ]
  %.080.in113.unr = phi i32 [ %i.bg, %.lr.ph116 ], [ %.080.prol, %.prol.loopexit.unr-lcssa ]
  %i.cd = icmp eq i32 %i.bg, %.neg
  br i1 %i.cd, label %._crit_edge, label %.lr.ph116.new

.lr.ph116.new:                                    ; preds = %.prol.loopexit, %.lr.ph116.new
  %.0115 = phi i32 [ %i.cj, %.lr.ph116.new ], [ %.0115.unr, %.prol.loopexit ]
  %.079114 = phi i32 [ %i.ck, %.lr.ph116.new ], [ %.079114.unr, %.prol.loopexit ] ; 3 uses
  %.080.in113 = phi i32 [ %.080.1, %.lr.ph116.new ], [ %.080.in113.unr, %.prol.loopexit ] ; 2 uses
  %.080 = add i32 %.080.in113, -1
  %i.ce = add i32 %.079114, -1
  %i.cf = zext i32 %.079114 to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = zext i32 %.080 to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false), !tbaa.struct !753
  %i.cj = add i32 %.0115, -2                      ; 2 uses
  %.080.1 = add i32 %.080.in113, -2               ; 2 uses
  %i.ck = add i32 %.079114, -2
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cl
  %i.cn = zext i32 %.080.1 to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false), !tbaa.struct !753
  %.not97.1 = icmp eq i32 %i.cj, 0
  br i1 %.not97.1, label %._crit_edge, label %.lr.ph116.new, !llvm.loop !752

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph116.new, %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = zext i32 %.081110 to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.084104, i64 32, i1 false), !tbaa.struct !753
  store i32 %i.bs, ptr %i.f, align 8, !tbaa !414
  br i1 %.not88105, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.cs = add i32 %.081110, 1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !753
  %i.cv = add i32 %i.bg, 2
  store i32 %i.cv, ptr %i.f, align 8, !tbaa !414
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %._crit_edge, %bb.s, %bb.r, %bb.o, %bb.i, %bb.h, %bb.f, %bb.c
  ret void
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"p1 _ZTS13FT_MemoryRec_", !13, i64 0}
!20 = !{!"PS_Table_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!21 = !{!"PS_TableRec_", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !10, i64 32, !17, i64 40, !18, i64 48, !19, i64 56, !20, i64 64}
!22 = !{!21, !19, i64 56}
!23 = !{!21, !17, i64 40}
!24 = !{!10, !10, i64 0}
!25 = !{!21, !18, i64 48}
!26 = !{!21, !10, i64 32}
!27 = !{!21, !15, i64 24}
!28 = !{!13, !13, i64 0}
!29 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!30 = !{!21, !15, i64 8}
!31 = !{!21, !14, i64 0}
!32 = !{!21, !15, i64 16}
!33 = !{!14, !14, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"PS_Parser_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!36 = !{!"PS_ParserRec_", !14, i64 0, !14, i64 8, !14, i64 16, !10, i64 24, !19, i64 32, !35, i64 40}
!37 = !{!36, !10, i64 24}
!38 = !{!36, !14, i64 16}
!39 = !{!36, !14, i64 0}
!40 = !{!36, !19, i64 32}
!41 = !{!9, !9, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!"short", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"T1_TokenRec_", !14, i64 0, !14, i64 8, !10, i64 16}
!46 = !{!45, !10, i64 16}
!47 = !{!45, !14, i64 0}
!48 = !{!45, !14, i64 8}
!49 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 4, !24}
!50 = !{!"T1_FieldRec_", !10, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !13, i64 24, !10, i64 32, !9, i64 36, !10, i64 40, !10, i64 44, !10, i64 48}
!51 = !{!50, !10, i64 20}
!52 = !{!50, !10, i64 32}
!53 = !{!"FT_BBox_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!54 = !{!19, !19, i64 0}
!55 = !{!"p1 _ZTS11FT_FaceRec_", !13, i64 0}
!56 = !{!"p1 _ZTS17CFF_GlyphSlotRec_", !13, i64 0}
!57 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !13, i64 0}
!58 = !{!"p1 _ZTS11FT_Outline_", !13, i64 0}
!59 = !{!"p1 long", !13, i64 0}
!60 = !{!"p1 _ZTS10FT_Vector_", !13, i64 0}
!61 = !{!"p1 _ZTS8FT_BBox_", !13, i64 0}
!62 = !{!"PS_Builder_FuncsRec_", !13, i64 0, !13, i64 8}
!63 = !{!"PS_Builder_", !19, i64 0, !55, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !59, i64 48, !59, i64 56, !60, i64 64, !60, i64 72, !61, i64 80, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !62, i64 96}
!64 = !{!63, !19, i64 0}
!65 = !{!63, !55, i64 8}
!66 = !{!58, !58, i64 0}
!67 = !{!63, !58, i64 32}
!68 = !{!63, !58, i64 40}
!69 = !{!63, !59, i64 48}
!70 = !{!63, !59, i64 56}
!71 = !{!63, !60, i64 64}
!72 = !{!63, !60, i64 72}
!73 = !{!63, !61, i64 80}
!74 = !{!"p1 _ZTS11TT_FaceRec_", !13, i64 0}
!75 = !{!"FT_Vector_", !15, i64 0, !15, i64 8}
!76 = !{!"CFF_Builder_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!77 = !{!"CFF_Builder_", !19, i64 0, !74, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !15, i64 48, !15, i64 56, !75, i64 64, !75, i64 80, !53, i64 96, !9, i64 128, !9, i64 129, !9, i64 130, !9, i64 131, !13, i64 136, !13, i64 144, !76, i64 152}
!78 = !{!77, !9, i64 128}
!79 = !{!63, !9, i64 88}
!80 = !{!63, !9, i64 89}
!81 = !{!63, !9, i64 90}
!82 = !{!63, !9, i64 91}
!83 = !{!63, !9, i64 92}
!84 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!85 = !{!60, !60, i64 0}
!86 = !{!"p1 short", !13, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{i64 0, i64 2, !44, i64 2, i64 2, !44, i64 8, i64 8, !85, i64 16, i64 8, !33, i64 24, i64 8, !87, i64 32, i64 4, !24}
!89 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !13, i64 0}
!90 = !{!"T1_Builder_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!91 = !{!"T1_BuilderRec_", !19, i64 0, !55, i64 8, !89, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !15, i64 48, !15, i64 56, !75, i64 64, !75, i64 80, !53, i64 96, !10, i64 128, !9, i64 132, !9, i64 133, !9, i64 134, !13, i64 136, !13, i64 144, !90, i64 152}
!92 = !{!91, !10, i64 128}
!93 = !{!91, !9, i64 132}
!94 = !{!91, !55, i64 8}
!95 = !{!91, !89, i64 16}
!96 = !{!"p1 _ZTS15FT_Bitmap_Size_", !13, i64 0}
end_hunk_0
