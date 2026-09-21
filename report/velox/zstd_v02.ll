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

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
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
  br i1 %min.iters.check, label %.lr.ph.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.k = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep114 = getelementptr i8, ptr %0, i64 %i.k
  %bound0 = icmp ult ptr %1, %scevgep114
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i16> poison, i16 %.fr82, i64 0
  %broadcast.splat116 = shufflevector <4 x i16> %broadcast.splatinsert115, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <4 x i16> %broadcast.splat116, ptr %i.n, align 1, !alias.scope !136
  store <4 x i16> %broadcast.splat116, ptr %i.o, align 1, !alias.scope !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit75, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader169, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader169 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store i32 %11, ptr %i.q, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %.fr82, ptr %i.r, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !120

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader169
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader169 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %11, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %.fr82, ptr %i.v, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %11, ptr %i.w, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %.fr82, ptr %i.x, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store i32 %11, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %.fr82, ptr %i.z, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store i32 %11, ptr %i.aa, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %.fr82, ptr %i.ab, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit75, label %.lr.ph, !llvm.loop !121

.loopexit75:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b, %bb.a
  %i.ac = add nuw i8 %.sroa.5.0.extract.trunc, 1  ; 13 uses
  %i.ad = sext i32 %5 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %8
  br i1 %i.ag, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.loopexit75
  %i.ah = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 %i.ah ; 2 uses
  %i.aj = icmp ugt i16 %.fr82, 767
  %.sroa.5.0.insert.ext = zext nneg i8 %i.ac to i16
  %.sroa.5.0.insert.shift = shl nuw nsw i16 %.sroa.5.0.insert.ext, 8
  %i.ak = zext i32 %i.af to i64                   ; 2 uses
  %wide.trip.count103 = zext i32 %8 to i64        ; 2 uses
  br i1 %i.aj, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %broadcast.splatinsert133 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %.loopexit.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %.loopexit.us ], [ %i.ak, %.lr.ph80.split.us.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv100 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub i32 %10, %i.ap                      ; 2 uses
  %i.ar = add i32 %i.aq, %4
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22 ; 3 uses
  %i.av = sub nsw i32 %2, %i.aq
  %i.aw = shl nuw i32 1, %i.av
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !15
  %i.ax = trunc i32 %i.ar to i8                   ; 6 uses
  %i.ay = add i32 %i.aw, %i.au                    ; 3 uses
  %i.az = icmp ult i32 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph78.us, label %.loopexit.us

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph150 ], [ %indvars.iv95.unr, %scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95 ; 2 uses
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !15
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96 ; 2 uses
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.1, align 1, !tbaa !15
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !15
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.1 ; 2 uses
  store i8 %i.ax, ptr %i.be, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.2 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.2, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !15
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.2 ; 2 uses
  store i8 %i.ax, ptr %i.bg, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.3 = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.3, align 1, !tbaa !15
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.2
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !15
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %.loopexit.us, label %scalar.ph150, !llvm.loop !122

.loopexit.us:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150, %middle.block165, %.lr.ph80.split.us
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !22
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph80.split.us, !llvm.loop !123

.lr.ph78.us:                                      ; preds = %.lr.ph80.split.us
  %i.bi = load i32, ptr %13, align 4, !tbaa !15   ; 6 uses
  %i.bj = zext i32 %i.au to i64                   ; 7 uses
  %wide.trip.count98 = zext i32 %i.ay to i64      ; 6 uses
  %i.bk = sub nsw i64 %wide.trip.count98, %i.bj   ; 3 uses
  %min.iters.check151 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph78.us
  %i.bl = shl nuw nsw i64 %i.bj, 1
  %scevgep143.a = getelementptr i8, ptr %0, i64 %i.bl
  %i.bm = shl nuw nsw i64 %wide.trip.count98, 1
  %scevgep144.a = getelementptr i8, ptr %0, i64 %i.bm
  %i.bn = shl nuw nsw i64 %i.bj, 2
  %scevgep145.a = getelementptr i8, ptr %1, i64 %i.bn
  %i.bo = shl nuw nsw i64 %wide.trip.count98, 2
  %scevgep146 = getelementptr i8, ptr %1, i64 %i.bo
  %bound0147 = icmp ult ptr %scevgep143.a, %scevgep146
  %bound1148 = icmp ult ptr %scevgep145.a, %scevgep144.a
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck142
  %n.vec153 = and i64 %i.bk, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec153, %i.bj
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %interleaved.vec162 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> %broadcast.splatinsert158, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph152
  %index161 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.bq = add nuw i64 %index161, %i.bj            ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  %i.bs = getelementptr [2 x i8], ptr %0, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store <8 x i8> %interleaved.vec162, ptr %i.br, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  store <8 x i8> %interleaved.vec162, ptr %i.bt, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %broadcast.splat155, ptr %i.bu, align 4, !tbaa !15, !alias.scope !138
  store <4 x i32> %broadcast.splat155, ptr %i.bv, align 4, !tbaa !15, !alias.scope !138
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.bw, label %middle.block165, label %vector.body160, !llvm.loop !127

middle.block165:                                  ; preds = %vector.body160
  %cmp.n166 = icmp eq i64 %i.bk, %n.vec153
  br i1 %cmp.n166, label %.loopexit.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck142, %.lr.ph78.us, %middle.block165
  %indvars.iv95.ph = phi i64 [ %i.bj, %vector.memcheck142 ], [ %i.bj, %.lr.ph78.us ], [ %i.bp, %middle.block165 ] ; 4 uses
  %i.bx = sub nsw i64 %wide.trip.count98, %indvars.iv95.ph
  %xtraiter173 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph150.prol ], [ %indvars.iv95.ph, %scalar.ph150.preheader ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95.prol ; 2 uses
  store i8 %i.ax, ptr %i.by, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.prol = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.prol, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95.prol
  store i32 %i.bi, ptr %i.bz, align 4, !tbaa !15
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !128

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph150.preheader ], [ %indvars.iv.next96.prol, %scalar.ph150.prol ]
  %i.ca = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit.us, label %scalar.ph150

.lr.ph80.split:                                   ; preds = %.lr.ph80.split.preheader, %.loopexit
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit ], [ %i.ak, %.lr.ph80.split.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv90 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub i32 %10, %i.cg                      ; 2 uses
  %i.ci = add i32 %i.ch, %4                       ; 5 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22 ; 5 uses
  %i.cm = sub nsw i32 %2, %i.ch                   ; 2 uses
  %i.cn = shl nuw i32 1, %i.cm                    ; 2 uses
  store i8 %i.cd, ptr %i.ai, align 1, !tbaa !15
  %i.co = trunc i32 %i.ci to i8                   ; 6 uses
  %i.cp = sub nsw i32 %2, %i.ci
  %.not = icmp slt i32 %i.cp, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph80.split
  %i.cq = add nsw i32 %i.b, %i.ci
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %i.cr = zext i32 %i.cl to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.cu = load i32, ptr %13, align 4
  %i.cv = trunc i32 %i.ci to i16
  %.sroa.0.0.insert.ext = and i16 %i.cv, 255
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, %.sroa.5.0.insert.shift
  tail call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %i.cm, ptr noundef %3, i32 noundef %i.ci, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 %i.cu, i16 %.sroa.0.0.insert.insert)
  %.pre = add i32 %i.cn, %i.cl
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph80.split
  %i.cw = add i32 %i.cn, %i.cl                    ; 6 uses
  %i.cx = icmp ult i32 %i.cl, %i.cw
  br i1 %i.cx, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.d
  %i.cy = load i32, ptr %13, align 4, !tbaa !15   ; 6 uses
  %i.cz = zext i32 %i.cl to i64                   ; 7 uses
  %wide.trip.count88 = zext i32 %i.cw to i64      ; 6 uses
  %i.da = sub nsw i64 %wide.trip.count88, %i.cz   ; 3 uses
  %min.iters.check126 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph78
  %i.db = shl nuw nsw i64 %i.cz, 1
  %scevgep118.a = getelementptr i8, ptr %0, i64 %i.db
  %i.dc = shl nuw nsw i64 %wide.trip.count88, 1
  %scevgep119.a = getelementptr i8, ptr %0, i64 %i.dc
  %i.dd = shl nuw nsw i64 %i.cz, 2
  %scevgep120.a = getelementptr i8, ptr %1, i64 %i.dd
  %i.de = shl nuw nsw i64 %wide.trip.count88, 2
  %scevgep121 = getelementptr i8, ptr %1, i64 %i.de
  %bound0122 = icmp ult ptr %scevgep118.a, %scevgep121
  %bound1123 = icmp ult ptr %scevgep120.a, %scevgep119.a
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %vector.memcheck117
  %n.vec128 = and i64 %i.da, -8                   ; 3 uses
  %i.df = add nsw i64 %n.vec128, %i.cz
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert131 = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %interleaved.vec = shufflevector <4 x i8> %broadcast.splatinsert131, <4 x i8> %broadcast.splatinsert133, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph127
  %index136 = phi i64 [ 0, %vector.ph127 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.dg = add nuw i64 %index136, %i.cz            ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  %i.di = getelementptr [2 x i8], ptr %0, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  store <8 x i8> %interleaved.vec, ptr %i.dh, align 1, !tbaa !15, !alias.scope !139, !noalias !140
  store <8 x i8> %interleaved.vec, ptr %i.dj, align 1, !tbaa !15, !alias.scope !139, !noalias !140
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x i32> %broadcast.splat130, ptr %i.dk, align 4, !tbaa !15, !alias.scope !140
  store <4 x i32> %broadcast.splat130, ptr %i.dl, align 4, !tbaa !15, !alias.scope !140
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next138, %n.vec128
  br i1 %i.dm, label %middle.block139, label %vector.body135, !llvm.loop !132

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.da, %n.vec128
  br i1 %cmp.n140, label %.loopexit, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %vector.memcheck117, %.lr.ph78, %middle.block139
  %indvars.iv85.ph = phi i64 [ %i.cz, %vector.memcheck117 ], [ %i.cz, %.lr.ph78 ], [ %i.df, %middle.block139 ] ; 4 uses
  %i.dn = sub nsw i64 %wide.trip.count88, %indvars.iv85.ph
  %xtraiter170 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol

scalar.ph125.prol:                                ; preds = %scalar.ph125.preheader, %scalar.ph125.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %scalar.ph125.prol ], [ %indvars.iv85.ph, %scalar.ph125.preheader ] ; 3 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %scalar.ph125.prol ], [ 0, %scalar.ph125.preheader ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85.prol ; 2 uses
  store i8 %i.co, ptr %i.do, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.prol = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.prol, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85.prol
  store i32 %i.cy, ptr %i.dp, align 4, !tbaa !15
  %indvars.iv.next86.prol = add nuw nsw i64 %indvars.iv85.prol, 1 ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol, !llvm.loop !133

scalar.ph125.prol.loopexit:                       ; preds = %scalar.ph125.prol, %scalar.ph125.preheader
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %scalar.ph125.preheader ], [ %indvars.iv.next86.prol, %scalar.ph125.prol ]
  %i.dq = sub nsw i64 %indvars.iv85.ph, %wide.trip.count88
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.loopexit, label %scalar.ph125

scalar.ph125:                                     ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %scalar.ph125 ], [ %indvars.iv85.unr, %scalar.ph125.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85 ; 2 uses
  store i8 %i.co, ptr %i.ds, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68, align 1, !tbaa !15
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85
  store i32 %i.cy, ptr %i.dt, align 4, !tbaa !15
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86 ; 2 uses
  store i8 %i.co, ptr %i.du, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.1, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86
  store i32 %i.cy, ptr %i.dv, align 4, !tbaa !15
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.1 ; 2 uses
  store i8 %i.co, ptr %i.dw, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.2 = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.2, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.1
  store i32 %i.cy, ptr %i.dx, align 4, !tbaa !15
  %indvars.iv.next86.2 = add nuw nsw i64 %indvars.iv85, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.2 ; 2 uses
  store i8 %i.co, ptr %i.dy, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.3 = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.3, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.2
  store i32 %i.cy, ptr %i.dz, align 4, !tbaa !15
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %scalar.ph125, !llvm.loop !134

.loopexit:                                        ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125, %middle.block139, %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.cw, %bb.d ], [ %i.cw, %middle.block139 ], [ %i.cw, %scalar.ph125 ], [ %i.cw, %scalar.ph125.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.ck, align 4, !tbaa !22
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count103
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
  br i1 %i.m, label %.preheader86, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.e
  %.03 = phi ptr [ %i.cw, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.n = phi i32 [ %i.cs, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !35   ; 6 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !34   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.not.i = icmp ult ptr %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph5
  %i.r = lshr i32 %i.n, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !35
  %i.v = and i32 %i.n, 7
  br label %BIT_reloadDStream.exit

bb.c:                                             ; preds = %.lr.ph5
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
  %i.al = icmp ule ptr %.03, %i.g
  %i.am = select i1 %.025.i, i1 %i.al, i1 false
  br i1 %i.am, label %bb.e, label %.preheader86

.preheader86:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.03, %BIT_reloadDStream.exit ], [ %i.cw, %bb.e ], [ %.03, %bb.c ] ; 2 uses
  %.val9.i119 = phi i32 [ %.pre, %bb.a ], [ %.val9.i, %BIT_reloadDStream.exit ], [ %i.cs, %bb.e ], [ %i.n, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 -4 ; 3 uses
  %i.ao = icmp ugt i32 %.val9.i119, 64
  br i1 %i.ao, label %.preheader85, label %.lr.ph13

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i62 = load i64, ptr %1, align 8, !tbaa !36
  %i.ap = and i32 %.val9.i, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %.val.i62, %i.aq
  %i.as = lshr i64 %i.ar, %i.l                    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  store i32 %i.au, ptr %.03, align 1
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !37
  %i.az = add i32 %i.ay, %i.ax                    ; 2 uses
  store i32 %i.az, ptr %i.f, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !40
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.03, i64 %i.bc ; 2 uses
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
  br i1 %i.cx, label %.preheader86, label %.lr.ph5, !llvm.loop !141

.lr.ph13:                                         ; preds = %.preheader86, %bb.i
  %.312 = phi ptr [ %i.em, %bb.i ], [ %.0.lcssa, %.preheader86 ] ; 5 uses
  %i.cy = phi i32 [ %i.ei, %bb.i ], [ %.val9.i119, %.preheader86 ] ; 5 uses
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !35  ; 6 uses
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !34  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i69 = icmp ult ptr %i.cz, %i.db
  br i1 %.not.i69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.dc = lshr i32 %i.cy, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 %i.de ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !35
  %i.dg = and i32 %i.cy, 7
  br label %BIT_reloadDStream.exit77

bb.g:                                             ; preds = %.lr.ph13
  %i.dh = icmp eq ptr %i.cz, %i.da
  br i1 %i.dh, label %.preheader85, label %bb.h

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
