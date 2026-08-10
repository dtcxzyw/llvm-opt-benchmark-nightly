inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Nf_ManDumpMatches:bb.a
  %i.eh = fpext float %i.eg to double
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.81, double noundef %i.eh) #26 ; 0 uses
  %i.ej = lshr i32 %i.dw, 8
  %.0185.val237278.1 = load i32, ptr %.0185287.1, align 4, !tbaa !15
  %i.ek = and i32 %.0185.val237278.1, 31
  %.not325.1 = icmp eq i32 %i.ek, 0
  br i1 %.not325.1, label %.critedge6.1, label %.lr.ph280.1

.lr.ph280.1:                                      ; preds = %bb.m
  %i.el = lshr i32 %i.dw, 1
  %i.em = and i32 %i.el, 127
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph280.1
  %.0187279.1 = phi i32 [ 0, %.lr.ph280.1 ], [ %i.ey, %bb.o ] ; 3 uses
  %i.en = shl nuw nsw i32 %.0187279.1, 2
  %i.eo = lshr i32 %i.ej, %i.en
  %i.ep = and i32 %i.eo, 15
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !15 ; 2 uses
  %.not216.1 = icmp eq i32 %i.es, 0
  br i1 %.not216.1, label %.critedge6.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.et = lshr i32 %i.em, %.0187279.1
  %i.eu = and i32 %i.et, 1
  %i.ev = shl nsw i32 %i.es, 1
  %i.ew = or disjoint i32 %i.ev, %i.eu
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.82, i32 noundef %i.ew) #26 ; 0 uses
  %i.ey = add nuw nsw i32 %.0187279.1, 1          ; 2 uses
  %.0185.val237.1 = load i32, ptr %.0185287.1, align 4, !tbaa !15
  %i.ez = and i32 %.0185.val237.1, 31
  %i.fa = icmp samesign ult i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.n, label %.critedge6.1, !llvm.loop !266

.critedge6.1:                                     ; preds = %bb.n, %bb.o, %bb.m
  %fputc217.1 = tail call i32 @fputc(i32 10, ptr %i.e) ; 0 uses
  %.val221.1.pre = load i32, ptr %i.dq, align 4, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %.critedge6.1, %.critedge4.1
  %.val221.1 = phi i32 [ %.val221.1.pre, %.critedge6.1 ], [ %.val221.1361, %.critedge4.1 ] ; 2 uses
  %indvars.iv.next329.1 = add nuw nsw i64 %indvars.iv328.1, 2 ; 2 uses
  %i.fb = trunc i64 %indvars.iv.next329.1 to i32
  %i.fc = or disjoint i32 %i.fb, 1
  %i.fd = icmp slt i32 %i.fc, %.val221.1
  br i1 %i.fd, label %.critedge4.1, label %.loopexit272.loopexit.1, !llvm.loop !267

.loopexit272.loopexit.1:                          ; preds = %bb.p
  %.0185.val236.1.pre = load i32, ptr %.0185287.1, align 4, !tbaa !15
  %.pre364 = load i32, ptr %i.dd, align 4, !tbaa !15
  br label %.loopexit272.1

.loopexit272.1:                                   ; preds = %.loopexit272.loopexit.1, %bb.l, %bb.k
  %i.fe = phi i32 [ %.pre364, %.loopexit272.loopexit.1 ], [ %i.di, %bb.l ], [ %i.di, %bb.k ] ; 2 uses
  %.0185.val236.1 = phi i32 [ %.0185.val236.1.pre, %.loopexit272.loopexit.1 ], [ %.0185.val234.1, %bb.l ], [ %.0185.val234.1, %bb.k ]
  %i.ff = add nuw nsw i32 %.0183286.1, 1          ; 2 uses
  %i.fg = and i32 %.0185.val236.1, 31
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.0185287.1, i64 %i.fh
  %i.fj = icmp slt i32 %i.ff, %i.fe
  br i1 %i.fj, label %bb.k, label %._crit_edge.1, !llvm.loop !268

._crit_edge.1:                                    ; preds = %.loopexit272.1, %._crit_edge
  %.pre365 = load ptr, ptr %0, align 8, !tbaa !105
  br label %.loopexit274

.loopexit274:                                     ; preds = %._crit_edge.1, %bb.d
  %i.fk = phi ptr [ %.pre365, %._crit_edge.1 ], [ %i.ag, %bb.d ] ; 3 uses
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !109
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next332, %i.fn
  br i1 %i.fo, label %bb.c, label %.critedge2, !llvm.loop !269

.critedge2:                                       ; preds = %bb.c, %.loopexit274, %.critedge
  %i.fp = phi ptr [ %i.y, %.critedge ], [ %i.ag, %bb.c ], [ %i.fk, %.loopexit274 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !203 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %.val220294 = load i32, ptr %i.fs, align 4, !tbaa !24
  %i.ft = icmp sgt i32 %.val220294, 0
  br i1 %i.ft, label %.lr.ph296, label %.critedge8

.lr.ph296:                                        ; preds = %.critedge2, %bb.q
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %bb.q ], [ 0, %.critedge2 ] ; 2 uses
  %i.fu = phi ptr [ %i.gn, %bb.q ], [ %i.fr, %.critedge2 ]
  %i.fv = phi ptr [ %i.gl, %bb.q ], [ %i.fp, %.critedge2 ] ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 32
  %.val250 = load ptr, ptr %i.fw, align 8, !tbaa !141 ; 2 uses
  %.not200 = icmp eq ptr %.val250, null
  br i1 %.not200, label %.critedge8, label %bb.q

bb.q:                                             ; preds = %.lr.ph296
  %i.fx = getelementptr i8, ptr %i.fu, i64 8
  %.val251.val = load ptr, ptr %i.fx, align 8, !tbaa !27
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val251.val, i64 %indvars.iv334
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !15 ; 3 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val250, i64 %i.ga
  %i.gc = shl nsw i32 %i.fz, 1
  %.val.i.i = load i64, ptr %i.gb, align 4
  %i.gd = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 536870911
  %i.gf = sub nsw i32 %i.fz, %i.ge
  %i.gg = lshr i32 %i.gd, 29
  %i.gh = and i32 %i.gg, 1
  %i.gi = shl nsw i32 %i.gf, 1
  %i.gj = or disjoint i32 %i.gi, %i.gh
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.83, i32 noundef %i.gc, double noundef 0.000000e+00, i32 noundef %i.gj) #26 ; 0 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !203 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %.val220 = load i32, ptr %i.go, align 4, !tbaa !24
  %i.gp = sext i32 %.val220 to i64
  %i.gq = icmp slt i64 %indvars.iv.next335, %i.gp
  br i1 %i.gq, label %.lr.ph296, label %.critedge8, !llvm.loop !270

.critedge8:                                       ; preds = %.lr.ph296, %bb.q, %.critedge2
  %.lcssa = phi ptr [ %i.fp, %.critedge2 ], [ %i.gl, %bb.q ], [ %i.fv, %.lr.ph296 ]
  %i.gr = tail call i32 @Gia_ManChoiceLevel(ptr noundef nonnull %.lcssa) #26
  %i.gs = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !202 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %.val219299 = load i32, ptr %i.gv, align 4, !tbaa !24
  %i.gw = icmp sgt i32 %.val219299, 0
  br i1 %i.gw, label %.lr.ph301.preheader, label %.critedge10

.lr.ph301.preheader:                              ; preds = %.critedge8
  %i.gx = getelementptr i8, ptr %i.gu, i64 8
  %.val258.val415 = load ptr, ptr %i.gx, align 8, !tbaa !27
  %i.gy = load i32, ptr %.val258.val415, align 4, !tbaa !15 ; 2 uses
  %.not201416 = icmp eq i32 %i.gy, 0
  br i1 %.not201416, label %.critedge10, label %.lr.ph418

.lr.ph301:                                        ; preds = %.lr.ph418
  %i.gz = getelementptr i8, ptr %i.hh, i64 8
  %.val258.val = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val258.val, i64 %indvars.iv.next338
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !15 ; 2 uses
  %.not201 = icmp eq i32 %i.hb, 0
  br i1 %.not201, label %.critedge10, label %.lr.ph418, !llvm.loop !271

.lr.ph418:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %i.hc = phi i32 [ %i.hb, %.lr.ph301 ], [ %i.gy, %.lr.ph301.preheader ]
  %indvars.iv337417 = phi i64 [ %indvars.iv.next338, %.lr.ph301 ], [ 0, %.lr.ph301.preheader ]
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.hd, i32 noundef 0) #26 ; 0 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337417, 1 ; 3 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !202 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 4
  %.val219 = load i32, ptr %i.hi, align 4, !tbaa !24
  %i.hj = sext i32 %.val219 to i64
  %i.hk = icmp slt i64 %indvars.iv.next338, %i.hj
  br i1 %i.hk, label %.lr.ph301, label %..critedge10.loopexit_crit_edge, !llvm.loop !271

..critedge10.loopexit_crit_edge:                  ; preds = %.lr.ph418
  br label %.critedge10, !llvm.loop !271

.critedge10:                                      ; preds = %.lr.ph301, %.lr.ph301.preheader, %..critedge10.loopexit_crit_edge, %.critedge8
  %i.hl = phi ptr [ %i.gs, %.critedge8 ], [ %i.hf, %..critedge10.loopexit_crit_edge ], [ %i.gs, %.lr.ph301.preheader ], [ %i.hf, %.lr.ph301 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !109
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph306, label %.critedge12

.lr.ph306:                                        ; preds = %.critedge10, %bb.ae
  %i.hp = phi ptr [ %i.jg, %bb.ae ], [ %i.hl, %.critedge10 ] ; 4 uses
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.pre-phi, %bb.ae ], [ 0, %.critedge10 ] ; 10 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 32
  %.val228 = load ptr, ptr %i.hq, align 8, !tbaa !141 ; 2 uses
  %.not202 = icmp eq ptr %.val228, null
  br i1 %.not202, label %.critedge12, label %bb.r

bb.r:                                             ; preds = %.lr.ph306
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %.val228, i64 %indvars.iv340
  %.val244 = load i64, ptr %i.hr, align 4         ; 2 uses
  %i.hs = and i64 %.val244, 2147483648
  %.not.i263 = icmp ne i64 %i.hs, 0
  %i.ht = and i64 %.val244, 536870911
  %i.hu = icmp eq i64 %i.ht, 536870911
  %narrow.i264.not = or i1 %.not.i263, %i.hu
  br i1 %narrow.i264.not, label %._crit_edge380, label %bb.s

._crit_edge380:                                   ; preds = %bb.r
  %.pre381 = add nuw nsw i64 %indvars.iv340, 1
  br label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.hv = getelementptr i8, ptr %i.hp, i64 160
  %.val262 = load ptr, ptr %i.hv, align 8, !tbaa !272 ; 7 uses
  %i.hw = add nuw nsw i64 %indvars.iv340, 1       ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val262, i64 4 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !24 ; 3 uses
  %i.hz = sext i32 %i.hy to i64                   ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv340, %i.hz
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ia = load i32, ptr %.val262, align 8, !tbaa !31 ; 4 uses
  %i.ib = shl nsw i32 %i.ia, 1                    ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.not.i.i.not.i.i.a = icmp slt i64 %indvars.iv340, %i.ic
  br i1 %.not.i.i.not.i.i.a, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.id = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ie, null
  %i.if = shl nuw nsw i64 %i.hw, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ig = tail call ptr @realloc(ptr noundef nonnull %i.ie, i64 noundef %i.if) #27
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ih = tail call noalias ptr @malloc(i64 noundef %i.if) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ii = phi ptr [ %i.ig, %bb.v ], [ %i.ih, %bb.w ]
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !27
  %i.ij = trunc nuw nsw i64 %i.hw to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.y:                                             ; preds = %bb.t
  %1 = sext i32 %i.ia to i64
  %.not.i.i.not.i.i = icmp slt i64 %indvars.iv340, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ik = icmp slt i32 %i.ia, 1073741823
  %spec.select.i.i.i = select i1 %i.ik, i32 %i.ib, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ia, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.aa, label %Vec_IntGrow.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.il = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.im, null
  %i.in = sext i32 %spec.select.i.i.i to i64
  %i.io = shl nsw i64 %i.in, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ip = tail call ptr @realloc(ptr noundef nonnull %i.im, i64 noundef %i.io) #27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.iq = tail call noalias ptr @malloc(i64 noundef %i.io) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ir = phi ptr [ %i.ip, %bb.ab ], [ %i.iq, %bb.ac ]
  store ptr %i.ir, ptr %i.il, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.ad, %bb.x
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ad ], [ %i.ij, %bb.x ]
  store i32 %spec.select.sink.i.i.i, ptr %.val262, align 8, !tbaa !31
  %.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !24 ; 2 uses
  %.pre371 = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.z, %bb.y
  %.pre-phi = phi i64 [ %.pre371, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hz, %bb.z ], [ %i.hz, %bb.y ] ; 2 uses
  %2 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hy, %bb.z ], [ %i.hy, %bb.y ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv340
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.val262, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !27
  %i.iu = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.it, i64 %i.iu
  %i.iv = trunc nuw nsw i64 %indvars.iv340 to i32
  %i.iw = sub i32 %i.iv, %2
  %i.ix = zext i32 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 2
  %i.iz = add nuw nsw i64 %i.iy, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.iz, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.ja = trunc nuw nsw i64 %i.hw to i32
  store i32 %i.ja, ptr %i.hx, align 4, !tbaa !24
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.s, %._crit_edge.i.i.i
  %i.jb = getelementptr i8, ptr %.val262, i64 8
  %.val.i.i265 = load ptr, ptr %i.jb, align 8, !tbaa !27
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i265, i64 %indvars.iv340
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !15
  %indvars.iv340.tr = trunc i64 %indvars.iv340 to i32
  %i.je = shl i32 %indvars.iv340.tr, 1
  %i.jf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.je, i32 noundef %i.jd) #26 ; 0 uses
  %.pre366 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge380, %Gia_ObjLevelId.exit
  %indvars.iv.next341.pre-phi = phi i64 [ %.pre381, %._crit_edge380 ], [ %i.hw, %Gia_ObjLevelId.exit ] ; 2 uses
  %i.jg = phi ptr [ %i.hp, %._crit_edge380 ], [ %.pre366, %Gia_ObjLevelId.exit ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !109
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next341.pre-phi, %i.jj
  br i1 %i.jk, label %.lr.ph306, label %.critedge12, !llvm.loop !273

.critedge12:                                      ; preds = %.lr.ph306, %bb.ae, %.critedge10
  %i.jl = phi ptr [ %i.hl, %.critedge10 ], [ %i.hp, %.lr.ph306 ], [ %i.jg, %bb.ae ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 72
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !203 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  %.val218308 = load i32, ptr %i.jo, align 4, !tbaa !24
  %i.jp = icmp sgt i32 %.val218308, 0
  br i1 %i.jp, label %.lr.ph310, label %.critedge14

.lr.ph310:                                        ; preds = %.critedge12
  %i.jq = add nsw i32 %i.gr, 1
  %i.jr = getelementptr i8, ptr %i.jn, i64 8
  %.val249.val420 = load ptr, ptr %i.jr, align 8, !tbaa !27
  %i.js = load i32, ptr %.val249.val420, align 4, !tbaa !15 ; 2 uses
  %.not203421 = icmp eq i32 %i.js, 0
  br i1 %.not203421, label %.critedge14, label %.lr.ph423

bb.af:                                            ; preds = %.lr.ph423
  %i.jt = getelementptr i8, ptr %i.kb, i64 8
  %.val249.val = load ptr, ptr %i.jt, align 8, !tbaa !27
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val249.val, i64 %indvars.iv.next344
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !15 ; 2 uses
  %.not203 = icmp eq i32 %i.jv, 0
  br i1 %.not203, label %.critedge14, label %.lr.ph423, !llvm.loop !274

.lr.ph423:                                        ; preds = %.lr.ph310, %bb.af
  %i.jw = phi i32 [ %i.jv, %bb.af ], [ %i.js, %.lr.ph310 ]
  %indvars.iv343422 = phi i64 [ %indvars.iv.next344, %bb.af ], [ 0, %.lr.ph310 ]
  %i.jx = shl nsw i32 %i.jw, 1
  %i.jy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.jx, i32 noundef %i.jq) #26 ; 0 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343422, 1 ; 3 uses
  %i.jz = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !203 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 4
  %.val218 = load i32, ptr %i.kc, align 4, !tbaa !24
  %i.kd = sext i32 %.val218 to i64
  %i.ke = icmp slt i64 %indvars.iv.next344, %i.kd
  br i1 %i.ke, label %bb.af, label %..critedge14.loopexit_crit_edge, !llvm.loop !274

..critedge14.loopexit_crit_edge:                  ; preds = %.lr.ph423
  br label %.critedge14, !llvm.loop !274

.critedge14:                                      ; preds = %bb.af, %.lr.ph310, %..critedge14.loopexit_crit_edge, %.critedge12
  %i.kf = phi ptr [ %i.jl, %.critedge12 ], [ %i.jz, %..critedge14.loopexit_crit_edge ], [ %i.jl, %.lr.ph310 ], [ %i.jz, %bb.af ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 64
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !202 ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %.val312 = load i32, ptr %i.ki, align 4, !tbaa !24
  %i.kj = icmp sgt i32 %.val312, 0
  br i1 %i.kj, label %.lr.ph314, label %.critedge16

.lr.ph314:                                        ; preds = %.critedge14
  %i.kk = getelementptr i8, ptr %0, i64 104
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph314, %bb.aj
  %i.km = phi ptr [ %i.kf, %.lr.ph314 ], [ %i.ld, %bb.aj ] ; 2 uses
  %indvars.iv346 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next347, %bb.aj ] ; 2 uses
  %i.kn = phi ptr [ %i.kh, %.lr.ph314 ], [ %i.lf, %bb.aj ]
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  %.val256.val = load ptr, ptr %i.ko, align 8, !tbaa !27
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.val256.val, i64 %indvars.iv346
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !15 ; 2 uses
  %.not204 = icmp eq i32 %i.kq, 0
  br i1 %.not204, label %.critedge16, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val254 = load ptr, ptr %i.kk, align 8, !tbaa !27
  %i.kr = shl nsw i32 %i.kq, 1                    ; 2 uses
  %i.ks = or disjoint i32 %i.kr, 1                ; 2 uses
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %.val254, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !15
  %.not211 = icmp eq i32 %i.kv, 0
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kw = load ptr, ptr %i.kl, align 8, !tbaa !68 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 240
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !81
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 260
  %i.la = load float, ptr %i.kz, align 4, !tbaa !8
  %i.lb = fpext float %i.la to double
  %i.lc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.85, i32 noundef %i.ks, ptr noundef %i.ky, double noundef %i.lb, i32 noundef %i.kr) #26 ; 0 uses
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ld = phi ptr [ %i.km, %bb.ah ], [ %.pre367, %bb.ai ] ; 3 uses
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !202 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  %.val = load i32, ptr %i.lg, align 4, !tbaa !24
  %i.lh = sext i32 %.val to i64
  %i.li = icmp slt i64 %indvars.iv.next347, %i.lh
  br i1 %i.li, label %bb.ag, label %.critedge16, !llvm.loop !275

.critedge16:                                      ; preds = %bb.ag, %bb.aj, %.critedge14
  %i.lj = phi ptr [ %i.kf, %.critedge14 ], [ %i.km, %bb.ag ], [ %i.ld, %bb.aj ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !109
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph323, label %.critedge18

.lr.ph323:                                        ; preds = %.critedge16
  %i.ln = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.lo = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.lp = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.lq = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.lr = getelementptr i8, ptr %0, i64 88        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph323, %.loopexit
  %i.ls = phi ptr [ %i.lj, %.lr.ph323 ], [ %i.qx, %.loopexit ] ; 2 uses
  %indvars.iv352 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next353, %.loopexit ] ; 7 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 32
  %.val227 = load ptr, ptr %i.lt, align 8, !tbaa !141 ; 2 uses
  %.not205 = icmp eq ptr %.val227, null
  br i1 %.not205, label %.critedge18, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %.val227, i64 %indvars.iv352
  %.val243 = load i64, ptr %i.lu, align 4         ; 2 uses
  %i.lv = and i64 %.val243, 2147483648
  %.not.i266 = icmp ne i64 %i.lv, 0
  %i.lw = and i64 %.val243, 536870911
  %i.lx = icmp eq i64 %i.lw, 536870911
  %narrow.i267.not = or i1 %.not.i266, %i.lx
  br i1 %narrow.i267.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.ly = shl nuw nsw i64 %indvars.iv352, 1       ; 4 uses
  %.val253 = load ptr, ptr %i.ln, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.val253, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !15
  %.not207 = icmp eq i32 %i.ma, 0
  br i1 %.not207, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.preheader
  %.val252 = load ptr, ptr %i.lo, align 8, !tbaa !110
  %i.mb = getelementptr inbounds nuw [64 x i8], ptr %.val252, i64 %indvars.iv352 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4            ; 2 uses
  %.not.i268 = icmp sgt i32 %i.md, -1
  br i1 %.not.i268, label %bb.an, label %Nf_ObjMatchBest.exit

bb.an:                                            ; preds = %bb.am
  %i.me = load i32, ptr %i.mb, align 4
  br label %Nf_ObjMatchBest.exit

Nf_ObjMatchBest.exit:                             ; preds = %bb.am, %bb.an
  %i.mf = phi i32 [ %i.md, %bb.am ], [ %i.me, %bb.an ] ; 3 uses
  %.0.i = phi ptr [ %i.mc, %bb.am ], [ %i.mb, %bb.an ]
  %i.mg = and i32 %i.mf, 1073741824
  %.not208 = icmp eq i32 %i.mg, 0
  br i1 %.not208, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %Nf_ObjMatchBest.exit
  %i.mh = load ptr, ptr %i.lp, align 8, !tbaa !68 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 240
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !81
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 260
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !8
  %i.mm = fpext float %i.ml to double
  %i.mn = trunc nuw i64 %i.ly to i32              ; 2 uses
  %i.mo = or disjoint i32 %i.mn, 1
end_hunk_0
