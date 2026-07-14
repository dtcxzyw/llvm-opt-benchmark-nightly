inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gray_render_line:bb.a
  %i.gh = sub i64 0, %i.gg
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32              ; 2 uses
  %i.gk = load ptr, ptr %i.ff, align 8, !tbaa !112 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !102
  %i.gn = sub nsw i32 256, %.2170                 ; 2 uses
  %i.go = add i32 %i.gm, %i.gn
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !102
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !101
  %i.gr = add nsw i32 %.0, %i.gj
  %i.gs = mul nsw i32 %i.gr, %i.gn
  %i.gt = add i32 %i.gq, %i.gs
  store i32 %i.gt, ptr %i.gp, align 8, !tbaa !101
  %i.gu = add nsw i32 %.2175, 1
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.gv = add nsw i64 %.0171, %i.fe               ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  %i.gx = icmp slt i64 %i.gd, 1
  %or.cond195 = and i1 %i.gw, %i.gx
  br i1 %or.cond195, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gy = mul i64 %i.gv, %i.fa
  %i.gz = lshr i64 %i.gy, 32
  %i.ha = trunc nuw i64 %i.gz to i32              ; 2 uses
  %i.hb = load ptr, ptr %i.ff, align 8, !tbaa !112 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !102
  %i.he = sub nsw i32 %i.ha, %.2170               ; 2 uses
  %i.hf = add i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !102
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !101
  %i.hi = add nsw i32 %.0, 256
  %i.hj = mul nsw i32 %i.he, %i.hi
  %i.hk = add i32 %i.hh, %i.hj
  store i32 %i.hk, ptr %i.hg, align 8, !tbaa !101
  %i.hl = add nsw i32 %.0177, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hm = mul i64 %i.fc, %.0171
  %i.hn = sub i64 0, %i.hm
  %i.ho = lshr i64 %i.hn, 32
  %i.hp = trunc nuw i64 %i.ho to i32              ; 2 uses
  %i.hq = add nsw i64 %.0171, %i.fd
  %i.hr = load ptr, ptr %i.ff, align 8, !tbaa !112 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !102
  %i.hu = sub i32 %i.ht, %.2170
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !102
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !101
  %i.hx = add nsw i32 %.0, %i.hp
  %i.hy = mul i32 %i.hx, %.2170
  %i.hz = sub i32 %i.hw, %i.hy
  store i32 %i.hz, ptr %i.hv, align 8, !tbaa !101
  %i.ia = add nsw i32 %.2175, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.1178 = phi i32 [ %i.gc, %bb.ak ], [ %.0177, %bb.am ], [ %i.hl, %bb.ao ], [ %.0177, %bb.ap ] ; 5 uses
  %.3176 = phi i32 [ %.2175, %bb.ak ], [ %i.gu, %bb.am ], [ %.2175, %bb.ao ], [ %i.ia, %bb.ap ] ; 3 uses
  %.1172 = phi i64 [ %i.fs, %bb.ak ], [ %i.fm, %bb.am ], [ %i.gv, %bb.ao ], [ %i.hq, %bb.ap ]
  %.3 = phi i32 [ %i.fr, %bb.ak ], [ 0, %bb.am ], [ %i.ha, %bb.ao ], [ 256, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 256, %bb.ak ], [ %i.gj, %bb.am ], [ 0, %bb.ao ], [ %i.hp, %bb.ap ] ; 2 uses
  %i.ib = sub nsw i32 %.3176, %i.j                ; 3 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.id = load i32, ptr %i.fg, align 8, !tbaa !113
  %.not.i216 = icmp slt i32 %i.ib, %i.id
  br i1 %.not.i216, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ie = load i32, ptr %i.fh, align 4, !tbaa !47
  %.not41.i218 = icmp slt i32 %.1178, %i.ie
  br i1 %.not41.i218, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.if = load ptr, ptr %i.fl, align 8, !tbaa !98
  br label %gray_set_cell.exit225

bb.au:                                            ; preds = %bb.as
  %i.ig = load ptr, ptr %i.fi, align 8, !tbaa !104
  %i.ih = zext nneg i32 %i.ib to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.fj, align 8, !tbaa !43 ; 2 uses
  %.not42.i219 = icmp slt i32 %.1178, %i.ij
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = select i1 %.not42.i219, i32 %i.ik, i32 %.1178 ; 4 uses
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !105 ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !99 ; 2 uses
  %i.io = icmp sgt i32 %i.in, %i.il
  br i1 %i.io, label %._crit_edge.i222, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %bb.au, %bb.av
  %i.ip = phi i32 [ %i.iu, %bb.av ], [ %i.in, %bb.au ]
  %i.iq = phi ptr [ %i.it, %bb.av ], [ %i.im, %bb.au ] ; 3 uses
  %i.ir = icmp eq i32 %i.ip, %i.il
  br i1 %i.ir, label %gray_set_cell.exit225, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i220
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !105 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !99 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, %i.il
  br i1 %i.iv, label %._crit_edge.i222.loopexit, label %.lr.ph.i220

._crit_edge.i222.loopexit:                        ; preds = %bb.av
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  br label %._crit_edge.i222

._crit_edge.i222:                                 ; preds = %._crit_edge.i222.loopexit, %bb.au
  %.034.lcssa.i223 = phi ptr [ %i.ii, %bb.au ], [ %i.iw, %._crit_edge.i222.loopexit ] ; 2 uses
  %i.ix = load ptr, ptr %i.fk, align 8, !tbaa !111 ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr %i.iy, ptr %i.fk, align 8, !tbaa !111
  %i.iz = load ptr, ptr %i.fl, align 8, !tbaa !98
  %.not43.i224 = icmp ult ptr %i.ix, %i.iz
  br i1 %.not43.i224, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i222
  tail call void @longjmp(ptr noundef nonnull %0, i32 noundef 1) #15
  unreachable

bb.ax:                                            ; preds = %._crit_edge.i222
  store i32 %i.il, ptr %i.ix, align 8, !tbaa !99
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i32 0, ptr %i.ja, align 8, !tbaa !101
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 0, ptr %i.jb, align 4, !tbaa !102
  %i.jc = load ptr, ptr %.034.lcssa.i223, align 8, !tbaa !105
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !103
  store ptr %i.ix, ptr %.034.lcssa.i223, align 8, !tbaa !105
  br label %gray_set_cell.exit225

gray_set_cell.exit225:                            ; preds = %.lr.ph.i220, %bb.at, %bb.ax
  %.0.sink.i217 = phi ptr [ %i.if, %bb.at ], [ %i.ix, %bb.ax ], [ %i.iq, %.lr.ph.i220 ] ; 2 uses
  store ptr %.0.sink.i217, ptr %i.ff, align 8, !tbaa !112
  %i.je = icmp ne i32 %.1178, %i.r
  %i.jf = icmp ne i32 %.3176, %i.f
  %i.jg = or i1 %i.je, %i.jf
  br i1 %i.jg, label %bb.aj, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %gray_set_cell.exit225, %gray_set_cell.exit215, %gray_set_cell.exit205, %..loopexit_crit_edge
  %i.jh = phi ptr [ %.pre258, %..loopexit_crit_edge ], [ %.0.sink.i197, %gray_set_cell.exit205 ], [ %.0.sink.i207, %gray_set_cell.exit215 ], [ %.0.sink.i217, %gray_set_cell.exit225 ] ; 2 uses
  %.4 = phi i32 [ %i.v, %..loopexit_crit_edge ], [ 0, %gray_set_cell.exit205 ], [ 256, %gray_set_cell.exit215 ], [ %.3, %gray_set_cell.exit225 ]
  %.2 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %i.t, %gray_set_cell.exit205 ], [ %i.t, %gray_set_cell.exit215 ], [ %.1, %gray_set_cell.exit225 ]
  %i.ji = trunc i64 %1 to i32
  %i.jj = and i32 %i.ji, 255
  %i.jk = trunc i64 %2 to i32
  %i.jl = and i32 %i.jk, 255
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !102
  %i.jo = sub nsw i32 %i.jl, %.4                  ; 2 uses
  %i.jp = add i32 %i.jn, %i.jo
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !102
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !101
  %i.js = add nsw i32 %.2, %i.jj
  %i.jt = mul nsw i32 %i.js, %i.jo
  %i.ju = add i32 %i.jr, %i.jt
  store i32 %i.ju, ptr %i.jq, align 8, !tbaa !101
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %bb.a, %.loopexit, %gray_set_cell.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %1, ptr %i.jv, align 8, !tbaa !127
  store i64 %2, ptr %i.a, align 8, !tbaa !128
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !19
  %i.e = sext i16 %i.d to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 2 uses
  %i.j = and i32 %i.i, 1073733632
  %.not33 = icmp eq i32 %i.j, 0
  br i1 %.not33, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_overlap_spans, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = shl i32 %i.i, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 %i.q, ptr %i.r, align 8, !tbaa !46
  %i.s = load i32, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.t = shl i32 %i.s, 2
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.u, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ab = add i32 %i.s, -1
  %i.ac = mul i32 %i.x, %i.ab
  %narrow = select i1 %i.y, i32 0, i32 %i.ac
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.aa, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.ad, align 8, !tbaa !138
  %i.ae = icmp ult ptr %i.b, %i.g
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %5 = ptrtoint ptr %i.g to i64
  %6 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.af = add i64 %6, 16
  %umax = call i64 @llvm.umax.i64(i64 %5, i64 %i.af)
  %i.ag = xor i64 %6, -1
  %i.ah = add i64 %umax, %i.ag                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 48
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aj, 2305843009213693950     ; 3 uses
  %i.ak = shl i64 %n.vec, 4
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %next.gep41 = getelementptr i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8
  %i.ao = shl nsw <2 x i64> %wide.load, splat (i64 2)
  %i.ap = shl nsw <2 x i64> %wide.load42, splat (i64 2)
  store <2 x i64> %i.ao, ptr %next.gep, align 8
  store <2 x i64> %i.ap, ptr %next.gep41, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph37.preheader, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.034.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.034 = phi ptr [ %i.at, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.ar = load <2 x i64>, ptr %.034, align 8, !tbaa !132
  %i.as = shl nsw <2 x i64> %i.ar, splat (i64 2)
  store <2 x i64> %i.as, ptr %.034, align 8, !tbaa !132
  %i.at = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.g
  br i1 %i.au, label %.lr.ph, label %.lr.ph37.preheader, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !96
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.az = call i32 %i.aw(ptr noundef %i.ay, ptr noundef nonnull %3) #13
  br label %.loopexit

.lr.ph37.preheader:                               ; preds = %.lr.ph, %middle.block
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76
  %i.be = call i32 %i.bb(ptr noundef %i.bd, ptr noundef nonnull %3) #13
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %.135 = phi ptr [ %i.bh, %.lr.ph37 ], [ %i.b, %.lr.ph37.preheader ] ; 3 uses
  %i.bf = load <2 x i64>, ptr %.135, align 8, !tbaa !132
  %i.bg = sdiv <2 x i64> %i.bf, splat (i64 4)
  store <2 x i64> %i.bg, ptr %.135, align 8, !tbaa !132
  %i.bh = getelementptr inbounds nuw i8, ptr %.135, i64 16 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.g
  br i1 %i.bi, label %.lr.ph37, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %.lr.ph37, %._crit_edge, %bb.c
  %.029 = phi i32 [ 98, %bb.c ], [ %i.az, %._crit_edge ], [ %i.be, %.lr.ph37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_lcd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 12 uses
  %4 = alloca %struct.TOrigin_, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_lcd_spans, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.k, ptr %i.l, align 8, !tbaa !46
  %i.m = load i32, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !53   ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = add i32 %i.m, -1
  %i.v = mul i32 %i.q, %i.u
  %narrow = select i1 %i.r, i32 0, i32 %i.v
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.t, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %i.w, align 8, !tbaa !138
  %i.x = load i64, ptr %i.c, align 8, !tbaa !66
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = sub nsw i64 0, %i.aa
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.y, i64 noundef %i.ab) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = call i32 %i.ad(ptr noundef %i.af, ptr noundef nonnull %3) #13 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %4, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %4, align 8, !tbaa !136
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.am = sub nsw i64 %i.aj, %i.al
  %i.an = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !68
  %i.aq = sub nsw i64 %i.an, %i.ap
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.am, i64 noundef %i.aq) #13
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.at = call i32 %i.ar(ptr noundef %i.as, ptr noundef nonnull %3) #13 ; 2 uses
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %4, align 8, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %4, align 8, !tbaa !136
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !66
  %i.az = sub nsw i64 %i.aw, %i.ay
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !68
  %i.bd = sub nsw i64 %i.ba, %i.bc
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.az, i64 noundef %i.bd) #13
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.bg = call i32 %i.be(ptr noundef %i.bf, ptr noundef nonnull %3) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.041 = phi i32 [ %i.ag, %bb.a ], [ %i.at, %bb.b ], [ %i.bg, %bb.c ]
  %.040.in = phi ptr [ %i.c, %bb.a ], [ %i.ak, %bb.b ], [ %i.ax, %bb.c ]
  %.0.in = phi ptr [ %i.z, %bb.a ], [ %i.ao, %bb.b ], [ %i.bb, %bb.c ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !68
  %.040 = load i64, ptr %.040.in, align 8, !tbaa !66
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %.040, i64 noundef %.0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_lcdv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %2, ptr %3, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.g, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.b, 3
  store i32 %i.h, ptr %i.a, align 8, !tbaa !53
  %i.i = load i32, ptr %2, align 8, !tbaa !51
end_hunk_0
