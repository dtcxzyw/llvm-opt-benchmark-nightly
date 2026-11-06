Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@stbi_write_png_to_mem:bb.a
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !573

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
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !35
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !35
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !574

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
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.bn = tail call i8 @llvm.abs.i8(i8 %i.bm, i1 false)
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %.092182.us.us.2, %i.bo ; 2 uses
  %indvars.iv.next201.2 = add nuw nsw i64 %indvars.iv200.2, 1 ; 2 uses
  %exitcond204.2.not = icmp eq i64 %indvars.iv.next201.2, %wide.trip.count203
  br i1 %exitcond204.2.not, label %._crit_edge.us.us.2, label %scalar.ph254, !llvm.loop !575

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
  %wide.load246 = load <4 x i8>, ptr %i.br, align 1, !tbaa !35
  %wide.load247 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !35
  %i.bt = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load246, i1 false)
  %i.bu = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load247, i1 false)
  %i.bv = zext <4 x i8> %i.bt to <4 x i32>
  %i.bw = zext <4 x i8> %i.bu to <4 x i32>
  %i.bx = add <4 x i32> %vec.phi244, %i.bv        ; 2 uses
  %i.by = add <4 x i32> %vec.phi245, %i.bw        ; 2 uses
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.bz, label %middle.block249, label %vector.body242, !llvm.loop !576

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
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !35
  %i.cd = tail call i8 @llvm.abs.i8(i8 %i.cc, i1 false)
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %.092182.us.us.3, %i.ce ; 2 uses
  %indvars.iv.next201.3 = add nuw nsw i64 %indvars.iv200.3, 1 ; 2 uses
  %exitcond204.3.not = icmp eq i64 %indvars.iv.next201.3, %wide.trip.count203
  br i1 %exitcond204.3.not, label %._crit_edge.us.us.3, label %scalar.ph238, !llvm.loop !577

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
  %wide.load = load <4 x i8>, ptr %i.ch, align 1, !tbaa !35
  %wide.load237 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !35
  %i.cj = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load, i1 false)
  %i.ck = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load237, i1 false)
  %i.cl = zext <4 x i8> %i.cj to <4 x i32>
  %i.cm = zext <4 x i8> %i.ck to <4 x i32>
  %i.cn = add <4 x i32> %vec.phi, %i.cl           ; 2 uses
  %i.co = add <4 x i32> %vec.phi236, %i.cm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !578

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
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = tail call i8 @llvm.abs.i8(i8 %i.cs, i1 false)
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %.092182.us.us.4, %i.cu ; 2 uses
  %indvars.iv.next201.4 = add nuw nsw i64 %indvars.iv200.4, 1 ; 2 uses
  %exitcond204.4.not = icmp eq i64 %indvars.iv.next201.4, %wide.trip.count203
  br i1 %exitcond204.4.not, label %.loopexit, label %scalar.ph, !llvm.loop !579

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
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.preheader.us, !llvm.loop !569

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.i) #36
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
  store i8 0, ptr %i.de, align 1, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !569

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.c, %.preheader179
  tail call void @free(ptr noundef nonnull %i.k) #36
  %i.dg = load i32, ptr @stbi_write_png_compression_level, align 4, !tbaa !23
  %i.dh = call ptr @stbi_zlib_compress(ptr noundef nonnull %i.i, i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.dg) ; 3 uses
  tail call void @free(ptr noundef nonnull %i.i) #36
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.a, align 4, !tbaa !23  ; 6 uses
  %i.dj = add nsw i32 %i.di, 57                   ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dk) #37 ; 16 uses
  %.not110 = icmp eq ptr %i.dl, null
  br i1 %.not110, label %bb.g, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  store i32 %i.dj, ptr %5, align 4, !tbaa !23
  store i64 727905341920923785, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <8 x i8> <i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.dm, align 1, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = lshr i32 %2, 24
  %i.dp = lshr i32 %2, 16
  %i.dq = lshr i32 %2, 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %6, ptr %i.dn, align 1, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.ds = lshr i32 %3, 24
  %i.dt = lshr i32 %3, 16
  %i.du = lshr i32 %3, 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %7, ptr %i.dr, align 1, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 25
  store i8 8, ptr %i.dv, align 1, !tbaa !35
  %i.dx = sext i32 %4 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const.stbi_write_png_to_mem.ctype, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !23 ; 2 uses
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 26
  store i8 %i.ea, ptr %i.dw, align 1, !tbaa !35
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 0, ptr %i.eb, align 1, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.ec, align 1, !tbaa !35
  store i8 0, ptr %i.ed, align 1, !tbaa !35
  %i.ee = xor i32 %i.do, 245
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !23
  %i.ei = xor i32 %i.eh, 5725777                  ; 2 uses
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = xor i32 %i.ei, %i.dp
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !23
  %i.ep = xor i32 %i.eo, %i.ej                    ; 2 uses
  %i.eq = lshr i32 %i.ep, 8
  %i.er = xor i32 %i.ep, %i.dq
  %i.es = and i32 %i.er, 255
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23
  %i.ew = xor i32 %i.ev, %i.eq                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = xor i32 %i.ew, %2
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23
  %i.fd = xor i32 %i.fc, %i.ex                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = and i32 %i.fd, 255
  %i.fg = xor i32 %i.ff, %i.ds
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  %i.fk = xor i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = xor i32 %i.fk, %i.dt
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23
  %i.fr = xor i32 %i.fq, %i.fl                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = xor i32 %i.fr, %i.du
  %i.fu = and i32 %i.ft, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %3
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !23
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = and i32 %i.gf, 255
  %i.gi = xor i32 %i.gh, 8
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !23
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %i.dz
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !23
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !23
  %i.gz = xor i32 %i.gy, %i.gu                    ; 2 uses
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = and i32 %i.gz, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !23
  %i.hf = xor i32 %i.he, %i.ha                    ; 2 uses
  %i.hg = lshr i32 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !35
  %i.hj = zext i8 %i.hi to i32
  %i.hk = and i32 %i.hf, 255
  %i.hl = xor i32 %i.hk, %i.hj
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !23
  %i.hp = xor i32 %i.ho, %i.hg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.hr = xor i32 %i.hp, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.hr)
  store i32 %8, ptr %i.hq, align 1, !tbaa !35
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.di)
  store i32 %9, ptr %i.hs, align 1, !tbaa !35
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.ht, align 1, !tbaa !35
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.hv = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull align 1 %i.dh, i64 %i.hv, i1 false)
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 3 uses
  tail call void @free(ptr noundef nonnull %i.dh) #36
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
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !35
  %i.id = zext i8 %i.ic to i32
  %i.ie = and i32 %.078.i.i116, 255
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !23
  %i.ij = xor i32 %i.ii, %i.ia                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !35
  %i.io = zext i8 %i.in to i32
  %i.ip = and i32 %i.ij, 255
  %i.iq = xor i32 %i.ip, %i.io
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !23
  %i.iu = xor i32 %i.it, %i.ik                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114, !llvm.loop !580

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
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !35
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %.078.i.i116.epil.init, 255
  %i.ja = xor i32 %i.iz, %i.iy
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !23
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
  store <4 x i8> %.07.lcssa.i.i, ptr %i.hw, align 1, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 0, ptr %i.jg, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.jh, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %_ZL12stbiw__wpcrcPPhi.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %_ZL12stbiw__wpcrcPPhi.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %.099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %.not = icmp eq i32 %4, 0
  %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = select i1 %.not, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.f = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
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
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = sub nsw i64 %indvars.iv, %i.q
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = sub i8 %i.w, %i.z
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = sub nsw i64 %indvars.iv, %i.q
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = lshr i8 %i.af, 1
  %i.ah = sub i8 %i.ac, %i.ag
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = sub nsw i64 %indvars.iv, %i.q
  %i.al = getelementptr inbounds i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = sub i8 %i.aj, %i.am
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ah, %bb.e ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.as, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581

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
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !35
  %wide.load231 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %i.bg = getelementptr inbounds i8, ptr %i.l, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load232 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !35
  %wide.load233 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %i.bi = sub <16 x i8> %wide.load, %wide.load232
  %i.bj = sub <16 x i8> %wide.load231, %wide.load233
  %i.bk = getelementptr inbounds i8, ptr %7, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !35
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.aw, -8                   ; 3 uses
  %i.bn = add nsw i64 %n.vec234, %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = add i64 %index235, %i.av                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.l, i64 %i.bo
  %wide.load236 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !35
  %i.bq = getelementptr inbounds i8, ptr %i.l, i64 %index235
  %wide.load237 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !35
  %i.br = sub <8 x i8> %wide.load236, %wide.load237
end_hunk_0
begin_hunk_1_@_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatERKSt6vectorIiSaIiEE:bb.a
  br i1 %i.do, label %stbi_write_png.exit, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %i.dp = call noalias noundef ptr @fopen(ptr noundef readonly %i.dm, ptr noundef nonnull @.str.84) ; 3 uses
  %.not.i59 = icmp eq ptr %i.dp, null
  br i1 %.not.i59, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !23
  %i.dr = sext i32 %i.dq to i64
  %i.ds = call i64 @fwrite(ptr noundef nonnull %i.dn, i64 noundef 1, i64 noundef %i.dr, ptr noundef nonnull %i.dp) ; 0 uses
  %i.dt = call i32 @fclose(ptr noundef nonnull %i.dp) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m
  %.0.ph.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]
  call void @free(ptr noundef nonnull %i.dn) #36
  br label %stbi_write_png.exit

stbi_write_png.exit:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, %.sink.split.i
  %.0.i60 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.du = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.96)
          to label %bb.p unwind label %bb.j

bb.p:                                             ; preds = %bb.o
  br i1 %i.du, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.97)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %bb.q
  br i1 %i.dv, label %bb.s, label %.thread137

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.dw = load ptr, ptr %0, align 8, !tbaa !120
  %i.dx = invoke i32 @stbi_write_bmp(ptr noundef %i.dw, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.aa, ptr noundef nonnull %.pre.i.i.i)
          to label %bb.t unwind label %bb.j

bb.t:                                             ; preds = %stbi_write_png.exit, %stbi_write_jpg.exit, %bb.s
  %.032.in = phi i32 [ %.0.i60, %stbi_write_png.exit ], [ %.0.i, %stbi_write_jpg.exit ], [ %i.dx, %bb.s ]
  %i.dy = trunc nuw i32 %.032.in to i1
  br label %.thread137

.thread137:                                       ; preds = %bb.r, %bb.t, %_ZNK2cv3Mat5cloneEv.exit
  %.143144 = phi i1 [ false, %_ZNK2cv3Mat5cloneEv.exit ], [ false, %bb.r ], [ %i.dy, %bb.t ] ; 2 uses
  %i.dz = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.ea = icmp ne i32 %i.dz, 1
  %.not.i.i.i62 = icmp eq ptr %.pre.i.i.i, null
  %or.cond145 = or i1 %.not.i.i.i62, %i.ea
  br i1 %or.cond145, label %_ZN2cv3MatD2Ev.exit63, label %bb.u

bb.u:                                             ; preds = %.thread137
  call void @free(ptr noundef nonnull %.pre.i.i.i) #36
  br label %_ZN2cv3MatD2Ev.exit63

_ZN2cv3MatD2Ev.exit63:                            ; preds = %_ZNK2cv3Mat5emptyEv.exit.i, %bb.e, %.thread137, %bb.u
  %.143136 = phi i1 [ %.143144, %bb.u ], [ false, %bb.e ], [ %.143144, %.thread137 ], [ false, %_ZNK2cv3Mat5emptyEv.exit.i ]
  %i.eb = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.f
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2cv3MatD2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.eb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2cv3MatD2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.v

_ZN2cv3MatD2Ev.exit:                              ; preds = %bb.k, %bb.j
  %i.ed = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.f
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZN2cv3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ed) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZN2cv3MatD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.dh

bb.v:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.244 = phi i1 [ %.143136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.244
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #30

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !120
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #30

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #36 = { nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { builtin nounwind }

!llvm.module.flags = !{!10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !42}
!10 = !{i32 7, !"openmp", i32 51}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!20, !20, i64 0}
!25 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24}
!26 = !{!"_ZTS17stbi_io_callbacks", !20, i64 0, !20, i64 8, !20, i64 16}
!27 = !{!"_ZTS13stbi__context", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !26, i64 16, !20, i64 40, !17, i64 48, !17, i64 52, !16, i64 56, !17, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216}
!28 = !{!27, !20, i64 40}
!29 = !{!27, !17, i64 52}
!30 = !{!27, !17, i64 48}
!31 = !{!27, !17, i64 184}
!32 = !{!27, !21, i64 208}
!33 = !{!27, !21, i64 192}
!34 = !{!27, !20, i64 16}
!35 = !{!16, !16, i64 0}
!36 = !{!27, !21, i64 200}
!37 = !{!27, !21, i64 216}
!38 = !{!"_ZTS17stbi__result_info", !17, i64 0, !17, i64 4, !17, i64 8}
!39 = !{!38, !17, i64 0}
!40 = !{!"short", !16, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = !{!"_ZTS9stbi__png", !20, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !17, i64 32}
!47 = !{!46, !20, i64 0}
!48 = !{!46, !21, i64 24}
!49 = !{!46, !17, i64 32}
!50 = !{!27, !17, i64 12}
!51 = !{!27, !17, i64 0}
!52 = !{!27, !17, i64 4}
!53 = !{!27, !17, i64 8}
!54 = !{!46, !21, i64 16}
!55 = !{!46, !21, i64 8}
!56 = !{!"_ZTS14stbi__bmp_data", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32}
!57 = !{!56, !17, i64 28}
!58 = !{!56, !17, i64 12}
!59 = !{!56, !17, i64 16}
!60 = !{!56, !17, i64 20}
!61 = !{!56, !17, i64 24}
!62 = !{!56, !17, i64 8}
!63 = !{!56, !17, i64 0}
!64 = !{!56, !17, i64 4}
!65 = !{!56, !17, i64 32}
!66 = !{!27, !20, i64 24}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"branch_weights", i32 4, i32 28}
!69 = !{!"_ZTS10stbi__jpeg", !20, i64 0, !16, i64 8, !16, i64 6728, !16, i64 13448, !16, i64 13960, !17, i64 18056, !17, i64 18060, !17, i64 18064, !17, i64 18068, !17, i64 18072, !17, i64 18076, !16, i64 18080, !17, i64 18464, !17, i64 18468, !16, i64 18472, !17, i64 18476, !17, i64 18480, !17, i64 18484, !17, i64 18488, !17, i64 18492, !17, i64 18496, !17, i64 18500, !17, i64 18504, !17, i64 18508, !17, i64 18512, !17, i64 18516, !16, i64 18520, !17, i64 18536, !17, i64 18540, !20, i64 18544, !20, i64 18552, !20, i64 18560}
!70 = !{!69, !20, i64 0}
!71 = !{!69, !17, i64 18508}
!72 = !{!69, !16, i64 18472}
!73 = !{!69, !17, i64 18536}
!74 = !{!"p1 short", !20, i64 0}
!75 = !{!"_ZTSN10stbi__jpegUt_E", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !21, i64 48, !20, i64 56, !20, i64 64, !21, i64 72, !74, i64 80, !17, i64 88, !17, i64 92}
!76 = !{!75, !17, i64 0}
!77 = !{!69, !17, i64 18488}
!78 = !{!69, !17, i64 18492}
!79 = !{!69, !17, i64 18496}
!80 = !{!69, !17, i64 18480}
!81 = !{!69, !17, i64 18468}
!82 = !{!69, !17, i64 18464}
!83 = !{!69, !17, i64 18476}
!84 = !{!75, !17, i64 24}
!85 = !{!75, !17, i64 28}
!86 = !{!75, !17, i64 32}
!87 = !{!75, !17, i64 12}
!88 = !{!75, !21, i64 48}
!89 = !{!75, !17, i64 36}
!90 = !{!69, !17, i64 18068}
!91 = !{!69, !17, i64 18064}
!92 = !{!75, !17, i64 8}
!93 = !{!75, !17, i64 4}
!94 = !{!"llvm.loop.unswitch.partial.disable"}
!95 = !{!75, !74, i64 80}
!96 = !{!75, !17, i64 88}
!97 = !{!27, !20, i64 32}
!98 = !{!75, !20, i64 56}
!99 = !{!75, !20, i64 64}
!100 = !{!75, !21, i64 72}
!101 = !{!69, !17, i64 18512}
!102 = !{!69, !17, i64 18504}
!103 = !{ptr @_ZL10stbi__skipP13stbi__contexti}
!104 = !{!"_ZTS14stbi__zhuffman", !16, i64 0, !16, i64 1024, !16, i64 1056, !16, i64 1124, !16, i64 1156, !16, i64 1444}
!105 = !{!"_ZTS10stbi__zbuf", !21, i64 0, !21, i64 8, !17, i64 16, !17, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !17, i64 48, !104, i64 52, !104, i64 2072}
!106 = !{!105, !21, i64 0}
!107 = !{!105, !21, i64 8}
!108 = !{!105, !21, i64 32}
!109 = !{!105, !21, i64 24}
!110 = !{!"branch_weights", i32 8, i32 24}
!111 = !{!"float", !16, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"_ZTS19stbi__write_context", !20, i64 0, !20, i64 8, !16, i64 16, !17, i64 80}
!114 = !{!113, !20, i64 0}
!115 = !{!113, !20, i64 8}
!116 = !{!113, !17, i64 80}
!117 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!118 = !{!"long", !16, i64 0}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !117, i64 0, !118, i64 8, !16, i64 16}
!120 = !{!119, !21, i64 0}
!121 = !{!"p1 int", !20, i64 0}
!122 = !{!"_ZTSN2cv3MatE", !21, i64 0, !121, i64 8, !17, i64 16, !17, i64 20, !17, i64 24}
!123 = !{!122, !21, i64 0}
!124 = !{!122, !17, i64 16}
!125 = !{!122, !17, i64 20}
!126 = !{!122, !17, i64 24}
!127 = !{!119, !118, i64 8}
!128 = distinct !{ptr @stbi_load_from_file, null, null, null}
!129 = distinct !{!129, !42, !43, !44}
!130 = distinct !{!130, !42, !43, !44}
!131 = distinct !{!131, !42, !44, !43}
!132 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!133 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!134 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!135 = distinct !{!135, !42}
!136 = distinct !{!136, !42}
!137 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!138 = distinct !{!138, !42}
!139 = distinct !{!139, !42}
!140 = distinct !{!140, !42}
!141 = distinct !{!141, !42}
!142 = distinct !{!142, !42}
!143 = distinct !{!143, !42}
!144 = distinct !{!144, !67}
!145 = distinct !{!145, !42}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
end_hunk_1
