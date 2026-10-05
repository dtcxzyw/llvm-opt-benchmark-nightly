Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@HUF_decodeStreamX4:bb.a
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !26
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !37
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %BIT_reloadDStream.exit62.thread, %.preheader
  %.val15.i = phi i32 [ %.val9.i64, %.preheader ], [ %.lcssa4, %BIT_reloadDStream.exit62.thread ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.316, %.preheader ], [ %.3.lcssa, %BIT_reloadDStream.exit62.thread ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !36
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !26
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !37
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !26
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUF_decodeLastSymbolX4.exit

HUF_decodeLastSymbolX4.exit:                      ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @HUF_fillDTableX6LevelN(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 17) %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8, ptr nofree noundef nonnull readonly captures(none) %9, i32 noundef %10, i32 %11, i16 %12) unnamed_addr #15 {
bb.a:
  %13 = alloca %union.HUF_DSeqX6, align 4         ; 5 uses
  %i.a = alloca [17 x i32], align 16              ; 6 uses
  %.fr82 = freeze i16 %12                         ; 8 uses
  store i32 %11, ptr %13, align 4
  %.sroa.5.0.extract.shift = lshr i16 %.fr82, 8   ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.0.extract.shift to i8
  %i.b = sub i32 %10, %2
  %i.c = sub i32 %10, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = zext i32 %4 to i64
  %i.e = getelementptr inbounds nuw [68 x i8], ptr %3, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull align 4 dereferenceable(68) %i.e, i64 68, i1 false)
  %i.f = icmp sgt i32 %5, 1
  br i1 %i.f, label %bb.b, label %.loopexit75

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %5 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 3 uses
  %.not81 = icmp eq i32 %i.i, 0
  br i1 %.not81, label %.loopexit75, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.i to i64         ; 7 uses
  %min.iters.check = icmp ult i32 %i.i, 16
  br i1 %min.iters.check, label %.lr.ph.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = shl nuw nsw i64 %wide.trip.count, 2
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = shl nuw nsw i64 %wide.trip.count, 1
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %bound0 = icmp ult ptr %1, %i.m
  %bound1 = icmp ult ptr %0, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i16> poison, i16 %.fr82, i64 0
  %broadcast.splat116 = shufflevector <4 x i16> %broadcast.splatinsert115, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x i16> %broadcast.splat116, ptr %i.p, align 1, !alias.scope !136
  store <4 x i16> %broadcast.splat116, ptr %i.q, align 1, !alias.scope !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit75, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader168, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader168 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader168 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store i32 %11, ptr %i.s, align 4, !tbaa !15
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %.fr82, ptr %i.t, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !120

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader168
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader168 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %11, ptr %i.w, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %.fr82, ptr %i.x, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %11, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %.fr82, ptr %i.z, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store i32 %11, ptr %i.aa, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %.fr82, ptr %i.ab, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store i32 %11, ptr %i.ac, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %.fr82, ptr %i.ad, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit75, label %.lr.ph, !llvm.loop !121

.loopexit75:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b, %bb.a
  %i.ae = add nuw i8 %.sroa.5.0.extract.trunc, 1  ; 13 uses
  %i.af = sext i32 %5 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %9, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22 ; 2 uses
  %i.ai = icmp ult i32 %i.ah, %8
  br i1 %i.ai, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.loopexit75
  %i.aj = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 %i.aj ; 2 uses
  %i.al = icmp ugt i16 %.fr82, 767
  %.sroa.5.0.insert.ext = zext nneg i8 %i.ae to i16
  %.sroa.5.0.insert.shift = shl nuw nsw i16 %.sroa.5.0.insert.ext, 8
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  br i1 %i.al, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %broadcast.splatinsert132 = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %wide.trip.count102 = zext i32 %8 to i64
  %broadcast.splatinsert157 = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %.loopexit.us
  %indvars.iv100 = phi i64 [ %i.am, %.lr.ph80.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv100 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !40  ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub i32 %10, %i.ar                      ; 2 uses
  %i.at = add i32 %i.as, %4
  %i.au = zext i8 %i.aq to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22 ; 3 uses
  %i.ax = sub nsw i32 %2, %i.as
  %i.ay = shl nuw i32 1, %i.ax
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !15
  %i.az = trunc i32 %i.at to i8                   ; 6 uses
  %i.ba = add i32 %i.ay, %i.aw                    ; 3 uses
  %i.bb = icmp ult i32 %i.aw, %i.ba
  br i1 %i.bb, label %.lr.ph78.us, label %.loopexit.us

scalar.ph149:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph149 ], [ %indvars.iv95.unr, %scalar.ph149.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95 ; 2 uses
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.us, align 1, !tbaa !15
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !15
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96 ; 2 uses
  store i8 %i.az, ptr %i.be, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.1 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.us.1, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !15
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.1 ; 2 uses
  store i8 %i.az, ptr %i.bg, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.us.2, align 1, !tbaa !15
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !15
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.2 ; 2 uses
  store i8 %i.az, ptr %i.bi, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.3 = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.us.3, align 1, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.2
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !15
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %.loopexit.us, label %scalar.ph149, !llvm.loop !122

.loopexit.us:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149, %middle.block164, %.lr.ph80.split.us
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !22
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count102
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph80.split.us, !llvm.loop !123

.lr.ph78.us:                                      ; preds = %.lr.ph80.split.us
  %i.bk = load i32, ptr %13, align 4, !tbaa !15   ; 6 uses
  %i.bl = zext i32 %i.aw to i64                   ; 7 uses
  %wide.trip.count98 = zext i32 %i.ba to i64      ; 6 uses
  %i.bm = sub nsw i64 %wide.trip.count98, %i.bl   ; 3 uses
  %min.iters.check150 = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph78.us
  %i.bn = shl nuw nsw i64 %i.bl, 1
  %scevgep142.a = getelementptr i8, ptr %0, i64 %i.bn
  %i.bo = shl nuw nsw i64 %wide.trip.count98, 1
  %scevgep143.a = getelementptr i8, ptr %0, i64 %i.bo
  %i.bp = shl nuw nsw i64 %i.bl, 2
  %scevgep144.a = getelementptr i8, ptr %1, i64 %i.bp
  %i.bq = shl nuw nsw i64 %wide.trip.count98, 2
  %scevgep145 = getelementptr i8, ptr %1, i64 %i.bq
  %bound0146 = icmp ult ptr %scevgep142.a, %scevgep145
  %bound1147 = icmp ult ptr %scevgep144.a, %scevgep143.a
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck141
  %n.vec152 = and i64 %i.bm, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec152, %i.bl
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <4 x i8> poison, i8 %i.az, i64 0
  %interleaved.vec161 = shufflevector <4 x i8> %broadcast.splatinsert155, <4 x i8> %broadcast.splatinsert157, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph151
  %index160 = phi i64 [ 0, %vector.ph151 ], [ %index.next163, %vector.body159 ] ; 2 uses
  %i.bs = add nuw i64 %index160, %i.bl            ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr [2 x i8], ptr %0, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store <8 x i8> %interleaved.vec161, ptr %i.bt, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  store <8 x i8> %interleaved.vec161, ptr %i.bv, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %broadcast.splat154, ptr %i.bw, align 4, !tbaa !15, !alias.scope !138
  store <4 x i32> %broadcast.splat154, ptr %i.bx, align 4, !tbaa !15, !alias.scope !138
  %index.next163 = add nuw i64 %index160, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.by, label %middle.block164, label %vector.body159, !llvm.loop !127

middle.block164:                                  ; preds = %vector.body159
  %cmp.n165 = icmp eq i64 %i.bm, %n.vec152
  br i1 %cmp.n165, label %.loopexit.us, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %vector.memcheck141, %.lr.ph78.us, %middle.block164
  %indvars.iv95.ph = phi i64 [ %i.bl, %vector.memcheck141 ], [ %i.bl, %.lr.ph78.us ], [ %i.br, %middle.block164 ] ; 4 uses
  %i.bz = sub nsw i64 %wide.trip.count98, %indvars.iv95.ph
  %xtraiter172 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol

scalar.ph149.prol:                                ; preds = %scalar.ph149.preheader, %scalar.ph149.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph149.prol ], [ %indvars.iv95.ph, %scalar.ph149.preheader ] ; 3 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %scalar.ph149.prol ], [ 0, %scalar.ph149.preheader ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95.prol ; 2 uses
  store i8 %i.az, ptr %i.ca, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.prol = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.us.prol, align 1, !tbaa !15
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95.prol
  store i32 %i.bk, ptr %i.cb, align 4, !tbaa !15
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol, !llvm.loop !128

scalar.ph149.prol.loopexit:                       ; preds = %scalar.ph149.prol, %scalar.ph149.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph149.preheader ], [ %indvars.iv.next96.prol, %scalar.ph149.prol ]
  %i.cc = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %.loopexit.us, label %scalar.ph149

.lr.ph80.split:                                   ; preds = %.lr.ph80.split.preheader, %.loopexit
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit ], [ %i.am, %.lr.ph80.split.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv90 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !40  ; 2 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub i32 %10, %i.ci                      ; 2 uses
  %i.ck = add i32 %i.cj, %4                       ; 5 uses
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !22 ; 5 uses
  %i.co = sub nsw i32 %2, %i.cj                   ; 2 uses
  %i.cp = shl nuw i32 1, %i.co                    ; 2 uses
  store i8 %i.cf, ptr %i.ak, align 1, !tbaa !15
  %i.cq = trunc i32 %i.ck to i8                   ; 6 uses
  %i.cr = sub nsw i32 %2, %i.ck
  %.not = icmp slt i32 %i.cr, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph80.split
  %i.cs = add nsw i32 %i.b, %i.ck
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = zext i32 %i.cn to i64                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cw = load i32, ptr %13, align 4
  %i.cx = trunc i32 %i.ck to i16
  %.sroa.0.0.insert.ext = and i16 %i.cx, 255
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, %.sroa.5.0.insert.shift
  tail call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.cu, ptr noundef %i.cv, i32 noundef %i.co, ptr noundef %3, i32 noundef %i.ck, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 %i.cw, i16 %.sroa.0.0.insert.insert)
  %.pre = add i32 %i.cp, %i.cn
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph80.split
  %i.cy = add i32 %i.cp, %i.cn                    ; 6 uses
  %i.cz = icmp ult i32 %i.cn, %i.cy
  br i1 %i.cz, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.d
  %i.da = load i32, ptr %13, align 4, !tbaa !15   ; 6 uses
  %i.db = zext i32 %i.cn to i64                   ; 7 uses
  %wide.trip.count88 = zext i32 %i.cy to i64      ; 6 uses
  %i.dc = sub nsw i64 %wide.trip.count88, %i.db   ; 3 uses
  %min.iters.check125 = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph78
  %i.dd = shl nuw nsw i64 %i.db, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.dd
  %i.de = shl nuw nsw i64 %wide.trip.count88, 1
  %scevgep118.a = getelementptr i8, ptr %0, i64 %i.de
  %i.df = shl nuw nsw i64 %i.db, 2
  %scevgep119.a = getelementptr i8, ptr %1, i64 %i.df
  %i.dg = shl nuw nsw i64 %wide.trip.count88, 2
  %scevgep120 = getelementptr i8, ptr %1, i64 %i.dg
  %bound0121 = icmp ult ptr %scevgep, %scevgep120
  %bound1122 = icmp ult ptr %scevgep119.a, %scevgep118.a
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck117
  %n.vec127 = and i64 %i.dc, -8                   ; 3 uses
  %i.dh = add nsw i64 %n.vec127, %i.db
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %interleaved.vec = shufflevector <4 x i8> %broadcast.splatinsert130, <4 x i8> %broadcast.splatinsert132, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph126
  %index135 = phi i64 [ 0, %vector.ph126 ], [ %index.next137, %vector.body134 ] ; 2 uses
  %i.di = add nuw i64 %index135, %i.db            ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.di
  %i.dk = getelementptr [2 x i8], ptr %0, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store <8 x i8> %interleaved.vec, ptr %i.dj, align 1, !tbaa !15, !alias.scope !139, !noalias !140
  store <8 x i8> %interleaved.vec, ptr %i.dl, align 1, !tbaa !15, !alias.scope !139, !noalias !140
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %broadcast.splat129, ptr %i.dm, align 4, !tbaa !15, !alias.scope !140
  store <4 x i32> %broadcast.splat129, ptr %i.dn, align 4, !tbaa !15, !alias.scope !140
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next137, %n.vec127
  br i1 %i.do, label %middle.block138, label %vector.body134, !llvm.loop !132

middle.block138:                                  ; preds = %vector.body134
  %cmp.n139 = icmp eq i64 %i.dc, %n.vec127
  br i1 %cmp.n139, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck117, %.lr.ph78, %middle.block138
  %indvars.iv85.ph = phi i64 [ %i.db, %vector.memcheck117 ], [ %i.db, %.lr.ph78 ], [ %i.dh, %middle.block138 ] ; 4 uses
  %i.dp = sub nsw i64 %wide.trip.count88, %indvars.iv85.ph
  %xtraiter169 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol

scalar.ph124.prol:                                ; preds = %scalar.ph124.preheader, %scalar.ph124.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %scalar.ph124.prol ], [ %indvars.iv85.ph, %scalar.ph124.preheader ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %scalar.ph124.prol ], [ 0, %scalar.ph124.preheader ]
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85.prol ; 2 uses
  store i8 %i.cq, ptr %i.dq, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.prol = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.prol, align 1, !tbaa !15
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85.prol
  store i32 %i.da, ptr %i.dr, align 4, !tbaa !15
  %indvars.iv.next86.prol = add nuw nsw i64 %indvars.iv85.prol, 1 ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol, !llvm.loop !133

scalar.ph124.prol.loopexit:                       ; preds = %scalar.ph124.prol, %scalar.ph124.preheader
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %scalar.ph124.preheader ], [ %indvars.iv.next86.prol, %scalar.ph124.prol ]
  %i.ds = sub nsw i64 %indvars.iv85.ph, %wide.trip.count88
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %.loopexit, label %scalar.ph124

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %scalar.ph124 ], [ %indvars.iv85.unr, %scalar.ph124.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85 ; 2 uses
  store i8 %i.cq, ptr %i.du, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85
  store i32 %i.da, ptr %i.dv, align 4, !tbaa !15
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86 ; 2 uses
  store i8 %i.cq, ptr %i.dw, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.1, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86
  store i32 %i.da, ptr %i.dx, align 4, !tbaa !15
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.1 ; 2 uses
  store i8 %i.cq, ptr %i.dy, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.2 = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.2, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.1
  store i32 %i.da, ptr %i.dz, align 4, !tbaa !15
  %indvars.iv.next86.2 = add nuw nsw i64 %indvars.iv85, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.2 ; 2 uses
  store i8 %i.cq, ptr %i.ea, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.3 = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx68.3, align 1, !tbaa !15
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.2
  store i32 %i.da, ptr %i.eb, align 4, !tbaa !15
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %scalar.ph124, !llvm.loop !134

.loopexit:                                        ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block138, %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.cy, %bb.d ], [ %i.cy, %middle.block138 ], [ %i.cy, %scalar.ph124 ], [ %i.cy, %scalar.ph124.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.cm, align 4, !tbaa !22
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next91 to i32
  %exitcond94.not = icmp eq i32 %8, %lftr.wideiv
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph80.split, !llvm.loop !123

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.loopexit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX6(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  %i.b = add i32 %4, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 -16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = sub i32 0, %4
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64                ; 7 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !37  ; 3 uses
  %i.m = icmp ugt i32 %.pre, 64
  br i1 %i.m, label %.preheader86, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.a, %bb.e
  %.08 = phi ptr [ %i.cw, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.n = phi i32 [ %i.cs, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !35   ; 6 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !34   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.not.i = icmp ult ptr %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph10
  %i.r = lshr i32 %i.n, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !35
  %i.v = and i32 %i.n, 7
  br label %BIT_reloadDStream.exit

bb.c:                                             ; preds = %.lr.ph10
  %i.w = icmp eq ptr %i.o, %i.p
  br i1 %i.w, label %.preheader86, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = lshr i32 %i.n, 3                         ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 %i.z
  %i.ab = icmp uge ptr %i.aa, %i.p                ; 2 uses
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %.024.i = select i1 %i.ab, i32 %i.x, i32 %i.af  ; 2 uses
  %i.ag = zext i32 %.024.i to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.o, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !35
  %i.aj = shl i32 %.024.i, 3
  %i.ak = sub i32 %i.n, %i.aj
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.u, %bb.b ], [ %i.ai, %bb.d ]
  %.val9.i = phi i32 [ %i.v, %bb.b ], [ %i.ak, %bb.d ] ; 3 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.ab, %bb.d ]
  store i32 %.val9.i, ptr %i.f, align 8, !tbaa !37
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !36
  %i.al = icmp ule ptr %.08, %i.g
  %i.am = select i1 %.025.i, i1 %i.al, i1 false
  br i1 %i.am, label %bb.e, label %.preheader86

.preheader86:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.08, %BIT_reloadDStream.exit ], [ %i.cw, %bb.e ], [ %.08, %bb.c ] ; 2 uses
  %.val9.i119 = phi i32 [ %.pre, %bb.a ], [ %.val9.i, %BIT_reloadDStream.exit ], [ %i.cs, %bb.e ], [ %i.n, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 -4 ; 3 uses
  %i.ao = icmp ugt i32 %.val9.i119, 64
  br i1 %i.ao, label %BIT_reloadDStream.exit77.thread, label %.lr.ph18

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i62 = load i64, ptr %1, align 8, !tbaa !36
  %i.ap = and i32 %.val9.i, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %.val.i62, %i.aq
  %i.as = lshr i64 %i.ar, %i.l                    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  store i32 %i.au, ptr %.08, align 1
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !37
  %i.az = add i32 %i.ay, %i.ax                    ; 2 uses
  store i32 %i.az, ptr %i.f, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !40
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.08, i64 %i.bc ; 2 uses
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !36
  %i.be = and i32 %i.az, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl i64 %.val.i63, %i.bf
  %i.bh = lshr i64 %i.bg, %i.l                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  store i32 %i.bj, ptr %i.bd, align 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load i32, ptr %i.f, align 8, !tbaa !37
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  store i32 %i.bo, ptr %i.f, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !40
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.br ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !36
  %i.bt = and i32 %i.bo, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %.val.i65, %i.bu
  %i.bw = lshr i64 %i.bv, %i.l                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  store i32 %i.by, ptr %i.bs, align 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bw ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !39
  %i.cb = zext i8 %i.ca to i32
  %i.cc = load i32, ptr %i.f, align 8, !tbaa !37
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  store i32 %i.cd, ptr %i.f, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cg ; 2 uses
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !36
  %i.ci = and i32 %i.cd, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl i64 %.val.i67, %i.cj
  %i.cl = lshr i64 %i.ck, %i.l                    ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  store i32 %i.cn, ptr %i.ch, align 1
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !39
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i32, ptr %i.f, align 8, !tbaa !37
  %i.cs = add i32 %i.cr, %i.cq                    ; 4 uses
  store i32 %i.cs, ptr %i.f, align 8, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt i32 %i.cs, 64
  br i1 %i.cx, label %.preheader86, label %.lr.ph10, !llvm.loop !141

.lr.ph18:                                         ; preds = %.preheader86, %bb.i
  %.317 = phi ptr [ %i.em, %bb.i ], [ %.0.lcssa, %.preheader86 ] ; 6 uses
  %i.cy = phi i32 [ %i.ei, %bb.i ], [ %.val9.i119, %.preheader86 ] ; 5 uses
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !35  ; 6 uses
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !34  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i69 = icmp ult ptr %i.cz, %i.db
  br i1 %.not.i69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph18
  %i.dc = lshr i32 %i.cy, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 %i.de ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !35
  %i.dg = and i32 %i.cy, 7
  br label %BIT_reloadDStream.exit77

bb.g:                                             ; preds = %.lr.ph18
  %i.dh = icmp eq ptr %i.cz, %i.da
  br i1 %i.dh, label %BIT_reloadDStream.exit77.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = lshr i32 %i.cy, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp uge ptr %i.dl, %i.da               ; 2 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.da to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.024.i72 = select i1 %i.dm, i32 %i.di, i32 %i.dq ; 2 uses
  %i.dr = zext i32 %.024.i72 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !35
  %i.du = shl i32 %.024.i72, 3
  %i.dv = sub i32 %i.cy, %i.du
end_hunk_0
