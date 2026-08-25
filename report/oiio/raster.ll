Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/raster?download=true
inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Render_Single_Pass:bb.a

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0178.i.i = phi i64 [ %i.fy, %bb.x ], [ %i.fu, %bb.w ] ; 2 uses
  %.0177.i.i = phi i64 [ %i.fu, %bb.x ], [ %i.fy, %bb.w ] ; 2 uses
  %.0176.i.i = phi i64 [ %i.gf, %bb.x ], [ %i.gb, %bb.w ] ; 2 uses
  %.0175.i.i = phi i64 [ %i.gb, %bb.x ], [ %i.gf, %bb.w ] ; 2 uses
  %.not205.i.i = icmp ugt ptr %i.fm, %.1188.i.i
  br i1 %.not205.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gg = load i64, ptr %i.fm, align 8, !tbaa !80
  %i.gh = mul nsw i64 %i.gg, %i.fq
  %i.gi = sub nsw i64 %i.gh, %i.ft                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !81
  %i.gl = mul nsw i64 %i.gk, %i.fq
  %i.gm = sub nsw i64 %i.gl, %i.ft                ; 2 uses
  %spec.select214.i.i = select i1 %.not.i.i, i64 %i.gi, i64 %i.gm
  %spec.select215.i.i = select i1 %.not.i.i, i64 %i.gm, i64 %i.gi
  %i.gn = tail call fastcc signext i8 @Cubic_To(ptr noundef nonnull %0, i64 noundef %.0178.i.i, i64 noundef %.0177.i.i, i64 noundef %.0176.i.i, i64 noundef %.0175.i.i, i64 noundef %spec.select214.i.i, i64 noundef %spec.select215.i.i)
  %.not207.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not207.i.i, label %.backedge.i.i, label %Convert_Glyph.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.go = tail call fastcc signext i8 @Cubic_To(ptr noundef nonnull %0, i64 noundef %.0178.i.i, i64 noundef %.0177.i.i, i64 noundef %.0176.i.i, i64 noundef %.0175.i.i, i64 noundef %.sroa.084.2.i.i, i64 noundef %.sroa.13.2.i.i)
  %.not206.i.i = icmp eq i8 %i.go, 0
  br i1 %.not206.i.i, label %bb.ab, label %Convert_Glyph.exit.thread

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.l
  %i.gp = tail call fastcc signext i8 @Line_To(ptr noundef nonnull %0, i64 noundef %.sroa.084.2.i.i, i64 noundef %.sroa.13.2.i.i)
  %.not198.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not198.i.i, label %bb.ab, label %Convert_Glyph.exit.thread

.thread223.i.i:                                   ; preds = %bb.g, %bb.v, %bb.u, %bb.r, %bb.o
  store i32 20, ptr %i.j, align 8, !tbaa !111
  br label %Convert_Glyph.exit.thread.thread51

bb.ab:                                            ; preds = %._crit_edge.i.i, %bb.aa, %.split257.us.i.i
  %i.gq = load i64, ptr %i.ac, align 8, !tbaa !127 ; 5 uses
  %i.gr = load i32, ptr %i.e, align 4, !tbaa !88  ; 3 uses
  %i.gs = add nsw i32 %i.gr, -1
  %i.gt = sext i32 %i.gs to i64
  %i.gu = and i64 %i.gq, %i.gt                    ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load i64, ptr %i.f, align 8, !tbaa !108
  %.not63.i = icmp slt i64 %i.gq, %i.gw
  br i1 %.not63.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !109
  %.not64.i = icmp sgt i64 %i.gq, %i.gx
  br i1 %.not64.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gy = load ptr, ptr %i.u, align 8, !tbaa !122 ; 2 uses
  %.not65.i = icmp eq ptr %i.gy, null
  br i1 %.not65.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i16, ptr %i.gz, align 8, !tbaa !103
  %i.hb = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i16, ptr %i.hc, align 8, !tbaa !103
  %i.he = xor i16 %i.hd, %i.ha
  %i.hf = and i16 %i.he, 8
  %i.hg = icmp eq i16 %i.hf, 0
  br i1 %i.hg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hh = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -8
  store ptr %i.hi, ptr %i.i, align 8, !tbaa !110
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.hj = load ptr, ptr %i.q, align 8, !tbaa !117 ; 6 uses
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !110 ; 9 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !118 ; 3 uses
  %.not66.i = icmp eq ptr %i.hk, %i.hm            ; 2 uses
  br i1 %.not66.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !103
  %i.hp = and i16 %i.ho, 8
  %.not67.i = icmp eq i16 %i.hp, 0
  br i1 %.not67.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hq = ptrtoint ptr %i.hk to i64
  %i.hr = ptrtoint ptr %i.hm to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 3                 ; 2 uses
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.ak, label %bb.al

.thread.i:                                        ; preds = %bb.ai
  %i.hv = load i32, ptr %i.y, align 8, !tbaa !89  ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp sge i64 %i.gu, %i.hw
  %i.hy = ptrtoint ptr %i.hk to i64
  %i.hz = ptrtoint ptr %i.hm to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3                 ; 2 uses
  %i.ic = icmp slt i64 %i.ib, 0
  br i1 %i.ic, label %bb.ak, label %.thread80.i

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  store i32 99, ptr %i.j, align 8, !tbaa !111
  br label %Convert_Glyph.exit.thread.thread51

bb.al:                                            ; preds = %bb.aj
  %i.id = sext i32 %i.gr to i64
  %i.ie = add i64 %i.gq, -1
  %i.if = add i64 %i.ie, %i.id
  %i.ig = sub nsw i32 0, %i.gr
  %i.ih = sext i32 %i.ig to i64
  %i.ii = and i64 %i.if, %i.ih
  %i.ij = sub nsw i64 %i.ii, %i.gq
  %i.ik = load i32, ptr %i.y, align 8, !tbaa !89  ; 3 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp sge i64 %i.ij, %i.il
  br i1 %.not66.i, label %bb.an, label %.thread80.i

.thread80.i:                                      ; preds = %bb.al, %.thread.i
  %i.in = phi i32 [ %i.ik, %bb.al ], [ %i.hv, %.thread.i ]
  %.0557982.in.i = phi i1 [ %i.im, %bb.al ], [ %i.hx, %.thread.i ]
  %i.io = phi i64 [ %i.ht, %bb.al ], [ %i.ib, %.thread.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !106
  br i1 %.0557982.in.i, label %.sink.split.i.i, label %bb.am

.sink.split.i.i:                                  ; preds = %.thread80.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hj, i64 24 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 8, !tbaa !103 ; 2 uses
  %i.is = and i16 %i.ir, 8
  %.not27.i.i = icmp eq i16 %i.is, 0
  %..i.i = select i1 %.not27.i.i, i16 32, i16 16
  %i.it = or i16 %..i.i, %i.ir
  store i16 %i.it, ptr %i.iq, align 8, !tbaa !103
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i.i, %.thread80.i
  store ptr %i.hk, ptr %i.q, align 8, !tbaa !117
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 64 ; 3 uses
  store ptr %i.iu, ptr %i.i, align 8, !tbaa !110
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  store i64 0, ptr %i.iv, align 8, !tbaa !106
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !118
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  store ptr %i.hk, ptr %i.ix, align 8, !tbaa !105
  %i.iy = load i16, ptr %i.r, align 8, !tbaa !119
  %i.iz = add i16 %i.iy, 1
  store i16 %i.iz, ptr %i.r, align 8, !tbaa !119
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ja = phi i32 [ %i.in, %bb.am ], [ %i.ik, %bb.al ]
  %i.jb = phi ptr [ %i.iu, %bb.am ], [ %i.hk, %bb.al ] ; 5 uses
  %i.jc = load ptr, ptr %i.o, align 8, !tbaa !115 ; 3 uses
  %.not28.i.i = icmp ult ptr %i.jb, %i.jc
  br i1 %.not28.i.i, label %bb.ao, label %Convert_Glyph.exit.thread.thread.sink.split

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.l, align 1, !tbaa !113
  %i.jd = load ptr, ptr %i.u, align 8, !tbaa !122 ; 2 uses
  %.not70.i = icmp eq ptr %i.jd, null
  br i1 %.not70.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !105
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jf = load i16, ptr %i.s, align 8, !tbaa !120
  %i.jg = sext i16 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next.i, %i.jg
  br i1 %i.jh, label %bb.c, label %._crit_edge.i, !llvm.loop !130

._crit_edge.i:                                    ; preds = %bb.aq
  %.pre190.i = load i16, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.pre191.i = load ptr, ptr %i.k, align 8, !tbaa !112 ; 3 uses
  %i.ji = icmp ugt i16 %.pre190.i, 1
  %i.jj = icmp ne ptr %.pre191.i, null
  %or.cond.i.i = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond.i.i, label %.preheader.i.i, label %Convert_Glyph.exit.thread232

.preheader.i.i:                                   ; preds = %._crit_edge.i
  %i.jk = load ptr, ptr %i.n, align 8, !tbaa !44  ; 4 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bc, %.preheader.i.i
  %i.jl = phi ptr [ %i.nu, %bb.bc ], [ %i.jc, %.preheader.i.i ] ; 2 uses
  %.032.i.i = phi i16 [ %i.nv, %bb.bc ], [ %.pre190.i, %.preheader.i.i ] ; 2 uses
  %.031.i.i = phi ptr [ %i.js, %bb.bc ], [ %.pre191.i, %.preheader.i.i ] ; 8 uses
  %i.jm = icmp ugt i16 %.032.i.i, 1
  br i1 %i.jm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jn = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !118
  %i.jp = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 32
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !106
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.jq
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.js = phi ptr [ %i.jr, %bb.as ], [ null, %bb.ar ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !131
  %i.ju = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 24
  %i.jv = load i16, ptr %i.ju, align 8, !tbaa !103
  %i.jw = and i16 %i.jv, 8
  %.not.i73.i = icmp eq i16 %i.jw, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !107 ; 5 uses
  br i1 %.not.i73.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 32
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !106
  %i.kc = add nsw i64 %i.kb, %i.jy
  %i.kd = trunc i64 %i.kc to i32
  %sext.i.i = shl i64 %i.jy, 32
  %.pre.i74.i = ashr exact i64 %sext.i.i, 32
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ke = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 32
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !106 ; 2 uses
  %i.kg = sub nsw i64 %i.jy, %i.kf
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = add i32 %i.kh, 1                        ; 2 uses
  %i.kj = trunc i64 %i.jy to i32
  %i.kk = sext i32 %i.ki to i64                   ; 2 uses
  store i64 %i.kk, ptr %i.jx, align 8, !tbaa !107
  %i.kl = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !118
  %i.kn = getelementptr [8 x i8], ptr %i.km, i64 %i.kf
  %i.ko = getelementptr i8, ptr %i.kn, i64 -8
  store ptr %i.ko, ptr %i.kl, align 8, !tbaa !118
  %i.kp = add nsw i32 %i.kj, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pre-phi.i.i = phi i64 [ %i.kk, %bb.av ], [ %.pre.i74.i, %bb.au ] ; 2 uses
  %.030.i.i = phi i32 [ %i.ki, %bb.av ], [ %i.jz, %bb.au ] ; 4 uses
  %.029.i.i = phi i32 [ %i.kp, %bb.av ], [ %i.kd, %bb.au ] ; 5 uses
  %3 = load i32, ptr %i.p, align 4, !tbaa !116    ; 7 uses
  %i.kq = sext i32 %3 to i64
  %i.kr = sub nsw i64 0, %i.kq                    ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.kr ; 6 uses
  %i.kt = zext i32 %3 to i64                      ; 2 uses
  %i.ku = icmp sgt i32 %3, 0
  br i1 %i.ku, label %.lr.ph, label %.loopexit.i.i.i

bb.ax:                                            ; preds = %.lr.ph
  %i.kv = trunc nuw i64 %i.kx to i32
  %i.kw = icmp sgt i32 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %.lr.ph, label %.loopexit.i.i.i, !llvm.loop !132

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvar = phi i64 [ %indvar.next, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %indvars.iv.i.i.i66 = phi i64 [ %i.kx, %bb.ax ], [ %i.kt, %bb.aw ]
  %i.kx = add nsw i64 %indvars.iv.i.i.i66, -1     ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !133 ; 2 uses
  %i.la = icmp sgt i64 %i.kz, %.pre-phi.i.i
  br i1 %i.la, label %bb.ax, label %.critedge.i.i.i, !llvm.loop !132

.critedge.i.i.i:                                  ; preds = %.lr.ph
  %i.lb = icmp slt i64 %i.kz, %.pre-phi.i.i
  br i1 %i.lb, label %.preheader.preheader.i.i.i, label %bb.az

.preheader.preheader.i.i.i:                       ; preds = %.critedge.i.i.i
  %i.lc = and i64 %i.kx, 4294967295               ; 3 uses
  %i.ld = zext nneg i32 %3 to i64
  %i.le = sub i64 %i.ld, %indvar
  %xtraiter = and i64 %i.le, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.preheader.i.i.i, %.preheader.i.i.i.prol
  %indvars.iv48.i.i.i.prol = phi i64 [ %indvars.iv.next49.i.i.i.prol, %.preheader.i.i.i.prol ], [ %i.lc, %.preheader.preheader.i.i.i ] ; 2 uses
  %.029.i.i.i.prol = phi i32 [ %i.lh, %.preheader.i.i.i.prol ], [ %.030.i.i, %.preheader.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.preheader.i.i.i ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv48.i.i.i.prol ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !133
  %i.lh = trunc i64 %i.lg to i32                  ; 3 uses
  %i.li = sext i32 %.029.i.i.i.prol to i64
  store i64 %i.li, ptr %i.lf, align 8, !tbaa !133
  %indvars.iv.next49.i.i.i.prol = add nsw i64 %indvars.iv48.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !134

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.preheader.i.i.i
  %.lcssa120.unr = phi i32 [ poison, %.preheader.preheader.i.i.i ], [ %i.lh, %.preheader.i.i.i.prol ]
  %indvars.iv48.i.i.i.unr = phi i64 [ %i.lc, %.preheader.preheader.i.i.i ], [ %indvars.iv.next49.i.i.i.prol, %.preheader.i.i.i.prol ]
  %.029.i.i.i.unr = phi i32 [ %.030.i.i, %.preheader.preheader.i.i.i ], [ %i.lh, %.preheader.i.i.i.prol ]
  %i.lj = icmp samesign ult i64 %i.lc, 3
  br i1 %i.lj, label %.loopexit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %indvars.iv48.i.i.i = phi i64 [ %indvars.iv.next49.i.i.i.3, %.preheader.i.i.i ], [ %indvars.iv48.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 5 uses
  %.029.i.i.i = phi i32 [ %i.lx, %.preheader.i.i.i ], [ %.029.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv48.i.i.i ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !133
  %i.lm = sext i32 %.029.i.i.i to i64
  store i64 %i.lm, ptr %i.lk, align 8, !tbaa !133
  %i.ln = getelementptr [8 x i8], ptr %i.ks, i64 %indvars.iv48.i.i.i
  %i.lo = getelementptr i8, ptr %i.ln, i64 -8     ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !133
  %sext = shl i64 %i.ll, 32
  %i.lq = ashr exact i64 %sext, 32
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !133
  %i.lr = getelementptr [8 x i8], ptr %i.ks, i64 %indvars.iv48.i.i.i
  %i.ls = getelementptr i8, ptr %i.lr, i64 -16    ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !133
  %sext162 = shl i64 %i.lp, 32
  %i.lu = ashr exact i64 %sext162, 32
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !133
  %indvars.iv.next49.i.i.i.2 = add nsw i64 %indvars.iv48.i.i.i, -3 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next49.i.i.i.2 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !133
  %i.lx = trunc i64 %i.lw to i32                  ; 2 uses
  %sext163 = shl i64 %i.lt, 32
  %i.ly = ashr exact i64 %sext163, 32
  store i64 %i.ly, ptr %i.lv, align 8, !tbaa !133
  %indvars.iv.next49.i.i.i.3 = add nsw i64 %indvars.iv48.i.i.i, -4
  %.not36.i.i.i.3 = icmp eq i64 %indvars.iv.next49.i.i.i.2, 0
  br i1 %.not36.i.i.i.3, label %.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !136

.loopexit.i.i.i:                                  ; preds = %bb.ax, %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %bb.aw
  %.130.ph.i.i.i = phi i32 [ %.030.i.i, %bb.aw ], [ %i.lx, %.preheader.i.i.i ], [ %.lcssa120.unr, %.preheader.i.i.i.prol.loopexit ], [ %.030.i.i, %bb.ax ]
  %i.lz = getelementptr inbounds i8, ptr %i.jl, i64 -8 ; 3 uses
  store ptr %i.lz, ptr %i.o, align 8, !tbaa !115
  %.not.i.i.i = icmp ugt ptr %i.lz, %i.jb
  br i1 %.not.i.i.i, label %bb.ay, label %Convert_Glyph.exit.thread.thread.sink.split

bb.ay:                                            ; preds = %.loopexit.i.i.i
  %i.ma = add nsw i32 %3, 1                       ; 3 uses
  store i32 %i.ma, ptr %i.p, align 4, !tbaa !116
  %i.mb = sext i32 %.130.ph.i.i.i to i64
  %i.mc = xor i32 %3, -1
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.md
  store i64 %i.mb, ptr %i.me, align 8, !tbaa !133
  %.pre76.i.i = zext i32 %i.ma to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i.i.i
  %i.mf = phi ptr [ %i.lz, %bb.ay ], [ %i.jl, %.critedge.i.i.i ] ; 2 uses
  %.pre-phi77.i.i = phi i64 [ %.pre76.i.i, %bb.ay ], [ %i.kt, %.critedge.i.i.i ] ; 3 uses
  %.pre-phi75.i.i = phi i64 [ %i.md, %bb.ay ], [ %i.kr, %.critedge.i.i.i ]
  %i.mg = phi i32 [ %i.ma, %bb.ay ], [ %3, %.critedge.i.i.i ] ; 2 uses
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %.pre-phi75.i.i ; 6 uses
  %i.mi = sext i32 %.029.i.i to i64               ; 2 uses
  %i.mj = trunc nuw i64 %.pre-phi77.i.i to i32
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %.lr.ph68, label %.loopexit.i42.i.i

bb.ba:                                            ; preds = %.lr.ph68
  %i.ml = trunc nuw i64 %i.mn to i32
  %i.mm = icmp sgt i32 %i.ml, 0
  %indvar.next157 = add i64 %indvar156, 1
  br i1 %i.mm, label %.lr.ph68, label %.loopexit.i42.i.i, !llvm.loop !132

.lr.ph68:                                         ; preds = %bb.az, %bb.ba
  %indvar156 = phi i64 [ %indvar.next157, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %indvars.iv.i41.i.i67 = phi i64 [ %i.mn, %bb.ba ], [ %.pre-phi77.i.i, %bb.az ]
  %i.mn = add nsw i64 %indvars.iv.i41.i.i67, -1   ; 4 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mn
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !133 ; 2 uses
  %i.mq = icmp sgt i64 %i.mp, %i.mi
  br i1 %i.mq, label %bb.ba, label %.critedge.i47.i.i, !llvm.loop !132

.critedge.i47.i.i:                                ; preds = %.lr.ph68
  %i.mr = icmp slt i64 %i.mp, %i.mi
  br i1 %i.mr, label %.preheader.preheader.i48.i.i, label %bb.bc

.preheader.preheader.i48.i.i:                     ; preds = %.critedge.i47.i.i
  %i.ms = and i64 %i.mn, 4294967295               ; 3 uses
  %i.mt = sub i64 %.pre-phi77.i.i, %indvar156
  %xtraiter159 = and i64 %i.mt, 3                 ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.preheader.i49.i.i.prol.loopexit, label %.preheader.i49.i.i.prol

.preheader.i49.i.i.prol:                          ; preds = %.preheader.preheader.i48.i.i, %.preheader.i49.i.i.prol
  %indvars.iv48.i50.i.i.prol = phi i64 [ %indvars.iv.next49.i52.i.i.prol, %.preheader.i49.i.i.prol ], [ %i.ms, %.preheader.preheader.i48.i.i ] ; 2 uses
  %.029.i51.i.i.prol = phi i32 [ %i.mw, %.preheader.i49.i.i.prol ], [ %.029.i.i, %.preheader.preheader.i48.i.i ]
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.preheader.i49.i.i.prol ], [ 0, %.preheader.preheader.i48.i.i ]
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv48.i50.i.i.prol ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !133
  %i.mw = trunc i64 %i.mv to i32                  ; 3 uses
  %i.mx = sext i32 %.029.i51.i.i.prol to i64
  store i64 %i.mx, ptr %i.mu, align 8, !tbaa !133
  %indvars.iv.next49.i52.i.i.prol = add nsw i64 %indvars.iv48.i50.i.i.prol, -1 ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.preheader.i49.i.i.prol.loopexit, label %.preheader.i49.i.i.prol, !llvm.loop !137

.preheader.i49.i.i.prol.loopexit:                 ; preds = %.preheader.i49.i.i.prol, %.preheader.preheader.i48.i.i
  %.lcssa125.unr = phi i32 [ poison, %.preheader.preheader.i48.i.i ], [ %i.mw, %.preheader.i49.i.i.prol ]
  %indvars.iv48.i50.i.i.unr = phi i64 [ %i.ms, %.preheader.preheader.i48.i.i ], [ %indvars.iv.next49.i52.i.i.prol, %.preheader.i49.i.i.prol ]
  %.029.i51.i.i.unr = phi i32 [ %.029.i.i, %.preheader.preheader.i48.i.i ], [ %i.mw, %.preheader.i49.i.i.prol ]
  %i.my = icmp samesign ult i64 %i.ms, 3
  br i1 %i.my, label %.loopexit.i42.i.i, label %.preheader.i49.i.i

.preheader.i49.i.i:                               ; preds = %.preheader.i49.i.i.prol.loopexit, %.preheader.i49.i.i
  %indvars.iv48.i50.i.i = phi i64 [ %indvars.iv.next49.i52.i.i.3, %.preheader.i49.i.i ], [ %indvars.iv48.i50.i.i.unr, %.preheader.i49.i.i.prol.loopexit ] ; 5 uses
  %.029.i51.i.i = phi i32 [ %i.nm, %.preheader.i49.i.i ], [ %.029.i51.i.i.unr, %.preheader.i49.i.i.prol.loopexit ]
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv48.i50.i.i ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !133
  %i.nb = sext i32 %.029.i51.i.i to i64
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !133
  %i.nc = getelementptr [8 x i8], ptr %i.mh, i64 %indvars.iv48.i50.i.i
  %i.nd = getelementptr i8, ptr %i.nc, i64 -8     ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !133
  %sext164 = shl i64 %i.na, 32
  %i.nf = ashr exact i64 %sext164, 32
  store i64 %i.nf, ptr %i.nd, align 8, !tbaa !133
  %i.ng = getelementptr [8 x i8], ptr %i.mh, i64 %indvars.iv48.i50.i.i
  %i.nh = getelementptr i8, ptr %i.ng, i64 -16    ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !133
  %sext165 = shl i64 %i.ne, 32
  %i.nj = ashr exact i64 %sext165, 32
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !133
  %indvars.iv.next49.i52.i.i.2 = add nsw i64 %indvars.iv48.i50.i.i, -3 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next49.i52.i.i.2 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !133
  %i.nm = trunc i64 %i.nl to i32                  ; 2 uses
  %sext166 = shl i64 %i.ni, 32
  %i.nn = ashr exact i64 %sext166, 32
  store i64 %i.nn, ptr %i.nk, align 8, !tbaa !133
  %indvars.iv.next49.i52.i.i.3 = add nsw i64 %indvars.iv48.i50.i.i, -4
  %.not36.i53.i.i.3 = icmp eq i64 %indvars.iv.next49.i52.i.i.2, 0
  br i1 %.not36.i53.i.i.3, label %.loopexit.i42.i.i, label %.preheader.i49.i.i, !llvm.loop !136

.loopexit.i42.i.i:                                ; preds = %bb.ba, %.preheader.i49.i.i.prol.loopexit, %.preheader.i49.i.i, %bb.az
  %.130.ph.i43.i.i = phi i32 [ %.029.i.i, %bb.az ], [ %i.nm, %.preheader.i49.i.i ], [ %.lcssa125.unr, %.preheader.i49.i.i.prol.loopexit ], [ %.029.i.i, %bb.ba ]
  %i.no = getelementptr inbounds i8, ptr %i.mf, i64 -8 ; 3 uses
  store ptr %i.no, ptr %i.o, align 8, !tbaa !115
  %.not.i44.i.i = icmp ugt ptr %i.no, %i.jb
  br i1 %.not.i44.i.i, label %bb.bb, label %Convert_Glyph.exit.thread.thread.sink.split

bb.bb:                                            ; preds = %.loopexit.i42.i.i
  %i.np = add nsw i32 %i.mg, 1
  store i32 %i.np, ptr %i.p, align 4, !tbaa !116
  %i.nq = sext i32 %.130.ph.i43.i.i to i64
  %i.nr = xor i32 %i.mg, -1
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.ns
  store i64 %i.nq, ptr %i.nt, align 8, !tbaa !133
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge.i47.i.i
  %i.nu = phi ptr [ %i.no, %bb.bb ], [ %i.mf, %.critedge.i47.i.i ] ; 2 uses
  %i.nv = add i16 %.032.i.i, -1                   ; 2 uses
  %.not39.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not39.i.i, label %Convert_Glyph.exit, label %bb.ar, !llvm.loop !138

Convert_Glyph.exit:                               ; preds = %bb.bc
  %.not53 = icmp ult ptr %i.jb, %i.nu
  br i1 %.not53, label %bb.be, label %Convert_Glyph.exit.thread

Convert_Glyph.exit.thread232:                     ; preds = %bb.b, %._crit_edge.i
  %i.nw = phi ptr [ %i.jc, %._crit_edge.i ], [ %i.ap, %bb.b ]
  %i.nx = phi ptr [ %i.jb, %._crit_edge.i ], [ %i.an, %bb.b ]
  store ptr null, ptr %i.k, align 8, !tbaa !112
  %.not53233 = icmp ult ptr %i.nx, %i.nw
  br i1 %.not53233, label %.thread, label %Convert_Glyph.exit.thread

Convert_Glyph.exit.thread:                        ; preds = %._crit_edge.i.i, %bb.aa, %.split257.us.i.i, %bb.s, %bb.q, %bb.m, %bb.z, %bb.t, %bb.p, %Convert_Glyph.exit.thread232, %Convert_Glyph.exit
  %.pr = load i32, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %.not37 = icmp eq i32 %.pr, 98
  br i1 %.not37, label %Convert_Glyph.exit.thread.thread, label %Convert_Glyph.exit.thread.thread51

Convert_Glyph.exit.thread.thread.sink.split:      ; preds = %bb.an, %.loopexit.i42.i.i, %.loopexit.i.i.i
  store i32 98, ptr %i.j, align 8, !tbaa !111
  br label %Convert_Glyph.exit.thread.thread

Convert_Glyph.exit.thread.thread:                 ; preds = %Convert_Glyph.exit.thread.thread.sink.split, %Convert_Glyph.exit.thread
  %i.ny = icmp eq i32 %.029, %.027.ph
  br i1 %i.ny, label %Convert_Glyph.exit.thread.thread51, label %bb.bd

bb.bd:                                            ; preds = %Convert_Glyph.exit.thread.thread
  %i.nz = add nsw i32 %.027.ph, %.029
  %i.oa = ashr i32 %i.nz, 1
  %i.ob = add nsw i32 %.0, 1
  %i.oc = sext i32 %.0 to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.oc
  store i32 %.029, ptr %i.od, align 4, !tbaa !3
  %i.oe = add nsw i32 %i.oa, 1
  br label %bb.b

bb.be:                                            ; preds = %Convert_Glyph.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.a, align 8, !tbaa !139
  store ptr null, ptr %i.b, align 8, !tbaa !139
  store ptr null, ptr %i.c, align 8, !tbaa !139
  %i.of = load i64, ptr %i.f, align 8, !tbaa !108
  %i.og = load i32, ptr %0, align 8, !tbaa !85
  %i.oh = zext i32 %i.og to i64                   ; 2 uses
  %i.oi = ashr i64 %i.of, %i.oh
  %i.oj = trunc i64 %i.oi to i16
  %i.ok = load i64, ptr %i.g, align 8, !tbaa !109
  %i.ol = ashr i64 %i.ok, %i.oh
  %i.om = trunc i64 %i.ol to i16
  br label %.lr.ph314.i

.lr.ph314.i:                                      ; preds = %bb.be, %InsNew.exit.i
  %.0133313.i = phi i16 [ %.1134.i, %InsNew.exit.i ], [ %i.oj, %bb.be ]
  %.0135312.i = phi i16 [ %spec.select.i, %InsNew.exit.i ], [ %i.om, %bb.be ]
  %.0141311.i = phi ptr [ %i.oo, %InsNew.exit.i ], [ %.pre191.i, %bb.be ] ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.0141311.i, i64 8 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !131 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0141311.i, i64 40
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !107 ; 2 uses
  %i.or = trunc i64 %i.oq to i16
  %i.os = getelementptr inbounds nuw i8, ptr %.0141311.i, i64 32
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !106
  %i.ou = add nsw i64 %i.ot, %i.oq
  %i.ov = trunc i64 %i.ou to i16
  %i.ow = add i16 %i.ov, -1
  %spec.select.i = tail call i16 @llvm.smin.i16(i16 %.0135312.i, i16 %i.or) ; 7 uses
  %.1134.i = tail call i16 @llvm.smax.i16(i16 %.0133313.i, i16 %i.ow) ; 4 uses
  store i64 0, ptr %.0141311.i, align 8, !tbaa !140
  %.0..0..0..0..0..012.i.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 4 uses
  %.not13.i.i = icmp eq ptr %.0..0..0..0..0..012.i.i, null
  br i1 %.not13.i.i, label %InsNew.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph314.i
  %i.ox = load i64, ptr %.0..0..0..0..0..012.i.i, align 8, !tbaa !140
  %i.oy = icmp sgt i64 %i.ox, 0
  br i1 %i.oy, label %InsNew.exit.i, label %.lr.ph.i38

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i38
  %i.oz = load i64, ptr %.0.i.i, align 8, !tbaa !140
  %i.pa = icmp sgt i64 %i.oz, 0
  br i1 %i.pa, label %InsNew.exit.i.loopexit, label %.lr.ph.i38, !llvm.loop !141

.lr.ph.i38:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i40
  %.015.i306.i = phi ptr [ %.0.i.i, %.lr.ph.i.i40 ], [ %.0..0..0..0..0..012.i.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.015.i306.i, i64 8
  %.0.i.i = load ptr, ptr %i.pb, align 8, !tbaa !139 ; 4 uses
  %.not.i.i39 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i39, label %.InsNew.exit.loopexit_crit_edge.i, label %.lr.ph.i.i40, !llvm.loop !141

.InsNew.exit.loopexit_crit_edge.i:                ; preds = %.lr.ph.i38
  %i.pc = getelementptr inbounds nuw i8, ptr %.015.i306.i, i64 8
  br label %InsNew.exit.i, !llvm.loop !141

InsNew.exit.i.loopexit:                           ; preds = %.lr.ph.i.i40
  %i.pd = getelementptr inbounds nuw i8, ptr %.015.i306.i, i64 8
  br label %InsNew.exit.i

InsNew.exit.i:                                    ; preds = %InsNew.exit.i.loopexit, %.InsNew.exit.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %.lr.ph314.i
  %.011.lcssa.i.i = phi ptr [ %i.a, %.lr.ph314.i ], [ %i.pc, %.InsNew.exit.loopexit_crit_edge.i ], [ %i.a, %.lr.ph.i.preheader.i ], [ %i.pd, %InsNew.exit.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ null, %.lr.ph314.i ], [ null, %.InsNew.exit.loopexit_crit_edge.i ], [ %.0..0..0..0..0..012.i.i, %.lr.ph.i.preheader.i ], [ %.0.i.i, %InsNew.exit.i.loopexit ]
  store ptr %.0.lcssa.i.i, ptr %i.on, align 8, !tbaa !131
  store ptr %.0141311.i, ptr %.011.lcssa.i.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.oo, null
  br i1 %.not.i, label %._crit_edge.i41, label %.lr.ph314.i, !llvm.loop !142

._crit_edge.i41:                                  ; preds = %InsNew.exit.i
  %i.pe = load i32, ptr %i.p, align 4, !tbaa !116
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ce, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i41
  %i.pg = load ptr, ptr %i.ad, align 8, !tbaa !92
  tail call void %i.pg(ptr noundef nonnull %0, i16 noundef signext %spec.select.i, i16 noundef signext %.1134.i) #8, !inline_history !143
  %.0..0..0..0..1142317.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %.not158318.i = icmp eq ptr %.0..0..0..0..1142317.i, null
  br i1 %.not158318.i, label %._crit_edge322.i, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.bf
  %i.ph = sext i16 %spec.select.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph321.i
  %.1142319.i = phi ptr [ %.0..0..0..0..1142317.i, %.lr.ph321.i ], [ %.1142.i, %bb.bg ] ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.1142319.i, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !107
  %i.pk = sub nsw i64 %i.pj, %i.ph
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = getelementptr inbounds nuw i8, ptr %.1142319.i, i64 48
  store i32 %i.pl, ptr %i.pm, align 8, !tbaa !144
  %i.pn = getelementptr inbounds nuw i8, ptr %.1142319.i, i64 8
  %.1142.i = load ptr, ptr %i.pn, align 8, !tbaa !139 ; 2 uses
  %.not158.i = icmp eq ptr %.1142.i, null
  br i1 %.not158.i, label %._crit_edge322.i, label %bb.bg, !llvm.loop !145

._crit_edge322.i:                                 ; preds = %bb.bg, %bb.bf
  %i.po = load i32, ptr %i.p, align 4, !tbaa !116 ; 4 uses
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %bb.bh, label %.preheader.i

bb.bh:                                            ; preds = %._crit_edge322.i
  %i.pq = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.pr = sub nsw i32 0, %i.po
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %i.ps
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !133
  %i.pv = sext i16 %spec.select.i to i64
  %i.pw = icmp eq i64 %i.pu, %i.pv
  br i1 %i.pw, label %bb.bi, label %.lr.ph380.i.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.px = add nsw i32 %i.po, -1                   ; 3 uses
  store i32 %i.px, ptr %i.p, align 4, !tbaa !116
  %.not467.i = icmp eq i32 %i.px, 0
  br i1 %.not467.i, label %.preheader.i, label %.lr.ph380.i.preheader

.lr.ph380.i.preheader:                            ; preds = %bb.bi, %bb.bh
  %.ph = phi i32 [ %i.po, %bb.bh ], [ %i.px, %bb.bi ]
  br label %.lr.ph380.i

.loopexit299.i:                                   ; preds = %DelOld.exit287.i, %._crit_edge368.i
  %i.py = load i32, ptr %i.p, align 4, !tbaa !116 ; 2 uses
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %.lr.ph380.i, label %.preheader.i, !llvm.loop !146

.preheader.i:                                     ; preds = %.loopexit299.i, %bb.bi, %._crit_edge322.i
  %.0145.lcssa.i = phi i16 [ %spec.select.i, %bb.bi ], [ %spec.select.i, %._crit_edge322.i ], [ %.1146.lcssa.i, %.loopexit299.i ] ; 2 uses
  %.not159382.i = icmp sgt i16 %.0145.lcssa.i, %.1134.i
  br i1 %.not159382.i, label %Draw_Sweep.exit.thread, label %.lr.ph384.i

.lr.ph380.i:                                      ; preds = %.lr.ph380.i.preheader, %.loopexit299.i
  %.0..0..02737.i430.i = phi ptr [ %.0..0..02737.i431.i, %.loopexit299.i ], [ null, %.lr.ph380.i.preheader ]
  %i.qa = phi i32 [ %i.py, %.loopexit299.i ], [ %.ph, %.lr.ph380.i.preheader ] ; 2 uses
  %.0144378.i = phi i16 [ %i.st, %.loopexit299.i ], [ 0, %.lr.ph380.i.preheader ]
  %.0145377.i = phi i16 [ %.1146.lcssa.i, %.loopexit299.i ], [ %spec.select.i, %.lr.ph380.i.preheader ] ; 4 uses
  %.0..0..0..0..0.293.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %.not160339.i = icmp eq ptr %.0..0..0..0..0.293.i, null
  br i1 %.not160339.i, label %._crit_edge343.i, label %.lr.ph342.i

.lr.ph342.i:                                      ; preds = %.lr.ph380.i
  %i.qb = sext i16 %.0144378.i to i32             ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph342.i
  %.2143340.i = phi ptr [ %.0..0..0..0..0.293.i, %.lr.ph342.i ], [ %i.qd, %bb.bn ] ; 7 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.2143340.i, i64 8 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !131 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.2143340.i, i64 48 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !144 ; 2 uses
  %i.qg = sub nsw i32 %i.qf, %i.qb
  store i32 %i.qg, ptr %i.qe, align 8, !tbaa !144
  %i.qh = icmp eq i32 %i.qf, %i.qb
  br i1 %i.qh, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.0..0..0..0..0..012.i174.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 4 uses
  %.not13.i175.i = icmp eq ptr %.0..0..0..0..0..012.i174.i, null
end_hunk_0
