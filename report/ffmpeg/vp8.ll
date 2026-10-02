Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp8?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 83
begin_hunk_0_@vp7_fade_frame:bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !86
  %.not = icmp ne i8 %i.b, 0
  %i.c = or i32 %2, %1
  %or.cond.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %or.cond.not, %.not
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !109  ; 3 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 3 uses
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.q, i32 noundef 24, ptr noundef nonnull @.str.4) #12
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !103  ; 7 uses
  %i.s = icmp eq ptr %i.o, %i.m
  br i1 %i.s, label %bb.f, label %copy_chroma.exit

bb.f:                                             ; preds = %bb.e
  %i.t = tail call fastcc ptr @vp8_find_free_buffer(ptr noundef nonnull %0) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = tail call i32 @ff_progress_frame_get_buffer(ptr noundef %i.v, ptr noundef nonnull %i.t, i32 noundef 1) #12 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i16, ptr %i.d, align 8, !tbaa !108
  %i.z = zext i16 %i.y to i64
  %i.aa = load i16, ptr %i.h, align 2, !tbaa !109
  %i.ab = zext i16 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, %i.z
  %i.ad = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 0, 2147483648) %i.ac, i32 noundef 0, ptr null, ptr noundef null) #12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = tail call i32 @ff_hwaccel_frame_priv_alloc(ptr noundef %i.af, ptr noundef nonnull %i.ag) #12 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %vp8_alloc_frame.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i32 [ %i.ah, %bb.h ], [ -12, %bb.g ]
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ae) #12
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.t) #12
  br label %.critedge

vp8_alloc_frame.exit:                             ; preds = %bb.h
  store ptr %i.t, ptr %i.l, align 8, !tbaa !90
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !103 ; 6 uses
  %i.ak = shl nuw nsw i32 %i.j, 3                 ; 2 uses
  %.not.i43 = icmp eq i16 %i.i, 0
  %i.al = shl nuw nsw i32 %i.f, 3
  %i.am = zext nneg i32 %i.al to i64              ; 4 uses
  br i1 %.not.i43, label %copy_chroma.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %vp8_alloc_frame.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 68 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.preheader.i
  %.01516.i = phi i32 [ 0, %.preheader.preheader.i ], [ %i.bm, %bb.j ] ; 4 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !117
  %i.at = mul nsw i32 %i.as, %.01516.i
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !117
  %i.ay = mul nsw i32 %i.ax, %.01516.i
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ba, i64 %i.am, i1 false)
  %i.bb = or disjoint i32 %.01516.i, 1            ; 2 uses
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.bd = load i32, ptr %i.ao, align 4, !tbaa !117
  %i.be = mul nsw i32 %i.bd, %i.bb
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !117
  %i.bj = mul nsw i32 %i.bi, %i.bb
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bl, i64 %i.am, i1 false)
  %i.bm = add nuw nsw i32 %.01516.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.bm, %i.ak
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.j, !llvm.loop !259

._crit_edge.i:                                    ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.i
  %.01516.1.i = phi i32 [ 0, %._crit_edge.i ], [ %i.cm, %bb.k ] ; 4 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !141
  %i.bs = load i32, ptr %i.bo, align 8, !tbaa !117
  %i.bt = mul nsw i32 %i.bs, %.01516.1.i
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !117
  %i.by = mul nsw i32 %i.bx, %.01516.1.i
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.ca, i64 %i.am, i1 false)
  %i.cb = or disjoint i32 %.01516.1.i, 1          ; 2 uses
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !141
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !117
  %i.ce = mul nsw i32 %i.cd, %i.cb
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %i.cf
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.ci = load i32, ptr %i.bq, align 8, !tbaa !117
  %i.cj = mul nsw i32 %i.ci, %i.cb
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cl, i64 %i.am, i1 false)
  %i.cm = add nuw nsw i32 %.01516.1.i, 2          ; 2 uses
  %exitcond.1.not.i.1 = icmp eq i32 %i.cm, %i.ak
  br i1 %exitcond.1.not.i.1, label %copy_chroma.exit, label %bb.k, !llvm.loop !259

copy_chroma.exit:                                 ; preds = %bb.k, %vp8_alloc_frame.exit, %bb.e
  %.136 = phi ptr [ %i.r, %bb.e ], [ %i.aj, %vp8_alloc_frame.exit ], [ %i.aj, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %.136, align 8, !tbaa !141 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.136, i64 64
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !117 ; 2 uses
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !141 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !117 ; 2 uses
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = icmp ne i16 %i.i, 0
  %i.cw = icmp ne i16 %i.e, 0
  %or.cond.i = and i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.critedge

.lr.ph.preheader.i:                               ; preds = %copy_chroma.exit
  %wide.trip.count30.i = zext nneg i32 %i.k to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 4 uses
  %i.cx = add nsw i64 %wide.trip.count30.i, -1    ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.cq
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy
  %scevgep = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i
  %i.da = mul nsw i64 %i.cx, %i.cu
  %i.db = getelementptr i8, ptr %i.cr, i64 %i.da
  %scevgep53 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %i.cn, %scevgep53
  %bound1 = icmp ult ptr %i.cr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dc = or i32 %i.ct, %i.cp
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = or i1 %found.conflict, %i.dd
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat56 = shufflevector <16 x i32> %broadcast.splatinsert55, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i45, %.lr.ph.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.i45 ] ; 3 uses
  %i.df = mul nsw i64 %indvars.iv27.i, %i.cu
  %i.dg = getelementptr inbounds i8, ptr %i.cr, i64 %i.df ; 3 uses
  %i.dh = mul nsw i64 %indvars.iv27.i, %i.cq
  %i.di = getelementptr inbounds i8, ptr %i.cn, i64 %i.dh ; 3 uses
  br i1 %i.de, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index
  %wide.load = load <16 x i8>, ptr %i.dj, align 1, !tbaa !135, !alias.scope !272
  %i.dk = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.dl = mul nsw <16 x i32> %broadcast.splat, %i.dk
  %i.dm = ashr <16 x i32> %i.dl, splat (i32 8)
  %i.dn = add nsw <16 x i32> %broadcast.splat56, %i.dk
  %i.do = add nsw <16 x i32> %i.dn, %i.dm
  %i.dp = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.do, <16 x i32> zeroinitializer)
  %i.dq = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.dp, <16 x i32> splat (i32 255))
  %i.dr = trunc nuw <16 x i32> %i.dq to <16 x i8>
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 %index
  store <16 x i8> %i.dr, ptr %i.ds, align 1, !tbaa !135, !alias.scope !274, !noalias !272
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dt = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.dt, label %._crit_edge.i45, label %vector.body, !llvm.loop !263

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !135
  %i.dw = zext i8 %i.dv to i32                    ; 2 uses
  %i.dx = mul nsw i32 %2, %i.dw
  %i.dy = ashr i32 %i.dx, 8
  %i.dz = add nsw i32 %1, %i.dw
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %.0.i20.i = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i20.i to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i
  store i8 %.0.i.i, ptr %i.ec, align 1, !tbaa !135
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !135
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = mul nsw i32 %2, %i.ef
  %i.eh = ashr i32 %i.eg, 8
  %i.ei = add nsw i32 %1, %i.ef
  %i.ej = add nsw i32 %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %.0.i20.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 255)
  %.0.i.i.1 = trunc nuw i32 %.0.i20.i.1 to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next.i
  store i8 %.0.i.i.1, ptr %i.el, align 1, !tbaa !135
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i44.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i44.1, label %._crit_edge.i45, label %scalar.ph, !llvm.loop !264

._crit_edge.i45:                                  ; preds = %vector.body, %scalar.ph
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !265

.critedge:                                        ; preds = %._crit_edge.i45, %copy_chroma.exit, %bb.i, %bb.f, %bb.a, %bb.d
  %.3 = phi i32 [ 0, %bb.a ], [ -1094995529, %bb.d ], [ %i.w, %bb.f ], [ %.0.i, %bb.i ], [ 0, %copy_chroma.exit ], [ 0, %._crit_edge.i45 ]
  ret i32 %.3
}

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @update_refs(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !135
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !153
  %i.k = shl i32 %i.b, %i.f                       ; 3 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !152
  %i.l = shl i32 %i.j, %i.f                       ; 3 uses
  %i.m = add nsw i32 %i.h, %i.f                   ; 5 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.b, label %vpx_rac_renorm.exit10

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.c, label %vpx_rac_renorm.exit10

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.t, ptr %i.o, align 8, !tbaa !141
  %i.u = load i16, ptr %i.p, align 1, !tbaa !135
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %i.x = shl i32 %i.w, %i.m
  %i.y = or i32 %i.x, %i.l
  %i.z = add nsw i32 %i.m, -16
  br label %vpx_rac_renorm.exit10

vpx_rac_renorm.exit10:                            ; preds = %bb.a, %bb.b, %bb.c
  %.018.i8 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  %.0.i9 = phi i32 [ %i.y, %bb.c ], [ %i.l, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  store i32 %.018.i8, ptr %i.g, align 4, !tbaa !144
  %i.aa = shl i32 %i.k, 7
  %i.ab = add i32 %i.aa, -128
  %i.ac = ashr i32 %i.ab, 8
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = shl i32 %i.ad, 16                       ; 2 uses
  %i.af = icmp uge i32 %.0.i9, %i.ae              ; 3 uses
  %i.ag = sub i32 %i.k, %i.ad
  %i.ah = select i1 %i.af, i32 %i.ae, i32 0
  %i.ai = select i1 %i.af, i32 %i.ag, i32 %i.ad   ; 2 uses
  %i.aj = sub i32 %.0.i9, %i.ah                   ; 2 uses
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !153
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !135
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = shl i32 %i.ai, %i.an                    ; 3 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !152
  %i.ap = shl i32 %i.aj, %i.an                    ; 3 uses
  %i.aq = add nsw i32 %.018.i8, %i.an             ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.d, label %vpx_rac_renorm.exit

bb.d:                                             ; preds = %vpx_rac_renorm.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !143 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !142
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %vpx_rac_renorm.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !141
  %i.ay = load i16, ptr %i.at, align 1, !tbaa !135
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl i32 %i.ba, %i.aq
  %i.bc = or i32 %i.bb, %i.ap
  %i.bd = add nsw i32 %i.aq, -16
  br label %vpx_rac_renorm.exit

vpx_rac_renorm.exit:                              ; preds = %vpx_rac_renorm.exit10, %bb.d, %bb.e
  %.018.i = phi i32 [ %i.bd, %bb.e ], [ %i.aq, %bb.d ], [ %i.aq, %vpx_rac_renorm.exit10 ]
  %.0.i = phi i32 [ %i.bc, %bb.e ], [ %i.ap, %bb.d ], [ %i.ap, %vpx_rac_renorm.exit10 ] ; 2 uses
  %i.be = zext i1 %i.af to i32
  store i32 %.018.i, ptr %i.g, align 4, !tbaa !144
  %i.bf = shl i32 %i.ao, 7
  %i.bg = add i32 %i.bf, -128
  %i.bh = ashr i32 %i.bg, 8
  %i.bi = add nsw i32 %i.bh, 1                    ; 3 uses
  %i.bj = shl i32 %i.bi, 16                       ; 2 uses
  %i.bk = icmp uge i32 %.0.i, %i.bj               ; 3 uses
  %i.bl = sub i32 %i.ao, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bj, i32 0
  %i.bn = select i1 %i.bk, i32 %i.bl, i32 %i.bi
  %i.bo = zext i1 %i.bk to i32
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !152
  %i.bp = sub i32 %.0.i, %i.bm
  store i32 %i.bp, ptr %i.i, align 8, !tbaa !153
  %i.bq = tail call fastcc i32 @ref_to_update(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef 2)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4752
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !92
  %i.bs = tail call fastcc i32 @ref_to_update(ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef 3)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4756
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !93
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @vp8_rac_get_sint(ptr nofree noundef captures(none) %0, i32 noundef range(i32 4, 8) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !152    ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !135
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !153
  %i.j = shl i32 %i.a, %i.e                       ; 3 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !152
  %i.k = shl i32 %i.i, %i.e                       ; 3 uses
  %i.l = add nsw i32 %i.g, %i.e                   ; 5 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.b, label %vpx_rac_renorm.exit10

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %vpx_rac_renorm.exit10

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store ptr %i.s, ptr %i.n, align 8, !tbaa !141
  %i.t = load i16, ptr %i.o, align 1, !tbaa !135
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = shl i32 %i.v, %i.l
end_hunk_0
begin_hunk_1_@llvm.umin.v16i32
!60 = !{!59, !41, i64 32}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!59, !52, i64 536}
!63 = !{!"AVHWAccel", !46, i64 0, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20}
!64 = !{!"FFHWAccel", !63, i64 0, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !38, i64 64, !38, i64 68, !38, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120}
!65 = !{!"AVPacket", !53, i64 0, !45, i64 8, !45, i64 16, !46, i64 24, !38, i64 32, !38, i64 36, !38, i64 40, !55, i64 48, !38, i64 56, !45, i64 64, !45, i64 72, !41, i64 80, !53, i64 88, !47, i64 96}
!66 = !{!65, !46, i64 24}
!67 = !{!65, !38, i64 32}
!68 = !{!"p1 _ZTS13VP8ThreadData", !41, i64 0}
!69 = !{!"p1 _ZTS14AVCodecContext", !41, i64 0}
!70 = !{!"p1 _ZTS8VP8Frame", !41, i64 0}
!71 = !{!"short", !37, i64 0}
!72 = !{!"VP8intmv", !38, i64 0, !38, i64 4}
!73 = !{!"VP8mvbounds", !72, i64 0, !72, i64 8}
!74 = !{!"", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 8}
!75 = !{!"", !37, i64 0, !37, i64 1, !37, i64 2}
!76 = !{!"p1 _ZTS13VP8Macroblock", !41, i64 0}
!77 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20}
!78 = !{!"", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 10}
!79 = !{!"VPXRangeCoder", !38, i64 0, !38, i64 4, !46, i64 8, !46, i64 16, !38, i64 24, !38, i64 28}
!80 = !{!"", !46, i64 0, !38, i64 8, !38, i64 12, !38, i64 16}
!81 = !{!"VideoDSPContext", !41, i64 0, !41, i64 8}
!82 = !{!"VP8DSPContext", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !37, i64 128, !37, i64 344}
!83 = !{!"H264PredContext", !37, i64 0, !37, i64 120, !37, i64 216, !37, i64 304, !37, i64 376, !37, i64 392, !37, i64 408, !37, i64 424, !37, i64 448}
!84 = !{!"VP8Context", !68, i64 0, !69, i64 8, !38, i64 16, !38, i64 20, !37, i64 24, !37, i64 56, !70, i64 88, !70, i64 96, !71, i64 104, !71, i64 106, !45, i64 112, !45, i64 120, !37, i64 128, !37, i64 129, !37, i64 130, !37, i64 131, !73, i64 132, !37, i64 148, !37, i64 152, !74, i64 164, !75, i64 176, !76, i64 184, !46, i64 192, !37, i64 200, !37, i64 204, !77, i64 252, !78, i64 276, !46, i64 296, !46, i64 304, !79, i64 312, !80, i64 344, !38, i64 368, !37, i64 372, !76, i64 4736, !38, i64 4744, !38, i64 4748, !38, i64 4752, !38, i64 4756, !38, i64 4760, !38, i64 4764, !37, i64 4768, !37, i64 5024, !81, i64 5056, !82, i64 5072, !83, i64 5632, !37, i64 6104, !37, i64 6320, !37, i64 6480, !37, i64 6481, !38, i64 6484, !38, i64 6488, !41, i64 6496, !41, i64 6504, !37, i64 6512, !37, i64 6520, !37, i64 6524, !37, i64 6528, !37, i64 6540}
!85 = !{!84, !38, i64 20}
!86 = !{!84, !37, i64 128}
!87 = !{!84, !38, i64 16}
!88 = !{!84, !69, i64 8}
!89 = !{!59, !38, i64 136}
!90 = !{!70, !70, i64 0}
!91 = !{!84, !38, i64 4748}
!92 = !{!84, !38, i64 4752}
!93 = !{!84, !38, i64 4756}
!94 = !{!59, !38, i64 704}
!95 = !{!84, !38, i64 4744}
!96 = !{!84, !37, i64 177}
!97 = !{!59, !38, i64 696}
!98 = !{!84, !37, i64 129}
!99 = !{!"p1 _ZTS7AVFrame", !41, i64 0}
!100 = !{!"p1 _ZTS16ProgressInternal", !41, i64 0}
!101 = !{!"ProgressFrame", !99, i64 0, !100, i64 8}
!102 = !{!"VP8Frame", !101, i64 0, !46, i64 16, !41, i64 24}
!103 = !{!102, !99, i64 0}
!104 = !{!84, !37, i64 6480}
!105 = !{!59, !38, i64 152}
!106 = !{!84, !37, i64 6481}
!107 = !{!59, !38, i64 156}
!108 = !{!84, !71, i64 104}
!109 = !{!84, !71, i64 106}
!110 = !{!102, !46, i64 16}
!111 = !{!"p2 omnipotent char", !57, i64 0}
!112 = !{!"p2 _ZTS11AVBufferRef", !57, i64 0}
!113 = !{!"p1 _ZTS12AVDictionary", !41, i64 0}
!114 = !{!"AVFrame", !37, i64 0, !37, i64 64, !111, i64 96, !38, i64 104, !38, i64 108, !38, i64 112, !38, i64 116, !38, i64 120, !47, i64 124, !45, i64 136, !45, i64 144, !47, i64 152, !38, i64 160, !41, i64 168, !38, i64 176, !38, i64 180, !37, i64 184, !112, i64 248, !38, i64 256, !58, i64 264, !38, i64 272, !38, i64 276, !38, i64 280, !38, i64 284, !38, i64 288, !38, i64 292, !38, i64 296, !45, i64 304, !113, i64 312, !38, i64 320, !53, i64 328, !53, i64 336, !45, i64 344, !45, i64 352, !45, i64 360, !45, i64 368, !41, i64 376, !50, i64 384, !45, i64 408, !38, i64 416}
!115 = !{!114, !38, i64 276}
!116 = !{!114, !38, i64 120}
!117 = !{!38, !38, i64 0}
!118 = !{!84, !45, i64 112}
!119 = !{!84, !45, i64 120}
!120 = !{!84, !46, i64 304}
!121 = !{!84, !38, i64 6488}
!122 = !{!84, !76, i64 184}
!123 = !{!84, !46, i64 192}
!124 = !{!84, !37, i64 164}
!125 = !{!84, !37, i64 166}
!126 = !{!59, !38, i64 664}
!127 = !{!84, !38, i64 4764}
!128 = !{!59, !38, i64 656}
!129 = !{!84, !38, i64 6484}
!130 = !{!84, !70, i64 88}
!131 = !{!84, !70, i64 96}
!132 = !{!84, !38, i64 136}
!133 = !{!84, !38, i64 144}
!134 = !{!84, !68, i64 0}
!135 = !{!37, !37, i64 0}
!136 = !{!59, !41, i64 680}
!137 = !{!84, !38, i64 4760}
!138 = !{i64 0, i64 3, !135, i64 3, i64 1, !135, i64 4, i64 1, !135, i64 5, i64 1, !135, i64 6, i64 1, !135, i64 7, i64 4, !135, i64 11, i64 3, !135, i64 14, i64 2112, !135, i64 2126, i64 38, !135, i64 2164, i64 16, !135}
!139 = !{!84, !41, i64 6496}
!140 = !{!84, !41, i64 6504}
!141 = !{!46, !46, i64 0}
!142 = !{!79, !46, i64 16}
!143 = !{!79, !46, i64 8}
!144 = !{!79, !38, i64 4}
!145 = !{!79, !38, i64 28}
!146 = !{!84, !76, i64 4736}
!147 = !{!"p1 _ZTS17VP8FilterStrength", !41, i64 0}
!148 = !{!"VP8ThreadData", !37, i64 0, !37, i64 768, !37, i64 800, !37, i64 824, !38, i64 836, !37, i64 840, !37, i64 880, !37, i64 928, !37, i64 932, !37, i64 944, !147, i64 1616, !73, i64 1624}
!149 = !{!148, !38, i64 1624}
!150 = !{!148, !38, i64 1632}
!151 = !{!84, !41, i64 5064}
!152 = !{!79, !38, i64 0}
!153 = !{!79, !38, i64 24}
!154 = !{!"VP8mv", !71, i64 0, !71, i64 2}
!155 = !{!"VP8Macroblock", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 24, !154, i64 28, !37, i64 32}
!156 = !{!155, !37, i64 5}
!157 = !{!84, !37, i64 130}
!158 = !{!"", !37, i64 0, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 11, !37, i64 14, !37, i64 2126, !37, i64 2164}
!159 = !{!158, !37, i64 3}
!160 = !{!155, !37, i64 0}
!161 = !{!155, !37, i64 1}
!162 = !{!155, !37, i64 4}
!163 = !{!155, !37, i64 2}
!164 = !{!158, !37, i64 4}
!165 = !{!158, !37, i64 5}
!166 = !{!158, !37, i64 6}
!167 = !{!155, !37, i64 3}
!168 = !{!71, !71, i64 0}
!169 = !{!73, !38, i64 0}
!170 = !{!73, !38, i64 8}
!171 = !{!154, !71, i64 0}
!172 = !{!73, !38, i64 4}
!173 = !{!73, !38, i64 12}
!174 = !{!154, !71, i64 2}
!175 = !{!155, !71, i64 30}
!176 = !{!155, !71, i64 28}
!177 = !{!84, !41, i64 5080}
!178 = !{!84, !41, i64 5072}
!179 = !{!148, !38, i64 836}
!180 = !{!84, !46, i64 296}
!181 = !{!84, !37, i64 176}
!182 = !{!41, !41, i64 0}
!183 = !{!101, !99, i64 0}
!184 = !{!84, !41, i64 5056}
!185 = !{!84, !37, i64 131}
!186 = !{!84, !41, i64 5104}
!187 = !{!84, !41, i64 5096}
!188 = !{!84, !41, i64 5088}
!189 = !{!84, !41, i64 5112}
!190 = !{!148, !147, i64 1616}
!191 = !{!84, !37, i64 165}
!192 = !{!84, !37, i64 276}
!193 = !{!84, !37, i64 178}
!194 = !{!"VP8FilterStrength", !37, i64 0, !37, i64 1, !37, i64 2}
!195 = !{!194, !37, i64 0}
!196 = !{!194, !37, i64 1}
!197 = !{!194, !37, i64 2}
!198 = !{!84, !41, i64 5192}
!199 = !{!84, !41, i64 5184}
!200 = !{!84, !41, i64 5128}
!201 = !{!84, !41, i64 5144}
!202 = !{!84, !41, i64 5160}
!203 = !{!84, !41, i64 5176}
!204 = !{!84, !41, i64 5120}
!205 = !{!84, !41, i64 5136}
!206 = !{!84, !41, i64 5152}
!207 = !{!84, !41, i64 5168}
!208 = !{!84, !38, i64 132}
!209 = !{!84, !38, i64 140}
!210 = !{!"VP7MVPred", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!211 = !{!210, !37, i64 1}
!212 = !{!210, !37, i64 0}
!213 = !{!210, !37, i64 2}
!214 = !{!210, !37, i64 3}
!215 = !{!59, !38, i64 112}
!216 = !{!59, !38, i64 116}
!217 = !{!148, !38, i64 1628}
!218 = !{!148, !38, i64 1636}
!219 = distinct !{!219, !61}
!220 = !{!64, !41, i64 120}
!221 = !{!64, !41, i64 32}
!222 = !{!65, !53, i64 0}
!223 = !{!64, !41, i64 48}
!224 = !{!64, !41, i64 56}
!225 = !{i64 0, i64 1, !135, i64 1, i64 1, !135, i64 2, i64 1, !135, i64 3, i64 1, !135, i64 4, i64 4, !135, i64 8, i64 4, !135}
!226 = !{i64 0, i64 1, !135, i64 1, i64 1, !135, i64 2, i64 8, !135, i64 10, i64 4, !135}
!227 = !{!102, !41, i64 24}
!228 = distinct !{!228, !61}
!229 = distinct !{!229, !61}
!230 = distinct !{!230, !61}
!231 = distinct !{!231, !61}
!232 = distinct !{!232, !61}
!233 = distinct !{!233, !61}
!234 = distinct !{!234, !61}
!235 = distinct !{!235, !61}
!236 = !{!84, !38, i64 368}
!237 = !{!84, !37, i64 167}
!238 = !{!84, !37, i64 277}
!239 = !{!84, !38, i64 252}
!240 = !{!84, !38, i64 256}
!241 = !{!84, !38, i64 260}
!242 = !{!84, !38, i64 264}
!243 = !{!84, !38, i64 268}
!244 = !{!84, !38, i64 272}
!245 = !{!84, !38, i64 336}
!246 = !{!84, !46, i64 344}
!247 = !{!84, !38, i64 352}
!248 = !{!84, !38, i64 356}
!249 = !{!84, !38, i64 360}
!250 = distinct !{!250, !61}
!251 = distinct !{!251, !61}
!252 = distinct !{!252, !61}
!253 = distinct !{!253, !61}
!254 = distinct !{!254, !61}
!255 = distinct !{!255, !61}
!256 = distinct !{!256, !61}
!257 = distinct !{!257, !61}
!258 = distinct !{!258, !61}
!259 = distinct !{!259, !61}
!263 = distinct !{!263, !61, !268, !269}
!264 = distinct !{!264, !61, !268}
!265 = distinct !{!265, !61}
!268 = !{!"llvm.loop.isvectorized", i32 1}
!269 = !{!"llvm.loop.unroll.runtime.disable"}
!270 = distinct !{!270, i1 false, !"LVerDomain"}
!271 = distinct !{!271, !270}
!272 = !{!271}
!273 = distinct !{!273, !270}
!274 = !{!273}
end_hunk_1
