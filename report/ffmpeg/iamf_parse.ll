Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamf_parse?download=true
inline.NumInlined: 88
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_iamf_free_audio_element

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @av_iamf_param_definition_alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare ptr @av_iamf_audio_element_add_layer(ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @av_channel_layout_subset(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @update_extradata(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 4                 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  %.sroa.84.1.idx.sroa.gep252 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  switch i32 %i.c, label %.thread229 [
    i32 86076, label %bb.b
    i32 86018, label %bb.c
    i32 86028, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = load i32, ptr %i.d, align 4, !tbaa !165
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %i.f, ptr %i.i, align 1, !tbaa !9
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !9
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.l)
  store i16 %i.m, ptr %i.k, align 2, !tbaa !9
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %i.q, ptr %i.o, align 4, !tbaa !9
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  store i16 %i.u, ptr %i.s, align 2, !tbaa !9
  br label %.thread229

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.w, i32 6)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 8 uses
  %i.aa = shl nuw nsw i32 %spec.select, 3         ; 2 uses
  %.not234 = icmp eq ptr %i.z, null               ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 8
  %i.ac = select i1 %.not234, i32 8, i32 %i.ab    ; 7 uses
  br i1 %.not234, label %.thread, label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.c
  %i.ad = load i32, ptr %i.z, align 1, !tbaa !9   ; 2 uses
  %i.ae = lshr i32 %i.ad, 3
  %i.af = and i32 %i.ae, 31                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 31
  br i1 %i.ag, label %put_bits.exit65, label %put_bits.exit69

put_bits.exit65:                                  ; preds = %put_bits.exit
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ai = lshr i32 %i.ah, 21
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 11)
  %i.ak = or i32 %i.ai, 1984
  br label %put_bits.exit69

put_bits.exit69:                                  ; preds = %put_bits.exit65, %put_bits.exit
  %.sroa.14.0 = phi i32 [ %i.aj, %put_bits.exit65 ], [ 5, %put_bits.exit ] ; 3 uses
  %.sroa.41.0 = phi i32 [ 17, %put_bits.exit65 ], [ 23, %put_bits.exit ] ; 4 uses
  %.sroa.0.0 = phi i32 [ %i.ak, %put_bits.exit65 ], [ %i.af, %put_bits.exit ]
  %i.al = lshr i32 %.sroa.14.0, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !9
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = and i32 %.sroa.14.0, 7
  %i.ar = shl i32 %i.ap, %i.aq
  %i.as = lshr i32 %i.ar, 28                      ; 2 uses
  %i.at = add nuw nsw i32 %.sroa.14.0, 4
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.at) ; 3 uses
  %i.av = shl nuw nsw i32 %.sroa.0.0, 4
  %i.aw = or disjoint i32 %i.as, %i.av            ; 2 uses
  %i.ax = icmp eq i32 %i.as, 15
  br i1 %i.ax, label %bb.d, label %put_bits.exit73

bb.d:                                             ; preds = %put_bits.exit69
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !9
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %i.au, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 8                       ; 2 uses
  %i.be = add nuw nsw i32 %i.au, 24
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.be)
  %i.bg = shl i32 %i.aw, %.sroa.41.0
  %i.bh = sub nuw nsw i32 24, %.sroa.41.0
  %i.bi = lshr i32 %i.bd, %i.bh
  %i.bj = or i32 %i.bi, %i.bg
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !9
  %i.bl = or disjoint i32 %.sroa.41.0, 8
  br label %put_bits.exit73

put_bits.exit73:                                  ; preds = %bb.d, %put_bits.exit69
  %.sroa.14.1 = phi i32 [ %i.au, %put_bits.exit69 ], [ %i.bf, %bb.d ]
  %.sroa.84.1.idx.sroa.phi = phi ptr [ %i.a, %put_bits.exit69 ], [ %.sroa.84.1.idx.sroa.gep252, %bb.d ] ; 2 uses
  %.sroa.84.1.idx = phi i64 [ 0, %put_bits.exit69 ], [ 4, %bb.d ] ; 3 uses
  %.sroa.41.1 = phi i32 [ %.sroa.41.0, %put_bits.exit69 ], [ %i.bl, %bb.d ] ; 4 uses
  %.sroa.0.1 = phi i32 [ %i.aw, %put_bits.exit69 ], [ %i.bd, %bb.d ]
  %i.bm = add nuw nsw i32 %.sroa.14.1, 4
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.bm) ; 5 uses
  %i.bo = add nsw i32 %.sroa.41.1, -4             ; 5 uses
  %i.bp = sub nsw i32 %i.aa, %i.bn                ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.thread, label %bb.e

bb.e:                                             ; preds = %put_bits.exit73
  %i.br = shl nuw nsw i32 %.sroa.0.1, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !165
  %i.bu = or i32 %i.bt, %i.br                     ; 2 uses
  %i.bv = ptrtoint ptr %i.x to i64
  %i.bw = ptrtoint ptr %.sroa.84.1.idx.sroa.phi to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %.tr.i = trunc i64 %i.bx to i32
  %i.by = shl i32 %.tr.i, 3
  %i.bz = add nuw nsw i32 %.sroa.41.1, -36
  %i.ca = add i32 %i.bz, %i.by
  %spec.select232 = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.ca) ; 3 uses
  %i.cb = icmp sgt i32 %spec.select232, 31
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.cc = lshr i32 %i.bn, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !9
  %i.cg = call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = and i32 %i.bn, 7
  %i.ci = shl i32 %i.cg, %i.ch
  %i.cj = and i32 %i.ci, -65536
  %i.ck = add nuw nsw i32 %i.bn, 16
  %i.cl = call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ck) ; 3 uses
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 1, !tbaa !9
  %i.cq = call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cr = and i32 %i.cl, 7
  %i.cs = shl i32 %i.cq, %i.cr
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = add nuw nsw i32 %i.cl, 16
  %i.cv = call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.cu)
  %i.cw = or disjoint i32 %i.ct, %i.cj            ; 2 uses
  %i.cx = icmp ugt i64 %i.bx, 3
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.cy = sub nuw nsw i32 36, %.sroa.41.1
  %i.cz = zext nneg i32 %i.bo to i64
  %i.da = zext i32 %i.bu to i64
  %i.db = shl nuw nsw i64 %i.da, %i.cz
  %i.dc = trunc i64 %i.db to i32
  %i.dd = lshr i32 %i.cw, %i.cy
  %i.de = or i32 %i.dd, %i.dc
  %i.df = call i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %.sroa.84.1.idx.sroa.phi, align 1, !tbaa !9
  %.sroa.84.2239.add = add nuw nsw i64 %.sroa.84.1.idx, 4
  br label %put_bits32.exit

bb.g:                                             ; preds = %.lr.ph
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.23) #10
  br label %put_bits32.exit

put_bits32.exit:                                  ; preds = %bb.f, %bb.g
  %.sroa.84.13.idx = phi i64 [ %.sroa.84.2239.add, %bb.f ], [ %.sroa.84.1.idx, %bb.g ]
  %i.dg = add nsw i32 %spec.select232, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %put_bits32.exit, %bb.e
  %.sroa.14.2.lcssa = phi i32 [ %i.bn, %bb.e ], [ %i.cv, %put_bits32.exit ] ; 3 uses
  %.sroa.84.2.lcssa.idx = phi i64 [ %.sroa.84.1.idx, %bb.e ], [ %.sroa.84.13.idx, %put_bits32.exit ] ; 5 uses
  %.sroa.0.2.lcssa = phi i32 [ %i.bu, %bb.e ], [ %i.cw, %put_bits32.exit ] ; 2 uses
  %.044.lcssa = phi i32 [ %spec.select232, %bb.e ], [ %i.dg, %put_bits32.exit ] ; 10 uses
  %.sroa.84.2.lcssa.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.84.2.lcssa.idx
  %.not.i = icmp eq i32 %.044.lcssa, 0
  br i1 %.not.i, label %get_bits_long.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.dh = icmp slt i32 %.044.lcssa, 26
  %i.di = lshr i32 %.sroa.14.2.lcssa, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !9
  %i.dm = call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = and i32 %.sroa.14.2.lcssa, 7
  %i.do = shl i32 %i.dm, %i.dn                    ; 2 uses
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = sub nsw i32 32, %.044.lcssa
  %i.dq = lshr i32 %i.do, %i.dp
  br label %get_bits_long.exit

bb.j:                                             ; preds = %bb.h
  %i.dr = lshr i32 %i.do, 16
  %i.ds = add nuw nsw i32 %.sroa.14.2.lcssa, 16
  %i.dt = call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ds) ; 2 uses
  %i.du = add nsw i32 %.044.lcssa, -16
  %i.dv = shl nuw nsw i32 %i.dr, %i.du
  %i.dw = lshr i32 %i.dt, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !9
  %i.ea = call i32 @llvm.bswap.i32(i32 %i.dz)
  %i.eb = and i32 %i.dt, 7
  %i.ec = shl i32 %i.ea, %i.eb
  %i.ed = sub nuw nsw i32 48, %.044.lcssa
  %i.ee = lshr i32 %i.ec, %i.ed
  %i.ef = or i32 %i.ee, %i.dv
  br label %get_bits_long.exit

get_bits_long.exit:                               ; preds = %._crit_edge, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.dq, %bb.i ], [ %i.ef, %bb.j ], [ 0, %._crit_edge ] ; 3 uses
  %i.eg = icmp slt i32 %.044.lcssa, %i.bo
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %get_bits_long.exit
  %i.eh = shl i32 %.sroa.0.2.lcssa, %.044.lcssa
  %i.ei = or i32 %.0.i, %i.eh
  br label %put_bits.exit82

bb.l:                                             ; preds = %get_bits_long.exit
  %notsub = add nsw i64 %.sroa.84.2.lcssa.idx, -7
  %i.ej = icmp ult i64 %notsub, -4
  br i1 %i.ej, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = shl i32 %.sroa.0.2.lcssa, %i.bo
  %i.el = sub nsw i32 %.044.lcssa, %i.bo
  %i.em = lshr i32 %.0.i, %i.el
  %i.en = or i32 %i.em, %i.ek
  %i.eo = call i32 @llvm.bswap.i32(i32 %i.en)
  store i32 %i.eo, ptr %.sroa.84.2.lcssa.ptr, align 1, !tbaa !9
  %.sroa.84.2.lcssa.add = add nuw nsw i64 %.sroa.84.2.lcssa.idx, 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.23) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.84.14.idx = phi i64 [ %.sroa.84.2.lcssa.add, %bb.m ], [ %.sroa.84.2.lcssa.idx, %bb.n ]
  %reass.sub.i79 = add nuw nsw i32 %.sroa.41.1, 28
  br label %put_bits.exit82

put_bits.exit82:                                  ; preds = %bb.k, %bb.o
  %.sroa.84.15.idx = phi i64 [ %.sroa.84.2.lcssa.idx, %bb.k ], [ %.sroa.84.14.idx, %bb.o ] ; 4 uses
  %.026.i.i80 = phi i32 [ %i.ei, %bb.k ], [ %.0.i, %bb.o ]
  %.pn245 = phi i32 [ %i.bo, %bb.k ], [ %reass.sub.i79, %bb.o ] ; 2 uses
  %.0.i.i81 = sub i32 %.pn245, %.044.lcssa        ; 2 uses
  %i.ep = icmp slt i32 %.0.i.i81, 32
  br i1 %i.ep, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %put_bits.exit82
  %i.eq = shl i32 %.026.i.i80, %.0.i.i81
  %i.er = call i64 @llvm.umax.i64(i64 %.sroa.84.15.idx, i64 6)
  %1 = add nsw i32 %.044.lcssa, 31
  %2 = sub i32 %1, %.pn245
  %3 = lshr i32 %2, 3
  %4 = trunc nuw nsw i64 %.sroa.84.15.idx to i32
  %5 = add nuw nsw i32 %3, %4
  %6 = add nuw nsw i32 %5, 1
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i
  %.sroa.84.16.idx = phi i64 [ %.sroa.84.15.idx, %.lr.ph.i ], [ %.sroa.84.16.add, %bb.r ] ; 3 uses
  %.sroa.0.3 = phi i32 [ %i.eq, %.lr.ph.i ], [ %i.eu, %bb.r ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.84.16.idx, %i.er
  br i1 %exitcond.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 160) #10
  call void @abort() #12
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.84.16.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.84.16.idx
  %i.es = lshr i32 %.sroa.0.3, 24
  %i.et = trunc nuw i32 %i.es to i8
  %.sroa.84.16.add = add nuw nsw i64 %.sroa.84.16.idx, 1 ; 2 uses
  store i8 %i.et, ptr %.sroa.84.16.ptr, align 1, !tbaa !9
  %i.eu = shl i32 %.sroa.0.3, 8
  %exitcond252.not = icmp eq i64 %.sroa.84.16.add, %wide.trip.count
  br i1 %exitcond252.not, label %.loopexit, label %bb.p, !llvm.loop !164

.thread:                                          ; preds = %bb.c, %put_bits.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread229

.loopexit:                                        ; preds = %bb.r, %put_bits.exit82
  %.sroa.84.15.idx.pn = phi i64 [ %.sroa.84.15.idx, %put_bits.exit82 ], [ %wide.trip.count, %bb.r ]
  %i.ev = load ptr, ptr %i.y, align 8, !tbaa !49
  %sext235 = shl i64 %.sroa.84.15.idx.pn, 32
  %i.ew = ashr exact i64 %sext235, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 4 %i.a, i64 %i.ew, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread229

bb.s:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49 ; 8 uses
  %.not = icmp eq ptr %i.ey, null
  br i1 %.not, label %.thread229, label %put_bits.exit93

put_bits.exit93:                                  ; preds = %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !50
  %spec.select53 = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 13)
  %i.fb = shl nuw nsw i32 %spec.select53, 3       ; 3 uses
  %i.fc = add nuw nsw i32 %i.fb, 8                ; 6 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 16) ; 2 uses
  %i.fe = add nuw nsw i32 %i.fd, 16
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fe) ; 2 uses
  %i.fg = add nuw nsw i32 %i.ff, 16
  %i.fh = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fg) ; 3 uses
  %i.fi = add nuw nsw i32 %i.fh, 16
  %i.fj = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fi) ; 3 uses
  %i.fk = add nuw nsw i32 %i.fj, 16
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fk) ; 3 uses
  %i.fm = add nuw nsw i32 %i.fl, 20
  %i.fn = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fm)
  %i.fo = add nuw nsw i32 %i.fn, 3                ; 4 uses
  %i.fp = icmp samesign ugt i32 %i.fo, %i.fb
  br i1 %i.fp, label %.thread229, label %.loopexit236

.loopexit236:                                     ; preds = %put_bits.exit93
  %i.fq = lshr i32 %i.fl, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 1, !tbaa !9
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = and i32 %i.fl, 7
  %i.fw = shl i32 %i.fu, %i.fv                    ; 2 uses
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = lshr i32 %i.fj, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !9
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = and i32 %i.fj, 7
  %i.ge = shl i32 %i.gc, %i.gd
  %i.gf = and i32 %i.ge, -65536
  %i.gg = or disjoint i32 %i.fx, %i.gf
  %i.gh = tail call i32 @llvm.bswap.i32(i32 %i.gg)
  %i.gi = lshr exact i32 %i.ff, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 1, !tbaa !9
  %i.gm = and i32 %i.gl, 65535
  %i.gn = lshr i32 %i.fh, 3
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 1, !tbaa !9
  %i.gr = tail call i32 @llvm.bswap.i32(i32 %i.gq)
  %i.gs = and i32 %i.fh, 7
  %i.gt = shl i32 %i.gr, %i.gs
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = shl i32 %i.gu, 16
  %i.gw = or disjoint i32 %i.gm, %i.gv
  %i.gx = lshr exact i32 %i.fd, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 1, !tbaa !9
  %i.hb = shl i32 %i.ha, 16
  %i.hc = load i32, ptr %i.ey, align 1, !tbaa !9
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !165
  %i.hh = add nsw i32 %i.hg, -1
  %i.hi = lshr i32 %i.fw, 9
  %i.hj = and i32 %i.hi, 8388600
  %i.hk = or i32 %i.hh, %i.hj
  %i.hl = icmp ne i32 %i.fb, %i.fo                ; 2 uses
  %i.hm = zext i1 %i.hl to i32
  %i.hn = lshr i32 %i.fo, 3
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 1, !tbaa !9
  %i.hr = tail call i32 @llvm.bswap.i32(i32 %i.hq)
  %i.hs = and i32 %i.fo, 7
  %i.ht = shl i32 %i.hr, %i.hs
  %i.hu = tail call i32 @llvm.fshl.i32(i32 %i.hk, i32 %i.ht, i32 %i.hm)
  %.0.i.i102 = select i1 %i.hl, i32 24, i32 25
  %i.hv = shl i32 %i.hu, %.0.i.i102
  %i.hw = lshr exact i32 %i.hv, 24
  %i.hx = trunc nuw i32 %i.hw to i8
  %i.hy = load ptr, ptr %i.ex, align 8, !tbaa !49 ; 4 uses
  store i32 %i.he, ptr %i.hy, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %i.gw, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 %i.gh, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i8 %i.hx, ptr %.sroa.7.0..sroa_idx, align 1
  br label %.thread229

.thread229:                                       ; preds = %put_bits.exit93, %bb.s, %bb.a, %bb.b, %.loopexit, %.loopexit236, %.thread
  %.2 = phi i32 [ 0, %bb.a ], [ -1094995529, %.thread ], [ 0, %.loopexit236 ], [ 0, %.loopexit ], [ 0, %bb.b ], [ -1094995529, %bb.s ], [ -1094995529, %put_bits.exit93 ]
  ret i32 %.2
}

declare i32 @av_channel_layout_custom_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_channel_from_index(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_retype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_iamf_mix_presentation_alloc() local_unnamed_addr #3

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_iamf_mix_presentation_add_submix(ptr noundef) local_unnamed_addr #3

declare ptr @av_iamf_submix_add_element(ptr noundef) local_unnamed_addr #3

declare ptr @av_iamf_submix_add_layout(ptr noundef) local_unnamed_addr #3

declare hidden void @ff_iamf_free_mix_presentation(ptr noundef) local_unnamed_addr #3

declare i32 @avio_get_str(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }

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
!9 = !{!5, !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 _ZTS15IAMFCodecConfig", !12, i64 0}
!14 = !{!"p2 _ZTS16IAMFAudioElement", !12, i64 0}
!15 = !{!"p2 _ZTS19IAMFMixPresentation", !12, i64 0}
!16 = !{!"p2 _ZTS19IAMFParamDefinition", !12, i64 0}
end_hunk_0
