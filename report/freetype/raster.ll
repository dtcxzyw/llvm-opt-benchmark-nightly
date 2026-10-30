Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/raster?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Render_Single_Pass:bb.a
  %i.gh = sub nsw i64 %i.gg, %i.fo                ; 2 uses
  %spec.select214.i.i = select i1 %.not.i.i, i64 %i.gd, i64 %i.gh
  %spec.select215.i.i = select i1 %.not.i.i, i64 %i.gh, i64 %i.gd
  %i.gi = tail call fastcc signext i8 @Cubic_To(ptr noundef nonnull %0, i64 noundef %.0178.i.i, i64 noundef %.0177.i.i, i64 noundef %.0176.i.i, i64 noundef %.0175.i.i, i64 noundef %spec.select214.i.i, i64 noundef %spec.select215.i.i)
  %.not207.i.i = icmp eq i8 %i.gi, 0
  br i1 %.not207.i.i, label %.backedge.i.i, label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.gj = tail call fastcc signext i8 @Cubic_To(ptr noundef nonnull %0, i64 noundef %.0178.i.i, i64 noundef %.0177.i.i, i64 noundef %.0176.i.i, i64 noundef %.0175.i.i, i64 noundef %.sroa.084.2.i.i, i64 noundef %.sroa.13.2.i.i)
  %.not206.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not206.i.i, label %bb.aa, label %.loopexit

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.k
  %i.gk = tail call fastcc signext i8 @Line_To(ptr noundef nonnull %0, i64 noundef %.sroa.084.2.i.i, i64 noundef %.sroa.13.2.i.i)
  %.not198.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not198.i.i, label %bb.aa, label %.loopexit

.thread:                                          ; preds = %bb.f, %bb.t, %bb.u, %bb.q, %bb.n
  store i32 20, ptr %i.h, align 8, !tbaa !78
  br label %.loopexit58

bb.aa:                                            ; preds = %._crit_edge.i.i, %bb.z, %.split257.us.i.i
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !82  ; 2 uses
  %.not41.i = icmp eq ptr %i.gl, null
  br i1 %.not41.i, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.gn = load i32, ptr %i.e, align 4, !tbaa !66
  %i.go = add nsw i32 %i.gn, -1
  %i.gp = sext i32 %i.go to i64
  %i.gq = and i64 %i.gm, %i.gp
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gs = load i64, ptr %i.f, align 8, !tbaa !76
  %.not42.i = icmp slt i64 %i.gm, %i.gs
  br i1 %.not42.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gt = load i64, ptr %i.g, align 8, !tbaa !77
  %.not43.i = icmp sgt i64 %i.gm, %i.gt
  br i1 %.not43.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !87
  %i.gw = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !87
  %i.gz = xor i16 %i.gy, %i.gv
  %i.ha = and i16 %i.gz, 8
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hc = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  store ptr %i.hd, ptr %i.l, align 8, !tbaa !89
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.he = tail call fastcc signext i8 @End_Profile(ptr noundef nonnull %0)
  %.not44.i = icmp eq i8 %i.he, 0
  br i1 %.not44.i, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.hf = load ptr, ptr %i.i, align 8, !tbaa !143
  %.not45.i = icmp eq ptr %i.hf, null
  br i1 %.not45.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load ptr, ptr %i.r, align 8, !tbaa !82
  store ptr %i.hg, ptr %i.i, align 8, !tbaa !143
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hh = load i16, ptr %i.p, align 8, !tbaa !139
  %i.hi = zext i16 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next.i, %i.hi
  br i1 %i.hj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !127

._crit_edge.i:                                    ; preds = %bb.aj
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !143 ; 6 uses
  %.not.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i, label %Convert_Glyph.exit.thread45, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i
  %.val.i = load i16, ptr %i.o, align 8, !tbaa !80 ; 3 uses
  %i.hk = add i16 %.val.i, -1                     ; 3 uses
  %.not1.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not1.i.i, label %Convert_Glyph.exit.thread165, label %.lr.ph.i47.i.preheader

.lr.ph.i47.i.preheader:                           ; preds = %bb.ak
  %xtraiter = and i16 %i.hk, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.i.prol.loopexit, label %.lr.ph.i47.i.prol

.lr.ph.i47.i.prol:                                ; preds = %.lr.ph.i47.i.preheader
  %i.hl = load ptr, ptr %.pre.i, align 8, !tbaa !90 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !91
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !91
  %i.hq = icmp eq ptr %i.hn, %i.hp
  br i1 %i.hq, label %bb.al, label %.lr.ph.i47.i.prol.loopexit.unr-lcssa

bb.al:                                            ; preds = %.lr.ph.i47.i.prol
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !91
  br label %.lr.ph.i47.i.prol.loopexit.unr-lcssa

.lr.ph.i47.i.prol.loopexit.unr-lcssa:             ; preds = %bb.al, %.lr.ph.i47.i.prol
  %i.hr = add i16 %.val.i, -2
  br label %.lr.ph.i47.i.prol.loopexit

.lr.ph.i47.i.prol.loopexit:                       ; preds = %.lr.ph.i47.i.prol.loopexit.unr-lcssa, %.lr.ph.i47.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i47.i.preheader ], [ %i.hl, %.lr.ph.i47.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i16 [ %i.hk, %.lr.ph.i47.i.preheader ], [ %i.hr, %.lr.ph.i47.i.prol.loopexit.unr-lcssa ]
  %.02.i.i.unr = phi ptr [ %.pre.i, %.lr.ph.i47.i.preheader ], [ %i.hl, %.lr.ph.i47.i.prol.loopexit.unr-lcssa ]
  %i.hs = icmp eq i16 %.val.i, 2
  br i1 %i.hs, label %Convert_Glyph.exit.thread165, label %.lr.ph.i47.i

.lr.ph.i47.i:                                     ; preds = %.lr.ph.i47.i.prol.loopexit, %bb.ao
  %i.ht = phi i16 [ %i.ig, %bb.ao ], [ %.unr, %.lr.ph.i47.i.prol.loopexit ]
  %.02.i.i = phi ptr [ %i.ia, %bb.ao ], [ %.02.i.i.unr, %.lr.ph.i47.i.prol.loopexit ] ; 2 uses
  %i.hu = load ptr, ptr %.02.i.i, align 8, !tbaa !90 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !91
  %i.hx = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !91
  %i.hz = icmp eq ptr %i.hw, %i.hy
  br i1 %i.hz, label %bb.am, label %.lr.ph.i47.i.1

bb.am:                                            ; preds = %.lr.ph.i47.i
  store ptr %i.hu, ptr %i.hx, align 8, !tbaa !91
  br label %.lr.ph.i47.i.1

.lr.ph.i47.i.1:                                   ; preds = %bb.am, %.lr.ph.i47.i
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !90 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !91
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !91
  %i.if = icmp eq ptr %i.ic, %i.ie
  br i1 %i.if, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i47.i.1
  store ptr %i.ia, ptr %i.id, align 8, !tbaa !91
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i47.i.1
  %i.ig = add i16 %i.ht, -2                       ; 2 uses
  %.not.i48.i.1 = icmp eq i16 %i.ig, 0
  br i1 %.not.i48.i.1, label %Convert_Glyph.exit.thread165, label %.lr.ph.i47.i, !llvm.loop !128

.loopexit:                                        ; preds = %bb.ag, %.split257.us.i.i, %bb.z, %._crit_edge.i.i, %bb.y, %bb.l, %bb.p, %bb.r, %bb.s, %bb.o
  %.pr = load i32, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %.not33 = icmp eq i32 %.pr, 98
  br i1 %.not33, label %bb.ap, label %.loopexit58

bb.ap:                                            ; preds = %.loopexit
  %i.ih = icmp eq i32 %.026, %.024.ph
  br i1 %i.ih, label %.loopexit58, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ii = add nsw i32 %.024.ph, %.026
  %i.ij = ashr i32 %i.ii, 1
  %i.ik = add nsw i32 %.0, 1
  %i.il = sext i32 %.0 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.il
  store i32 %.026, ptr %i.im, align 4, !tbaa !9
  %i.in = add nsw i32 %i.ij, 1
  br label %bb.b

Convert_Glyph.exit.thread165:                     ; preds = %.lr.ph.i47.i.prol.loopexit, %bb.ao, %bb.ak
  %.sink = phi ptr [ %.pre.i, %bb.ak ], [ %.lcssa.unr, %.lr.ph.i47.i.prol.loopexit ], [ %i.ia, %bb.ao ]
  store ptr null, ptr %.sink, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.pre.i, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr null, ptr %i.b, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !144
  %i.io = load ptr, ptr %i.m, align 8, !tbaa !92  ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !93
  %i.iq = trunc i64 %i.ip to i32                  ; 3 uses
  %i.ir = load i32, ptr %i.n, align 4, !tbaa !79
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !93
  %i.iv = trunc i64 %i.iu to i32                  ; 3 uses
  %i.iw = add nsw i32 %i.iv, -1
  %i.ix = load ptr, ptr %i.aa, align 8, !tbaa !70
  tail call void %i.ix(ptr noundef nonnull %0, i32 noundef %i.iq, i32 noundef %i.iw) #10, !inline_history !129
  %.not.not175.i = icmp slt i32 %i.iq, %i.iv
  br i1 %.not.not175.i, label %.preheader157.i, label %Draw_Sweep.exit

.preheader157.i:                                  ; preds = %Convert_Glyph.exit.thread165, %bb.bx
  %.0..098160.pre184.i = phi ptr [ %.0..098160.pre187.i, %bb.bx ], [ null, %Convert_Glyph.exit.thread165 ]
  %.0104176.i = phi i32 [ %i.oc, %bb.bx ], [ %i.iq, %Convert_Glyph.exit.thread165 ] ; 2 uses
  %.0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %.not158.i = icmp eq ptr %.0..0..0..0..i, null
  br i1 %.not158.i, label %._crit_edge.i36, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.preheader157.i, %bb.au
  %i.iy = phi ptr [ %i.jo, %bb.au ], [ %.0..0..0..0..i, %.preheader157.i ] ; 7 uses
  %.0102159.i = phi ptr [ %.1103.i, %bb.au ], [ %i.a, %.preheader157.i ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !94
  %i.jb = icmp eq i32 %i.ja, %.0104176.i
  br i1 %i.jb, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.lr.ph.i34
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !90
  store ptr %i.jc, ptr %.0102159.i, align 8, !tbaa !144
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 28
  %i.je = load i16, ptr %i.jd, align 4, !tbaa !87
  %i.jf = and i16 %i.je, 8
  %.not127.i = icmp eq i16 %i.jf, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !95 ; 2 uses
  br i1 %.not127.i, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.ar, %bb.as
  %.011.i.i = phi ptr [ %.0.i.i, %bb.as ], [ %i.b, %bb.ar ] ; 3 uses
  %.0.i.i = load ptr, ptr %.011.i.i, align 8, !tbaa !144 ; 4 uses
  %.not.i.i40 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i40, label %.sink.split.i, label %bb.as

bb.as:                                            ; preds = %.preheader48
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !95
  %i.jk = icmp slt i64 %i.jj, %i.jh
  br i1 %i.jk, label %.preheader48, label %.sink.split.i, !llvm.loop !130

.preheader:                                       ; preds = %bb.ar, %bb.at
  %.011.i129.i = phi ptr [ %.0.i130.i, %bb.at ], [ %i.c, %bb.ar ] ; 3 uses
  %.0.i130.i = load ptr, ptr %.011.i129.i, align 8, !tbaa !144 ; 4 uses
  %.not.i131.i = icmp eq ptr %.0.i130.i, null
  br i1 %.not.i131.i, label %.sink.split.i, label %bb.at

bb.at:                                            ; preds = %.preheader
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i130.i, i64 32
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !95
  %i.jn = icmp slt i64 %i.jm, %i.jh
  br i1 %i.jn, label %.preheader, label %.sink.split.i, !llvm.loop !130

.sink.split.i:                                    ; preds = %bb.as, %.preheader48, %bb.at, %.preheader
  %.0.i.lcssa.sink.i = phi ptr [ null, %.preheader ], [ %.0.i130.i, %bb.at ], [ null, %.preheader48 ], [ %.0.i.i, %bb.as ]
  %.011.i.lcssa.sink.i = phi ptr [ %.011.i129.i, %bb.at ], [ %.011.i129.i, %.preheader ], [ %.011.i.i, %.preheader48 ], [ %.011.i.i, %bb.as ]
  store ptr %.0.i.lcssa.sink.i, ptr %i.iy, align 8, !tbaa !90
  store ptr %i.iy, ptr %.011.i.lcssa.sink.i, align 8, !tbaa !144
  br label %bb.au

bb.au:                                            ; preds = %.sink.split.i, %.lr.ph.i34
  %.1103.i = phi ptr [ %i.iy, %.lr.ph.i34 ], [ %.0102159.i, %.sink.split.i ] ; 2 uses
  %i.jo = load ptr, ptr %.1103.i, align 8, !tbaa !144 ; 2 uses
  %.not.i35 = icmp eq ptr %i.jo, null
  br i1 %.not.i35, label %._crit_edge.loopexit.i, label %.lr.ph.i34, !llvm.loop !131

._crit_edge.loopexit.i:                           ; preds = %bb.au
  %.0..0..0..0..098160.pre.pre.i = load ptr, ptr %i.c, align 8, !tbaa !144
  br label %._crit_edge.i36

._crit_edge.i36:                                  ; preds = %._crit_edge.loopexit.i, %.preheader157.i
  %.0..098160.pre.i = phi ptr [ %.0..0..0..0..098160.pre.pre.i, %._crit_edge.loopexit.i ], [ %.0..098160.pre184.i, %.preheader157.i ] ; 2 uses
  %i.jp = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  store ptr %i.jq, ptr %i.m, align 8, !tbaa !92
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !93
  %i.js = trunc i64 %i.jr to i32
  br label %bb.av

bb.av:                                            ; preds = %Increment.exit153.i, %._crit_edge.i36
  %.0..098160.pre189.i = phi ptr [ %.0..098160.pre.i, %._crit_edge.i36 ], [ %.0..098160.pre187.i, %Increment.exit153.i ] ; 3 uses
  %.0..098160.i = phi ptr [ %.0..098160.pre.i, %._crit_edge.i36 ], [ %.0..098160.pre185.i, %Increment.exit153.i ] ; 5 uses
  %.1105.i = phi i32 [ %.0104176.i, %._crit_edge.i36 ], [ %i.oc, %Increment.exit153.i ] ; 3 uses
  %.0..0..0..0..0100161.i = load ptr, ptr %i.b, align 8, !tbaa !144 ; 3 uses
  %i.jt = icmp ne ptr %.0..0..0..0..0100161.i, null ; 2 uses
  %i.ju = icmp ne ptr %.0..098160.i, null
  %i.jv = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %i.jv, label %.lr.ph166.i, label %._crit_edge174.i

.preheader.i:                                     ; preds = %bb.bk
  %.not117169.i = icmp eq i32 %.2.i, 0
  br i1 %.not117169.i, label %._crit_edge174.i, label %.lr.ph173.i

.lr.ph166.i:                                      ; preds = %bb.av, %bb.bk
  %.0100164.i = phi ptr [ %.0100.i, %bb.bk ], [ %.0..0..0..0..0100161.i, %bb.av ] ; 7 uses
  %.098163.i = phi ptr [ %.098.i, %bb.bk ], [ %.0..098160.i, %bb.av ] ; 4 uses
  %.0106162.i = phi i32 [ %.2.i, %bb.bk ], [ 0, %bb.av ] ; 7 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0100164.i, i64 32 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !95 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.098163.i, i64 32 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !95 ; 3 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.jx, i64 %i.jz) ; 5 uses
  %spec.select128.i = tail call i64 @llvm.smax.i64(i64 %i.jx, i64 %i.jz) ; 4 uses
  %i.ka = load i32, ptr %i.e, align 4, !tbaa !66  ; 3 uses
  %i.kb = sext i32 %i.ka to i64                   ; 3 uses
  %i.kc = add i64 %spec.select.i, -1
  %i.kd = add i64 %i.kc, %i.kb
  %i.ke = sub nsw i32 0, %i.ka
  %i.kf = sext i32 %i.ke to i64                   ; 3 uses
  %i.kg = and i64 %i.kd, %i.kf                    ; 2 uses
  %i.kh = and i64 %spec.select128.i, %i.kf        ; 2 uses
  %.not119.i = icmp sgt i64 %i.kg, %i.kh
  br i1 %.not119.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph166.i
  %i.ki = load ptr, ptr %i.ab, align 8, !tbaa !71
  tail call void %i.ki(ptr noundef nonnull %0, i32 noundef %.1105.i, i64 noundef %spec.select.i, i64 noundef %spec.select128.i) #10, !inline_history !129
  br label %bb.bk

bb.ax:                                            ; preds = %.lr.ph166.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.0100164.i, i64 28 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 4, !tbaa !87 ; 3 uses
  %i.kl = zext i16 %i.kk to i32                   ; 4 uses
  %i.km = and i32 %i.kl, 2
  %.not120.i = icmp eq i32 %i.km, 0
  br i1 %.not120.i, label %bb.ay, label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  %i.kn = and i32 %i.kl, 1
  %.not121.i = icmp eq i32 %i.kn, 0
  br i1 %.not121.i, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ko = getelementptr inbounds nuw i8, ptr %.0100164.i, i64 20
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !96
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.kr = getelementptr inbounds nuw i8, ptr %.0100164.i, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !91
  %i.kt = icmp eq ptr %i.ks, %.098163.i
  br i1 %i.kt, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ku = and i32 %i.kl, 16
  %.not122.i = icmp eq i32 %i.ku, 0
  br i1 %.not122.i, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kv = sub nsw i64 %spec.select128.i, %spec.select.i
  %i.kw = load i32, ptr %i.v, align 8, !tbaa !67
  %i.kx = sext i32 %i.kw to i64
  %.not123.i = icmp slt i64 %i.kv, %i.kx
  br i1 %.not123.i, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.az
  %i.ky = getelementptr inbounds nuw i8, ptr %.0100164.i, i64 16
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !97
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.lb = getelementptr inbounds nuw i8, ptr %.098163.i, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !91
  %i.ld = icmp eq ptr %i.lc, %.0100164.i
  br i1 %i.ld, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.le = and i16 %i.kk, 32
  %.not124.i = icmp eq i16 %i.le, 0
  br i1 %.not124.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lf = sub nsw i64 %spec.select128.i, %spec.select.i
  %i.lg = load i32, ptr %i.v, align 8, !tbaa !67
  %i.lh = sext i32 %i.lg to i64
  %.not125.i = icmp slt i64 %i.lf, %i.lh
  br i1 %.not125.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bd, %bb.ay
  %i.li = and i32 %i.kl, 4
  %.not126.i = icmp eq i32 %i.li, 0
  br i1 %.not126.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lj = add nsw i64 %i.jz, %i.jx
  %i.lk = mul nsw i32 %i.ka, 63
  %i.ll = sdiv i32 %i.lk, 64
  %i.lm = sext i32 %i.ll to i64
  %i.ln = add nsw i64 %i.lj, %i.lm
  %i.lo = ashr i64 %i.ln, 1
  %i.lp = and i64 %i.lo, %i.kf                    ; 3 uses
  %i.lq = icmp sgt i64 %spec.select.i, %i.lp
  %i.lr = sub nsw i64 0, %i.kb
  %.p.i = select i1 %i.lq, i64 %i.kb, i64 %i.lr
  %i.ls = add nsw i64 %.p.i, %i.lp
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.197.i = phi i64 [ %i.ls, %bb.bi ], [ %i.kg, %bb.bh ]
  %.1.i = phi i64 [ %i.lp, %bb.bi ], [ %i.kh, %bb.bh ]
  store i64 %.1.i, ptr %i.jw, align 8, !tbaa !95
  store i64 %.197.i, ptr %i.jy, align 8, !tbaa !95
  %i.lt = or i16 %i.kk, 64
  store i16 %i.lt, ptr %i.kj, align 4, !tbaa !87
  %i.lu = add nsw i32 %.0106162.i, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg, %bb.bf, %bb.bc, %bb.bb, %bb.ax, %bb.aw
  %.2.i = phi i32 [ %.0106162.i, %bb.aw ], [ %.0106162.i, %bb.ax ], [ %i.lu, %bb.bj ], [ %.0106162.i, %bb.bb ], [ %.0106162.i, %bb.bc ], [ %.0106162.i, %bb.bg ], [ %.0106162.i, %bb.bf ] ; 3 uses
  %.098.i = load ptr, ptr %.098163.i, align 8, !tbaa !144 ; 2 uses
  %.0100.i = load ptr, ptr %.0100164.i, align 8, !tbaa !144 ; 2 uses
  %i.lv = icmp ne ptr %.0100.i, null
  %i.lw = icmp ne ptr %.098.i, null
  %i.lx = select i1 %i.lv, i1 %i.lw, i1 false
  br i1 %i.lx, label %.lr.ph166.i, label %.preheader.i, !llvm.loop !132

.lr.ph173.i:                                      ; preds = %.preheader.i, %bb.bm
  %.1101172.in.i = phi ptr [ %.1101172.i, %bb.bm ], [ %i.b, %.preheader.i ]
  %.199171.in.i = phi ptr [ %.199171.i, %bb.bm ], [ %i.c, %.preheader.i ]
  %.3170.i = phi i32 [ %.4.i, %bb.bm ], [ %.2.i, %.preheader.i ] ; 2 uses
  %.199171.i = load ptr, ptr %.199171.in.i, align 8, !tbaa !144 ; 2 uses
  %.1101172.i = load ptr, ptr %.1101172.in.i, align 8, !tbaa !144 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1101172.i, i64 28 ; 3 uses
  %i.lz = load i16, ptr %i.ly, align 4, !tbaa !87
  %i.ma = and i16 %i.lz, 64
  %.not118.i = icmp eq i16 %i.ma, 0
  br i1 %.not118.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph173.i
  %i.mb = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.mc = getelementptr inbounds nuw i8, ptr %.1101172.i, i64 32
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !95
  %i.me = getelementptr inbounds nuw i8, ptr %.199171.i, i64 32
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !95
  tail call void %i.mb(ptr noundef nonnull %0, i32 noundef %.1105.i, i64 noundef %i.md, i64 noundef %i.mf) #10, !inline_history !129
  %i.mg = load i16, ptr %i.ly, align 4, !tbaa !87
  %i.mh = and i16 %i.mg, -65
  store i16 %i.mh, ptr %i.ly, align 4, !tbaa !87
  %i.mi = add nsw i32 %.3170.i, -1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph173.i
  %.4.i = phi i32 [ %i.mi, %bb.bl ], [ %.3170.i, %.lr.ph173.i ] ; 2 uses
  %.not117.i = icmp eq i32 %.4.i, 0
  br i1 %.not117.i, label %._crit_edge174.i, label %.lr.ph173.i, !llvm.loop !133

._crit_edge174.i:                                 ; preds = %bb.bm, %.preheader.i, %bb.av
  %i.mj = load ptr, ptr %i.ad, align 8, !tbaa !73
  tail call void %i.mj(ptr noundef nonnull %0) #10, !inline_history !129
  br i1 %i.jt, label %.lr.ph.i.i37, label %Increment.exit.i

.lr.ph.i.i37:                                     ; preds = %._crit_edge174.i, %bb.bp
  %i.mk = phi ptr [ %i.mx, %bb.bp ], [ %.0..0..0..0..0100161.i, %._crit_edge174.i ] ; 7 uses
  %.02838.i.i = phi ptr [ %.129.i.i, %bb.bp ], [ %i.b, %._crit_edge174.i ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 20 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !96
  %i.mn = add nsw i32 %i.mm, -1                   ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !96
  %.not36.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not36.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i37
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !97
  %i.mq = add nsw i32 %i.mp, 1                    ; 2 uses
  store i32 %i.mq, ptr %i.mo, align 8, !tbaa !97
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !93
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !95
  %.pre.i.i38 = load ptr, ptr %i.mk, align 8, !tbaa !144
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i37
  %i.mw = load ptr, ptr %i.mk, align 8, !tbaa !90 ; 2 uses
  store ptr %i.mw, ptr %.02838.i.i, align 8, !tbaa !144
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.mx = phi ptr [ %.pre.i.i38, %bb.bn ], [ %i.mw, %bb.bo ] ; 2 uses
  %.129.i.i = phi ptr [ %i.mk, %bb.bn ], [ %.02838.i.i, %bb.bo ]
  %.not.i133.i = icmp eq ptr %i.mx, null
  br i1 %.not.i133.i, label %._crit_edge.i.i39, label %.lr.ph.i.i37, !llvm.loop !134

._crit_edge.i.i39:                                ; preds = %bb.bp
  %.0..0..0..0..0..pre43.i.i = load ptr, ptr %i.b, align 8, !tbaa !144 ; 3 uses
  %.not33.i.i = icmp eq ptr %.0..0..0..0..0..pre43.i.i, null
  br i1 %.not33.i.i, label %Increment.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i39
  %i.my = load ptr, ptr %.0..0..0..0..0..pre43.i.i, align 8, !tbaa !90 ; 2 uses
  %.not3439.i.i = icmp eq ptr %i.my, null
  br i1 %.not3439.i.i, label %Increment.exit.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %.preheader.i.i, %bb.br
  %i.mz = phi ptr [ %i.nf, %bb.br ], [ %i.my, %.preheader.i.i ] ; 5 uses
  %.041.i.i = phi ptr [ %.1.i.i, %bb.br ], [ %.0..0..0..0..0..pre43.i.i, %.preheader.i.i ] ; 4 uses
  %.240.i.i = phi ptr [ %.3.i.i, %bb.br ], [ %i.b, %.preheader.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !95
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !95
  %.not35.i.i = icmp sgt i64 %i.nb, %i.nd
  br i1 %.not35.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph42.i.i
  store ptr %i.mz, ptr %.240.i.i, align 8, !tbaa !144
  %i.ne = load ptr, ptr %i.mz, align 8, !tbaa !90
  store ptr %i.ne, ptr %.041.i.i, align 8, !tbaa !90
  store ptr %.041.i.i, ptr %i.mz, align 8, !tbaa !90
  %.0..0..0..0..0.156.i = load ptr, ptr %i.b, align 8, !tbaa !144
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph42.i.i
  %.3.i.i = phi ptr [ %i.b, %bb.bq ], [ %.041.i.i, %.lr.ph42.i.i ]
  %.1.i.i = phi ptr [ %.0..0..0..0..0.156.i, %bb.bq ], [ %i.mz, %.lr.ph42.i.i ] ; 2 uses
  %i.nf = load ptr, ptr %.1.i.i, align 8, !tbaa !90 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.nf, null
  br i1 %.not34.i.i, label %Increment.exit.loopexit.i, label %.lr.ph42.i.i, !llvm.loop !135

Increment.exit.loopexit.i:                        ; preds = %bb.br
  %.0..0..0..0..0..pre.i = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  br label %Increment.exit.i

Increment.exit.i:                                 ; preds = %Increment.exit.loopexit.i, %.preheader.i.i, %._crit_edge.i.i39, %._crit_edge174.i
  %.0..098160.pre188.i = phi ptr [ %.0..0..0..0..0..pre.i, %Increment.exit.loopexit.i ], [ %.0..098160.pre189.i, %._crit_edge174.i ], [ %.0..098160.pre189.i, %._crit_edge.i.i39 ], [ %.0..098160.pre189.i, %.preheader.i.i ]
  %.0..0..i = phi ptr [ %.0..0..0..0..0..pre.i, %Increment.exit.loopexit.i ], [ %.0..098160.i, %._crit_edge174.i ], [ %.0..098160.i, %._crit_edge.i.i39 ], [ %.0..098160.i, %.preheader.i.i ] ; 2 uses
  %.not37.i134.i = icmp eq ptr %.0..0..i, null
  br i1 %.not37.i134.i, label %Increment.exit153.i, label %.lr.ph.i135.i

.lr.ph.i135.i:                                    ; preds = %Increment.exit.i, %bb.bu
  %i.ng = phi ptr [ %i.nt, %bb.bu ], [ %.0..0..i, %Increment.exit.i ] ; 7 uses
  %.02838.i136.i = phi ptr [ %.129.i139.i, %bb.bu ], [ %i.c, %Increment.exit.i ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 20 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !96
  %i.nj = add nsw i32 %i.ni, -1                   ; 2 uses
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !96
  %.not36.i137.i = icmp eq i32 %i.nj, 0
  br i1 %.not36.i137.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i135.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 16 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !97
  %i.nm = add nsw i32 %i.nl, -1                   ; 2 uses
  store i32 %i.nm, ptr %i.nk, align 8, !tbaa !97
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  %i.no = sext i32 %i.nm to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.nn, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !93
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !95
  %.pre.i138.i = load ptr, ptr %i.ng, align 8, !tbaa !144
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i135.i
  %i.ns = load ptr, ptr %i.ng, align 8, !tbaa !90 ; 2 uses
  store ptr %i.ns, ptr %.02838.i136.i, align 8, !tbaa !144
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.nt = phi ptr [ %.pre.i138.i, %bb.bs ], [ %i.ns, %bb.bt ] ; 2 uses
  %.129.i139.i = phi ptr [ %i.ng, %bb.bs ], [ %.02838.i136.i, %bb.bt ]
  %.not.i140.i = icmp eq ptr %i.nt, null
  br i1 %.not.i140.i, label %._crit_edge.i141.i, label %.lr.ph.i135.i, !llvm.loop !134

._crit_edge.i141.i:                               ; preds = %bb.bu
  %.0..0..0..0..0..pre43.i142.i = load ptr, ptr %i.c, align 8, !tbaa !144 ; 6 uses
  %.not33.i143.i = icmp eq ptr %.0..0..0..0..0..pre43.i142.i, null
  br i1 %.not33.i143.i, label %Increment.exit153.i, label %.preheader.i144.i

.preheader.i144.i:                                ; preds = %._crit_edge.i141.i
  %i.nu = load ptr, ptr %.0..0..0..0..0..pre43.i142.i, align 8, !tbaa !90 ; 2 uses
  %.not3439.i145.i = icmp eq ptr %i.nu, null
  br i1 %.not3439.i145.i, label %Increment.exit153.i, label %.lr.ph42.i146.i

.lr.ph42.i146.i:                                  ; preds = %.preheader.i144.i, %bb.bw
  %.0..098160181.i = phi ptr [ %.0..098160180.i, %bb.bw ], [ %.0..0..0..0..0..pre43.i142.i, %.preheader.i144.i ]
  %i.nv = phi ptr [ %i.ob, %bb.bw ], [ %i.nu, %.preheader.i144.i ] ; 5 uses
  %.041.i147.i = phi ptr [ %.1.i151.i, %bb.bw ], [ %.0..0..0..0..0..pre43.i142.i, %.preheader.i144.i ] ; 4 uses
  %.240.i148.i = phi ptr [ %.3.i150.i, %bb.bw ], [ %i.c, %.preheader.i144.i ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.041.i147.i, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !95
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !95
  %.not35.i149.i = icmp sgt i64 %i.nx, %i.nz
  br i1 %.not35.i149.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph42.i146.i
  store ptr %i.nv, ptr %.240.i148.i, align 8, !tbaa !144
  %i.oa = load ptr, ptr %i.nv, align 8, !tbaa !90
  store ptr %i.oa, ptr %.041.i147.i, align 8, !tbaa !90
  store ptr %.041.i147.i, ptr %i.nv, align 8, !tbaa !90
  %.0..0..0..0..0.154.i = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph42.i146.i
  %.0..098160180.i = phi ptr [ %.0..0..0..0..0.154.i, %bb.bv ], [ %.0..098160181.i, %.lr.ph42.i146.i ] ; 3 uses
  %.3.i150.i = phi ptr [ %i.c, %bb.bv ], [ %.041.i147.i, %.lr.ph42.i146.i ]
  %.1.i151.i = phi ptr [ %.0..0..0..0..0.154.i, %bb.bv ], [ %i.nv, %.lr.ph42.i146.i ] ; 2 uses
  %i.ob = load ptr, ptr %.1.i151.i, align 8, !tbaa !90 ; 2 uses
  %.not34.i152.i = icmp eq ptr %i.ob, null
  br i1 %.not34.i152.i, label %Increment.exit153.i, label %.lr.ph42.i146.i, !llvm.loop !135

Increment.exit153.i:                              ; preds = %bb.bw, %.preheader.i144.i, %._crit_edge.i141.i, %Increment.exit.i
  %.0..098160.pre187.i = phi ptr [ %.0..0..0..0..0..pre43.i142.i, %.preheader.i144.i ], [ %.0..098160.pre188.i, %Increment.exit.i ], [ null, %._crit_edge.i141.i ], [ %.0..098160180.i, %bb.bw ] ; 2 uses
  %.0..098160.pre185.i = phi ptr [ %.0..0..0..0..0..pre43.i142.i, %.preheader.i144.i ], [ null, %Increment.exit.i ], [ null, %._crit_edge.i141.i ], [ %.0..098160180.i, %bb.bw ]
  %i.oc = add nsw i32 %.1105.i, 1                 ; 4 uses
  %i.od = icmp slt i32 %i.oc, %i.js
  br i1 %i.od, label %bb.av, label %bb.bx, !llvm.loop !136

bb.bx:                                            ; preds = %Increment.exit153.i
  %.not.not.i = icmp slt i32 %i.oc, %i.iv
  br i1 %.not.not.i, label %.preheader157.i, label %Draw_Sweep.exit, !llvm.loop !137

Draw_Sweep.exit:                                  ; preds = %bb.bx, %Convert_Glyph.exit.thread165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %Convert_Glyph.exit.thread45

Convert_Glyph.exit.thread45:                      ; preds = %bb.b, %._crit_edge.i, %Draw_Sweep.exit
  %i.oe = icmp slt i32 %.0, 1
  br i1 %i.oe, label %.loopexit58, label %bb.by

bb.by:                                            ; preds = %Convert_Glyph.exit.thread45
  %i.of = add nsw i32 %.0, -1                     ; 2 uses
  %i.og = add nsw i32 %.026, -1
  %i.oh = zext nneg i32 %i.of to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !9
  br label %.outer

.loopexit58:                                      ; preds = %bb.ap, %.loopexit, %Convert_Glyph.exit.thread45, %.thread
  %.028 = phi i32 [ 20, %.thread ], [ %.pr, %.loopexit ], [ 98, %bb.ap ], [ 0, %Convert_Glyph.exit.thread45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret i32 %.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Init(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = and i64 %i.e, %i.g
  %i.i = and i64 %3, %i.g
  %i.j = icmp eq i64 %2, %i.h
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !64
  %i.l = zext nneg i32 %i.k to i64
  %i.m = ashr i64 %2, %i.l                        ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %i.q = sext i32 %i.p to i64
  %.not = icmp sgt i64 %i.m, %i.q
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = ashr i32 %1, 3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.m, %i.y
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ac = and i32 %1, 7
  %i.ad = lshr exact i32 128, %i.ac
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !75
  %i.af = trunc nuw i32 %i.ad to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.ah = icmp eq i64 %3, %i.i
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %0, align 8, !tbaa !64
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = ashr i64 %3, %i.aj                      ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = sext i32 %i.an to i64
  %.not35 = icmp sgt i64 %i.ak, %i.ao
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = ashr i32 %1, 3
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.ak, %i.aw
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = and i32 %1, 7
  %i.bb = lshr exact i32 128, %i.ba
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !75
  %i.bd = trunc nuw i32 %i.bb to i8
  %i.be = or i8 %i.bc, %i.bd
  store i8 %i.be, ptr %i.az, align 1, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !64
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = ashr i64 %2, %i.b
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = ashr i64 %3, %i.b
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = icmp slt i32 %i.d, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %i.j = icmp slt i32 %i.i, %i.d
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.f, 0
  %.not = icmp slt i32 %i.i, %i.f
  %or.cond = or i1 %i.k, %.not
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = ashr i32 %1, 3
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35
  %i.s = mul nsw i32 %i.r, %i.f
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u
  %i.w = and i32 %1, 7
  %i.x = lshr exact i32 128, %i.w
  %i.y = load i8, ptr %i.v, align 1, !tbaa !75
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.x, %i.z
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.ab = icmp sgt i32 %i.f, -1
  br i1 %i.ab, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.ac = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %.033 = phi i32 [ %i.f, %..thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %.not31 = icmp sgt i32 %.033, %i.ac
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.af = ashr i32 %1, 3
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.ak = mul nsw i32 %i.aj, %.033
  %i.al = sext i32 %i.ak to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.am ; 2 uses
end_hunk_0
