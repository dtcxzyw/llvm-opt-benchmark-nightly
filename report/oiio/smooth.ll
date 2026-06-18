inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@gray_render_line:bb.a
  %i.gg = mul i64 %i.fc, %i.fm
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
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !19
  %i.f = sext i16 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %i.l = and i32 %i.k, 1073733632
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_overlap_spans, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = shl i32 %i.k, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = load i32, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.v = shl i32 %i.u, 2
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53   ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ad = add i32 %i.u, -1
  %i.ae = mul i32 %i.z, %i.ad
  %narrow = select i1 %i.aa, i32 0, i32 %i.ae
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.ac, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.z, ptr %i.af, align 8, !tbaa !138
  %i.ag = icmp ult ptr %i.b, %i.h
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ah = add i64 %i.c, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ah)
  %i.ai = xor i64 %i.c, -1
  %i.aj = add i64 %umax, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 48
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.al, 2305843009213693950     ; 3 uses
  %i.am = shl i64 %n.vec, 4
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8
  %i.aq = shl nsw <2 x i64> %wide.load, splat (i64 2)
  %i.ar = shl nsw <2 x i64> %wide.load42, splat (i64 2)
  store <2 x i64> %i.aq, ptr %next.gep, align 8
  store <2 x i64> %i.ar, ptr %next.gep41, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.lr.ph37.preheader, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %.lr.ph.preheader, %middle.block
  %.034.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader60, %.lr.ph
  %.034 = phi ptr [ %i.av, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader60 ] ; 3 uses
  %i.at = load <2 x i64>, ptr %.034, align 8, !tbaa !132
  %i.au = shl nsw <2 x i64> %i.at, splat (i64 2)
  store <2 x i64> %i.au, ptr %.034, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.h
  br i1 %i.aw, label %.lr.ph, label %.lr.ph37.preheader, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = call i32 %i.ay(ptr noundef %i.ba, ptr noundef nonnull %3) #13
  br label %.loopexit

.lr.ph37.preheader:                               ; preds = %.lr.ph, %middle.block
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = call i32 %i.bd(ptr noundef %i.bf, ptr noundef nonnull %3) #13
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %.135 = phi ptr [ %i.bj, %.lr.ph37 ], [ %i.b, %.lr.ph37.preheader ] ; 3 uses
  %i.bh = load <2 x i64>, ptr %.135, align 8, !tbaa !132
  %i.bi = sdiv <2 x i64> %i.bh, splat (i64 4)
  store <2 x i64> %i.bi, ptr %.135, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %.135, i64 16 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.h
  br i1 %i.bk, label %.lr.ph37, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %.lr.ph37, %._crit_edge, %bb.c
  %.029 = phi i32 [ 98, %bb.c ], [ %i.bb, %._crit_edge ], [ %i.bg, %.lr.ph37 ]
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
  %i.j = udiv i32 %i.i, 3
  store i32 %i.j, ptr %2, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub nsw i64 0, %i.l
  %i.n = load i64, ptr %i.e, align 8, !tbaa !66
  tail call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.m, i64 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.s = call i32 %i.p(ptr noundef %i.r, ptr noundef nonnull %3) #13 ; 2 uses
  %i.t = load i64, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = sext i32 %i.b to i64                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store ptr %i.y, ptr %i.v, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68
  %i.ac = sub nsw i64 %i.t, %i.ab
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !66
  %i.ae = sub nsw i64 %i.ad, %i.u
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.ac, i64 noundef %i.ae) #13
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ah = call i32 %i.af(ptr noundef %i.ag, ptr noundef nonnull %3) #13 ; 2 uses
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !66  ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.al = sub nsw i64 0, %i.x
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al ; 2 uses
  store ptr %i.am, ptr %i.v, align 8, !tbaa !52
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = shl nsw i32 %i.b, 1
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.at = sub nsw i64 %i.ai, %i.as
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.av = sub nsw i64 %i.au, %i.aj
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.at, i64 noundef %i.av) #13
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ay = call i32 %i.aw(ptr noundef %i.ax, ptr noundef nonnull %3) #13
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.ba = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.bc = sub nsw i64 0, %i.ao
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.047 = phi i32 [ %i.s, %bb.a ], [ %i.ah, %bb.b ], [ %i.ay, %bb.c ]
  %.046 = phi i64 [ %i.t, %bb.a ], [ %i.ai, %bb.b ], [ %i.az, %bb.c ]
  %.pn = phi i64 [ %i.u, %bb.a ], [ %i.aj, %bb.b ], [ %i.ba, %bb.c ]
  %.0 = sub nsw i64 0, %.pn
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %.046, i64 noundef %.0) #13
  %i.be = load i32, ptr %i.a, align 8, !tbaa !53
  %i.bf = sdiv i32 %i.be, 3
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !53
  %i.bg = load i32, ptr %2, align 8, !tbaa !51
  %i.bh = mul i32 %i.bg, 3
  store i32 %i.bh, ptr %2, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ft_smooth_overlap_spans(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #9 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !136
  %i.b = sdiv i32 %0, 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %.in = phi i32 [ %i.i, %._crit_edge ], [ %1, %bb.a ]
  %.01823 = phi ptr [ %i.af, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %i.i = add nsw i32 %.in, -1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01823, i64 4
  %i.k = load i8, ptr %i.j, align 2, !tbaa !115
  %i.l = zext i8 %i.k to i16
  %i.m = add nuw nsw i16 %i.l, 8
  %i.n = lshr i16 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %.01823, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !118
  %.not27 = icmp eq i16 %i.p, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25, %.lr.ph
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph25 ] ; 2 uses
  %i.q = load i16, ptr %.01823, align 2, !tbaa !117
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %indvars.iv, %i.r
  %i.t = sdiv i32 %i.s, 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !122
  %i.x = zext i8 %i.w to i16
  %i.y = add nuw nsw i16 %i.n, %i.x               ; 2 uses
  %i.z = lshr i16 %i.y, 8
  %i.aa = sub nsw i16 %i.y, %i.z
  %i.ab = trunc i16 %i.aa to i8
  store i8 %i.ab, ptr %i.v, align 1, !tbaa !122
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.ac = load i16, ptr %i.o, align 2, !tbaa !118
  %i.ad = zext i16 %i.ac to i32
  %i.ae = icmp samesign ult i32 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph25
  %i.af = getelementptr inbounds nuw i8, ptr %.01823, i64 6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge26, label %.lr.ph25, !llvm.loop !143

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ft_smooth_lcd_spans(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #10 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138
  %i.d = mul nsw i32 %i.c, %0
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  %.not19 = icmp eq i32 %1, 0
  br i1 %.not19, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %.in = phi i32 [ %i.h, %._crit_edge ], [ %1, %bb.a ]
  %.01420 = phi ptr [ %i.ab, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %i.h = add nsw i32 %.in, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01420, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !118  ; 5 uses
  %.not1516 = icmp eq i16 %i.j, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %i.k = load i16, ptr %.01420, align 2, !tbaa !117
  %i.l = sext i16 %i.k to i64
  %i.m = mul nsw i64 %i.l, 3
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01420, i64 4
  %.pre = load i8, ptr %i.o, align 2, !tbaa !115  ; 9 uses
  %xtraiter = and i16 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.018.prol = phi i16 [ %i.p, %.prol.preheader ], [ %i.j, %.lr.ph ]
  %.01217.prol = phi ptr [ %i.q, %.prol.preheader ], [ %i.n, %.lr.ph ] ; 2 uses
  %prol.iter = phi i16 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.p = add i16 %.018.prol, -1                   ; 2 uses
  store i8 %.pre, ptr %.01217.prol, align 1, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %.01217.prol, i64 3 ; 2 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !144

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.018.unr = phi i16 [ %i.j, %.lr.ph ], [ %i.p, %.prol.preheader ]
  %.01217.unr = phi ptr [ %i.n, %.lr.ph ], [ %i.q, %.prol.preheader ]
  %i.r = icmp ult i16 %i.j, 8
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.018 = phi i16 [ %i.z, %.lr.ph.new ], [ %.018.unr, %.prol.loopexit ]
  %.01217 = phi ptr [ %i.aa, %.lr.ph.new ], [ %.01217.unr, %.prol.loopexit ] ; 9 uses
  store i8 %.pre, ptr %.01217, align 1, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %.01217, i64 3
  store i8 %.pre, ptr %i.s, align 1, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %.01217, i64 6
  store i8 %.pre, ptr %i.t, align 1, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %.01217, i64 9
  store i8 %.pre, ptr %i.u, align 1, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %.01217, i64 12
  store i8 %.pre, ptr %i.v, align 1, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.01217, i64 15
  store i8 %.pre, ptr %i.w, align 1, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %.01217, i64 18
  store i8 %.pre, ptr %i.x, align 1, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %.01217, i64 21
  %i.z = add i16 %.018, -8                        ; 2 uses
  store i8 %.pre, ptr %i.y, align 1, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %.01217, i64 24
  %.not15.7 = icmp eq i16 %i.z, 0
  br i1 %.not15.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !146

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph22
  %i.ab = getelementptr inbounds nuw i8, ptr %.01420, i64 6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge23, label %.lr.ph22, !llvm.loop !147

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind returns_twice }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"gray_TRaster_", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS13gray_TRaster_", !9, i64 0}
!12 = !{!13, !9, i64 8}
!13 = !{!"FT_Raster_Params_", !14, i64 0, !9, i64 8, !4, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !15, i64 64}
!14 = !{!"p1 _ZTS10FT_Bitmap_", !9, i64 0}
!15 = !{!"FT_BBox_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!16 = !{!"long", !5, i64 0}
!17 = !{!13, !14, i64 0}
!18 = !{!13, !4, i64 16}
!19 = !{!20, !21, i64 2}
!20 = !{!"FT_Outline_", !21, i64 0, !21, i64 2, !22, i64 8, !23, i64 16, !24, i64 24, !4, i64 32}
!21 = !{!"short", !5, i64 0}
!22 = !{!"p1 _ZTS10FT_Vector_", !9, i64 0}
!23 = !{!"p1 omnipotent char", !9, i64 0}
!24 = !{!"p1 short", !9, i64 0}
!25 = !{!20, !21, i64 0}
!26 = !{!20, !24, i64 24}
!27 = !{!20, !22, i64 8}
!28 = !{!21, !21, i64 0}
!29 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 8, i64 8, !30, i64 16, i64 8, !31, i64 24, i64 8, !32, i64 32, i64 4, !3}
!30 = !{!22, !22, i64 0}
!31 = !{!23, !23, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!13, !9, i64 24}
!34 = !{!35, !9, i64 328}
!35 = !{!"gray_TWorker_", !5, i64 0, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !16, i64 256, !16, i64 264, !20, i64 272, !39, i64 312, !9, i64 328, !9, i64 336}
!36 = !{!"p1 _ZTS6TCell_", !9, i64 0}
!37 = !{!"p2 _ZTS6TCell_", !38, i64 0}
!38 = !{!"any p2 pointer", !9, i64 0}
!39 = !{!"TPixmap_", !23, i64 0, !4, i64 8}
!40 = !{!13, !9, i64 56}
!41 = !{!35, !9, i64 336}
!42 = !{!13, !16, i64 64}
!43 = !{!35, !4, i64 200}
!44 = !{!13, !16, i64 72}
!45 = !{!35, !4, i64 208}
!46 = !{!13, !16, i64 80}
!47 = !{!35, !4, i64 204}
!48 = !{!13, !16, i64 88}
!49 = !{!50, !4, i64 4}
!50 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !23, i64 16, !21, i64 24, !5, i64 26, !5, i64 27, !9, i64 32}
!51 = !{!50, !4, i64 0}
!52 = !{!50, !23, i64 16}
!53 = !{!50, !4, i64 8}
!54 = !{!35, !23, i64 312}
!55 = !{!35, !4, i64 320}
!56 = !{!35, !4, i64 212}
!57 = !{!58, !61, i64 8}
!58 = !{!"FT_RendererRec_", !59, i64 0, !63, i64 24, !4, i64 32, !64, i64 40, !65, i64 104, !9, i64 112, !9, i64 120}
!59 = !{!"FT_ModuleRec_", !60, i64 0, !61, i64 8, !62, i64 16}
!60 = !{!"p1 _ZTS16FT_Module_Class_", !9, i64 0}
!61 = !{!"p1 _ZTS14FT_LibraryRec_", !9, i64 0}
!62 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!63 = !{!"p1 _ZTS18FT_Renderer_Class_", !9, i64 0}
!64 = !{!"FT_Glyph_Class_", !16, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!65 = !{!"p1 _ZTS13FT_RasterRec_", !9, i64 0}
!66 = !{!67, !16, i64 0}
!67 = !{!"FT_Vector_", !16, i64 0, !16, i64 8}
!68 = !{!67, !16, i64 8}
!69 = !{!58, !63, i64 24}
!70 = !{!71, !73, i64 112}
!71 = !{!"FT_Renderer_Class_", !72, i64 0, !4, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !73, i64 112}
!72 = !{!"FT_Module_Class_", !16, i64 0, !16, i64 8, !23, i64 16, !16, i64 24, !16, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!73 = !{!"p1 _ZTS16FT_Raster_Funcs_", !9, i64 0}
!74 = !{!75, !9, i64 16}
!75 = !{!"FT_Raster_Funcs_", !4, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!76 = !{!58, !65, i64 104}
!77 = !{!58, !62, i64 16}
!78 = !{!79, !4, i64 144}
!79 = !{!"FT_GlyphSlotRec_", !61, i64 0, !80, i64 8, !81, i64 16, !4, i64 24, !82, i64 32, !83, i64 48, !16, i64 112, !16, i64 120, !67, i64 128, !4, i64 144, !50, i64 152, !4, i64 192, !4, i64 196, !20, i64 200, !4, i64 240, !84, i64 248, !9, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !9, i64 288, !85, i64 296}
!80 = !{!"p1 _ZTS11FT_FaceRec_", !9, i64 0}
!81 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !9, i64 0}
!82 = !{!"FT_Generic_", !9, i64 0, !9, i64 8}
!83 = !{!"FT_Glyph_Metrics_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!84 = !{!"p1 _ZTS15FT_SubGlyphRec_", !9, i64 0}
!85 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !9, i64 0}
!86 = !{!58, !4, i64 32}
!87 = !{!79, !85, i64 296}
!88 = !{!89, !4, i64 8}
!89 = !{!"FT_Slot_InternalRec_", !90, i64 0, !4, i64 8, !5, i64 12, !91, i64 16, !67, i64 48, !9, i64 64, !4, i64 72}
!90 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !9, i64 0}
!91 = !{!"FT_Matrix_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!92 = !{!79, !4, i64 192}
!93 = !{!79, !4, i64 196}
!94 = !{!50, !5, i64 26}
!95 = !{!20, !4, i64 32}
!96 = !{!58, !9, i64 112}
!97 = !{!75, !9, i64 24}
!98 = !{!35, !36, i64 240}
!99 = !{!100, !4, i64 0}
!100 = !{!"TCell_", !4, i64 0, !4, i64 4, !4, i64 8, !36, i64 16}
!101 = !{!100, !4, i64 8}
!102 = !{!100, !4, i64 4}
!103 = !{!100, !36, i64 16}
!104 = !{!35, !37, i64 248}
!105 = !{!36, !36, i64 0}
!106 = distinct !{!106, !107, !108, !109}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !107, !109, !108}
!111 = !{!35, !36, i64 232}
!112 = !{!35, !36, i64 224}
!113 = !{!35, !4, i64 216}
!114 = !{!35, !4, i64 304}
!115 = !{!116, !5, i64 4}
!116 = !{!"FT_Span_", !21, i64 0, !21, i64 2, !5, i64 4}
!117 = !{!116, !21, i64 0}
!118 = !{!116, !21, i64 2}
!119 = distinct !{null}
!120 = distinct !{!120, !107}
!121 = distinct !{!121, !107}
!122 = !{!5, !5, i64 0}
!123 = distinct !{!123, !107}
!124 = distinct !{!124, !107}
!125 = distinct !{!125, !107}
!126 = distinct !{!126, !107}
!127 = !{!35, !16, i64 256}
!128 = !{!35, !16, i64 264}
!129 = distinct !{!129, !107}
!130 = distinct !{!130, !107}
!131 = distinct !{!131, !107}
!132 = !{!16, !16, i64 0}
!133 = distinct !{!133, !107}
!134 = distinct !{!134, !107}
!135 = distinct !{!135, !107}
!136 = !{!137, !23, i64 0}
!137 = !{!"TOrigin_", !23, i64 0, !4, i64 8}
!138 = !{!137, !4, i64 8}
!139 = distinct !{!139, !107, !108, !109}
!140 = distinct !{!140, !107, !109, !108}
!141 = distinct !{!141, !107}
!142 = distinct !{!142, !107}
!143 = distinct !{!143, !107}
!144 = distinct !{!144, !145}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = distinct !{!146, !107}
!147 = distinct !{!147, !107}
end_hunk_0
