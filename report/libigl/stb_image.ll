Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@stbi_write_png_to_mem:bb.a
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !223

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
  %.lcssa232 = phi i32 [ %i.av, %middle.block281 ], [ %i.ba, %scalar.ph270 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %._crit_edge.us.us.1, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %._crit_edge.us.us.1 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.bh, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %vec.phi261 = phi <4 x i32> [ %i.bi, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %index259 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !34
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !34
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !224

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  br i1 %cmp.n267, label %._crit_edge.us.us.2, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %._crit_edge.us.us.1, %middle.block265
  %indvars.iv200.2.ph = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %n.vec257, %middle.block265 ]
  %.092182.us.us.2.ph = phi i32 [ 0, %._crit_edge.us.us.1 ], [ %i.bk, %middle.block265 ]
  br label %scalar.ph254

scalar.ph254:                                     ; preds = %scalar.ph254.preheader, %scalar.ph254
  %indvars.iv200.2 = phi i64 [ %indvars.iv.next201.2, %scalar.ph254 ], [ %indvars.iv200.2.ph, %scalar.ph254.preheader ] ; 2 uses
  %.092182.us.us.2 = phi i32 [ %i.bp, %scalar.ph254 ], [ %.092182.us.us.2.ph, %scalar.ph254.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.bn = tail call i8 @llvm.abs.i8(i8 %i.bm, i1 false)
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %.092182.us.us.2, %i.bo ; 2 uses
  %indvars.iv.next201.2 = add nuw nsw i64 %indvars.iv200.2, 1 ; 2 uses
  %exitcond204.2.not = icmp eq i64 %indvars.iv.next201.2, %wide.trip.count203
  br i1 %exitcond204.2.not, label %._crit_edge.us.us.2, label %scalar.ph254, !llvm.loop !225

._crit_edge.us.us.2:                              ; preds = %scalar.ph254, %middle.block265
  %.lcssa233 = phi i32 [ %i.bk, %middle.block265 ], [ %i.bp, %scalar.ph254 ] ; 2 uses
  %i.bq = icmp samesign ult i32 %.lcssa232, %.lcssa231
  %spec.select112.us.us.1 = zext i1 %i.bq to i32
  %spec.select113.us.us.1 = tail call i32 @llvm.smin.i32(i32 %.lcssa232, i32 %.lcssa231) ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 3, ptr noundef %i.k)
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.body242

vector.body242:                                   ; preds = %._crit_edge.us.us.2, %vector.body242
  %index243 = phi i64 [ %index.next248, %vector.body242 ], [ 0, %._crit_edge.us.us.2 ] ; 2 uses
  %vec.phi244 = phi <4 x i32> [ %i.bx, %vector.body242 ], [ zeroinitializer, %._crit_edge.us.us.2 ]
  %vec.phi245 = phi <4 x i32> [ %i.by, %vector.body242 ], [ zeroinitializer, %._crit_edge.us.us.2 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %index243 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %wide.load246 = load <4 x i8>, ptr %i.br, align 1, !tbaa !34
  %wide.load247 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !34
  %i.bt = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load246, i1 false)
  %i.bu = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load247, i1 false)
  %i.bv = zext <4 x i8> %i.bt to <4 x i32>
  %i.bw = zext <4 x i8> %i.bu to <4 x i32>
  %i.bx = add <4 x i32> %vec.phi244, %i.bv        ; 2 uses
  %i.by = add <4 x i32> %vec.phi245, %i.bw        ; 2 uses
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.bz, label %middle.block249, label %vector.body242, !llvm.loop !226

middle.block249:                                  ; preds = %vector.body242
  %bin.rdx250 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx250) ; 2 uses
  br i1 %cmp.n251, label %._crit_edge.us.us.3, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %._crit_edge.us.us.2, %middle.block249
  %indvars.iv200.3.ph = phi i64 [ 0, %._crit_edge.us.us.2 ], [ %n.vec241, %middle.block249 ]
  %.092182.us.us.3.ph = phi i32 [ 0, %._crit_edge.us.us.2 ], [ %i.ca, %middle.block249 ]
  br label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.preheader, %scalar.ph238
  %indvars.iv200.3 = phi i64 [ %indvars.iv.next201.3, %scalar.ph238 ], [ %indvars.iv200.3.ph, %scalar.ph238.preheader ] ; 2 uses
  %.092182.us.us.3 = phi i32 [ %i.cf, %scalar.ph238 ], [ %.092182.us.us.3.ph, %scalar.ph238.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34
  %i.cd = tail call i8 @llvm.abs.i8(i8 %i.cc, i1 false)
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %.092182.us.us.3, %i.ce ; 2 uses
  %indvars.iv.next201.3 = add nuw nsw i64 %indvars.iv200.3, 1 ; 2 uses
  %exitcond204.3.not = icmp eq i64 %indvars.iv.next201.3, %wide.trip.count203
  br i1 %exitcond204.3.not, label %._crit_edge.us.us.3, label %scalar.ph238, !llvm.loop !227

._crit_edge.us.us.3:                              ; preds = %scalar.ph238, %middle.block249
  %.lcssa234 = phi i32 [ %i.ca, %middle.block249 ], [ %i.cf, %scalar.ph238 ] ; 2 uses
  %i.cg = icmp samesign ult i32 %.lcssa233, %spec.select113.us.us.1
  %spec.select112.us.us.2 = select i1 %i.cg, i32 2, i32 %spec.select112.us.us.1
  %spec.select113.us.us.2 = tail call i32 @llvm.smin.i32(i32 %.lcssa233, i32 %spec.select113.us.us.1) ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 4, ptr noundef %i.k)
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %._crit_edge.us.us.3, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.us.3 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cn, %vector.body ], [ zeroinitializer, %._crit_edge.us.us.3 ]
  %vec.phi236 = phi <4 x i32> [ %i.co, %vector.body ], [ zeroinitializer, %._crit_edge.us.us.3 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %wide.load = load <4 x i8>, ptr %i.ch, align 1, !tbaa !34
  %wide.load237 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !34
  %i.cj = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load, i1 false)
  %i.ck = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load237, i1 false)
  %i.cl = zext <4 x i8> %i.cj to <4 x i32>
  %i.cm = zext <4 x i8> %i.ck to <4 x i32>
  %i.cn = add <4 x i32> %vec.phi, %i.cl           ; 2 uses
  %i.co = add <4 x i32> %vec.phi236, %i.cm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.co, %i.cn
  %i.cq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge.us.us.3, %middle.block
  %indvars.iv200.4.ph = phi i64 [ 0, %._crit_edge.us.us.3 ], [ %n.vec, %middle.block ]
  %.092182.us.us.4.ph = phi i32 [ 0, %._crit_edge.us.us.3 ], [ %i.cq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv200.4 = phi i64 [ %indvars.iv.next201.4, %scalar.ph ], [ %indvars.iv200.4.ph, %scalar.ph.preheader ] ; 2 uses
  %.092182.us.us.4 = phi i32 [ %i.cv, %scalar.ph ], [ %.092182.us.us.4.ph, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.4
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !34
  %i.ct = tail call i8 @llvm.abs.i8(i8 %i.cs, i1 false)
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %.092182.us.us.4, %i.cu ; 2 uses
  %indvars.iv.next201.4 = add nuw nsw i64 %indvars.iv200.4, 1 ; 2 uses
  %exitcond204.4.not = icmp eq i64 %indvars.iv.next201.4, %wide.trip.count203
  br i1 %exitcond204.4.not, label %.loopexit, label %scalar.ph, !llvm.loop !229

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa235 = phi i32 [ %i.cq, %middle.block ], [ %i.cv, %scalar.ph ]
  %i.cw = icmp samesign ult i32 %.lcssa234, %spec.select113.us.us.2
  %spec.select112.us.us.3 = select i1 %i.cw, i32 3, i32 %spec.select112.us.us.2
  %spec.select113.us.us.3 = tail call i32 @llvm.smin.i32(i32 %.lcssa234, i32 %spec.select113.us.us.2)
  %i.cx = icmp samesign ult i32 %.lcssa235, %spec.select113.us.us.3
  %spec.select112.us.us.4 = select i1 %i.cx, i32 4, i32 %spec.select112.us.us.3 ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef %spec.select112.us.us.4, ptr noundef %i.k)
  %i.cy = trunc nuw nsw i32 %spec.select112.us.us.4 to i8
  %i.cz = mul nuw nsw i64 %indvars.iv206, %i.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cz ; 2 uses
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.preheader.us, !llvm.loop !219

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.i) #33
  br label %bb.g

bb.e:                                             ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 3, ptr noundef %i.k)
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 4, ptr noundef %i.k)
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  %i.dd = mul nsw i64 %indvars.iv, %i.u
  %i.de = getelementptr inbounds i8, ptr %i.i, i64 %i.dd ; 2 uses
  store i8 0, ptr %i.de, align 1, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.c, %.preheader179
  tail call void @free(ptr noundef nonnull %i.k) #33
  %i.dg = load i32, ptr @stbi_write_png_compression_level, align 4, !tbaa !24
  %i.dh = call ptr @stbi_zlib_compress(ptr noundef nonnull %i.i, i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.dg) ; 3 uses
  tail call void @free(ptr noundef nonnull %i.i) #33
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.a, align 4, !tbaa !24  ; 6 uses
  %i.dj = add nsw i32 %i.di, 57                   ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dk) #34 ; 16 uses
  %.not110 = icmp eq ptr %i.dl, null
  br i1 %.not110, label %bb.g, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  store i32 %i.dj, ptr %5, align 4, !tbaa !24
  store i64 727905341920923785, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <8 x i8> <i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.dm, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = lshr i32 %2, 24
  %i.dp = lshr i32 %2, 16
  %i.dq = lshr i32 %2, 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %6, ptr %i.dn, align 1, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.ds = lshr i32 %3, 24
  %i.dt = lshr i32 %3, 16
  %i.du = lshr i32 %3, 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %7, ptr %i.dr, align 1, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 25
  store i8 8, ptr %i.dv, align 1, !tbaa !34
  %i.dx = sext i32 %4 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const.stbi_write_png_to_mem.ctype, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24 ; 2 uses
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 26
  store i8 %i.ea, ptr %i.dw, align 1, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 0, ptr %i.eb, align 1, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.ec, align 1, !tbaa !34
  store i8 0, ptr %i.ed, align 1, !tbaa !34
  %i.ee = xor i32 %i.do, 245
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !24
  %i.ei = xor i32 %i.eh, 5725777                  ; 2 uses
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = xor i32 %i.ei, %i.dp
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !24
  %i.ep = xor i32 %i.eo, %i.ej                    ; 2 uses
  %i.eq = lshr i32 %i.ep, 8
  %i.er = xor i32 %i.ep, %i.dq
  %i.es = and i32 %i.er, 255
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !24
  %i.ew = xor i32 %i.ev, %i.eq                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = xor i32 %i.ew, %2
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !24
  %i.fd = xor i32 %i.fc, %i.ex                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = and i32 %i.fd, 255
  %i.fg = xor i32 %i.ff, %i.ds
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !24
  %i.fk = xor i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = xor i32 %i.fk, %i.dt
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24
  %i.fr = xor i32 %i.fq, %i.fl                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = xor i32 %i.fr, %i.du
  %i.fu = and i32 %i.ft, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !24
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %3
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !24
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = and i32 %i.gf, 255
  %i.gi = xor i32 %i.gh, 8
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !24
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %i.dz
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !24
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !24
  %i.gz = xor i32 %i.gy, %i.gu                    ; 2 uses
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = and i32 %i.gz, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !24
  %i.hf = xor i32 %i.he, %i.ha                    ; 2 uses
  %i.hg = lshr i32 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !34
  %i.hj = zext i8 %i.hi to i32
  %i.hk = and i32 %i.hf, 255
  %i.hl = xor i32 %i.hk, %i.hj
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !24
  %i.hp = xor i32 %i.ho, %i.hg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.hr = xor i32 %i.hp, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.hr)
  store i32 %8, ptr %i.hq, align 1, !tbaa !34
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.di)
  store i32 %9, ptr %i.hs, align 1, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.ht, align 1, !tbaa !34
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.hv = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull align 1 %i.dh, i64 %i.hv, i1 false)
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 3 uses
  tail call void @free(ptr noundef nonnull %i.dh) #33
  %i.hx = icmp sgt i32 %i.di, -4
  br i1 %i.hx, label %.lr.ph.preheader.i.i, label %_ZL12stbiw__wpcrcPPhi.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.hy = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.hy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.iu, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ia = lshr i32 %.078.i.i116, 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !34
  %i.id = zext i8 %i.ic to i32
  %i.ie = and i32 %.078.i.i116, 255
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !24
  %i.ij = xor i32 %i.ii, %i.ia                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !34
  %i.io = zext i8 %i.in to i32
  %i.ip = and i32 %i.ij, 255
  %i.iq = xor i32 %i.ip, %i.io
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !24
  %i.iu = xor i32 %i.it, %i.ik                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114, !llvm.loop !230

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.iu, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.iv = lshr i32 %.078.i.i116.epil.init, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115.epil.init
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %.078.i.i116.epil.init, 255
  %i.ja = xor i32 %i.iz, %i.iy
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !24
  %i.je = xor i32 %i.jd, %i.iv
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.iu, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.je, %.lr.ph.i.i114.epil.preheader ]
  %i.jf = xor i32 %.lcssa, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %i.jf)
  %11 = bitcast i32 %10 to <4 x i8>
  br label %_ZL12stbiw__wpcrcPPhi.exit119

_ZL12stbiw__wpcrcPPhi.exit119:                    ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %.lr.ph.i.i ], [ %11, %._crit_edge.loopexit.i.i ]
  store <4 x i8> %.07.lcssa.i.i, ptr %i.hw, align 1, !tbaa !34
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 0, ptr %i.jg, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.jh, align 1, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %_ZL12stbiw__wpcrcPPhi.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %_ZL12stbiw__wpcrcPPhi.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.099
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %.not = icmp eq i32 %4, 0
  %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = select i1 %.not, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 3 uses
  %i.f = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not136 = icmp eq i32 %i.f, 0                  ; 2 uses
  %i.g = xor i32 %4, -1
  %i.h = add i32 %3, %i.g
  %i.i = select i1 %.not136, i32 %4, i32 %i.h
  %i.j = mul i32 %i.i, %1
  %i.k = sext i32 %i.j to i64                     ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 77 uses
  %i.m = sub nsw i32 0, %1
  %i.n = select i1 %.not136, i32 %1, i32 %i.m     ; 4 uses
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.p = icmp sgt i32 %5, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.q = sext i32 %i.n to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.r = mul nsw i32 %5, %2
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.l, i64 %i.s, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.e, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !34
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = sub nsw i64 %indvars.iv, %i.q
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = sub i8 %i.w, %i.z
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = sub nsw i64 %indvars.iv, %i.q
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = lshr i8 %i.af, 1
  %i.ah = sub i8 %i.ac, %i.ag
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = sub nsw i64 %indvars.iv, %i.q
  %i.al = getelementptr inbounds i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = sub i8 %i.aj, %i.am
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ah, %bb.e ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.as, align 1, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !231

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.e, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.at = mul nsw i32 %5, %2                      ; 2 uses
  %i.au = icmp slt i32 %5, %i.at
  br i1 %i.au, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.av = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.at to i64     ; 4 uses
  %i.aw = sub nsw i64 %wide.trip.count183, %i.av  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.b, %i.k                      ; 2 uses
  %i.ay = add i64 %i.a, %i.av
  %i.az = sub i64 %i.ax, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  %i.ba = sub i64 %i.ax, %i.a
  %diff.check229 = icmp ugt i64 %i.ba, -32
  %conflict.rdx = or i1 %diff.check, %diff.check229
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check230 = icmp ult i64 %i.aw, 32
  br i1 %min.iters.check230, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %i.bc = add nsw i64 %n.vec, %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = add i64 %index, %i.av                   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.l, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !34
  %wide.load231 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !34
  %i.bg = getelementptr inbounds i8, ptr %i.l, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load232 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !34
  %wide.load233 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !34
  %i.bi = sub <16 x i8> %wide.load, %wide.load232
  %i.bj = sub <16 x i8> %wide.load231, %wide.load233
  %i.bk = getelementptr inbounds i8, ptr %7, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !34
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.aw, -8                   ; 3 uses
  %i.bn = add nsw i64 %n.vec234, %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = add i64 %index235, %i.av                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.l, i64 %i.bo
  %wide.load236 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !34
end_hunk_0
begin_hunk_1_@_ZL22stbi__check_png_headerP13stbi__context:bb.a
  br i1 %.not.5, label %bb.af, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.5
  %i.cd = icmp ult ptr %i.cc, %i.cb
  br i1 %i.cd, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.6 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.6, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ch = load i32, ptr %i.g, align 4, !tbaa !30
  %i.ci = tail call noundef i32 %i.cf(ptr noundef %i.cg, ptr noundef nonnull %i.f, i32 noundef %i.ch), !inline_history !9 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds i8, ptr %i.f, i64 %i.ck
  %.pre.i.6 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6

_ZL19stbi__refill_bufferP13stbi__context.exit.i.6: ; preds = %bb.aj, %bb.ai
  %i.cm = phi i8 [ 0, %bb.aj ], [ %.pre.i.6, %bb.ai ]
  %.sink.i.i.6 = phi ptr [ %i.h, %bb.aj ], [ %i.cl, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.6, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.6

bb.ak:                                            ; preds = %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !35
  %i.co = load i8, ptr %i.cc, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.6

_ZL10stbi__get8P13stbi__context.exit.6:           ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6
  %i.cp = phi ptr [ %i.cb, %bb.ak ], [ %.sink.i.i.6, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6 ]
  %i.cq = phi ptr [ %i.cn, %bb.ak ], [ %i.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6 ] ; 3 uses
  %.0.i.6 = phi i8 [ %i.co, %bb.ak ], [ %i.cm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.6 ]
  %.not.6 = icmp eq i8 %.0.i.6, 26
  br i1 %.not.6, label %bb.al, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.6
  %i.cr = icmp ult ptr %i.cq, %i.cp
  br i1 %i.cr, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.7 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.7, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.cv = load i32, ptr %i.g, align 4, !tbaa !30
  %i.cw = tail call noundef i32 %i.ct(ptr noundef %i.cu, ptr noundef nonnull %i.f, i32 noundef %i.cv), !inline_history !9 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %i.f, i64 %i.cy
  %.pre.i.7 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.7

_ZL19stbi__refill_bufferP13stbi__context.exit.i.7: ; preds = %bb.ap, %bb.ao
  %i.da = phi i8 [ 0, %bb.ap ], [ %.pre.i.7, %bb.ao ]
  %.sink.i.i.7 = phi ptr [ %i.h, %bb.ap ], [ %i.cz, %bb.ao ]
  store ptr %.sink.i.i.7, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.7

bb.aq:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.db, ptr %i.a, align 8, !tbaa !35
  %i.dc = load i8, ptr %i.cq, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.7

_ZL10stbi__get8P13stbi__context.exit.7:           ; preds = %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.7
  %.0.i.7 = phi i8 [ %i.dc, %bb.aq ], [ %i.da, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.7 ]
  %.not.7 = icmp eq i8 %.0.i.7, 10
  br i1 %.not.7, label %.loopexit, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

bb.ar:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !35
  %i.de = load i8, ptr %i.i, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.as:                                            ; preds = %bb.a
  %i.df = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.df, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.di = load i32, ptr %i.g, align 4, !tbaa !30
  %i.dj = tail call noundef i32 %i.dg(ptr noundef %i.dh, ptr noundef nonnull %i.f, i32 noundef %i.di), !inline_history !9 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.av:                                            ; preds = %bb.at
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds i8, ptr %i.f, i64 %i.dl
  %.pre.i = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.av, %bb.au
  %i.dn = phi i8 [ 0, %bb.au ], [ %.pre.i, %bb.av ]
  %.sink.i.i = phi ptr [ %i.h, %bb.au ], [ %i.dm, %bb.av ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.ar, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.do = phi ptr [ %i.j, %bb.ar ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 2 uses
  %i.dp = phi ptr [ %i.dd, %bb.ar ], [ %i.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.de, %bb.ar ], [ %i.dn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ]
  %.not = icmp eq i8 %.0.i, -119
  br i1 %.not, label %bb.b, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

_ZL10stbi__get8P13stbi__context.exit.1.thread:    ; preds = %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c, %_ZL10stbi__get8P13stbi__context.exit.7, %_ZL10stbi__get8P13stbi__context.exit.6, %_ZL10stbi__get8P13stbi__context.exit.5, %_ZL10stbi__get8P13stbi__context.exit.4, %_ZL10stbi__get8P13stbi__context.exit.3, %_ZL10stbi__get8P13stbi__context.exit.2, %_ZL10stbi__get8P13stbi__context.exit.1, %_ZL10stbi__get8P13stbi__context.exit
  store ptr @.str.38, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit.7, %_ZL10stbi__get8P13stbi__context.exit.1.thread
  %.04 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit.1.thread ], [ 1, %_ZL10stbi__get8P13stbi__context.exit.7 ]
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr nofree noundef nonnull captures(none) initializes((8, 32)) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.h = tail call fastcc noundef i32 @_ZL22stbi__check_png_headerP13stbi__context(ptr noundef %i.d)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread397, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.thread397, label %.preheader417

.preheader417:                                    ; preds = %bb.b
  %i.j = icmp eq i32 %1, 2                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 39 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 39 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 28 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader417, %.loopexit
  %.0232 = phi i8 [ %.3235, %.loopexit ], [ 0, %.preheader417 ] ; 17 uses
  %.0229 = phi i8 [ %.1230, %.loopexit ], [ 0, %.preheader417 ] ; 15 uses
  %.0226 = phi i32 [ %.1227, %.loopexit ], [ 0, %.preheader417 ] ; 20 uses
  %.0222 = phi i32 [ %.4, %.loopexit ], [ 0, %.preheader417 ] ; 20 uses
  %.0217 = phi i32 [ %.1218, %.loopexit ], [ 0, %.preheader417 ] ; 19 uses
  %.0213 = phi i32 [ %.2215, %.loopexit ], [ 1, %.preheader417 ] ; 9 uses
  %.0207 = phi i32 [ %.2209, %.loopexit ], [ 0, %.preheader417 ] ; 17 uses
  %.0203 = phi i32 [ %.2205, %.loopexit ], [ 0, %.preheader417 ] ; 18 uses
  %.0200 = phi i32 [ %.1201, %.loopexit ], [ 0, %.preheader417 ] ; 16 uses
  %i.w = tail call fastcc noundef i32 @_ZL13stbi__get32beP13stbi__context(ptr noundef %i.d) ; 22 uses
  %i.x = tail call fastcc noundef i32 @_ZL13stbi__get32beP13stbi__context(ptr noundef %i.d) ; 3 uses
  switch i32 %i.x, label %bb.ew [
    i32 1130840649, label %bb.d
    i32 1229472850, label %bb.i
    i32 1347179589, label %bb.aw
    i32 1951551059, label %bb.br
    i32 1229209940, label %bb.dg
    i32 1229278788, label %bb.du
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !36
  store ptr %i.z, ptr %i.m, align 8, !tbaa !35
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %..thread_crit_edge.i, label %bb.g

..thread_crit_edge.i:                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !36  ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = icmp sgt i32 %i.w, %i.ag
  br i1 %i.ah, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !35
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ak = sub nsw i32 %i.w, %i.ag
  tail call void %i.ai(ptr noundef %i.aj, i32 noundef %i.ak), !inline_history !122
  br label %.loopexit

.thread.i:                                        ; preds = %bb.g, %..thread_crit_edge.i
  %i.al = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.ac, %bb.g ]
  %i.am = zext nneg i32 %i.w to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store ptr %i.an, ptr %i.m, align 8, !tbaa !35
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %.not274 = icmp eq i32 %.0213, 0
  br i1 %.not274, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr @.str.39, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.k:                                             ; preds = %bb.i
  %.not275 = icmp eq i32 %i.w, 13
  br i1 %.not275, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.40, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call fastcc noundef i32 @_ZL13stbi__get32beP13stbi__context(ptr noundef %i.d) ; 2 uses
  store i32 %i.ao, ptr %i.d, align 8, !tbaa !66
  %i.ap = icmp ugt i32 %i.ao, 16777216
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.o:                                             ; preds = %bb.m
  %i.aq = tail call fastcc noundef i32 @_ZL13stbi__get32beP13stbi__context(ptr noundef nonnull %i.d) ; 2 uses
  store i32 %i.aq, ptr %i.u, align 4, !tbaa !67
  %i.ar = icmp ugt i32 %i.aq, 16777216
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !35  ; 4 uses
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !36  ; 3 uses
  %i.au = icmp ult ptr %i.as, %i.at
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.m, align 8, !tbaa !35
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.o, align 8, !tbaa !31
  %.not.i298 = icmp eq i32 %i.ax, 0
  br i1 %.not.i298, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !30
  %i.bb = tail call noundef i32 %i.ay(ptr noundef %i.az, ptr noundef nonnull %i.p, i32 noundef %i.ba), !inline_history !9 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.o, align 8, !tbaa !31
  store i8 0, ptr %i.p, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.p, i64 %i.bd
  %.pre.i299 = load i8, ptr %i.p, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.v, %bb.u
  %i.bf = phi i8 [ 0, %bb.u ], [ %.pre.i299, %bb.v ]
  %.sink.i.i = phi ptr [ %i.r, %bb.u ], [ %i.be, %bb.v ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.l, align 8, !tbaa !36
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.r, %bb.s, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.bg = phi ptr [ %i.at, %bb.r ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.at, %bb.s ]
  %i.bh = phi ptr [ %i.av, %bb.r ], [ %i.r, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.as, %bb.s ] ; 3 uses
  %.0.i = phi i8 [ %i.aw, %bb.r ], [ %i.bf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.s ] ; 3 uses
  %i.bi = zext i8 %.0.i to i32
  store i32 %i.bi, ptr %i.t, align 8, !tbaa !112
  %i.bj = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i)
  %i.bk = icmp eq i8 %i.bj, 1
  %i.bl = and i8 %.0.i, 31
  %switch = icmp ne i8 %i.bl, 0
  %or.cond290 = and i1 %i.bk, %switch
  br i1 %or.cond290, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  store ptr @.str.41, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.x:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.bm = icmp ult ptr %i.bh, %i.bg
  br i1 %i.bm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bn, ptr %i.m, align 8, !tbaa !35
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit305

bb.z:                                             ; preds = %bb.x
  %i.bp = load i32, ptr %i.o, align 8, !tbaa !31
  %.not.i300 = icmp eq i32 %i.bp, 0
  br i1 %.not.i300, label %.critedge.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !30
  %i.bt = tail call noundef i32 %i.bq(ptr noundef %i.br, ptr noundef nonnull %i.p, i32 noundef %i.bs), !inline_history !9 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.o, align 8, !tbaa !31
  store i8 0, ptr %i.p, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i302

bb.ac:                                            ; preds = %bb.aa
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds i8, ptr %i.p, i64 %i.bv
  %.pre.i301 = load i8, ptr %i.p, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i302

_ZL19stbi__refill_bufferP13stbi__context.exit.i302: ; preds = %bb.ac, %bb.ab
  %i.bx = phi i8 [ 0, %bb.ab ], [ %.pre.i301, %bb.ac ]
  %.sink.i.i303 = phi ptr [ %i.r, %bb.ab ], [ %i.bw, %bb.ac ]
  store ptr %.sink.i.i303, ptr %i.l, align 8, !tbaa !36
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit305

_ZL10stbi__get8P13stbi__context.exit305:          ; preds = %bb.y, %_ZL19stbi__refill_bufferP13stbi__context.exit.i302
  %.0.i304 = phi i8 [ %i.bo, %bb.y ], [ %i.bx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i302 ] ; 4 uses
  %i.by = zext nneg i8 %.0.i304 to i32            ; 2 uses
  %i.bz = icmp ugt i8 %.0.i304, 6
  br i1 %i.bz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit305
  store ptr @.str.42, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.ae:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit305
end_hunk_1
begin_hunk_2_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
.preheader49.i:                                   ; preds = %bb.es
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.pw to i64 ; 2 uses
  %xtraiter1812 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.qe = icmp ult i32 %i.pw, 4
  br i1 %i.qe, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1815 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i360:                                  ; preds = %bb.es
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i360
  %wide.trip.count62.i = zext nneg i32 %i.pw to i64 ; 2 uses
  %xtraiter1817 = and i64 %wide.trip.count62.i, 1
  %i.qf = icmp eq i32 %i.pw, 1
  br i1 %i.qf, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter1821 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.qb, %.lr.ph55.preheader.i.new ], [ %i.rg, %.lr.ph55.i ] ; 7 uses
  %niter1822 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter1822.next.1, %.lr.ph55.i ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv59.i
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !34
  %i.qi = zext i8 %i.qh to i64
  %i.qj = shl nuw nsw i64 %i.qi, 2
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qj ; 3 uses
  %i.ql = load i8, ptr %i.qk, align 4, !tbaa !34
  store i8 %i.ql, ptr %.04553.i, align 1, !tbaa !34
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !34
  %i.qo = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !34
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qq = load i8, ptr %i.qp, align 2, !tbaa !34
  %i.qr = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !34
  %i.qs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv59.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !34
  %i.qw = zext i8 %i.qv to i64
  %i.qx = shl nuw nsw i64 %i.qw, 2
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qx ; 3 uses
  %i.qz = load i8, ptr %i.qy, align 4, !tbaa !34
  store i8 %i.qz, ptr %i.qs, align 1, !tbaa !34
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !34
  %i.rc = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.rb, ptr %i.rc, align 1, !tbaa !34
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 2
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !34
  %i.rf = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !34
  %i.rg = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter1822.next.1 = add i64 %niter1822, 2       ; 2 uses
  %niter1822.ncmp.1 = icmp eq i64 %niter1822.next.1, %unroll_iter1821
  br i1 %niter1822.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !484

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i357 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i358.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.qb, %.lr.ph.preheader.i.new ], [ %i.sl, %.lr.ph.i ] ; 5 uses
  %niter1816 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1816.next.3, %.lr.ph.i ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i357
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !34
  %i.rj = zext i8 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 2
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rk
  %i.rm = load <4 x i8>, ptr %i.rl, align 4, !tbaa !34
  store <4 x i8> %i.rm, ptr %.14651.i, align 1, !tbaa !34
  %i.rn = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i357
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !34
  %i.rr = zext i8 %i.rq to i64
  %i.rs = shl nuw nsw i64 %i.rr, 2
  %i.rt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rs
  %i.ru = load <4 x i8>, ptr %i.rt, align 4, !tbaa !34
  store <4 x i8> %i.ru, ptr %i.rn, align 1, !tbaa !34
  %i.rv = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i357
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 2
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !34
  %i.rz = zext i8 %i.ry to i64
  %i.sa = shl nuw nsw i64 %i.rz, 2
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sa
  %i.sc = load <4 x i8>, ptr %i.sb, align 4, !tbaa !34
  store <4 x i8> %i.sc, ptr %i.rv, align 1, !tbaa !34
  %i.sd = getelementptr inbounds nuw i8, ptr %.14651.i, i64 12
  %i.se = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i357
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 3
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !34
  %i.sh = zext i8 %i.sg to i64
  %i.si = shl nuw nsw i64 %i.sh, 2
  %i.sj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.si
  %i.sk = load <4 x i8>, ptr %i.sj, align 4, !tbaa !34
  store <4 x i8> %i.sk, ptr %i.sd, align 1, !tbaa !34
  %i.sl = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i358.3 = add nuw nsw i64 %indvars.iv.i357, 4 ; 2 uses
  %niter1816.next.3 = add i64 %niter1816, 4       ; 2 uses
  %niter1816.ncmp.3 = icmp eq i64 %niter1816.next.3, %unroll_iter1815
  br i1 %niter1816.ncmp.3, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa, label %.lr.ph.i, !llvm.loop !485

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55.i
  %lcmp.mod1819.not = icmp eq i64 %xtraiter1817, 0
  br i1 %lcmp.mod1819.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.lr.ph55.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next60.i.1, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ]
  %.04553.i.epil.init = phi ptr [ %i.qb, %.lr.ph55.preheader.i ], [ %i.rg, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1820 = trunc i32 %i.pw to i1
  call void @llvm.assume(i1 %lcmp.mod1820)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv59.i.epil.init
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !34
  %i.so = zext i8 %i.sn to i64
  %i.sp = shl nuw nsw i64 %i.so, 2
  %i.sq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sp ; 3 uses
  %i.sr = load i8, ptr %i.sq, align 4, !tbaa !34
  store i8 %i.sr, ptr %.04553.i.epil.init, align 1, !tbaa !34
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 1
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !34
  %i.su = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.st, ptr %i.su, align 1, !tbaa !34
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 2
  %i.sw = load i8, ptr %i.sv, align 2, !tbaa !34
  %i.sx = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !34
  br label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  br i1 %lcmp.mod1813.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i357.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i358.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.qb, %.lr.ph.preheader.i ], [ %i.sl, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa ]
  %lcmp.mod1814 = icmp ne i64 %xtraiter1812, 0
  call void @llvm.assume(i1 %lcmp.mod1814)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i357.epil = phi i64 [ %indvars.iv.i357.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i358.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.te, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i357.epil
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !34
  %i.ta = zext i8 %i.sz to i64
  %i.tb = shl nuw nsw i64 %i.ta, 2
  %i.tc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tb
  %i.td = load <4 x i8>, ptr %i.tc, align 4, !tbaa !34
  store <4 x i8> %i.td, ptr %.14651.i.epil, align 1, !tbaa !34
  %i.te = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i358.epil = add nuw nsw i64 %indvars.iv.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1812
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !486

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1551.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i360
  call void @free(ptr noundef %i.px) #33
  store ptr %i.qb, ptr %i.g, align 8, !tbaa !111
  br label %bb.ev

bb.et:                                            ; preds = %bb.eq
  br i1 %i.lt, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.tf = load i32, ptr %i.s, align 8, !tbaa !68
  %i.tg = add nsw i32 %i.tf, 1
  store i32 %i.tg, ptr %i.s, align 8, !tbaa !68
  br label %bb.ev

bb.ev:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.et, %bb.eu
  %i.th = load ptr, ptr %i.e, align 8, !tbaa !114
  call void @free(ptr noundef %i.th) #33
  store ptr null, ptr %i.e, align 8, !tbaa !114
  br label %.thread397

bb.ew:                                            ; preds = %bb.c
  %.not289 = icmp eq i32 %.0213, 0
  br i1 %.not289, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store ptr @.str.47, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.ey:                                            ; preds = %bb.ew
  %i.ti = and i32 %i.x, 536870912
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %4, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16, !tbaa !34
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.thread397

bb.fa:                                            ; preds = %bb.ey
  %i.tk = icmp slt i32 %i.w, 0
  br i1 %i.tk, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.tl = load ptr, ptr %i.l, align 8, !tbaa !36
  store ptr %i.tl, ptr %i.m, align 8, !tbaa !35
  br label %.loopexit

bb.fc:                                            ; preds = %bb.fa
  %i.tm = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not.i361 = icmp eq ptr %i.tm, null
  br i1 %.not.i361, label %..thread_crit_edge.i363, label %bb.fd

..thread_crit_edge.i363:                          ; preds = %bb.fc
  %.pre.i365 = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %.thread.i362

bb.fd:                                            ; preds = %bb.fc
  %i.tn = load ptr, ptr %i.l, align 8, !tbaa !36  ; 2 uses
  %i.to = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  %i.tt = icmp sgt i32 %i.w, %i.ts
  br i1 %i.tt, label %bb.fe, label %.thread.i362

bb.fe:                                            ; preds = %bb.fd
  store ptr %i.tn, ptr %i.m, align 8, !tbaa !35
  %i.tu = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.tv = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.tw = sub nsw i32 %i.w, %i.ts
  tail call void %i.tu(ptr noundef %i.tv, i32 noundef %i.tw), !inline_history !122
  br label %.loopexit

.thread.i362:                                     ; preds = %bb.fd, %..thread_crit_edge.i363
  %i.tx = phi ptr [ %.pre.i365, %..thread_crit_edge.i363 ], [ %i.to, %bb.fd ]
  %i.ty = zext nneg i32 %i.w to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ty
  store ptr %i.tz, ptr %i.m, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit329, %_ZL13stbi__get16beP13stbi__context.exit341, %_ZL13stbi__get16beP13stbi__context.exit, %_ZL10stbi__get8P13stbi__context.exit323, %.preheader415, %.preheader413, %.preheader411, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.e, %bb.h, %.thread.i, %bb.at, %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384, %bb.fb, %bb.fe, %.thread.i362
  %.3235 = phi i8 [ %.0232, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0232, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0232, %.thread.i ], [ %.0232, %.thread.i362 ], [ 0, %.preheader411 ], [ 0, %.preheader413 ], [ %.0232, %.preheader ], [ %.0232, %bb.e ], [ %.0232, %bb.h ], [ 0, %bb.at ], [ %.1233, %bb.au ], [ %.0232, %bb.fb ], [ %.0232, %bb.fe ], [ 4, %.preheader415 ], [ 0, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0232, %_ZL10stbi__get8P13stbi__context.exit323 ], [ 0, %_ZL13stbi__get16beP13stbi__context.exit ], [ 4, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.1230 = phi i8 [ %.0229, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0229, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0229, %.thread.i ], [ %.0229, %.thread.i362 ], [ 1, %.preheader411 ], [ 1, %.preheader413 ], [ %.0229, %.preheader ], [ %.0229, %bb.e ], [ %.0229, %bb.h ], [ %.0229, %bb.at ], [ %.0229, %bb.au ], [ %.0229, %bb.fb ], [ %.0229, %bb.fe ], [ %.0229, %.preheader415 ], [ 1, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0229, %_ZL10stbi__get8P13stbi__context.exit323 ], [ 1, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0229, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.1227 = phi i32 [ %i.iy, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %i.iy, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0226, %.thread.i ], [ %.0226, %.thread.i362 ], [ %.0226, %.preheader411 ], [ %.0226, %.preheader413 ], [ %.0226, %.preheader ], [ %.0226, %bb.e ], [ %.0226, %bb.h ], [ %.0226, %bb.at ], [ %.0226, %bb.au ], [ %.0226, %bb.fb ], [ %.0226, %bb.fe ], [ %.0226, %.preheader415 ], [ %.0226, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0226, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.4 = phi i32 [ %.3225, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.3225, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0222, %.thread.i ], [ %.0222, %.thread.i362 ], [ %.0222, %.preheader411 ], [ %.0222, %.preheader413 ], [ %.0222, %.preheader ], [ %.0222, %bb.e ], [ %.0222, %bb.h ], [ %.0222, %bb.at ], [ %.0222, %bb.au ], [ %.0222, %bb.fb ], [ %.0222, %bb.fe ], [ %.0222, %.preheader415 ], [ %.0222, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0222, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0222, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0222, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.1218 = phi i32 [ %.0217, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0217, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0217, %.thread.i ], [ %.0217, %.thread.i362 ], [ %.0217, %.preheader411 ], [ %.0217, %.preheader413 ], [ %.zext, %.preheader ], [ %.0217, %bb.e ], [ %.0217, %bb.h ], [ %.0217, %bb.at ], [ %.0217, %bb.au ], [ %.0217, %bb.fb ], [ %.0217, %bb.fe ], [ %.0217, %.preheader415 ], [ %.0217, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0217, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0217, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.2215 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0213, %.thread.i ], [ 0, %.thread.i362 ], [ 0, %.preheader411 ], [ 0, %.preheader413 ], [ 0, %.preheader ], [ %.0213, %bb.e ], [ %.0213, %bb.h ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.fb ], [ 0, %bb.fe ], [ 0, %.preheader415 ], [ 0, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit323 ], [ 0, %_ZL13stbi__get16beP13stbi__context.exit ], [ 0, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.2209 = phi i32 [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0207, %.thread.i ], [ %.0207, %.thread.i362 ], [ %.0207, %.preheader411 ], [ %.0207, %.preheader413 ], [ %.0207, %.preheader ], [ %.0207, %bb.e ], [ %.0207, %bb.h ], [ %i.ci, %bb.at ], [ %i.ci, %bb.au ], [ %.0207, %bb.fb ], [ %.0207, %bb.fe ], [ %.0207, %.preheader415 ], [ %.0207, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0207, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.2205 = phi i32 [ %.0203, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0203, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0203, %.thread.i ], [ %.0203, %.thread.i362 ], [ %.0203, %.preheader411 ], [ %.0203, %.preheader413 ], [ %.0203, %.preheader ], [ %.0203, %bb.e ], [ %.0203, %bb.h ], [ %i.ce, %bb.at ], [ %i.ce, %bb.au ], [ %.0203, %bb.fb ], [ %.0203, %bb.fe ], [ %.0203, %.preheader415 ], [ %.0203, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0203, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0203, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0203, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %.1201 = phi i32 [ %.0200, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread384 ], [ %.0200, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0200, %.thread.i362 ], [ %.0200, %.preheader411 ], [ %.0200, %.preheader413 ], [ %.0200, %.preheader ], [ 1, %bb.e ], [ 1, %bb.h ], [ %.0200, %bb.at ], [ %.0200, %bb.au ], [ %.0200, %bb.fb ], [ %.0200, %bb.fe ], [ %.0200, %.preheader415 ], [ %.0200, %_ZL13stbi__get16beP13stbi__context.exit341 ], [ %.0200, %_ZL10stbi__get8P13stbi__context.exit323 ], [ %.0200, %_ZL13stbi__get16beP13stbi__context.exit ], [ %.0200, %_ZL10stbi__get8P13stbi__context.exit329 ]
  %i.ua = tail call fastcc noundef i32 @_ZL13stbi__get32beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.c, !llvm.loop !487

.thread397:                                       ; preds = %bb.at, %bb.dm, %bb.ah, %bb.ap, %bb.j, %bb.as, %bb.av, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ad, %bb.w, %bb.p, %bb.n, %bb.l, %bb.dv, %bb.dy, %bb.ev, %bb.dw, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.dj, %.thread380, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.dl, %bb.dh, %bb.ci, %bb.ck, %bb.cb, %bb.bz, %bb.bx, %bb.bu, %bb.bs, %bb.bb, %bb.az, %bb.ax, %bb.ez, %bb.ex, %bb.b, %bb.a
  %.7 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.ev ], [ 1, %bb.dw ], [ 0, %bb.dy ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.dv ], [ 0, %bb.dj ], [ 0, %.thread380 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 0, %bb.n ], [ 1, %bb.dl ], [ 0, %bb.dh ], [ 0, %bb.ci ], [ 0, %bb.ck ], [ 0, %bb.cb ], [ 0, %bb.bz ], [ 1, %bb.bx ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ 0, %bb.bb ], [ 0, %bb.az ], [ 0, %bb.ax ], [ 0, %bb.ex ], [ 0, %bb.ez ], [ 0, %bb.l ], [ 0, %bb.ah ], [ 0, %bb.ap ], [ 0, %bb.j ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.w ], [ 0, %bb.p ], [ 1, %bb.at ], [ 0, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.j) #34 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %.preheader191

.preheader191:                                    ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph252, label %._crit_edge

.lr.ph252:                                        ; preds = %.preheader191
  %i.n = shl nsw i32 %1, 3
  %i.o = add nsw i32 %i.n, %2
  %.11163192 = add i32 %3, -1                     ; 32 uses
  %i.p = icmp sgt i32 %.11163192, -1              ; 12 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.q = zext i32 %3 to i64                       ; 22 uses
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.11163.prol = add i32 %3, -2
  %i.r = icmp eq i32 %.11163192, 0
  %min.iters.check489 = icmp ult i32 %3, 8
  %n.vec491 = and i64 %i.q, 4294967288            ; 5 uses
  %i.s = trunc nuw i64 %n.vec491 to i32
  %i.t = sub i32 %.11163192, %i.s
  %i.u = shl nuw nsw i64 %n.vec491, 1
  %i.v = shl nuw nsw i64 %n.vec491, 2
  %cmp.n506 = icmp eq i64 %n.vec491, %i.q
  %min.iters.check439 = icmp ult i32 %3, 9
  %min.iters.check441 = icmp ult i32 %3, 17
  %i.w = and i64 %i.q, 15                         ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i64 16, i64 %i.w         ; 2 uses
  %n.vec443 = sub nsw i64 %i.q, %i.y              ; 5 uses
  %i.z = trunc i64 %n.vec443 to i32
  %i.aa = sub i32 %.11163192, %i.z
  %i.ab = shl nsw i64 %n.vec443, 2
  %min.epilog.iters.check468 = icmp samesign ult i64 %i.y, 9
  %i.ac = and i64 %i.q, 7                         ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 8, i64 %i.ac
  %n.vec471 = sub nsw i64 %i.q, %i.ae             ; 4 uses
  %i.af = trunc i64 %n.vec471 to i32
  %i.ag = sub i32 %.11163192, %i.af
  %i.ah = shl nsw i64 %n.vec471, 2
  %min.iters.check417 = icmp ult i32 %3, 8
  %n.vec419 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ai = trunc nuw i64 %n.vec419 to i32
  %i.aj = sub i32 %.11163192, %i.ai
  %i.ak = shl nuw nsw i64 %n.vec419, 1
  %i.al = mul nuw nsw i64 %n.vec419, 3
  %cmp.n434 = icmp eq i64 %n.vec419, %i.q
  %min.iters.check366 = icmp ult i32 %3, 8
  %min.iters.check368 = icmp ult i32 %3, 16
  %i.am = and i64 %i.q, 8
  %n.vec370 = and i64 %i.q, 4294967280            ; 6 uses
  %i.an = trunc nuw i64 %n.vec370 to i32
  %i.ao = sub i32 %.11163192, %i.an
  %i.ap = mul nuw nsw i64 %n.vec370, 3
  %cmp.n392 = icmp eq i64 %n.vec370, %i.q
  %min.epilog.iters.check396.not.not = icmp eq i64 %i.am, 0
  %n.vec399 = and i64 %i.q, 4294967288            ; 5 uses
  %i.aq = trunc nuw i64 %n.vec399 to i32
  %i.ar = sub i32 %.11163192, %i.aq
  %i.as = mul nuw nsw i64 %n.vec399, 3
  %cmp.n413 = icmp eq i64 %n.vec399, %i.q
  %xtraiter523 = and i32 %3, 1
  %lcmp.mod524.not = icmp eq i32 %xtraiter523, 0
  %.6158.prol = add i32 %3, -2
  %i.at = icmp eq i32 %.11163192, 0
  %xtraiter525 = and i32 %3, 1
  %lcmp.mod526.not = icmp eq i32 %xtraiter525, 0
  %.5157.prol = add i32 %3, -2
  %i.au = icmp eq i32 %.11163192, 0
  %xtraiter527 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod528.not = icmp eq i32 %xtraiter527, 0
  %i.av = icmp ult i32 %.11163192, 3
  %min.iters.check317 = icmp ult i32 %3, 9
  %min.iters.check319 = icmp ult i32 %3, 17
  %i.aw = and i64 %i.q, 15                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 16, i64 %i.aw      ; 2 uses
  %n.vec321 = sub nsw i64 %i.q, %i.ay             ; 5 uses
  %i.az = trunc i64 %n.vec321 to i32
  %i.ba = sub i32 %.11163192, %i.az
  %i.bb = shl nsw i64 %n.vec321, 1
  %min.epilog.iters.check346 = icmp samesign ult i64 %i.ay, 9
  %i.bc = and i64 %i.q, 7                         ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 8, i64 %i.bc
  %n.vec349 = sub nsw i64 %i.q, %i.be             ; 4 uses
  %i.bf = trunc i64 %n.vec349 to i32
  %i.bg = sub i32 %.11163192, %i.bf
  %i.bh = shl nsw i64 %n.vec349, 1
  %xtraiter529 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod530.not = icmp eq i32 %xtraiter529, 0
  %i.bi = icmp ult i32 %.11163192, 3
end_hunk_2
begin_hunk_3_@_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_:vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.vq, ptr %i.f, align 1, !tbaa !34
  call void %.val20.i176(ptr noundef %.val21.i177, ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vr = and i32 %.0181.i175, 16711680
  %i.vs = icmp eq i32 %i.vr, 16711680
  br i1 %i.vs, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i173
  %.val.i178 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i179 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !34
  call void %.val.i178(ptr noundef %.val19.i179, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i173
  %i.vt = shl i32 %.0181.i175, 8                  ; 2 uses
  %i.vu = add nsw i32 %.02.i174, -8               ; 2 uses
  %i.vv = icmp samesign ugt i32 %.02.i174, 15
  br i1 %i.vv, label %.lr.ph.i173, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180: ; preds = %bb.cf, %bb.cd
  %.018.lcssa.i171 = phi i32 [ %i.vn, %bb.cd ], [ %i.vt, %bb.cf ]
  %.0.lcssa.i172 = phi i32 [ %i.vj, %bb.cd ], [ %i.vu, %bb.cf ] ; 2 uses
  store i32 %.018.lcssa.i171, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i172, ptr %2, align 4, !tbaa !24
  %i.vw = load i32, ptr %1, align 4, !tbaa !24
  %i.vx = add nsw i32 %.0.lcssa.i172, %i.uz       ; 4 uses
  %i.vy = and i32 %i.va, 65535
  %i.vz = and i32 %i.vy, %i.vb
  %i.wa = sub nsw i32 24, %i.vx
  %i.wb = shl i32 %i.vz, %i.wa
  %i.wc = or i32 %i.wb, %i.vw                     ; 2 uses
  %i.wd = icmp sgt i32 %i.vx, 7
  br i1 %i.wd, label %.lr.ph.i183, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190

.lr.ph.i183:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180, %bb.ch
  %.02.i184 = phi i32 [ %i.wj, %bb.ch ], [ %i.vx, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ] ; 2 uses
  %.0181.i185 = phi i32 [ %i.wi, %bb.ch ], [ %i.wc, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ] ; 3 uses
  %i.we = lshr i32 %.0181.i185, 16
  %i.wf = trunc i32 %i.we to i8
  %.val20.i186 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i187 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.wf, ptr %i.d, align 1, !tbaa !34
  call void %.val20.i186(ptr noundef %.val21.i187, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.wg = and i32 %.0181.i185, 16711680
  %i.wh = icmp eq i32 %i.wg, 16711680
  br i1 %i.wh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i183
  %.val.i188 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i189 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !34
  call void %.val.i188(ptr noundef %.val19.i189, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i183
  %i.wi = shl i32 %.0181.i185, 8                  ; 2 uses
  %i.wj = add nsw i32 %.02.i184, -8               ; 2 uses
  %i.wk = icmp samesign ugt i32 %.02.i184, 15
  br i1 %i.wk, label %.lr.ph.i183, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190: ; preds = %bb.ch, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180
  %.018.lcssa.i181 = phi i32 [ %i.wc, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wi, %bb.ch ]
  %.0.lcssa.i182 = phi i32 [ %i.vx, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wj, %bb.ch ] ; 3 uses
  store i32 %.018.lcssa.i181, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i182, ptr %2, align 4, !tbaa !24
  %i.wl = add nsw i32 %i.ub, 1
  %.not.not = icmp sgt i32 %.0105.lcssa.ph, %i.ub
  br i1 %.not.not, label %.preheader, label %._crit_edge239, !llvm.loop !719

._crit_edge239:                                   ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190
  br i1 %.not, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %._crit_edge239
  %i.wm = load i32, ptr %1, align 4, !tbaa !24
  %i.wn = zext i16 %i.t to i32
  %i.wo = add nsw i32 %.0.lcssa.i182, %i.wn       ; 4 uses
  %i.wp = zext i16 %i.r to i32
  %i.wq = sub nsw i32 24, %i.wo
  %i.wr = shl i32 %i.wp, %i.wq
  %i.ws = or i32 %i.wr, %i.wm                     ; 2 uses
  %i.wt = icmp sgt i32 %i.wo, 7
  br i1 %i.wt, label %.lr.ph.i193, label %.sink.split

.lr.ph.i193:                                      ; preds = %bb.ci
  %i.wu = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph.i193
  %.02.i194 = phi i32 [ %i.wo, %.lr.ph.i193 ], [ %i.xa, %bb.cl ] ; 2 uses
  %.0181.i195 = phi i32 [ %i.ws, %.lr.ph.i193 ], [ %i.wz, %bb.cl ] ; 3 uses
  %i.wv = lshr i32 %.0181.i195, 16
  %i.ww = trunc i32 %i.wv to i8
  %.val20.i196 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i197 = load ptr, ptr %i.wu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ww, ptr %i.b, align 1, !tbaa !34
  call void %.val20.i196(ptr noundef %.val21.i197, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wx = and i32 %.0181.i195, 16711680
  %i.wy = icmp eq i32 %i.wx, 16711680
  br i1 %i.wy, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val.i198 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i199 = load ptr, ptr %i.wu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !34
  call void %.val.i198(ptr noundef %.val19.i199, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.wz = shl i32 %.0181.i195, 8                  ; 2 uses
  %i.xa = add nsw i32 %.02.i194, -8               ; 2 uses
  %i.xb = icmp sgt i32 %.02.i194, 15
  br i1 %i.xb, label %bb.cj, label %.sink.split, !llvm.loop !5

.sink.split:                                      ; preds = %bb.cl, %bb.by, %bb.ci, %.critedge
  %.018.lcssa.i191.sink = phi i32 [ %i.tr, %bb.by ], [ %i.tk, %.critedge ], [ %i.ws, %bb.ci ], [ %i.wz, %bb.cl ]
  %.0.lcssa.i192.sink = phi i32 [ %i.ts, %bb.by ], [ %i.tg, %.critedge ], [ %i.wo, %bb.ci ], [ %i.xa, %bb.cl ]
  store i32 %.018.lcssa.i191.sink, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i192.sink, ptr %2, align 4, !tbaa !24
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #33
  ret i32 %i.jg
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!9 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!10 = distinct !{null}
!11 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!18, !18, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25}
!27 = !{!"_ZTS17stbi_io_callbacks", !21, i64 0, !21, i64 8, !21, i64 16}
!28 = !{!"_ZTS13stbi__context", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !27, i64 16, !21, i64 40, !18, i64 48, !18, i64 52, !17, i64 56, !22, i64 184, !22, i64 192, !22, i64 200, !22, i64 208}
!29 = !{!28, !21, i64 40}
!30 = !{!28, !18, i64 52}
!31 = !{!28, !18, i64 48}
!32 = !{!28, !22, i64 200}
!33 = !{!28, !21, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!28, !22, i64 184}
!36 = !{!28, !22, i64 192}
!37 = !{!28, !22, i64 208}
!38 = !{!"_ZTS17stbi__result_info", !18, i64 0, !18, i64 4, !18, i64 8}
!39 = !{!38, !18, i64 0}
!40 = !{!"short", !17, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = !{!"_ZTS9stbi__gif", !18, i64 0, !18, i64 4, !22, i64 8, !22, i64 16, !22, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !17, i64 52, !17, i64 1076, !17, i64 2100, !22, i64 34872, !18, i64 34880, !18, i64 34884, !18, i64 34888, !18, i64 34892, !18, i64 34896, !18, i64 34900, !18, i64 34904, !18, i64 34908, !18, i64 34912, !18, i64 34916, !18, i64 34920}
!47 = !{!46, !18, i64 0}
!48 = !{!46, !18, i64 4}
!49 = !{!46, !18, i64 34920}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{!46, !22, i64 8}
!52 = !{!46, !22, i64 24}
!53 = !{!46, !22, i64 16}
!54 = !{!"float", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTS14stbi__zhuffman", !17, i64 0, !17, i64 1024, !17, i64 1056, !17, i64 1124, !17, i64 1156, !17, i64 1444}
!57 = !{!"_ZTS10stbi__zbuf", !22, i64 0, !22, i64 8, !18, i64 16, !18, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !18, i64 48, !56, i64 52, !56, i64 2072}
!58 = !{!57, !22, i64 0}
!59 = !{!57, !22, i64 8}
!60 = !{!57, !22, i64 32}
!61 = !{!57, !22, i64 24}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"branch_weights", i32 4, i32 28}
!64 = !{!"_ZTS10stbi__jpeg", !21, i64 0, !17, i64 8, !17, i64 6728, !17, i64 13448, !17, i64 13960, !18, i64 18056, !18, i64 18060, !18, i64 18064, !18, i64 18068, !18, i64 18072, !18, i64 18076, !17, i64 18080, !18, i64 18464, !18, i64 18468, !17, i64 18472, !18, i64 18476, !18, i64 18480, !18, i64 18484, !18, i64 18488, !18, i64 18492, !18, i64 18496, !18, i64 18500, !18, i64 18504, !18, i64 18508, !18, i64 18512, !18, i64 18516, !17, i64 18520, !18, i64 18536, !18, i64 18540, !21, i64 18544, !21, i64 18552, !21, i64 18560}
!65 = !{!64, !21, i64 0}
!66 = !{!28, !18, i64 0}
!67 = !{!28, !18, i64 4}
!68 = !{!28, !18, i64 8}
!69 = !{!"_ZTS9stbi__png", !21, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !18, i64 32}
!70 = !{!69, !21, i64 0}
!71 = !{!"_ZTS14stbi__bmp_data", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28}
!72 = !{!71, !18, i64 28}
!73 = !{!71, !18, i64 0}
!74 = !{!28, !21, i64 24}
!75 = !{!"_ZTS19stbi__write_context", !21, i64 0, !21, i64 8}
!76 = !{!75, !21, i64 0}
!77 = !{!75, !21, i64 8}
!78 = !{!"branch_weights", i32 8, i32 24}
!79 = !{!64, !18, i64 18504}
!80 = !{!64, !18, i64 18508}
!81 = !{!64, !17, i64 18472}
!82 = !{!64, !18, i64 18536}
!83 = !{!"p1 short", !21, i64 0}
!84 = !{!"_ZTSN10stbi__jpegUt_E", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !22, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !83, i64 80, !18, i64 88, !18, i64 92}
!85 = !{!84, !18, i64 0}
!86 = !{!64, !18, i64 18488}
!87 = !{!64, !18, i64 18492}
!88 = !{!64, !18, i64 18496}
!89 = !{!64, !18, i64 18480}
!90 = !{!64, !18, i64 18468}
!91 = !{!64, !18, i64 18464}
!92 = !{!64, !18, i64 18476}
!93 = !{!84, !18, i64 24}
!94 = !{!84, !18, i64 28}
!95 = !{!84, !18, i64 32}
!96 = !{!84, !18, i64 12}
!97 = !{!84, !22, i64 48}
!98 = !{!84, !18, i64 36}
!99 = !{!64, !18, i64 18068}
!100 = !{!64, !18, i64 18064}
!101 = !{!84, !18, i64 8}
!102 = !{!84, !18, i64 4}
!103 = !{!"llvm.loop.unswitch.partial.disable"}
!104 = !{!84, !83, i64 80}
!105 = !{!84, !18, i64 88}
!106 = !{!28, !21, i64 32}
!107 = !{!84, !21, i64 56}
!108 = !{!84, !21, i64 64}
!109 = !{!84, !22, i64 72}
!110 = !{!64, !18, i64 18512}
!111 = !{!69, !22, i64 24}
!112 = !{!69, !18, i64 32}
!113 = !{!28, !18, i64 12}
!114 = !{!69, !22, i64 16}
!115 = !{!69, !22, i64 8}
!116 = !{!71, !18, i64 12}
!117 = !{!71, !18, i64 16}
!118 = !{!71, !18, i64 20}
!119 = !{!71, !18, i64 24}
!120 = !{!71, !18, i64 8}
!121 = !{!71, !18, i64 4}
!122 = !{ptr @_ZL10stbi__skipP13stbi__contexti}
!123 = !{ptr @_ZL10stbi__getnP13stbi__contextPhi}
!124 = !{!46, !18, i64 34916}
!125 = !{!46, !18, i64 34892}
!126 = !{!46, !18, i64 34896}
!127 = !{!46, !18, i64 34900}
!128 = !{!46, !18, i64 34904}
!129 = !{!46, !18, i64 34908}
!130 = !{!46, !18, i64 34912}
!131 = !{!46, !18, i64 34884}
!132 = !{!46, !18, i64 34880}
!133 = !{!46, !18, i64 44}
!134 = !{!46, !22, i64 34872}
!135 = !{!46, !18, i64 32}
!136 = !{!"_ZTS13stbi__gif_lzw", !40, i64 0, !17, i64 2, !17, i64 3}
!137 = !{!136, !40, i64 0}
!138 = !{!136, !17, i64 3}
!139 = !{!46, !18, i64 36}
!140 = distinct !{ptr @stbi_load_from_file, null, null, null}
!141 = distinct !{!141, !42, !43, !44}
!142 = distinct !{!142, !42, !43, !44}
!143 = distinct !{!143, !42, !44, !43}
!144 = distinct !{!144, !42, !43, !44}
!145 = distinct !{!145, !42, !43, !44}
!146 = distinct !{!146, !42, !44, !43}
end_hunk_3
