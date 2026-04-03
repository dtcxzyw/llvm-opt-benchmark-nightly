begin_hunk_0
  br label %bb.av

bb.av:                                            ; preds = %bb.cd, %.preheader.i42.i
  %.051171.i.i = phi i32 [ 0, %.preheader.i42.i ], [ %.354.i.i.a, %bb.cd ] ; 7 uses
  %i.jn = phi i32 [ %.promoted170.i.i, %.preheader.i42.i ], [ %i.oe, %bb.cd ] ; 4 uses
  %i.jo = icmp slt i32 %i.jn, 16
  br i1 %i.jo, label %bb.aw, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i
end_hunk_0
begin_hunk_1

bb.bm:                                            ; preds = %bb.bl
  %i.lo = trunc nuw nsw i32 %.0.i.i.i to i8
  %6 = add nsw i32 %.051171.i.i, 1
  %i.lp = sext i32 %.051171.i.i to i64
  %i.lq = getelementptr inbounds i8, ptr %i.a, i64 %i.lp
  store i8 %i.lo, ptr %i.lq, align 1
end_hunk_1
begin_hunk_2
  %i.oc = getelementptr inbounds i8, ptr %i.a, i64 %i.ob
  %i.od = zext nneg i32 %.046.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.oc, i8 %.0.i43.i, i64 %i.od, i1 false)
  %7 = add nsw i32 %.046.i.i, %.051171.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bm
  %i.oe = phi i32 [ %i.lm, %bb.bm ], [ %i.ny, %bb.cc ]
  %.354.i.i.a = phi i32 [ %6, %bb.bm ], [ %7, %bb.cc ] ; 3 uses
  %i.of = icmp slt i32 %.354.i.i.a, %i.jl
  br i1 %i.of, label %bb.av, label %bb.ce, !llvm.loop !47

bb.ce:                                            ; preds = %bb.cd
  %.not58.i.i = icmp eq i32 %.354.i.i.a, %i.jl
  br i1 %.not58.i.i, label %bb.cf, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.cf:                                            ; preds = %bb.ce
end_hunk_2
begin_hunk_3

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.080105.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.383.i, %bb.fn ] ; 3 uses
  %i.ux = load ptr, ptr %0, align 8               ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
end_hunk_3
begin_hunk_4
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.i, %bb.fl
  %.383.i = phi i32 [ %.080105.i, %bb.fl ], [ %i.xo, %._crit_edge103.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xn, %._crit_edge103.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !154
end_hunk_4
begin_hunk_5
  %i.acz = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !158

.thread399:                                       ; preds = %bb.er, %.thread.i353, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.gb, %bb.fb, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread382, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.gf, %bb.gd, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.gb ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread382 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i353 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
end_hunk_5
