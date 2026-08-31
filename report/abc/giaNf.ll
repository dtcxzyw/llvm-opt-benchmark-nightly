Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaNf?download=true
inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Nf_ManDumpMatches:bb.a
.loopexit272.loopexit.1:                          ; preds = %bb.p
  %.0182.val236.1.pre = load i32, ptr %.0182287.1, align 4, !tbaa !15
  %.pre364 = load i32, ptr %i.dd, align 4, !tbaa !15
  br label %.loopexit272.1

.loopexit272.1:                                   ; preds = %.loopexit272.loopexit.1, %bb.l, %bb.k
  %i.fe = phi i32 [ %.pre364, %.loopexit272.loopexit.1 ], [ %i.di, %bb.l ], [ %i.di, %bb.k ] ; 2 uses
  %.0182.val236.1 = phi i32 [ %.0182.val236.1.pre, %.loopexit272.loopexit.1 ], [ %.0182.val234.1, %bb.l ], [ %.0182.val234.1, %bb.k ]
  %i.ff = add nuw nsw i32 %.0183285.1, 1          ; 2 uses
  %i.fg = and i32 %.0182.val236.1, 31
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.0182287.1, i64 %i.fh
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
  %i.hp = phi ptr [ %i.ji, %bb.ae ], [ %i.hl, %.critedge10 ] ; 4 uses
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
  %.not.i.i = icmp slt i64 %indvars.iv340, %i.ic
  br i1 %.not.i.i, label %bb.y, label %bb.u

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
  %i.ik = sext i32 %i.ia to i64
  %.not.i.i.not.i.i = icmp slt i64 %indvars.iv340, %i.ik
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.il = icmp slt i32 %i.ia, 1073741823
  %spec.select.i.i.i = select i1 %i.il, i32 %i.ib, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ia, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.aa, label %Vec_IntGrow.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.im = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.in, null
  %i.io = sext i32 %spec.select.i.i.i to i64
  %i.ip = shl nsw i64 %i.io, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iq = tail call ptr @realloc(ptr noundef nonnull %i.in, i64 noundef %i.ip) #27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ir = tail call noalias ptr @malloc(i64 noundef %i.ip) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.is = phi ptr [ %i.iq, %bb.ab ], [ %i.ir, %bb.ac ]
  store ptr %i.is, ptr %i.im, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.ad, %bb.x
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ad ], [ %i.ij, %bb.x ]
  store i32 %spec.select.sink.i.i.i, ptr %.val262, align 8, !tbaa !31
  %.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !24 ; 2 uses
  %.pre371 = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.z, %bb.y
  %.pre-phi = phi i64 [ %.pre371, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hz, %bb.z ], [ %i.hz, %bb.y ] ; 2 uses
  %i.it = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hy, %bb.z ], [ %i.hy, %bb.y ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv340
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.val262, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.iw = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.ix = trunc nuw nsw i64 %indvars.iv340 to i32
  %i.iy = sub i32 %i.ix, %i.it
  %i.iz = zext i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = add nuw nsw i64 %i.ja, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.jb, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.jc = trunc nuw nsw i64 %i.hw to i32
  store i32 %i.jc, ptr %i.hx, align 4, !tbaa !24
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.s, %._crit_edge.i.i.i
  %i.jd = getelementptr i8, ptr %.val262, i64 8
  %.val.i.i265 = load ptr, ptr %i.jd, align 8, !tbaa !27
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i265, i64 %indvars.iv340
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15
  %indvars.iv340.tr = trunc nuw i64 %indvars.iv340 to i32
  %i.jg = shl nuw i32 %indvars.iv340.tr, 1
  %i.jh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.jg, i32 noundef %i.jf) #26 ; 0 uses
  %.pre366 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge380, %Gia_ObjLevelId.exit
  %indvars.iv.next341.pre-phi = phi i64 [ %.pre381, %._crit_edge380 ], [ %i.hw, %Gia_ObjLevelId.exit ] ; 2 uses
  %i.ji = phi ptr [ %i.hp, %._crit_edge380 ], [ %.pre366, %Gia_ObjLevelId.exit ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !109
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next341.pre-phi, %i.jl
  br i1 %i.jm, label %.lr.ph306, label %.critedge12, !llvm.loop !273

.critedge12:                                      ; preds = %.lr.ph306, %bb.ae, %.critedge10
  %i.jn = phi ptr [ %i.hl, %.critedge10 ], [ %i.hp, %.lr.ph306 ], [ %i.ji, %bb.ae ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !203 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 4
  %.val218308 = load i32, ptr %i.jq, align 4, !tbaa !24
  %i.jr = icmp sgt i32 %.val218308, 0
  br i1 %i.jr, label %.lr.ph310, label %.critedge14

.lr.ph310:                                        ; preds = %.critedge12
  %i.js = add nsw i32 %i.gr, 1
  %i.jt = getelementptr i8, ptr %i.jp, i64 8
  %.val249.val420 = load ptr, ptr %i.jt, align 8, !tbaa !27
  %i.ju = load i32, ptr %.val249.val420, align 4, !tbaa !15 ; 2 uses
  %.not203421 = icmp eq i32 %i.ju, 0
  br i1 %.not203421, label %.critedge14, label %.lr.ph423

bb.af:                                            ; preds = %.lr.ph423
  %i.jv = getelementptr i8, ptr %i.kd, i64 8
  %.val249.val = load ptr, ptr %i.jv, align 8, !tbaa !27
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val249.val, i64 %indvars.iv.next344
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !15 ; 2 uses
  %.not203 = icmp eq i32 %i.jx, 0
  br i1 %.not203, label %.critedge14, label %.lr.ph423, !llvm.loop !274

.lr.ph423:                                        ; preds = %.lr.ph310, %bb.af
  %i.jy = phi i32 [ %i.jx, %bb.af ], [ %i.ju, %.lr.ph310 ]
  %indvars.iv343422 = phi i64 [ %indvars.iv.next344, %bb.af ], [ 0, %.lr.ph310 ]
  %i.jz = shl nsw i32 %i.jy, 1
  %i.ka = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.jz, i32 noundef %i.js) #26 ; 0 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343422, 1 ; 3 uses
  %i.kb = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !203 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 4
  %.val218 = load i32, ptr %i.ke, align 4, !tbaa !24
  %i.kf = sext i32 %.val218 to i64
  %i.kg = icmp slt i64 %indvars.iv.next344, %i.kf
  br i1 %i.kg, label %bb.af, label %..critedge14.loopexit_crit_edge, !llvm.loop !274

..critedge14.loopexit_crit_edge:                  ; preds = %.lr.ph423
  br label %.critedge14, !llvm.loop !274

.critedge14:                                      ; preds = %bb.af, %.lr.ph310, %..critedge14.loopexit_crit_edge, %.critedge12
  %i.kh = phi ptr [ %i.jn, %.critedge12 ], [ %i.kb, %..critedge14.loopexit_crit_edge ], [ %i.jn, %.lr.ph310 ], [ %i.kb, %bb.af ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !202 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val312 = load i32, ptr %i.kk, align 4, !tbaa !24
  %i.kl = icmp sgt i32 %.val312, 0
  br i1 %i.kl, label %.lr.ph314, label %.critedge16

.lr.ph314:                                        ; preds = %.critedge14
  %i.km = getelementptr i8, ptr %0, i64 104
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph314, %bb.aj
  %i.ko = phi ptr [ %i.kh, %.lr.ph314 ], [ %i.lf, %bb.aj ] ; 2 uses
  %indvars.iv346 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next347, %bb.aj ] ; 2 uses
  %i.kp = phi ptr [ %i.kj, %.lr.ph314 ], [ %i.lh, %bb.aj ]
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  %.val256.val = load ptr, ptr %i.kq, align 8, !tbaa !27
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.val256.val, i64 %indvars.iv346
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !15 ; 2 uses
  %.not204 = icmp eq i32 %i.ks, 0
  br i1 %.not204, label %.critedge16, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val254 = load ptr, ptr %i.km, align 8, !tbaa !27
  %i.kt = shl nsw i32 %i.ks, 1                    ; 2 uses
  %i.ku = or disjoint i32 %i.kt, 1                ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %.val254, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !15
  %.not211 = icmp eq i32 %i.kx, 0
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load ptr, ptr %i.kn, align 8, !tbaa !68 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 240
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !81
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 260
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !8
  %i.ld = fpext float %i.lc to double
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.85, i32 noundef %i.ku, ptr noundef %i.la, double noundef %i.ld, i32 noundef %i.kt) #26 ; 0 uses
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.lf = phi ptr [ %i.ko, %bb.ah ], [ %.pre367, %bb.ai ] ; 3 uses
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !202 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %.val = load i32, ptr %i.li, align 4, !tbaa !24
  %i.lj = sext i32 %.val to i64
  %i.lk = icmp slt i64 %indvars.iv.next347, %i.lj
  br i1 %i.lk, label %bb.ag, label %.critedge16, !llvm.loop !275

.critedge16:                                      ; preds = %bb.ag, %bb.aj, %.critedge14
  %i.ll = phi ptr [ %i.kh, %.critedge14 ], [ %i.ko, %bb.ag ], [ %i.lf, %bb.aj ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !109
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph323, label %.critedge18

.lr.ph323:                                        ; preds = %.critedge16
  %i.lp = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.lq = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.lr = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.ls = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.lt = getelementptr i8, ptr %0, i64 88        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph323, %.loopexit
  %i.lu = phi ptr [ %i.ll, %.lr.ph323 ], [ %i.qz, %.loopexit ] ; 2 uses
  %indvars.iv352 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next353, %.loopexit ] ; 7 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 32
  %.val227 = load ptr, ptr %i.lv, align 8, !tbaa !141 ; 2 uses
  %.not205 = icmp eq ptr %.val227, null
  br i1 %.not205, label %.critedge18, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %.val227, i64 %indvars.iv352
  %.val243 = load i64, ptr %i.lw, align 4         ; 2 uses
  %i.lx = and i64 %.val243, 2147483648
  %.not.i266 = icmp ne i64 %i.lx, 0
  %i.ly = and i64 %.val243, 536870911
  %i.lz = icmp eq i64 %i.ly, 536870911
  %narrow.i267.not = or i1 %.not.i266, %i.lz
  br i1 %narrow.i267.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.al
end_hunk_0
begin_hunk_1_@Nf_ManDeriveMapping:bb.a

bb.am:                                            ; preds = %bb.al
  %i.ig = icmp samesign ult i32 %i.ic, 1073741823
  %i.ih = shl nuw nsw i32 %i.ic, 1
  %spec.select.i115.1 = select i1 %i.ig, i32 %i.ih, i32 2147483647 ; 3 uses
  %.not.i9.i116.1 = icmp samesign ult i32 %i.ic, %spec.select.i115.1
  br i1 %.not.i9.i116.1, label %bb.an, label %Vec_IntPush.exit122.1

bb.an:                                            ; preds = %bb.am
  %i.ii = zext nneg i32 %spec.select.i115.1 to i64
  %i.ij = shl nuw nsw i64 %i.ii, 2
  br label %Vec_IntGrow.exit11.sink.split.i118.1

Vec_IntGrow.exit11.sink.split.i118.1:             ; preds = %bb.an, %bb.al
  %.sink197.1 = phi i64 [ %i.ij, %bb.an ], [ 64, %bb.al ]
  %spec.select.sink.i119.1 = phi i32 [ %spec.select.i115.1, %bb.an ], [ 16, %bb.al ]
  %i.ik = tail call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %.sink197.1) #27 ; 4 uses
  store ptr %i.ik, ptr %i.ao, align 8, !tbaa !27
  store i32 %spec.select.sink.i119.1, ptr %i.n, align 8, !tbaa !31
  %.pre162.1 = load i32, ptr %i.p, align 4, !tbaa !24
  br label %Vec_IntPush.exit122.1

Vec_IntPush.exit122.1:                            ; preds = %Vec_IntGrow.exit11.sink.split.i118.1, %bb.am, %bb.ak
  %.val99166.1 = phi ptr [ %.val99168.1, %bb.ak ], [ %.val99168.1, %bb.am ], [ %i.ik, %Vec_IntGrow.exit11.sink.split.i118.1 ] ; 2 uses
  %i.il = phi ptr [ %i.hm, %bb.ak ], [ %i.hm, %bb.am ], [ %i.ik, %Vec_IntGrow.exit11.sink.split.i118.1 ] ; 2 uses
  %i.im = phi i32 [ %i.ic, %bb.ak ], [ %i.ic, %bb.am ], [ %.pre162.1, %Vec_IntGrow.exit11.sink.split.i118.1 ] ; 2 uses
  %i.in = phi ptr [ %i.hn, %bb.ak ], [ %i.hn, %bb.am ], [ %i.ik, %Vec_IntGrow.exit11.sink.split.i118.1 ] ; 3 uses
  %i.io = add nsw i32 %i.im, 1
  store i32 %i.io, ptr %i.p, align 4, !tbaa !24
  %i.ip = sext i32 %i.im to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 %i.ib, ptr %i.iq, align 4, !tbaa !15
  %i.ir = add nuw nsw i32 %.072139.1, 1           ; 2 uses
  %.val93.1 = load i32, ptr %i.gs, align 4, !tbaa !15
  %i.is = and i32 %.val93.1, 31
  %i.it = icmp samesign ult i32 %i.ir, %i.is
  br i1 %i.it, label %.lr.ph140.1, label %.critedge2.1, !llvm.loop !293

.critedge2.1:                                     ; preds = %.lr.ph140.1, %Vec_IntPush.exit122.1, %Vec_IntPush.exit.1
  %.val99169.1 = phi ptr [ %.val99170.1, %Vec_IntPush.exit.1 ], [ %.val99166.1, %Vec_IntPush.exit122.1 ], [ %.val99168.1, %.lr.ph140.1 ] ; 2 uses
  %i.iu = phi ptr [ %i.hd, %Vec_IntPush.exit.1 ], [ %i.il, %Vec_IntPush.exit122.1 ], [ %i.hm, %.lr.ph140.1 ] ; 2 uses
  %i.iv = phi ptr [ %i.hf, %Vec_IntPush.exit.1 ], [ %i.in, %Vec_IntPush.exit122.1 ], [ %i.hn, %.lr.ph140.1 ]
  %i.iw = load i32, ptr %.0.i.1, align 4
  %i.ix = and i32 %i.iw, 1048575
  %i.iy = load i32, ptr %i.p, align 4, !tbaa !24  ; 7 uses
  %i.iz = load i32, ptr %i.n, align 8, !tbaa !31
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.ao, label %Vec_IntPush.exit130.1

bb.ao:                                            ; preds = %.critedge2.1
  %i.jb = icmp slt i32 %i.iy, 16
  br i1 %i.jb, label %Vec_IntGrow.exit11.sink.split.i126.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jc = icmp samesign ult i32 %i.iy, 1073741823
  %i.jd = shl nuw nsw i32 %i.iy, 1
  %spec.select.i123.1 = select i1 %i.jc, i32 %i.jd, i32 2147483647 ; 3 uses
  %.not.i9.i124.1 = icmp samesign ult i32 %i.iy, %spec.select.i123.1
  br i1 %.not.i9.i124.1, label %bb.aq, label %Vec_IntPush.exit130.1

bb.aq:                                            ; preds = %bb.ap
  %i.je = zext nneg i32 %spec.select.i123.1 to i64
  %i.jf = shl nuw nsw i64 %i.je, 2
  br label %Vec_IntGrow.exit11.sink.split.i126.1

Vec_IntGrow.exit11.sink.split.i126.1:             ; preds = %bb.aq, %bb.ao
  %.sink198.1 = phi i64 [ %i.jf, %bb.aq ], [ 64, %bb.ao ]
  %spec.select.sink.i127.1 = phi i32 [ %spec.select.i123.1, %bb.aq ], [ 16, %bb.ao ]
  %i.jg = tail call ptr @realloc(ptr noundef nonnull %i.iv, i64 noundef %.sink198.1) #27 ; 3 uses
  store ptr %i.jg, ptr %i.ao, align 8, !tbaa !27
  store i32 %spec.select.sink.i127.1, ptr %i.n, align 8, !tbaa !31
  %.pre163.1 = load i32, ptr %i.p, align 4, !tbaa !24
  br label %Vec_IntPush.exit130.1

Vec_IntPush.exit130.1:                            ; preds = %Vec_IntGrow.exit11.sink.split.i126.1, %bb.ap, %.critedge2.1
  %.val99173.1 = phi ptr [ %.val99169.1, %.critedge2.1 ], [ %.val99169.1, %bb.ap ], [ %i.jg, %Vec_IntGrow.exit11.sink.split.i126.1 ]
  %i.jh = phi i32 [ %i.iy, %.critedge2.1 ], [ %i.iy, %bb.ap ], [ %.pre163.1, %Vec_IntGrow.exit11.sink.split.i126.1 ] ; 2 uses
  %i.ji = phi ptr [ %i.iu, %.critedge2.1 ], [ %i.iu, %bb.ap ], [ %i.jg, %Vec_IntGrow.exit11.sink.split.i126.1 ] ; 3 uses
  %i.jj = add nsw i32 %i.jh, 1
  store i32 %i.jj, ptr %i.p, align 4, !tbaa !24
  %i.jk = sext i32 %i.jh to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jk
  store i32 %i.ix, ptr %i.jl, align 4, !tbaa !15
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %Vec_IntPush.exit130.1, %bb.af, %bb.ac
  %.val99172.1 = phi ptr [ %.val99172, %bb.ac ], [ %.val99173.1, %Vec_IntPush.exit130.1 ], [ %.val99172, %bb.af ]
  %i.jm = phi ptr [ %i.fu, %bb.ac ], [ %i.ji, %Vec_IntPush.exit130.1 ], [ %i.fu, %bb.af ]
  %.val98160.1 = phi ptr [ %.val98160, %bb.ac ], [ %i.ji, %Vec_IntPush.exit130.1 ], [ %.val98160, %bb.af ]
  %.pre174 = load ptr, ptr %0, align 8, !tbaa !105
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n, %bb.j
  %i.jn = phi ptr [ %.pre174, %.loopexit.loopexit ], [ %i.bm, %bb.n ], [ %i.bm, %bb.j ] ; 3 uses
  %.val99165 = phi ptr [ %.val99172.1, %.loopexit.loopexit ], [ %.val99, %bb.n ], [ %.val99, %bb.j ]
  %i.jo = phi ptr [ %i.jm, %.loopexit.loopexit ], [ %.val99, %bb.n ], [ %.val100, %bb.j ]
  %.val98158 = phi ptr [ %.val98160.1, %.loopexit.loopexit ], [ %.val99, %bb.n ], [ %.val98157, %bb.j ]
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !109
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next152, %i.jr
  br i1 %i.js, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !294

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre175 = load ptr, ptr %i.c, align 8, !tbaa !108
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.jt = phi ptr [ %i.d, %.critedge ], [ %.pre175, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %.critedge ], [ %i.jn, %._crit_edge.loopexit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.lcssa, i64 288
  store ptr %i.n, ptr %i.ju, align 8, !tbaa !295
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 272
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !264
  %.not77 = icmp eq ptr %i.jw, null
  br i1 %.not77, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 160
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !296 ; 2 uses
  %.not78 = icmp eq i32 %i.jy, 0
  br i1 %.not78, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @Nf_ManDumpMatchesBin(ptr noundef nonnull %0, i32 noundef %i.jy)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void @Nf_ManDumpMatches(ptr noundef nonnull %0)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %._crit_edge
  %i.jz = load ptr, ptr %0, align 8, !tbaa !105
  ret ptr %i.jz
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Nf_ManUpdateStats(ptr nofree noundef captures(none) initializes((204, 208)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 7 uses
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %.val66 = load ptr, ptr %i.k, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %.val66, null
  %i.l = getelementptr i8, ptr %0, i64 104
  %i.m = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.r = zext nneg i32 %i.i to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit
  %i.s = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.dn, %.loopexit ] ; 6 uses
  %i.t = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.do, %.loopexit ] ; 6 uses
  %i.u = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.dp, %.loopexit ] ; 6 uses
  %i.v = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %i.dq, %.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 8 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.val66, i64 %indvars.iv.next
  %.val71 = load i64, ptr %i.w, align 4           ; 4 uses
  %i.x = and i64 %.val71, 2147483648
  %.not.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %.val71, 536870911
  %i.z = icmp ne i64 %i.y, 536870911
  %narrow.i = and i1 %.not.i, %i.z
  br i1 %narrow.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.split
  %i.aa = trunc i64 %.val71 to i32
  %i.ab = and i32 %i.aa, 536870911                ; 2 uses
  %i.ac = lshr i64 %.val71, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 536870911
  %i.af = icmp eq i32 %i.ab, %i.ae
  %.not.i80 = icmp ne i32 %i.ab, 536870911
  %or.cond.not.i = and i1 %.not.i80, %i.af
  %.val77 = load ptr, ptr %i.l, align 8, !tbaa !27 ; 3 uses
  br i1 %or.cond.not.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.ag = shl nsw i64 %indvars.iv.next, 1         ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val77, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %.not63 = icmp eq i32 %i.ai, 0
  br i1 %.not63, label %bb.g, label %Nf_ObjMatchBest.exit

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.val77, i64 %.idx
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %.not65 = icmp eq i32 %i.al, 0
  br i1 %.not65, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load float, ptr %i.n, align 8, !tbaa !129
  %i.an = fadd float %i.am, %i.v                  ; 2 uses
  store float %i.an, ptr %i.c, align 8, !tbaa !192
  %i.ao = add i64 %i.u, 1                         ; 2 uses
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !195
  %i.ap = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !193
  %i.aq = add nsw i32 %i.s, 1                     ; 2 uses
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !194
  br label %.loopexit

Nf_ObjMatchBest.exit:                             ; preds = %.preheader
  %.val74 = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %.val74, i64 %indvars.iv.next ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %.not.i8290 = icmp slt i32 %i.at, 0
  %spec.select = select i1 %.not.i8290, ptr %i.as, ptr %i.ar
  %i.au = load i32, ptr %spec.select, align 4     ; 3 uses
  %i.av = and i32 %i.au, 1073741824
  %.not64 = icmp eq i32 %i.av, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Nf_ObjMatchBest.exit
  %i.aw = load float, ptr %i.n, align 8, !tbaa !129
  %i.ax = fadd float %i.aw, %i.v                  ; 2 uses
  store float %i.ax, ptr %i.c, align 8, !tbaa !192
  %i.ay = add i64 %i.u, 1                         ; 2 uses
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !195
  %i.az = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.az, ptr %i.f, align 8, !tbaa !193
  %i.ba = add nsw i32 %i.s, 1                     ; 2 uses
  store i32 %i.ba, ptr %i.d, align 4, !tbaa !194
  br label %bb.g

bb.f:                                             ; preds = %Nf_ObjMatchBest.exit
  %.val67 = load ptr, ptr %i.o, align 8, !tbaa !113
  %.val68 = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %indvars.iv.next
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !15 ; 2 uses
  %i.bd = ashr i32 %i.bc, 16
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val67, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131
  %i.bh = and i32 %i.bc, 65535
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = lshr i32 %i.au, 20
  %i.bl = and i32 %i.bk, 1023
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = and i32 %i.au, 1048575
  %.val73 = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %.val73, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !8
  %i.bt = fadd float %i.bs, %i.v                  ; 2 uses
  store float %i.bt, ptr %i.c, align 8, !tbaa !192
  %.val69 = load i32, ptr %i.bn, align 4, !tbaa !15
  %i.bu = and i32 %.val69, 31
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = add i64 %i.u, %i.bv                     ; 2 uses
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !195
  %i.bx = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.bx, ptr %i.f, align 8, !tbaa !193
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.f, %bb.e
  %i.by = phi i32 [ %i.s, %.preheader ], [ %i.s, %bb.f ], [ %i.ba, %bb.e ] ; 3 uses
  %i.bz = phi i64 [ %i.t, %.preheader ], [ %i.bx, %bb.f ], [ %i.az, %bb.e ] ; 3 uses
  %i.ca = phi i64 [ %i.u, %.preheader ], [ %i.bw, %bb.f ], [ %i.ay, %bb.e ] ; 3 uses
  %i.cb = phi float [ %i.v, %.preheader ], [ %i.bt, %bb.f ], [ %i.ax, %bb.e ] ; 3 uses
  %i.cc = getelementptr [4 x i8], ptr %.val77, i64 %i.ag
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15
  %.not63.1 = icmp eq i32 %i.ce, 0
  br i1 %.not63.1, label %.loopexit, label %Nf_ObjMatchBest.exit.1

Nf_ObjMatchBest.exit.1:                           ; preds = %bb.g
  %.val74.1 = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %.val74.1, i64 %indvars.iv.next ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %.not.i8290.1 = icmp slt i32 %i.ci, 0
  %spec.select.1 = select i1 %.not.i8290.1, ptr %i.ch, ptr %i.cg
  %i.cj = load i32, ptr %spec.select.1, align 4   ; 3 uses
  %i.ck = and i32 %i.cj, 1073741824
  %.not64.1 = icmp eq i32 %i.ck, 0
  br i1 %.not64.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Nf_ObjMatchBest.exit.1
  %i.cl = load float, ptr %i.n, align 8, !tbaa !129
  %i.cm = fadd float %i.cl, %i.cb                 ; 2 uses
  store float %i.cm, ptr %i.c, align 8, !tbaa !192
  %i.cn = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.cn, ptr %i.e, align 8, !tbaa !195
  %i.co = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.co, ptr %i.f, align 8, !tbaa !193
  %i.cp = add nsw i32 %i.by, 1                    ; 2 uses
  store i32 %i.cp, ptr %i.d, align 4, !tbaa !194
  br label %.loopexit

bb.i:                                             ; preds = %Nf_ObjMatchBest.exit.1
  %.val67.1 = load ptr, ptr %i.o, align 8, !tbaa !113
  %.val68.1 = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val68.1, i64 %indvars.iv.next
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15 ; 2 uses
  %i.cs = ashr i32 %i.cr, 16
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.val67.1, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !131
  %i.cw = and i32 %i.cr, 65535
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = lshr i32 %i.cj, 20
  %i.da = and i32 %i.cz, 1023
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.db
  %i.dd = and i32 %i.cj, 1048575
  %.val73.1 = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [80 x i8], ptr %.val73.1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = fadd float %i.dh, %i.cb                 ; 2 uses
  store float %i.di, ptr %i.c, align 8, !tbaa !192
  %.val69.1 = load i32, ptr %i.dc, align 4, !tbaa !15
  %i.dj = and i32 %.val69.1, 31
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add i64 %i.ca, %i.dk                    ; 2 uses
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !195
  %i.dm = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.dm, ptr %i.f, align 8, !tbaa !193
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.i, %.lr.ph.split, %bb.c, %bb.d
  %i.dn = phi i32 [ %i.aq, %bb.d ], [ %i.s, %.lr.ph.split ], [ %i.s, %bb.c ], [ %i.by, %bb.i ], [ %i.cp, %bb.h ], [ %i.by, %bb.g ] ; 2 uses
  %i.do = phi i64 [ %i.ap, %bb.d ], [ %i.t, %.lr.ph.split ], [ %i.t, %bb.c ], [ %i.dm, %bb.i ], [ %i.co, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %i.dp = phi i64 [ %i.ao, %bb.d ], [ %i.u, %.lr.ph.split ], [ %i.u, %bb.c ], [ %i.dl, %bb.i ], [ %i.cn, %bb.h ], [ %i.ca, %bb.g ] ; 2 uses
  %i.dq = phi float [ %i.an, %bb.d ], [ %i.v, %.lr.ph.split ], [ %i.v, %bb.c ], [ %i.di, %bb.i ], [ %i.cm, %bb.h ], [ %i.cb, %bb.g ] ; 2 uses
  %i.dr = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.dr, label %.lr.ph.split, label %.critedge, !llvm.loop !297

.critedge:                                        ; preds = %.loopexit, %.lr.ph, %bb.a
  %i.ds = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.dn, %.loopexit ]
  %i.dt = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.do, %.loopexit ]
  %i.du = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.dp, %.loopexit ]
  %i.dv = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.dq, %.loopexit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !202 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val = load i32, ptr %i.dy, align 4, !tbaa !24 ; 2 uses
  %i.dz = icmp sgt i32 %.val, 0
  br i1 %i.dz, label %.lr.ph88, label %.critedge2

.lr.ph88:                                         ; preds = %.critedge
  %i.ea = getelementptr i8, ptr %i.dx, i64 8
  %.val79.val = load ptr, ptr %i.ea, align 8, !tbaa !27
  %i.eb = getelementptr i8, ptr %0, i64 104
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.trip.count = zext nneg i32 %.val to i64
  %i.ed = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %i.ee = insertelement <2 x i64> %i.ed, i64 %i.du, i64 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph88, %bb.m
  %i.ef = phi i32 [ %i.ds, %.lr.ph88 ], [ %i.et, %bb.m ] ; 2 uses
  %i.eg = phi float [ %i.dv, %.lr.ph88 ], [ %i.eu, %bb.m ] ; 2 uses
  %indvars.iv93 = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next94, %bb.m ] ; 2 uses
  %i.eh = phi <2 x i64> [ %i.ee, %.lr.ph88 ], [ %i.ev, %bb.m ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val79.val, i64 %indvars.iv93
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15 ; 2 uses
  %.not59 = icmp eq i32 %i.ej, 0
  br i1 %.not59, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val75 = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.ek = shl nsw i32 %i.ej, 1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [4 x i8], ptr %.val75, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !15
  %.not60 = icmp eq i32 %i.eo, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = load float, ptr %i.ec, align 8, !tbaa !129
  %i.eq = fadd float %i.ep, %i.eg                 ; 2 uses
  store float %i.eq, ptr %i.c, align 8, !tbaa !192
  %i.er = add <2 x i64> %i.eh, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.er, ptr %i.f, align 8, !tbaa !18
  %i.es = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.es, ptr %i.d, align 4, !tbaa !194
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.et = phi i32 [ %i.ef, %bb.k ], [ %i.es, %bb.l ]
  %i.eu = phi float [ %i.eg, %bb.k ], [ %i.eq, %bb.l ]
  %i.ev = phi <2 x i64> [ %i.eh, %bb.k ], [ %i.er, %bb.l ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.j, !llvm.loop !298

.critedge2:                                       ; preds = %bb.j, %bb.m, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Nf_ManExtractWindow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !105    ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %.val224 = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.d = getelementptr i8, ptr %.val224, i64 4
  %.val224.val = load i32, ptr %i.d, align 4, !tbaa !24 ; 8 uses
  %i.e = shl nsw i32 %.val224.val, 1              ; 2 uses
  %i.f = add nsw i32 %i.e, 2
  %.neg391 = sub nuw nsw i32 -2, %i.e             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 2 uses
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !24
  %i.l = add i32 %.val.i, %.val224.val
  %i.m = xor i32 %i.l, -1
  %i.n = add i32 %i.h, %i.m                       ; 2 uses
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add nsw i32 %i.o, %.val224.val           ; 2 uses
  %i.q = icmp sgt i32 %i.p, %9
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.98, i32 noundef %i.n, i32 noundef %.val224.val, i32 noundef %i.p, i32 noundef %9) ; 0 uses
  br label %.critedge6

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !128
  store i64 %i.t, ptr %7, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 0, ptr %i.u, align 4, !tbaa !24
  %.val192395 = load i32, ptr %i.k, align 4, !tbaa !24
  %i.v = icmp sgt i32 %.val192395, 0
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.x = phi ptr [ %i.b, %.lr.ph ], [ %i.bb, %Vec_IntPush.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.y = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %Vec_IntPush.exit ]
  %i.z = getelementptr i8, ptr %i.x, i64 32
  %.val212 = load ptr, ptr %i.z, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %.val212, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val213.val = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val213.val, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %.val212, i64 %i.ad
  %.val.i.i = load i64, ptr %i.ae, align 4
  %i.af = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ag = and i32 %i.af, 536870911
  %i.ah = sub nsw i32 %i.ac, %i.ag
  %i.ai = lshr i32 %i.af, 29
  %i.aj = and i32 %i.ai, 1
end_hunk_1
