Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/smooth?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gray_render_line:bb.a

bb.am:                                            ; preds = %bb.al
  %i.gm = mul i64 %i.fh, %i.fs
  %i.gn = sub i64 0, %i.gm
  %i.go = lshr i64 %i.gn, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %i.gq = load ptr, ptr %i.fj, align 8, !tbaa !93 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !80
  %i.gt = sub nsw i32 256, %.2174                 ; 2 uses
  %i.gu = add i32 %i.gs, %i.gt
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !80
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !79
  %i.gx = add nsw i32 %.0176, %i.gp
  %i.gy = mul nsw i32 %i.gx, %i.gt
  %i.gz = add i32 %i.gw, %i.gy
  store i32 %i.gz, ptr %i.gv, align 8, !tbaa !79
  %i.ha = add nsw i32 %.2, 1
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.hb = add nsw i64 %.0, %i.fk                  ; 3 uses
  %i.hc = icmp sgt i64 %i.hb, -1
  %i.hd = icmp slt i64 %i.gj, 1
  %or.cond195 = and i1 %i.hc, %i.hd
  br i1 %or.cond195, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.he = mul i64 %i.hb, %i.ff
  %i.hf = lshr i64 %i.he, 32
  %i.hg = trunc nuw i64 %i.hf to i32              ; 2 uses
  %i.hh = load ptr, ptr %i.fj, align 8, !tbaa !93 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !80
  %i.hk = sub nsw i32 %i.hg, %.2174               ; 2 uses
  %i.hl = add i32 %i.hj, %i.hk
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !79
  %i.ho = add nsw i32 %.0176, 256
  %i.hp = mul nsw i32 %i.hk, %i.ho
  %i.hq = add i32 %i.hn, %i.hp
  store i32 %i.hq, ptr %i.hm, align 8, !tbaa !79
  %i.hr = add nsw i32 %.0170, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hs = mul i64 %i.fh, %.0
  %i.ht = sub i64 0, %i.hs
  %i.hu = lshr i64 %i.ht, 32
  %i.hv = trunc nuw i64 %i.hu to i32              ; 2 uses
  %i.hw = add nsw i64 %.0, %i.fi
  %i.hx = load ptr, ptr %i.fj, align 8, !tbaa !93 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !80
  %i.ia = sub i32 %i.hz, %.2174
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !80
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !79
  %i.id = add nsw i32 %.0176, %i.hv
  %i.ie = mul i32 %i.id, %.2174
  %i.if = sub i32 %i.ic, %i.ie
  store i32 %i.if, ptr %i.ib, align 8, !tbaa !79
  %i.ig = add nsw i32 %.2, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.1177 = phi i32 [ 256, %bb.ak ], [ %i.gp, %bb.am ], [ 0, %bb.ao ], [ %i.hv, %bb.ap ] ; 2 uses
  %.3175 = phi i32 [ %i.fx, %bb.ak ], [ 0, %bb.am ], [ %i.hg, %bb.ao ], [ 256, %bb.ap ] ; 2 uses
  %.1171 = phi i32 [ %i.gi, %bb.ak ], [ %.0170, %bb.am ], [ %i.hr, %bb.ao ], [ %.0170, %bb.ap ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.ak ], [ %i.ha, %bb.am ], [ %.2, %bb.ao ], [ %i.ig, %bb.ap ] ; 3 uses
  %.1 = phi i64 [ %i.fy, %bb.ak ], [ %i.fs, %bb.am ], [ %i.hb, %bb.ao ], [ %i.hw, %bb.ap ]
  %i.ih = sub nsw i32 %.3, %i.j                   ; 3 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ij = load i32, ptr %i.fl, align 8, !tbaa !85
  %.not.i214 = icmp slt i32 %i.ih, %i.ij
  br i1 %.not.i214, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ik = load i32, ptr %i.fm, align 4, !tbaa !87
  %.not44.i216 = icmp slt i32 %.1171, %i.ik
  br i1 %.not44.i216, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.il = load ptr, ptr %i.fq, align 8, !tbaa !76
  br label %gray_set_cell.exit222

bb.au:                                            ; preds = %bb.as
  %i.im = load ptr, ptr %i.fn, align 8, !tbaa !82
  %i.in = zext nneg i32 %i.ih to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.fo, align 8, !tbaa !86 ; 2 uses
  %.not45.i217 = icmp slt i32 %.1171, %i.ip
  %i.iq = add nsw i32 %i.ip, -1
  %i.ir = select i1 %.not45.i217, i32 %i.iq, i32 %.1171 ; 4 uses
  %i.is = load ptr, ptr %i.io, align 8, !tbaa !88 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !78 ; 2 uses
  %i.iu = icmp sgt i32 %i.it, %i.ir
  br i1 %i.iu, label %._crit_edge.i220, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %bb.au, %bb.av
  %i.iv = phi i32 [ %i.ja, %bb.av ], [ %i.it, %bb.au ]
  %i.iw = phi ptr [ %i.iz, %bb.av ], [ %i.is, %bb.au ] ; 3 uses
  %i.ix = icmp eq i32 %i.iv, %i.ir
  br i1 %i.ix, label %gray_set_cell.exit222, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i218
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !88 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !78 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, %i.ir
  br i1 %i.jb, label %._crit_edge.i220.loopexit, label %.lr.ph.i218

._crit_edge.i220.loopexit:                        ; preds = %bb.av
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  br label %._crit_edge.i220

._crit_edge.i220:                                 ; preds = %._crit_edge.i220.loopexit, %bb.au
  %.036.lcssa.i221 = phi ptr [ %i.io, %bb.au ], [ %i.jc, %._crit_edge.i220.loopexit ] ; 2 uses
  %i.jd = load ptr, ptr %i.fp, align 8, !tbaa !92 ; 9 uses
  %i.je = load ptr, ptr %i.fq, align 8, !tbaa !76
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i220
  store i32 98, ptr %i.fr, align 4, !tbaa !94
  br label %gray_set_cell.exit222

bb.ax:                                            ; preds = %._crit_edge.i220
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %i.jg, ptr %i.fp, align 8, !tbaa !92
  store i32 %i.ir, ptr %i.jd, align 8, !tbaa !78
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 0, ptr %i.jh, align 8, !tbaa !79
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store i32 0, ptr %i.ji, align 4, !tbaa !80
  %i.jj = load ptr, ptr %.036.lcssa.i221, align 8, !tbaa !88
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !81
  store ptr %i.jd, ptr %.036.lcssa.i221, align 8, !tbaa !88
  br label %gray_set_cell.exit222

gray_set_cell.exit222:                            ; preds = %.lr.ph.i218, %bb.at, %bb.aw, %bb.ax
  %.0.sink.i215 = phi ptr [ %i.il, %bb.at ], [ %i.jd, %bb.aw ], [ %i.jd, %bb.ax ], [ %i.iw, %.lr.ph.i218 ] ; 2 uses
  store ptr %.0.sink.i215, ptr %i.fj, align 8, !tbaa !93
  %i.jl = icmp ne i32 %.1171, %i.r
  %i.jm = icmp ne i32 %.3, %i.f
  %i.jn = or i1 %i.jl, %i.jm
  br i1 %i.jn, label %bb.aj, label %.loopexit, !llvm.loop !143

.loopexit:                                        ; preds = %gray_set_cell.exit222, %gray_set_cell.exit213, %gray_set_cell.exit204, %..loopexit_crit_edge
  %i.jo = phi ptr [ %.pre251, %..loopexit_crit_edge ], [ %.0.sink.i197, %gray_set_cell.exit204 ], [ %.0.sink.i206, %gray_set_cell.exit213 ], [ %.0.sink.i215, %gray_set_cell.exit222 ] ; 2 uses
  %.2178 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %i.t, %gray_set_cell.exit204 ], [ %i.t, %gray_set_cell.exit213 ], [ %.1177, %gray_set_cell.exit222 ]
  %.4 = phi i32 [ %i.v, %..loopexit_crit_edge ], [ 0, %gray_set_cell.exit204 ], [ 256, %gray_set_cell.exit213 ], [ %.3175, %gray_set_cell.exit222 ]
  %i.jp = trunc i64 %1 to i32
  %i.jq = and i32 %i.jp, 255
  %i.jr = trunc i64 %2 to i32
  %i.js = and i32 %i.jr, 255
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 4 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !80
  %i.jv = sub nsw i32 %i.js, %.4                  ; 2 uses
  %i.jw = add i32 %i.ju, %i.jv
  store i32 %i.jw, ptr %i.jt, align 4, !tbaa !80
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !79
  %i.jz = add nsw i32 %.2178, %i.jq
  %i.ka = mul nsw i32 %i.jv, %i.jz
  %i.kb = add i32 %i.jy, %i.ka
  store i32 %i.kb, ptr %i.jx, align 8, !tbaa !79
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %bb.a, %.loopexit, %gray_set_cell.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.kc, align 8, !tbaa !100
  store i64 %2, ptr %i.a, align 8, !tbaa !101
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_overlap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 11 uses
  %4 = alloca %struct.TOrigin_, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !24
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = and i32 %i.i, 1073733632
  %.not33 = icmp eq i32 %i.j, 0
  br i1 %.not33, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_overlap_spans, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = shl i32 %i.i, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 %i.q, ptr %i.r, align 8, !tbaa !102
  %i.s = load i32, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = shl i32 %i.s, 2
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.u, ptr %i.v, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31   ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = add i32 %i.s, -1
  %i.ac = mul i32 %i.x, %i.ab
  %narrow = select i1 %i.y, i32 0, i32 %i.ac
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.aa, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !105
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.ad, align 8, !tbaa !106
  %i.ae = icmp ult ptr %i.b, %i.g
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %5 = ptrtoaddr ptr %i.g to i64
  %6 = ptrtoaddr ptr %i.b to i64
  %i.af = xor i64 %6, -1
  %i.ag = add i64 %i.af, %5                       ; 2 uses
  %i.ah = lshr i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 48
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ai, 2305843009213693950     ; 3 uses
  %i.aj = shl i64 %n.vec, 4
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %i.b, i64 %i.al
  %next.gep41 = getelementptr i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8
  %i.an = shl nsw <2 x i64> %wide.load, splat (i64 2)
  %i.ao = shl nsw <2 x i64> %wide.load42, splat (i64 2)
  store <2 x i64> %i.an, ptr %next.gep, align 8
  store <2 x i64> %i.ao, ptr %next.gep41, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.lr.ph37.preheader, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.034.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.034 = phi ptr [ %i.as, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.aq = load <2 x i64>, ptr %.034, align 8, !tbaa !44
  %i.ar = shl nsw <2 x i64> %i.aq, splat (i64 2)
  store <2 x i64> %i.ar, ptr %.034, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.g
  br i1 %i.at, label %.lr.ph, label %.lr.ph37.preheader, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65
  %i.ay = call i32 %i.av(ptr noundef %i.ax, ptr noundef nonnull %3) #9
  br label %.loopexit

.lr.ph37.preheader:                               ; preds = %.lr.ph, %middle.block
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = call i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %3) #9
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %.135 = phi ptr [ %i.bg, %.lr.ph37 ], [ %i.b, %.lr.ph37.preheader ] ; 3 uses
  %i.be = load <2 x i64>, ptr %.135, align 8, !tbaa !44
  %i.bf = sdiv <2 x i64> %i.be, splat (i64 4)
  store <2 x i64> %i.bf, ptr %.135, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.135, i64 16 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.g
  br i1 %i.bh, label %.lr.ph37, label %.loopexit, !llvm.loop !146

.loopexit:                                        ; preds = %.lr.ph37, %._crit_edge, %bb.c
  %.029 = phi i32 [ 98, %bb.c ], [ %i.ay, %._crit_edge ], [ %i.bd, %.lr.ph37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_lcd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 12 uses
  %4 = alloca %struct.TOrigin_, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_lcd_spans, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.k, ptr %i.l, align 8, !tbaa !102
  %i.m = load i32, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = add i32 %i.m, -1
  %i.v = mul i32 %i.q, %i.u
  %narrow = select i1 %i.r, i32 0, i32 %i.v
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.t, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %i.w, align 8, !tbaa !106
  %i.x = load i64, ptr %i.c, align 8, !tbaa !57
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = sub nsw i64 0, %i.aa
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.y, i64 noundef %i.ab) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = call i32 %i.ad(ptr noundef %i.af, ptr noundef nonnull %3) #9 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %4, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %4, align 8, !tbaa !105
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.am = sub nsw i64 %i.aj, %i.al
  %i.an = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = sub nsw i64 %i.an, %i.ap
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.am, i64 noundef %i.aq) #9
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.at = call i32 %i.ar(ptr noundef %i.as, ptr noundef nonnull %3) #9 ; 2 uses
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %4, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %4, align 8, !tbaa !105
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57
  %i.az = sub nsw i64 %i.aw, %i.ay
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.bd = sub nsw i64 %i.ba, %i.bc
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.az, i64 noundef %i.bd) #9
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.bg = call i32 %i.be(ptr noundef %i.bf, ptr noundef nonnull %3) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.041 = phi i32 [ %i.ag, %bb.a ], [ %i.at, %bb.b ], [ %i.bg, %bb.c ]
  %.040.in = phi ptr [ %i.c, %bb.a ], [ %i.ak, %bb.b ], [ %i.ax, %bb.c ]
  %.0.in = phi ptr [ %i.z, %bb.a ], [ %i.ao, %bb.b ], [ %i.bb, %bb.c ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !58
  %.040 = load i64, ptr %.040.in, align 8, !tbaa !57
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %.040, i64 noundef %.0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_lcdv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %2, ptr %3, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.g, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.b, 3
  store i32 %i.h, ptr %i.a, align 8, !tbaa !31
  %i.i = load i32, ptr %2, align 8, !tbaa !29
  %i.j = udiv i32 %i.i, 3
end_hunk_0
