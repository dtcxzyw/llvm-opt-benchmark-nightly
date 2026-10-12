Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ahd_demosaic?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6LibRaw42ahd_interpolate_combine_homogeneous_pixelsEiiPA512_A512_A3_tPA512_A2_c:bb.a
  %gep71.us.2.1118 = getelementptr i8, ptr %i.ci, i64 4
  %i.cj = load i8, ptr %gep71.us.2.1118, align 1, !tbaa !85
  %i.ck = sext i8 %i.cj to i32
  %i.cl = add nsw i32 %i.ch, %i.ck
  %gep71.us.1106.1 = getelementptr [2 x i8], ptr %gep74.us.1.1, i64 %indvars.iv96
  %i.cm = load i8, ptr %gep71.us.1106.1, align 1, !tbaa !85
  %i.cn = sext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cl, %i.cn
  %gep71.us.1.1.1 = getelementptr [2 x i8], ptr %gep74.us.1.1, i64 %indvars.iv.next99
  %i.cp = load i8, ptr %gep71.us.1.1.1, align 1, !tbaa !85
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.co, %i.cq
  %i.cs = getelementptr [2 x i8], ptr %gep74.us.1.1, i64 %indvars.iv96
  %gep71.us.2.1.1 = getelementptr i8, ptr %i.cs, i64 4
  %i.ct = load i8, ptr %gep71.us.2.1.1, align 1, !tbaa !85
  %i.cu = sext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cr, %i.cu
  %gep71.us.2108.1 = getelementptr [2 x i8], ptr %gep74.us.2.1, i64 %indvars.iv96
  %i.cw = load i8, ptr %gep71.us.2108.1, align 1, !tbaa !85
  %i.cx = sext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cv, %i.cx
  %gep71.us.1.2.1 = getelementptr [2 x i8], ptr %gep74.us.2.1, i64 %indvars.iv.next99
  %i.cz = load i8, ptr %gep71.us.1.2.1, align 1, !tbaa !85
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.cy, %i.da
  %i.dc = getelementptr [2 x i8], ptr %gep74.us.2.1, i64 %indvars.iv96
  %gep71.us.2.2.1 = getelementptr i8, ptr %i.dc, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread165
  %.sink176.in = phi ptr [ %gep71.us.2.2.1, %bb.b ], [ %gep71.us.2108.1171, %.thread165 ]
  %.sink = phi i32 [ %i.db, %bb.b ], [ %i.bb, %.thread165 ]
  %.lcssa.2153163173 = phi i32 [ %i.cc, %bb.b ], [ %i.aw, %.thread165 ] ; 2 uses
  %indvars.iv.next104139145152164172 = phi i64 [ %indvars.iv.next104, %bb.b ], [ %indvars.iv.next104136, %.thread165 ]
  %.sink176 = load i8, ptr %.sink176.in, align 1, !tbaa !85
  %i.dd = sext i8 %.sink176 to i32
  %i.de = add nsw i32 %.sink, %i.dd               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.082.us, i64 8 ; 3 uses
  %.not.us = icmp eq i32 %.lcssa.2153163173, %i.de
  br i1 %.not.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dg = icmp sgt i32 %i.de, %.lcssa.2153163173
  %.sroa.speculated = select i1 %i.dg, ptr %i.an, ptr %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.df, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.speculated, i64 6, i1 false)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader.us, %bb.d
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next125, %i.s
  br i1 %i.dh, label %.preheader67.us, label %._crit_edge.us, !llvm.loop !122

.preheader.us:                                    ; preds = %bb.c
  %i.di = load i16, ptr %i.am, align 2, !tbaa !77
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.an, align 2, !tbaa !77
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  %i.dn = lshr i32 %i.dm, 1
  %i.do = trunc nuw i32 %i.dn to i16
  store i16 %i.do, ptr %i.df, align 2, !tbaa !77
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !77
  %i.dr = zext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !77
  %i.du = zext i16 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.du, %i.dr
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.082.us, i64 10
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 10
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !77
  %i.eb = zext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 10
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !77
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add nuw nsw i32 %i.ee, %i.eb
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %.082.us, i64 12
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !77
  br label %.loopexit.us

._crit_edge.us:                                   ; preds = %.loopexit.us
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ej = icmp slt i64 %indvars.iv.next128, %i.v
  br i1 %i.ej, label %.lr.ph85.split.us, label %._crit_edge86, !llvm.loop !123

._crit_edge86:                                    ; preds = %._crit_edge.us, %.lr.ph85, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15ahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6LibRaw6cielabEPtPs(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef null, ptr noundef null)
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 5)
  %i.a = tail call noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i64 noundef 6815744) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !81   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 7
  br i1 %i.d, label %.lr.ph46, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  tail call void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.a, i32 noundef 1)
  br label %bb.m

.lr.ph46:                                         ; preds = %bb.a
  %i.e = zext i16 %i.c to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge
  %i.k = icmp eq i32 %.258, 0
  tail call void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.a, i32 noundef 1)
  br i1 %i.k, label %bb.m, label %bb.l

bb.b:                                             ; preds = %.lr.ph46, %.critedge
  %indvars.iv48 = phi i64 [ 2, %.lr.ph46 ], [ %indvars.iv.next49, %.critedge ] ; 7 uses
  %i.l = phi i32 [ %i.e, %.lr.ph46 ], [ %i.ae, %.critedge ]
  %.03244 = phi i32 [ 0, %.lr.ph46 ], [ %.258, %.critedge ] ; 4 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !125  ; 2 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.o = add nsw i32 %i.l, -7
  %i.p = trunc i64 %indvars.iv48 to i32
  %i.q = add i32 %i.p, -2
  %i.r = tail call noundef i32 %i.m(ptr noundef %i.n, i32 noundef 2048, i32 noundef %i.q, i32 noundef %i.o)
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !127  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3145728 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 6291456 ; 2 uses
  %.not36 = icmp eq i32 %.03244, 0
  br i1 %.not36, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1572864
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4718592
  %i.x = trunc i64 %indvars.iv48 to i32
  %i.y = add i32 %i.x, 512
  %i.z = trunc nuw nsw i64 %indvars.iv48 to i32   ; 4 uses
  %i.aa = load i16, ptr %i.h, align 2, !tbaa !82  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 7
  br i1 %i.ab, label %.lr.ph60, label %.critedge

.lr.ph60:                                         ; preds = %.lr.ph
  %i.ac = zext i16 %i.aa to i32
  br label %bb.d

.critedge:                                        ; preds = %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit, %.lr.ph, %bb.c, %select.unfold
  %.258 = phi i32 [ 1, %bb.c ], [ %.03244, %select.unfold ], [ %.03244, %.lr.ph ], [ %.03244, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 506 ; 2 uses
  %i.ad = load i16, ptr %i.b, align 4, !tbaa !81
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nsw i32 %i.ae, -5
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next49, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !124

bb.d:                                             ; preds = %.lr.ph60, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit
  %i.ai = phi i32 [ %i.ac, %.lr.ph60 ], [ %i.eu, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ]
  %indvars.iv59 = phi i64 [ 2, %.lr.ph60 ], [ %indvars.iv.next, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ] ; 4 uses
  %i.aj = load i16, ptr %i.b, align 4, !tbaa !81
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -2                   ; 2 uses
  %i.am = add nsw i32 %i.ai, -2                   ; 2 uses
  %i.an = sext i32 %i.al to i64
  %i.ao = icmp slt i64 %indvars.iv48, %i.an
  %i.ap = trunc i64 %indvars.iv59 to i32          ; 2 uses
  br i1 %i.ao, label %.lr.ph127.i, label %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit

.lr.ph127.i:                                      ; preds = %bb.d
  %i.aq = add i32 %i.ap, 512
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.am)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.al)
  %i.as = load i32, ptr %i.j, align 8, !tbaa !83  ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8
  %i.au = sext i32 %i.ar to i64
  %i.av = sext i32 %..i to i64
  %i.aw = trunc nuw nsw i64 %indvars.iv59 to i32  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %indvars.iv48, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv130.i to i32
  %i.ay = shl i32 %i.ax, 1
  %i.az = and i32 %i.ay, 14                       ; 2 uses
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = lshr i32 %i.as, %i.ba
  %i.bc = and i32 %i.bb, 1                        ; 2 uses
  %i.bd = or disjoint i32 %i.bc, %i.aw            ; 2 uses
  %i.be = icmp sgt i32 %i.am, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bf = or disjoint i32 %i.bc, %i.az
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = lshr i32 %i.as, %i.bg
  %i.bi = and i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64              ; 5 uses
  %i.bk = sub nuw nsw i64 %indvars.iv130.i, %indvars.iv48
  %i.bl = getelementptr inbounds nuw [3072 x i8], ptr %i.s, i64 %i.bk
  %i.bm = zext nneg i32 %i.bd to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.bn = load i16, ptr %i.h, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i64
  %i.bp = mul nuw nsw i64 %indvars.iv130.i, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i ; 11 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !77 ; 3 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bj ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !77
  %i.bx = zext i16 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77 ; 3 uses
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.by, %i.cb
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.bj
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !77
  %i.ch = zext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.bj
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !77
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cl, %i.ch
  %i.cn = sub nsw i32 %i.cd, %i.cm
  %i.co = ashr i32 %i.cn, 2
  %.137139.i = tail call i16 @llvm.umax.i16(i16 %i.bt, i16 %i.ca)
  %.137.i = zext i16 %.137139.i to i32
  %.138140.i = tail call i16 @llvm.umin.i16(i16 %i.bt, i16 %i.ca)
  %.138.i = zext i16 %.138140.i to i32
  %.112.i = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %.137.i)
  %spec.select118.i = tail call i32 @llvm.smax.i32(i32 %.112.i, i32 %.138.i)
  %i.cp = trunc nuw i32 %spec.select118.i to i16
  %i.cq = sub nuw nsw i64 %indvars.iv.i, %indvars.iv59
  %i.cr = getelementptr inbounds nuw [6 x i8], ptr %i.bl, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i16 %i.cp, ptr %i.cs, align 2, !tbaa !77
  %i.ct = load i16, ptr %i.h, align 2, !tbaa !82  ; 2 uses
  %i.cu = zext i16 %i.ct to i32                   ; 3 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !77 ; 2 uses
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = load i16, ptr %i.bv, align 2, !tbaa !77
  %i.dc = zext i16 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %i.de = zext i16 %i.ct to i64                   ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !77 ; 2 uses
  %i.di = zext i16 %i.dh to i32                   ; 4 uses
  %i.dj = add nuw nsw i32 %i.dd, %i.di
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = mul nsw i32 %i.cu, -2
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.bj
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !77
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.cu, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.bj
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !77
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, %i.dq
  %i.dy = sub nsw i32 %i.dk, %i.dx
  %i.dz = ashr i32 %i.dy, 2                       ; 4 uses
  %i.ea = icmp ult i16 %i.cz, %i.dh
  br i1 %i.ea, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.114.i = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 %i.di)
  %i.eb = icmp slt i32 %i.dz, %i.da
  br i1 %i.eb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ec = sub nsw i64 0, %i.de
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !77
  %i.eg = zext i16 %i.ef to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.eh = icmp slt i32 %i.dz, %i.di
  br i1 %i.eh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ei = sub nsw i64 0, %i.de
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !77
  %i.em = zext i16 %i.el to i32
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.em)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.eo = phi i32 [ %i.en, %bb.j ], [ %i.eg, %bb.h ], [ %.114.i, %bb.g ], [ %i.di, %bb.i ]
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr i8, ptr %i.cr, i64 1572866
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.er, label %bb.f, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.k, %bb.e
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next131.i, %i.av
  br i1 %i.es, label %bb.e, label %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit, !llvm.loop !1

_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit: ; preds = %._crit_edge.i, %bb.d
  %.pre-phi = phi i32 [ %i.ap, %bb.d ], [ %i.aw, %._crit_edge.i ] ; 4 uses
  tail call void @_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s(ptr noundef nonnull readonly align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef %i.s, ptr noundef nonnull %i.t)
  tail call void @_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s(ptr noundef nonnull readonly align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  tail call void @_ZN6LibRaw37ahd_interpolate_build_homogeneity_mapEiiPA512_A512_A3_sPA512_A2_c(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u)
  tail call void @_ZN6LibRaw42ahd_interpolate_combine_homogeneous_pixelsEiiPA512_A512_A3_tPA512_A2_c(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef %i.s, ptr noundef nonnull %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv59, 506 ; 2 uses
  %i.et = load i16, ptr %i.h, align 2, !tbaa !82
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -5
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %i.ex, label %bb.d, label %.critedge

bb.l:                                             ; preds = %._crit_edge
  %i.ey = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.ey, align 16, !tbaa !129
  tail call void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.m:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i16> @llvm.masked.load.v4i16.p0(ptr captures(none), <4 x i1>, <4 x i16>) #10
end_hunk_0
