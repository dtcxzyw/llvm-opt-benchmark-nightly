Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv_reference?download=true
begin_hunk_0_@H5T__conv_ref:bb.a
  %i.ft = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !21
  %i.fu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 195, i64 noundef %i.fs, i64 noundef %i.ft, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.sink.split

.loopexit411:                                     ; preds = %bb.ai
  %i.fv = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.fw = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !21
  %i.fx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 195, i64 noundef %i.fv, i64 noundef %i.fw, ptr noundef nonnull @.str.5) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

bb.am:                                            ; preds = %bb.ak
  %i.fy = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !34
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !39
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !34
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !36
  %i.gh = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !34
  %i.gk = call i64 %i.gc(ptr noundef %i.ge, ptr noundef %.1224338, i64 noundef %i.gg, ptr noundef %i.gj, ptr noundef nonnull %i.a) #4 ; 9 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.loopexit407.thread, label %bb.an

.loopexit407.thread:                              ; preds = %bb.am
  %i.gm = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !21
  %i.gn = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !21
  %i.go = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 202, i64 noundef %i.gm, i64 noundef %i.gn, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.sink.split

.loopexit407:                                     ; preds = %bb.w
  %i.gp = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !21
  %i.gq = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !21
  %i.gr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 202, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull @.str.6) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

bb.an:                                            ; preds = %bb.am
  %i.gs = icmp ult i64 %.1189343, %i.gk
  br i1 %i.gs, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gt = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_ref_seq_blk_free_list, ptr noundef %.1194342, i64 noundef %i.gk) #4 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.loopexit408.thread, label %bb.ap

.loopexit408.thread:                              ; preds = %bb.ao
  %i.gv = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !21
  %i.gw = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !21
  %i.gx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 209, i64 noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %.sink.split

.loopexit408:                                     ; preds = %bb.y
  %i.gy = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !21
  %i.gz = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !21
  %i.ha = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 209, i64 noundef %i.gy, i64 noundef %i.gz, ptr noundef nonnull @.str.7) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gt, i8 0, i64 %i.gk, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.2195 = phi ptr [ %i.gt, %bb.ap ], [ %.1194342, %bb.an ] ; 8 uses
  %.2190 = phi i64 [ %i.gk, %bb.ap ], [ %.1189343, %bb.an ] ; 2 uses
  %i.hb = load i8, ptr %i.a, align 1, !tbaa !13, !range !14, !noundef !15
  %i.hc = trunc nuw i8 %i.hb to i1
  %.pre455 = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 4 uses
  br i1 %i.hc, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre455, i64 92
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !34
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2195, ptr align 1 %.1224338, i64 %i.gk, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre455, i64 104
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre455, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre455, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !36
  %i.ho = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !34
  %i.hr = call i32 %i.hj(ptr noundef %i.hl, ptr noundef %.1224338, i64 noundef %i.hn, ptr noundef %i.hq, ptr noundef %.2195, i64 noundef %i.gk) #4
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %.loopexit409.thread, label %bb.au

.loopexit409.thread:                              ; preds = %bb.at
  %i.ht = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.hu = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !21
  %i.hv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 220, i64 noundef %i.ht, i64 noundef %i.hu, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.sink.split

.loopexit409:                                     ; preds = %bb.ac
  %i.hw = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.hx = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !21
  %i.hy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 220, i64 noundef %i.hw, i64 noundef %i.hx, ptr noundef nonnull @.str.8) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hz = load i8, ptr %i.a, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ia = trunc nuw i8 %i.hz to i1
  %.pre456 = load ptr, ptr %i.ay, align 8, !tbaa !30 ; 4 uses
  br i1 %i.ia, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre456, i64 92
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !34
  %i.id = icmp eq i32 %i.ic, 2
  br i1 %i.id, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1218340, ptr align 1 %.2195, i64 %i.gk, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre456, i64 104
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !34
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !41
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !34
  %i.im = load i32, ptr %i.ij, align 8, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %.pre456, i64 96
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !34
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre456, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !36
  %i.ir = call i32 %i.ih(ptr noundef %i.il, ptr noundef %.2195, i64 noundef %i.gk, i32 noundef %i.im, ptr noundef %i.io, ptr noundef %.1218340, i64 noundef %i.iq, ptr noundef %.3214341) #4
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.ax
  %i.it = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.iu = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !21
  %i.iv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 231, i64 noundef %i.it, i64 noundef %i.iu, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.sink.split

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.al
  %.3196 = phi ptr [ %.1194342, %bb.al ], [ %.2195, %bb.aw ], [ %.2195, %bb.ax ] ; 2 uses
  %.3191 = phi i64 [ %.1189343, %bb.al ], [ %.2190, %bb.aw ], [ %.2190, %bb.ax ] ; 2 uses
  %.not244 = icmp eq ptr %.3214341, null
  %i.iw = getelementptr inbounds i8, ptr %.3214341, i64 %.2203
  %spec.select = select i1 %.not244, ptr null, ptr %i.iw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.ix = add nuw i64 %.1186344, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ix, %.1199
  br i1 %exitcond.not, label %.loopexit412, label %.peel.next, !llvm.loop !8

.loopexit412:                                     ; preds = %bb.ay, %bb.aj
  %.3196.lcssa = phi ptr [ %.3196.peel, %bb.aj ], [ %.3196, %bb.ay ] ; 2 uses
  %.3191.lcssa = phi i64 [ %.3191.peel, %bb.aj ], [ %.3191, %bb.ay ]
  %spec.select.lcssa = phi ptr [ %spec.select.peel, %bb.aj ], [ %spec.select, %bb.ay ]
  %i.iy = sub i64 %.0227347, %.1199               ; 2 uses
  %.not243 = icmp eq i64 %i.iy, 0
  br i1 %.not243, label %.thread263, label %bb.q, !llvm.loop !9

bb.az:                                            ; preds = %bb.b
  %i.iz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.ja = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !21
  %i.jb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 253, i64 noundef %i.iz, i64 noundef %i.ja, ptr noundef nonnull @.str.10) #4 ; 0 uses
  br label %.thread263.thread

bb.ba:                                            ; preds = %bb.ag
  %i.jc = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !21
  %i.jd = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !21
  %i.je = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 231, i64 noundef %i.jc, i64 noundef %i.jd, ptr noundef nonnull @.str.9) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

.sink.split:                                      ; preds = %.thread, %.loopexit406.thread, %.loopexit411.thread, %.loopexit407.thread, %.loopexit408.thread, %.loopexit409.thread
  %.4197.ph471.ph = phi ptr [ %.2195, %.loopexit409.thread ], [ null, %.loopexit408.thread ], [ %.1194342, %.loopexit407.thread ], [ %.1194342, %.loopexit411.thread ], [ %.1194342, %.loopexit406.thread ], [ %.2195, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %.loopexit408, %.loopexit407, %.loopexit411, %.loopexit406, %.loopexit409, %bb.ba
  %.4197.ph471 = phi ptr [ %.2195.peel, %.loopexit409 ], [ %.2195.peel, %bb.ba ], [ %.0193352, %.loopexit406 ], [ %.0193352, %.loopexit411 ], [ %.0193352, %.loopexit407 ], [ null, %.loopexit408 ], [ %.4197.ph471.ph, %.sink.split ]
  %.1186344376470 = phi i64 [ 0, %.loopexit409 ], [ 0, %bb.ba ], [ 0, %.loopexit406 ], [ 0, %.loopexit411 ], [ 0, %.loopexit407 ], [ 0, %.loopexit408 ], [ %.1186344, %.sink.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %i.jf = icmp ult i64 %.0227347, %4
  %or.cond253 = select i1 %i.jf, i1 true, i1 %i.aw
  br i1 %or.cond253, label %bb.bc, label %.loopexit279

bb.bc:                                            ; preds = %bb.bb
  %i.jg = sub i64 %4, %.0227347
  %i.jh = select i1 %i.aw, i64 %.1186344376470, i64 0
  %.0 = add i64 %i.jg, %i.jh                      ; 2 uses
  %.not247355 = icmp eq i64 %.0, 0
  br i1 %.not247355, label %.loopexit279, label %.lr.ph358.preheader

.lr.ph358.preheader:                              ; preds = %bb.bc
  %i.ji = mul i64 %.0227347, %.0204
  %.3220.idx = select i1 %i.aw, i64 0, i64 %i.ji
  %.3220 = getelementptr inbounds nuw i8, ptr %7, i64 %.3220.idx
  br label %.lr.ph358

.lr.ph358:                                        ; preds = %.lr.ph358.preheader, %.lr.ph358
  %.1357 = phi i64 [ %i.jl, %.lr.ph358 ], [ %.0, %.lr.ph358.preheader ]
  %.4221356 = phi ptr [ %i.jk, %.lr.ph358 ], [ %.3220, %.lr.ph358.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 1 dereferenceable(48) %.4221356, i64 48, i1 false)
  %i.jj = call i32 @H5R__destroy(ptr noundef nonnull %9) #4 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.4221356, i64 %.0204
  %i.jl = add i64 %.1357, -1                      ; 2 uses
  %.not247 = icmp eq i64 %i.jl, 0
  br i1 %.not247, label %.loopexit279, label %.lr.ph358, !llvm.loop !10

.loopexit279:                                     ; preds = %.lr.ph358, %bb.bc, %bb.bb
  %.not249359 = icmp eq i64 %.1186344376470, 0
  %or.cond573 = or i1 %i.aw, %.not249359
  br i1 %or.cond573, label %.loopexit, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %.loopexit279
  %i.jm = icmp sgt i64 %.2206, 0
  %.2200..2187 = select i1 %i.jm, i64 %.1199, i64 %.1186344376470
  %.pn248 = sub i64 %.0227347, %.2200..2187
  %.pn = mul i64 %.pn248, %.0204
  %.5222 = getelementptr inbounds nuw i8, ptr %7, i64 %.pn
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %.2361 = phi i64 [ %i.jp, %.lr.ph362 ], [ %.1186344376470, %.lr.ph362.preheader ]
  %.6360 = phi ptr [ %i.jo, %.lr.ph362 ], [ %.5222, %.lr.ph362.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 1 dereferenceable(48) %.6360, i64 48, i1 false)
  %i.jn = call i32 @H5R__destroy(ptr noundef nonnull %9) #4 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.6360, i64 %.0204
  %i.jp = add i64 %.2361, -1                      ; 2 uses
  %.not249 = icmp eq i64 %i.jp, 0
  br i1 %.not249, label %.loopexit, label %.lr.ph362, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph362, %.loopexit279
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %.thread263

.thread263:                                       ; preds = %.loopexit412, %.loopexit407, %.loopexit411, %.loopexit406, %.loopexit409, %.loopexit, %bb.ba
  %.3275 = phi i32 [ -1, %bb.ba ], [ -1, %.loopexit ], [ -1, %.loopexit407 ], [ -1, %.loopexit411 ], [ -1, %.loopexit409 ], [ -1, %.loopexit406 ], [ 0, %.loopexit412 ] ; 2 uses
  %.5274 = phi ptr [ %.2195.peel, %bb.ba ], [ %.4197.ph471, %.loopexit ], [ %.0193352, %.loopexit407 ], [ %.0193352, %.loopexit411 ], [ %.2195.peel, %.loopexit409 ], [ %.0193352, %.loopexit406 ], [ %.3196.lcssa, %.loopexit412 ] ; 2 uses
  %.not250 = icmp eq ptr %.5274, null
  br i1 %.not250, label %.thread263.thread, label %bb.bd

bb.bd:                                            ; preds = %.thread263
  %i.jq = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_ref_seq_blk_free_list, ptr noundef nonnull %.5274) #4 ; 0 uses
  br label %.thread263.thread

.thread263.thread:                                ; preds = %.loopexit408, %bb.p, %bb.az, %bb.d, %bb.f, %bb.h, %bb.k, %bb.j, %bb.b, %bb.m, %bb.a, %bb.bd, %.thread263
  %.4 = phi i32 [ %.3275, %bb.bd ], [ %.3275, %.thread263 ], [ 0, %bb.a ], [ -1, %bb.az ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.k ], [ -1, %bb.j ], [ 0, %bb.b ], [ -1, %bb.m ], [ -1, %.loopexit408 ], [ 0, %bb.p ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @H5FL_blk_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5R__destroy(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_blk_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !43, !44}
!9 = distinct !{!9, !43}
!10 = distinct !{!10, !43}
!11 = distinct !{!11, !43}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"H5T_cdata_t", !5, i64 0, !5, i64 4, !12, i64 8, !17, i64 16}
!19 = !{!18, !5, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS5H5F_t", !17, i64 0}
!23 = !{!"H5O_shared_t", !5, i64 0, !22, i64 8, !5, i64 16, !4, i64 24}
!24 = !{!"p1 _ZTS12H5T_shared_t", !17, i64 0}
!25 = !{!"H5O_loc_t", !22, i64 0, !20, i64 8, !12, i64 16}
!26 = !{!"p1 _ZTS10H5RS_str_t", !17, i64 0}
!27 = !{!"H5G_name_t", !26, i64 0, !26, i64 8, !5, i64 16}
!28 = !{!"p1 _ZTS13H5VL_object_t", !17, i64 0}
!29 = !{!"H5T_t", !23, i64 0, !24, i64 40, !25, i64 48, !27, i64 72, !28, i64 96}
!30 = !{!29, !24, i64 40}
!31 = !{!"p1 _ZTS5H5T_t", !17, i64 0}
!32 = !{!"H5T_shared_t", !20, i64 0, !5, i64 8, !5, i64 12, !20, i64 16, !5, i64 24, !12, i64 28, !31, i64 32, !28, i64 40, !4, i64 48}
!33 = !{!32, !5, i64 12}
!34 = !{!4, !4, i64 0}
!35 = !{!18, !5, i64 4}
!36 = !{!32, !20, i64 16}
!37 = !{!"H5T_ref_class_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!38 = !{!37, !17, i64 0}
!39 = !{!37, !17, i64 16}
!40 = !{!37, !17, i64 24}
!41 = !{!37, !17, i64 32}
!42 = !{!37, !17, i64 8}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
