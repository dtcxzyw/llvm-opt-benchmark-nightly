inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.cn = lshr i128 %i.cl, 32
  %i.co = lshr i128 %.01718.i.i, 32
  %i.cp = add nuw i128 %i.cm, %i.co
  %i.cq = add nuw i128 %i.cp, %i.cn               ; 3 uses
  %i.cr = trunc i128 %i.cl to i32
  store i32 %i.cr, ptr %i.cg, align 4, !tbaa !65
  %i.cs = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cs, %i.ca
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.ad, !llvm.loop !374

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i
  %i.ct = phi ptr [ %i.db, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.cd, %.preheader.i.i ]
  %i.cu = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.ca, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.de, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.cq, %.preheader.i.i ] ; 2 uses
  %i.cv = trunc i128 %.121.i.i to i32
  %i.cw = add i64 %i.cu, 1                        ; 3 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !362
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.ae, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

bb.ae:                                            ; preds = %.lr.ph22.i.i
  %i.cz = load ptr, ptr %5, align 8, !tbaa !41
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.cw)
          to label %.noexc137 unwind label %.loopexit438, !inline_history !375

.noexc137:                                        ; preds = %bb.ae
  %.pre.i.i.i136 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i136, 1
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc137, %.lr.ph22.i.i
  %i.db = phi ptr [ %i.ct, %.lr.ph22.i.i ], [ %.pre.i, %.noexc137 ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.cw, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc137 ] ; 2 uses
  %i.dc = phi i64 [ %i.cu, %.lr.ph22.i.i ], [ %.pre.i.i.i136, %.noexc137 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !371
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  store i32 %i.cv, ptr %i.dd, align 4, !tbaa !65
  %i.de = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i135 = icmp eq i128 %i.de, 0
  br i1 %.not.i.i135, label %_ZN3fmt2v96detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !376

_ZN3fmt2v96detail6bigintmLIoEERS2_T_.exit:        ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i, %bb.ac
  %i.df = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.v)
          to label %bb.af unwind label %.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIoEERS2_T_.exit
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !360
  store i32 1, ptr %i.dg, align 4, !tbaa !65
  %i.dh = load i64, ptr %i.g, align 8, !tbaa !362
  %.not8.i.i141.not = icmp eq i64 %i.dh, 0
  br i1 %.not8.i.i141.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.di = load ptr, ptr %6, align 8, !tbaa !41
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc144 unwind label %.loopexit.split-lp, !inline_history !372

.noexc144:                                        ; preds = %bb.ag
  %.pre.i.i.i.i142 = load i64, ptr %i.g, align 8, !tbaa !362
  %i.dk = icmp ne i64 %.pre.i.i.i.i142, 0
  %i.dl = zext i1 %i.dk to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc144, %bb.af
  %..i.i.i.i143 = phi i64 [ 1, %bb.af ], [ %i.dl, %.noexc144 ]
  store i64 %..i.i.i.i143, ptr %i.h, align 8, !tbaa !371
  store i32 0, ptr %i.j, align 8, !tbaa !363
  %i.dm = load i32, ptr %i.w, align 16, !tbaa !367
  %i.dn = sub nsw i32 %i.v, %i.dm
  %extract.t618 = trunc i128 %i.cb to i32
  %i.do = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.dn)
          to label %bb.at unwind label %.loopexit.split-lp ; 0 uses

bb.ai:                                            ; preds = %bb.o
  %i.dp = load i128, ptr %0, align 16, !tbaa !369 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.05.i.i146 = phi i128 [ %i.dp, %bb.ai ], [ %i.dt, %bb.aj ] ; 2 uses
  %.0.i.i147 = phi i64 [ 0, %bb.ai ], [ %i.dr, %bb.aj ] ; 3 uses
  %i.dq = trunc i128 %.05.i.i146 to i32
  %i.dr = add nuw nsw i64 %.0.i.i147, 1           ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i147
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !65
  %i.dt = lshr i128 %.05.i.i146, 32               ; 2 uses
  %.not.i.i148 = icmp eq i128 %i.dt, 0
  br i1 %.not.i.i148, label %bb.ak, label %bb.aj, !llvm.loop !370

bb.ak:                                            ; preds = %bb.aj
  %.not8.i.i149 = icmp samesign ult i64 %.0.i.i147, 32
  br i1 %.not8.i.i149, label %bb.al, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i688

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i688: ; preds = %bb.ak
  %i.du = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37
          to label %.noexc152 unwind label %.loopexit.split-lp

.noexc152:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i688
  store ptr %i.du, ptr %i.a, align 8, !tbaa !360
  store i64 48, ptr %i.b, align 8, !tbaa !362
  br label %bb.al

bb.al:                                            ; preds = %.noexc152, %bb.ak
  %i.dv = phi i64 [ 32, %bb.ak ], [ 48, %.noexc152 ]
  %..i.i.i.i151 = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dv)
  store i64 %..i.i.i.i151, ptr %i.c, align 8, !tbaa !371
  store i32 0, ptr %i.e, align 8, !tbaa !363
  %i.dw = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.v)
          to label %bb.am unwind label %.loopexit.split-lp ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.dx = load i32, ptr %4, align 4, !tbaa !65
  invoke void @_ZN3fmt2v96detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.dx)
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.dy = sub nsw i32 %i.v, %i.x
  %i.dz = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.dy)
          to label %bb.ao unwind label %.loopexit.split-lp ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !360
  store i32 1, ptr %i.ea, align 4, !tbaa !65
  %i.eb = load i64, ptr %i.l, align 8, !tbaa !362
  %.not8.i.i157.not = icmp eq i64 %i.eb, 0
  br i1 %.not8.i.i157.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ec = load ptr, ptr %7, align 8, !tbaa !41
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc160 unwind label %.loopexit.split-lp, !inline_history !372

.noexc160:                                        ; preds = %bb.ap
  %.pre.i.i.i.i158 = load i64, ptr %i.l, align 8, !tbaa !362
  %i.ee = icmp ne i64 %.pre.i.i.i.i158, 0
  %i.ef = zext i1 %i.ee to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc160, %bb.ao
  %..i.i.i.i159 = phi i64 [ 1, %bb.ao ], [ %i.ef, %.noexc160 ]
  store i64 %..i.i.i.i159, ptr %i.m, align 8, !tbaa !371
  store i32 0, ptr %i.o, align 8, !tbaa !363
  %extract.t619 = trunc i128 %i.dp to i32         ; 2 uses
  br i1 %.not, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = load ptr, ptr %i.p, align 8, !tbaa !360
  store i32 2, ptr %i.eg, align 4, !tbaa !65
  %i.eh = load i64, ptr %i.q, align 8, !tbaa !362
  %.not8.i.i165.not = icmp eq i64 %i.eh, 0
  br i1 %.not8.i.i165.not, label %bb.as, label %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit

bb.as:                                            ; preds = %bb.ar
  %i.ei = load ptr, ptr %8, align 8, !tbaa !41
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc168 unwind label %.loopexit.split-lp, !inline_history !377

.noexc168:                                        ; preds = %bb.as
  %.pre.i.i.i.i166 = load i64, ptr %i.q, align 8, !tbaa !362
  %i.ek = icmp ne i64 %.pre.i.i.i.i166, 0
  %i.el = zext i1 %i.ek to i64
  br label %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit

_ZN3fmt2v96detail6bigintaSIyEEvT_.exit:           ; preds = %bb.ar, %.noexc168
  %..i.i.i.i167 = phi i64 [ 1, %bb.ar ], [ %i.el, %.noexc168 ]
  store i64 %..i.i.i.i167, ptr %i.r, align 8, !tbaa !371
  store i32 0, ptr %i.t, align 8, !tbaa !363
  br label %bb.at

bb.at:                                            ; preds = %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit, %bb.ah, %bb.aq, %bb.n
  %.off0 = phi i32 [ %extract.t, %bb.n ], [ %extract.t618, %bb.ah ], [ %extract.t619, %bb.aq ], [ %extract.t619, %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit ]
  %.2 = phi ptr [ %.076, %bb.n ], [ %.1, %bb.ah ], [ null, %bb.aq ], [ %8, %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit ] ; 14 uses
  %i.em = and i32 %.off0, 1                       ; 2 uses
  %i.en = xor i32 %i.em, 1                        ; 2 uses
  %.not95 = icmp eq ptr %.2, null                 ; 8 uses
  %i.eo = and i32 %1, 2
  %.not96 = icmp eq i32 %i.eo, 0
  br i1 %.not96, label %bb.bu, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !371 ; 8 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.es = add nsw i32 %i.er, %i.eq                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not95, ptr %i.m, ptr %.2.sroa.gep
  %i.et = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !371
  %i.eu = trunc i64 %i.et to i32
  %.2.sroa.gep376 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel377 = select i1 %.not95, ptr %i.o, ptr %.2.sroa.gep376
  %i.ev = load i32, ptr %spec.store.select.sroa.sel377, align 8, !tbaa !363 ; 4 uses
  %i.ew = add nsw i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = call noundef i32 @llvm.smax.i32(i32 %i.es, i32 %i.ew) ; 2 uses
  %i.ey = load i64, ptr %i.h, align 8, !tbaa !371
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.fb = add nsw i32 %i.fa, %i.ez                ; 5 uses
  %i.fc = add nsw i32 %i.ex, 1
  %i.fd = icmp slt i32 %i.fc, %i.fb
  br i1 %i.fd, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = icmp sgt i32 %i.ex, %i.fb
  br i1 %i.fe, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ff = call noundef i32 @llvm.smin.i32(i32 %i.er, i32 %i.ev)
  %i.fg = call noundef i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fa) ; 2 uses
  %.not.not.not55.i = icmp sgt i32 %i.fb, %i.fg
  br i1 %.not.not.not55.i, label %.lr.ph.i, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.aw
  %i.fh = load ptr, ptr %i.a, align 8
  %.2.sroa.gep379 = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %spec.store.select.sroa.sel380 = select i1 %.not95, ptr %i.k, ptr %.2.sroa.gep379
  %i.fi = load ptr, ptr %spec.store.select.sroa.sel380, align 8
  %i.fj = load ptr, ptr %i.f, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i
  %.0.in57.i = phi i32 [ %i.fb, %.lr.ph.i ], [ %.058.i, %bb.bc ] ; 7 uses
  %.03256.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gj, %bb.bc ] ; 2 uses
  %.058.i = add nsw i32 %.0.in57.i, -1            ; 5 uses
  %.not.i.i169 = icmp sgt i32 %.0.in57.i, %i.er
  %i.fk = icmp sle i32 %.0.in57.i, %i.es
  %or.cond.i = and i1 %.not.i.i169, %i.fk
  br i1 %or.cond.i, label %bb.ay, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.fl = sub nsw i32 %.058.i, %i.er
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !65
  %i.fp = zext i32 %i.fo to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i: ; preds = %bb.ay, %bb.ax
  %i.fq = phi i64 [ %i.fp, %bb.ay ], [ 0, %bb.ax ]
  %.not.i43.i = icmp sgt i32 %.0.in57.i, %i.ev
  %i.fr = icmp sle i32 %.0.in57.i, %i.ew
  %or.cond52.i = and i1 %.not.i43.i, %i.fr
  br i1 %or.cond52.i, label %bb.az, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i

bb.az:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.fs = sub nsw i32 %.058.i, %i.ev
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !65
  %i.fw = zext i32 %i.fv to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i: ; preds = %bb.az, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.fx = phi i64 [ %i.fw, %bb.az ], [ 0, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i ]
  %i.fy = add nuw nsw i64 %i.fx, %i.fq            ; 3 uses
  %.not.i45.i = icmp sgt i32 %.0.in57.i, %i.fa
  %9 = icmp sle i32 %.0.in57.i, %i.fb
  %or.cond53.i = and i1 %.not.i45.i, %9
  br i1 %or.cond53.i, label %bb.ba, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

bb.ba:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i
  %i.fz = sub nsw i32 %.058.i, %i.fa
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !65
  %i.gd = zext i32 %i.gc to i64
  %i.ge = or disjoint i64 %.03256.i, %i.gd
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i: ; preds = %bb.ba, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i
  %i.gf = phi i64 [ %i.ge, %bb.ba ], [ %.03256.i, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i ] ; 3 uses
  %i.gg = icmp ugt i64 %i.fy, %i.gf
  br i1 %i.gg, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.gh = sub nuw nsw i64 %i.gf, %i.fy            ; 2 uses
  %i.gi = icmp ugt i64 %i.gh, 1
  br i1 %i.gi, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gj = shl nuw nsw i64 %i.gh, 32
  %.not.not.not.i = icmp sgt i32 %.058.i, %i.fg
  br i1 %.not.not.not.i, label %bb.ax, label %.thread.loopexit.i, !llvm.loop !378

.thread.loopexit.i:                               ; preds = %bb.bc
  %i.gk = icmp ne i64 %i.gf, %i.fy
  %i.gl = sext i1 %i.gk to i32
  br label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.bb, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i, %.thread.loopexit.i, %bb.aw, %bb.av, %bb.au
  %.4.i = phi i32 [ 1, %bb.av ], [ -1, %bb.au ], [ 0, %bb.aw ], [ %i.gl, %.thread.loopexit.i ], [ 1, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i ], [ -1, %bb.bb ]
  %i.gm = add nsw i32 %.4.i, %i.en
  %i.gn = icmp slt i32 %i.gm, 1
  br i1 %i.gn, label %bb.bd, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bd:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.go = load i32, ptr %4, align 4, !tbaa !65
  %i.gp = add nsw i32 %i.go, -1
  store i32 %i.gp, ptr %4, align 4, !tbaa !65
  %.not14.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not14.i.i, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %bb.bd
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter = and i64 %i.ep, 1
  %i.gr = icmp eq i64 %i.ep, 1
  br i1 %i.gr, label %.epil.preheader, label %.lr.ph.i.i170.new

.lr.ph.i.i170.new:                                ; preds = %.lr.ph.i.i170
  %unroll_iter = and i64 %i.ep, -2
  br label %bb.be

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.be
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i170
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i170 ], [ %i.hp, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i170 ], [ %i.ho, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1090 = trunc i64 %i.ep to i1
  call void @llvm.assume(i1 %lcmp.mod1090)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.013.i.i.epil.init ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !65
  %i.gu = zext i32 %i.gt to i64
  %i.gv = mul nuw nsw i64 %i.gu, 10
  %i.gw = add nuw nsw i64 %i.gv, %.01112.i.i.epil.init ; 2 uses
  %i.gx = trunc i64 %i.gw to i32
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !65
  %i.gy = lshr i64 %i.gw, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1081 = phi i64 [ %i.ho, %._crit_edge.i.i.unr-lcssa ], [ %i.gy, %.epil.preheader ] ; 2 uses
  %i.gz = trunc nuw nsw i64 %.lcssa1081 to i32
  %.not.i.i172 = icmp eq i64 %.lcssa1081, 0
  br i1 %.not.i.i172, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i170.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %i.hp, %bb.be ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %i.ho, %bb.be ]
  %niter = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %niter.next.1, %bb.be ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.013.i.i ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !65
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul nuw nsw i64 %i.hc, 10
  %i.he = add nuw nsw i64 %i.hd, %.01112.i.i      ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  store i32 %i.hf, ptr %i.ha, align 4, !tbaa !65
  %i.hg = lshr i64 %i.he, 32
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.013.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !65
  %i.hk = zext i32 %i.hj to i64
  %i.hl = mul nuw nsw i64 %i.hk, 10
  %i.hm = add nuw nsw i64 %i.hl, %i.hg            ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !65
  %i.ho = lshr i64 %i.hm, 32                      ; 3 uses
  %i.hp = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.be, !llvm.loop !379

bb.bf:                                            ; preds = %._crit_edge.i.i
  %i.hq = add i64 %i.ep, 1                        ; 3 uses
  %i.hr = load i64, ptr %i.b, align 8, !tbaa !362
  %i.hs = icmp ugt i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.bg, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173

bb.bg:                                            ; preds = %bb.bf
  %i.ht = load ptr, ptr %5, align 8, !tbaa !41
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.hq)
          to label %.noexc178 unwind label %bb.bp, !inline_history !380

.noexc178:                                        ; preds = %bb.bg
  %.pre.i.i.i175 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i176 = add i64 %.pre.i.i.i175, 1
  %.pre.i177 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173: ; preds = %.noexc178, %bb.bf
  %i.hv = phi ptr [ %i.gq, %bb.bf ], [ %.pre.i177, %.noexc178 ]
  %.pre-phi.i.i.i174 = phi i64 [ %i.hq, %bb.bf ], [ %.pre2.i.i.i176, %.noexc178 ]
  %i.hw = phi i64 [ %i.ep, %bb.bf ], [ %.pre.i.i.i175, %.noexc178 ]
  store i64 %.pre-phi.i.i.i174, ptr %i.c, align 8, !tbaa !371
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hw
  store i32 %i.gz, ptr %i.hx, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit:        ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173, %._crit_edge.i.i, %bb.bd
  %i.hy = icmp slt i32 %2, 0
  br i1 %i.hy, label %bb.bh, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bh:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit
  %i.hz = load i64, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i179 = icmp eq i64 %i.hz, 0
  br i1 %.not14.i.i179, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %bb.bh
  %i.ia = load ptr, ptr %i.k, align 8, !tbaa !360 ; 4 uses
  %xtraiter1092 = and i64 %i.hz, 1
  %i.ib = icmp eq i64 %i.hz, 1
  br i1 %i.ib, label %.epil.preheader1091, label %.lr.ph.i.i180.new

.lr.ph.i.i180.new:                                ; preds = %.lr.ph.i.i180
  %unroll_iter1096 = and i64 %i.hz, -2
  br label %bb.bi

._crit_edge.i.i184.unr-lcssa:                     ; preds = %bb.bi
  %lcmp.mod1093.not = icmp eq i64 %xtraiter1092, 0
  br i1 %lcmp.mod1093.not, label %._crit_edge.i.i184, label %.epil.preheader1091

.epil.preheader1091:                              ; preds = %._crit_edge.i.i184.unr-lcssa, %.lr.ph.i.i180
  %.013.i.i181.epil.init = phi i64 [ 0, %.lr.ph.i.i180 ], [ %i.iz, %._crit_edge.i.i184.unr-lcssa ]
  %.01112.i.i182.epil.init = phi i64 [ 0, %.lr.ph.i.i180 ], [ %i.iy, %._crit_edge.i.i184.unr-lcssa ]
  %lcmp.mod1095 = trunc i64 %i.hz to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.013.i.i181.epil.init ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !65
  %i.ie = zext i32 %i.id to i64
  %i.if = mul nuw nsw i64 %i.ie, 10
  %i.ig = add nuw nsw i64 %i.if, %.01112.i.i182.epil.init ; 2 uses
  %i.ih = trunc i64 %i.ig to i32
  store i32 %i.ih, ptr %i.ic, align 4, !tbaa !65
  %i.ii = lshr i64 %i.ig, 32
  br label %._crit_edge.i.i184

._crit_edge.i.i184:                               ; preds = %._crit_edge.i.i184.unr-lcssa, %.epil.preheader1091
  %.lcssa1080 = phi i64 [ %i.iy, %._crit_edge.i.i184.unr-lcssa ], [ %i.ii, %.epil.preheader1091 ] ; 2 uses
  %i.ij = trunc nuw nsw i64 %.lcssa1080 to i32
  %.not.i.i185 = icmp eq i64 %.lcssa1080, 0
  br i1 %.not.i.i185, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, label %bb.bj

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.i180.new
  %.013.i.i181 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %i.iz, %bb.bi ] ; 3 uses
  %.01112.i.i182 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %i.iy, %bb.bi ]
  %niter1097 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %niter1097.next.1, %bb.bi ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.013.i.i181 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !65
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw nsw i64 %i.im, 10
  %i.io = add nuw nsw i64 %i.in, %.01112.i.i182   ; 2 uses
  %i.ip = trunc i64 %i.io to i32
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !65
  %i.iq = lshr i64 %i.io, 32
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.013.i.i181
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !65
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.iu, 10
  %i.iw = add nuw nsw i64 %i.iv, %i.iq            ; 2 uses
  %i.ix = trunc i64 %i.iw to i32
  store i32 %i.ix, ptr %i.is, align 4, !tbaa !65
  %i.iy = lshr i64 %i.iw, 32                      ; 3 uses
  %i.iz = add nuw i64 %.013.i.i181, 2             ; 2 uses
  %niter1097.next.1 = add nuw i64 %niter1097, 2   ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %._crit_edge.i.i184.unr-lcssa, label %bb.bi, !llvm.loop !379
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.lcssa1079 = phi i64 [ %i.kh, %._crit_edge.i.i198.unr-lcssa ], [ %i.jr, %.epil.preheader1098 ] ; 2 uses
  %i.js = trunc nuw nsw i64 %.lcssa1079 to i32
  %.not.i.i199 = icmp eq i64 %.lcssa1079, 0
  br i1 %.not.i.i199, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, label %bb.bn

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i.i194.new
  %.013.i.i195 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %i.ki, %bb.bm ] ; 3 uses
  %.01112.i.i196 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %i.kh, %bb.bm ]
  %niter1104 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %niter1104.next.1, %bb.bm ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.013.i.i195 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !65
  %i.jv = zext i32 %i.ju to i64
  %i.jw = mul nuw nsw i64 %i.jv, 10
  %i.jx = add nuw nsw i64 %i.jw, %.01112.i.i196   ; 2 uses
  %i.jy = trunc i64 %i.jx to i32
  store i32 %i.jy, ptr %i.jt, align 4, !tbaa !65
  %i.jz = lshr i64 %i.jx, 32
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.013.i.i195
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !65
  %i.kd = zext i32 %i.kc to i64
  %i.ke = mul nuw nsw i64 %i.kd, 10
  %i.kf = add nuw nsw i64 %i.ke, %i.jz            ; 2 uses
  %i.kg = trunc i64 %i.kf to i32
  store i32 %i.kg, ptr %i.kb, align 4, !tbaa !65
  %i.kh = lshr i64 %i.kf, 32                      ; 3 uses
  %i.ki = add nuw i64 %.013.i.i195, 2             ; 2 uses
  %niter1104.next.1 = add nuw i64 %niter1104, 2   ; 2 uses
  %niter1104.ncmp.1 = icmp eq i64 %niter1104.next.1, %unroll_iter1103
  br i1 %niter1104.ncmp.1, label %._crit_edge.i.i198.unr-lcssa, label %bb.bm, !llvm.loop !379

bb.bn:                                            ; preds = %._crit_edge.i.i198
  %i.kj = add i64 %i.ji, 1                        ; 3 uses
  %.2.sroa.gep388 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.kk = load i64, ptr %.2.sroa.gep388, align 8, !tbaa !362
  %i.kl = icmp ugt i64 %i.kj, %i.kk
  br i1 %i.kl, label %bb.bo, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200

bb.bo:                                            ; preds = %bb.bn
  %i.km = load ptr, ptr %.2, align 8, !tbaa !41
  %i.kn = load ptr, ptr %i.km, align 8
  invoke void %i.kn(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.kj)
          to label %.noexc205 unwind label %bb.bp, !inline_history !380

.noexc205:                                        ; preds = %bb.bo
  %.pre.i.i.i202 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i203 = add i64 %.pre.i.i.i202, 1
  %.pre.i204 = load ptr, ptr %.2.sroa.gep385, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200: ; preds = %.noexc205, %bb.bn
  %i.ko = phi ptr [ %i.jj, %bb.bn ], [ %.pre.i204, %.noexc205 ]
  %.pre-phi.i.i.i201 = phi i64 [ %i.kj, %bb.bn ], [ %.pre2.i.i.i203, %.noexc205 ]
  %i.kp = phi i64 [ %i.ji, %bb.bn ], [ %.pre.i.i.i202, %.noexc205 ]
  store i64 %.pre-phi.i.i.i201, ptr %.2.sroa.gep, align 8, !tbaa !371
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kp
  store i32 %i.js, ptr %i.kq, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bp:                                            ; preds = %bb.dw, %bb.dl, %bb.bs, %bb.bo, %bb.bk, %bb.bg
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200, %._crit_edge.i.i198, %bb.bl, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.ks = and i32 %1, 4
  %.not97 = icmp eq i32 %i.ks, 0
  br i1 %.not97, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206
  %i.kt = load i32, ptr %4, align 4, !tbaa !65    ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, -1
  %i.kv = sub nsw i32 2147483646, %i.kt
  %i.kw = icmp sgt i32 %2, %i.kv
  %or.cond.i208 = select i1 %i.ku, i1 %i.kw, i1 false
  br i1 %or.cond.i208, label %bb.br, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.br:                                            ; preds = %bb.bq
  %i.kx = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull @.str.31)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %i.kx, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.kx, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #32
          to label %.noexc209 unwind label %bb.bp

.noexc209:                                        ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kx) #33
  br label %.body

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.bq
  %i.kz = add i32 %2, 1
  %i.la = add i32 %i.kz, %i.kt
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, %bb.at
  %.0421 = phi i32 [ %2, %bb.at ], [ %2, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206 ], [ %i.la, %_ZN3fmt2v96detail16adjust_precisionERii.exit ] ; 5 uses
  %i.lb = icmp slt i32 %.0421, 0
  br i1 %i.lb, label %bb.bv, label %bb.dh

bb.bv:                                            ; preds = %bb.bu
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !37 ; 3 uses
  %.2.sroa.gep391 = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 4 uses
  %spec.store.select.sroa.sel392 = select i1 %.not95, ptr %i.m, ptr %.2.sroa.gep391
  %.2.sroa.gep394 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel395 = select i1 %.not95, ptr %i.o, ptr %.2.sroa.gep394
  %.2.sroa.gep397 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 3 uses
  %spec.store.select.sroa.sel398 = select i1 %.not95, ptr %i.k, ptr %.2.sroa.gep397
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.2.sroa.gep406 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bv
  %indvars.iv520 = phi i64 [ 0, %bb.bv ], [ %indvars.iv.next521, %.backedge.backedge ] ; 7 uses
  %i.lg = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bw unwind label %bb.cl     ; 3 uses

bb.bw:                                            ; preds = %.backedge
  %i.lh = load i64, ptr %i.c, align 8, !tbaa !371 ; 3 uses
  %i.li = trunc i64 %i.lh to i32                  ; 3 uses
  %i.lj = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.lk = add nsw i32 %i.lj, %i.li                ; 4 uses
  %i.ll = load i64, ptr %i.m, align 8, !tbaa !371
  %i.lm = trunc i64 %i.ll to i32                  ; 4 uses
  %i.ln = load i32, ptr %i.o, align 8, !tbaa !363
  %i.lo = add nsw i32 %i.ln, %i.lm                ; 2 uses
  %.not.i = icmp eq i32 %i.lk, %i.lo
  br i1 %.not.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lp = icmp sgt i32 %i.lk, %i.lo
  %i.lq = select i1 %i.lp, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.by:                                            ; preds = %bb.bw
  %i.lr = sub nsw i32 %i.li, %i.lm
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.lr, i32 0) ; 3 uses
  %i.ls = load ptr, ptr %i.a, align 8
  %i.lt = load ptr, ptr %i.k, align 8
  %smin = call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %i.li) ; 2 uses
  %i.lu = trunc i64 %i.lh to i32
  %.not35.not.i1025 = icmp slt i32 %spec.store.select.i, %i.lu
  br i1 %.not35.not.i1025, label %.lr.ph1029, label %._crit_edge1030

.lr.ph1029:                                       ; preds = %bb.by
  %i.lv = and i64 %i.lh, 4294967295
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %i.lw = trunc nuw i64 %i.lx to i32
  %.not35.not.i = icmp slt i32 %spec.store.select.i, %i.lw
  br i1 %.not35.not.i, label %bb.ca, label %._crit_edge1030, !llvm.loop !381

bb.ca:                                            ; preds = %.lr.ph1029, %bb.bz
  %.0.in.i1027 = phi i32 [ %i.lm, %.lr.ph1029 ], [ %.0.i, %bb.bz ]
  %indvars.iv.i1026 = phi i64 [ %i.lv, %.lr.ph1029 ], [ %i.lx, %bb.bz ]
  %i.lx = add nsw i64 %indvars.iv.i1026, -1       ; 3 uses
  %.0.i = add nsw i32 %.0.in.i1027, -1            ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !65 ; 2 uses
  %i.ma = zext i32 %.0.i to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !65 ; 2 uses
  %.not37.i = icmp eq i32 %i.lz, %i.mc
  br i1 %.not37.i, label %bb.bz, label %.loopexit.i, !llvm.loop !381

._crit_edge1030:                                  ; preds = %bb.bz, %bb.by
  %.0.in.i.lcssa = phi i32 [ %i.lm, %bb.by ], [ %.0.i, %bb.bz ] ; 2 uses
  %.not36.i = icmp eq i32 %.0.in.i.lcssa, %smin
  br i1 %.not36.i, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1030
  %i.md = icmp slt i32 %.0.in.i.lcssa, %smin
  %i.me = select i1 %i.md, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %bb.ca
  %i.mf = icmp ugt i32 %i.lz, %i.mc
  %i.mg = select i1 %i.mf, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %.loopexit.i, %bb.cb, %._crit_edge1030, %bb.bx
  %.3.i = phi i32 [ %i.lq, %bb.bx ], [ 0, %._crit_edge1030 ], [ %i.me, %bb.cb ], [ %i.mg, %.loopexit.i ]
  %i.mh = icmp sge i32 %.3.i, %i.en               ; 3 uses
  %i.mi = load i64, ptr %spec.store.select.sroa.sel392, align 8, !tbaa !371
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = load i32, ptr %spec.store.select.sroa.sel395, align 8, !tbaa !363 ; 4 uses
  %i.ml = add nsw i32 %i.mk, %i.mj                ; 2 uses
  %i.mm = call noundef i32 @llvm.smax.i32(i32 %i.lk, i32 %i.ml) ; 2 uses
  %i.mn = load i64, ptr %i.h, align 8, !tbaa !371
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.mq = add nsw i32 %i.mp, %i.mo                ; 5 uses
  %i.mr = add nsw i32 %i.mm, 1
  %i.ms = icmp slt i32 %i.mr, %i.mq
  br i1 %i.ms, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227, label %bb.cc

bb.cc:                                            ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit
  %i.mt = icmp sgt i32 %i.mm, %i.mq
  br i1 %i.mt, label %.thread629, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mu = call noundef i32 @llvm.smin.i32(i32 %i.lj, i32 %i.mk)
  %i.mv = call noundef i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mp) ; 2 uses
  %.not.not.not55.i210 = icmp sgt i32 %i.mq, %i.mv
  br i1 %.not.not.not55.i210, label %.lr.ph.i212, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227

.lr.ph.i212:                                      ; preds = %bb.cd
  %i.mw = load ptr, ptr %i.a, align 8
  %i.mx = load ptr, ptr %spec.store.select.sroa.sel398, align 8
  %i.my = load ptr, ptr %i.f, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cj, %.lr.ph.i212
  %.0.in57.i213 = phi i32 [ %i.mq, %.lr.ph.i212 ], [ %.058.i215, %bb.cj ] ; 7 uses
  %.03256.i214 = phi i64 [ 0, %.lr.ph.i212 ], [ %i.ny, %bb.cj ] ; 2 uses
  %.058.i215 = add nsw i32 %.0.in57.i213, -1      ; 5 uses
  %.not.i.i216 = icmp sgt i32 %.0.in57.i213, %i.lj
  %i.mz = icmp sle i32 %.0.in57.i213, %i.lk
  %or.cond.i217 = and i1 %.not.i.i216, %i.mz
  br i1 %or.cond.i217, label %bb.cf, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218

bb.cf:                                            ; preds = %bb.ce
  %i.na = sub nsw i32 %.058.i215, %i.lj
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !65
  %i.ne = zext i32 %i.nd to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218: ; preds = %bb.cf, %bb.ce
  %i.nf = phi i64 [ %i.ne, %bb.cf ], [ 0, %bb.ce ]
  %.not.i43.i219 = icmp sgt i32 %.0.in57.i213, %i.mk
  %i.ng = icmp sle i32 %.0.in57.i213, %i.ml
  %or.cond52.i220 = and i1 %.not.i43.i219, %i.ng
  br i1 %or.cond52.i220, label %bb.cg, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221

bb.cg:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218
  %i.nh = sub nsw i32 %.058.i215, %i.mk
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !65
  %i.nl = zext i32 %i.nk to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221: ; preds = %bb.cg, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218
  %i.nm = phi i64 [ %i.nl, %bb.cg ], [ 0, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i218 ]
  %i.nn = add nuw nsw i64 %i.nm, %i.nf            ; 3 uses
  %.not.i45.i222 = icmp sgt i32 %.0.in57.i213, %i.mp
  %10 = icmp sle i32 %.0.in57.i213, %i.mq
  %or.cond53.i223 = and i1 %.not.i45.i222, %10
  br i1 %or.cond53.i223, label %bb.ch, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i224

bb.ch:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221
  %i.no = sub nsw i32 %.058.i215, %i.mp
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !65
  %i.ns = zext i32 %i.nr to i64
  %i.nt = or disjoint i64 %.03256.i214, %i.ns
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i224

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i224: ; preds = %bb.ch, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221
  %i.nu = phi i64 [ %i.nt, %bb.ch ], [ %.03256.i214, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i221 ] ; 3 uses
  %i.nv = icmp ugt i64 %i.nn, %i.nu
  br i1 %i.nv, label %.thread629, label %bb.ci

bb.ci:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i224
  %i.nw = sub nuw nsw i64 %i.nu, %i.nn            ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, 1
  br i1 %i.nx, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ny = shl nuw nsw i64 %i.nw, 32
  %.not.not.not.i225 = icmp sgt i32 %.058.i215, %i.mv
  br i1 %.not.not.not.i225, label %bb.ce, label %.thread.loopexit.i226, !llvm.loop !378

.thread.loopexit.i226:                            ; preds = %bb.cj
  %i.nz = icmp ne i64 %i.nu, %i.nn
  %i.oa = sext i1 %i.nz to i32
  br label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227: ; preds = %bb.ci, %.thread.loopexit.i226, %bb.cd, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit
  %.4.i211 = phi i32 [ %i.oa, %.thread.loopexit.i226 ], [ -1, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.cd ], [ -1, %bb.ci ]
  %i.ob = icmp slt i32 %.4.i211, %i.em            ; 2 uses
  %i.oc = trunc i32 %i.lg to i8                   ; 3 uses
  %i.od = add i8 %i.oc, 48
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv520
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !45
  %or.cond.not = select i1 %i.mh, i1 %i.ob, i1 false
  br i1 %or.cond.not, label %bb.cw, label %bb.ck

bb.ck:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227
  br i1 %i.mh, label %.thread.sink.split, label %bb.cm

.thread629:                                       ; preds = %bb.cc, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i224
  %i.of = trunc i32 %i.lg to i8                   ; 3 uses
  %i.og = add i8 %i.of, 48
  %indvars.iv.next521623 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv520
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !45
  br i1 %i.mh, label %.thread.sink.split, label %.thread638

bb.cl:                                            ; preds = %.backedge
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit705:                                     ; preds = %bb.cz, %bb.dc, %bb.dg
  %lpad.loopexit707 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp706:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp708 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.ob, label %.thread, label %.thread638

.thread638:                                       ; preds = %.thread629, %bb.cm
  %indvars.iv.next521626636641 = phi i64 [ %indvars.iv.next521, %bb.cm ], [ %indvars.iv.next521623, %.thread629 ] ; 6 uses
  %i.oj = phi i8 [ %i.oc, %bb.cm ], [ %i.of, %.thread629 ] ; 3 uses
  %i.ok = load i64, ptr %i.c, align 8, !tbaa !371
  %i.ol = trunc i64 %i.ok to i32
  %i.om = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.on = add nsw i32 %i.om, %i.ol                ; 3 uses
  %i.oo = load i64, ptr %i.h, align 8, !tbaa !371
  %i.op = trunc i64 %i.oo to i32
  %i.oq = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.or = add nsw i32 %i.oq, %i.op                ; 5 uses
  %i.os = add nsw i32 %i.on, 1
  %i.ot = icmp slt i32 %i.os, %i.or
  br i1 %i.ot, label %.thread, label %bb.cn

bb.cn:                                            ; preds = %.thread638
  %i.ou = icmp sgt i32 %i.on, %i.or
  br i1 %i.ou, label %.thread.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ov = call noundef i32 @llvm.smin.i32(i32 %i.om, i32 %i.oq) ; 2 uses
  %.not.not.not55.i228 = icmp sgt i32 %i.or, %i.ov
  br i1 %.not.not.not55.i228, label %.lr.ph.i230, label %bb.cu

.lr.ph.i230:                                      ; preds = %bb.co
  %i.ow = load ptr, ptr %i.a, align 8
  %i.ox = load ptr, ptr %i.f, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ct, %.lr.ph.i230
  %.0.in57.i231 = phi i32 [ %i.or, %.lr.ph.i230 ], [ %.058.i233, %bb.ct ] ; 5 uses
  %.03256.i232 = phi i64 [ 0, %.lr.ph.i230 ], [ %i.pq, %bb.ct ] ; 2 uses
  %.058.i233 = add nsw i32 %.0.in57.i231, -1      ; 4 uses
  %.not.i.i234 = icmp sgt i32 %.0.in57.i231, %i.om
  %i.oy = icmp sle i32 %.0.in57.i231, %i.on
  %or.cond.i235 = and i1 %.not.i.i234, %i.oy
  br i1 %or.cond.i235, label %bb.cq, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239

bb.cq:                                            ; preds = %bb.cp
  %i.oz = sub nsw i32 %.058.i233, %i.om
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !65
  %i.pd = zext i32 %i.pc to i64
  %i.pe = shl nuw nsw i64 %i.pd, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239: ; preds = %bb.cp, %bb.cq
  %i.pf = phi i64 [ %i.pe, %bb.cq ], [ 0, %bb.cp ] ; 3 uses
  %.not.i45.i240 = icmp sgt i32 %.0.in57.i231, %i.oq
  %11 = icmp sle i32 %.0.in57.i231, %i.or
  %or.cond53.i241 = and i1 %.not.i45.i240, %11
  br i1 %or.cond53.i241, label %bb.cr, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242

bb.cr:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239
  %i.pg = sub nsw i32 %.058.i233, %i.oq
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !65
  %i.pk = zext i32 %i.pj to i64
  %i.pl = or disjoint i64 %.03256.i232, %i.pk
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242: ; preds = %bb.cr, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239
  %i.pm = phi i64 [ %i.pl, %bb.cr ], [ %.03256.i232, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239 ] ; 3 uses
  %i.pn = icmp ugt i64 %i.pf, %i.pm
  br i1 %i.pn, label %.thread.sink.split, label %bb.cs

bb.cs:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242
  %i.po = sub nuw nsw i64 %i.pm, %i.pf            ; 2 uses
  %i.pp = icmp ugt i64 %i.po, 1
  br i1 %i.pp, label %.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pq = shl nuw nsw i64 %i.po, 32
  %.not.not.not.i243 = icmp sgt i32 %.058.i233, %i.ov
  br i1 %.not.not.not.i243, label %bb.cp, label %.thread.loopexit.i244, !llvm.loop !378

.thread.loopexit.i244:                            ; preds = %bb.ct
  %i.pr = icmp ne i64 %i.pm, %i.pf
  br label %bb.cu

bb.cu:                                            ; preds = %bb.co, %.thread.loopexit.i244
  %.4.i229.ph = phi i1 [ false, %bb.co ], [ %i.pr, %.thread.loopexit.i244 ]
  %i.ps = and i32 %i.lg, 1
  %.not100 = icmp eq i32 %i.ps, 0
  %or.cond = or i1 %.not100, %.4.i229.ph
  br i1 %or.cond, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242, %bb.cu, %bb.cn, %bb.ck, %.thread629
  %.sink679 = phi i8 [ %i.oc, %bb.ck ], [ %i.of, %.thread629 ], [ %i.oj, %bb.cu ], [ %i.oj, %bb.cn ], [ %i.oj, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242 ]
  %indvars.iv.next521626635.ph = phi i64 [ %indvars.iv.next521, %bb.ck ], [ %indvars.iv.next521623, %.thread629 ], [ %indvars.iv.next521626636641, %bb.cu ], [ %indvars.iv.next521626636641, %bb.cn ], [ %indvars.iv.next521626636641, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242 ]
  %i.pt = getelementptr i8, ptr %i.ld, i64 %indvars.iv520
  %i.pu = add i8 %.sink679, 49
  store i8 %i.pu, ptr %i.pt, align 1, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %bb.cs, %.thread.sink.split, %.thread638, %bb.cu, %bb.cm
  %indvars.iv.next521626635 = phi i64 [ %indvars.iv.next521, %bb.cm ], [ %indvars.iv.next521626636641, %.thread638 ], [ %indvars.iv.next521626636641, %bb.cu ], [ %indvars.iv.next521626635.ph, %.thread.sink.split ], [ %indvars.iv.next521626636641, %bb.cs ] ; 2 uses
  %i.pv = load i64, ptr %i.le, align 8, !tbaa !40 ; 2 uses
  %.not621 = icmp ugt i64 %i.pv, %indvars.iv520
  br i1 %.not621, label %.split, label %bb.cv

bb.cv:                                            ; preds = %.thread
  %i.pw = load ptr, ptr %3, align 8, !tbaa !41
  %i.px = load ptr, ptr %i.pw, align 8
  invoke void %i.px(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next521626635)
          to label %.noexc247 unwind label %.loopexit.split-lp706, !inline_history !382

.noexc247:                                        ; preds = %bb.cv
  %.pre.i246 = load i64, ptr %i.le, align 8, !tbaa !40
  br label %.split

.split:                                           ; preds = %.noexc247, %.thread
  %i.py = phi i64 [ %i.pv, %.thread ], [ %.pre.i246, %.noexc247 ]
  %..i = call i64 @llvm.umin.i64(i64 %indvars.iv.next521626635, i64 %i.py)
  store i64 %..i, ptr %i.lf, align 8, !tbaa !39
  %i.pz = load i32, ptr %4, align 4, !tbaa !65
  %i.qa = trunc nuw nsw i64 %indvars.iv520 to i32
  %i.qb = sub nsw i32 %i.pz, %i.qa
  store i32 %i.qb, ptr %4, align 4, !tbaa !65
  br label %.loopexit

bb.cw:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227
  %i.qc = load i64, ptr %i.c, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i248 = icmp eq i64 %i.qc, 0
  br i1 %.not14.i.i248, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261, label %.lr.ph.i.i249

.lr.ph.i.i249:                                    ; preds = %bb.cw
  %i.qd = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter1120 = and i64 %i.qc, 1
  %i.qe = icmp eq i64 %i.qc, 1
  br i1 %i.qe, label %.epil.preheader1119, label %.lr.ph.i.i249.new

.lr.ph.i.i249.new:                                ; preds = %.lr.ph.i.i249
  %unroll_iter1124 = and i64 %i.qc, -2
  br label %bb.cx

._crit_edge.i.i253.unr-lcssa:                     ; preds = %bb.cx
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1121.not, label %._crit_edge.i.i253, label %.epil.preheader1119

.epil.preheader1119:                              ; preds = %._crit_edge.i.i253.unr-lcssa, %.lr.ph.i.i249
  %.013.i.i250.epil.init = phi i64 [ 0, %.lr.ph.i.i249 ], [ %i.rc, %._crit_edge.i.i253.unr-lcssa ]
  %.01112.i.i251.epil.init = phi i64 [ 0, %.lr.ph.i.i249 ], [ %i.rb, %._crit_edge.i.i253.unr-lcssa ]
  %lcmp.mod1123 = trunc i64 %i.qc to i1
  call void @llvm.assume(i1 %lcmp.mod1123)
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %.013.i.i250.epil.init ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !65
  %i.qh = zext i32 %i.qg to i64
  %i.qi = mul nuw nsw i64 %i.qh, 10
  %i.qj = add nuw nsw i64 %i.qi, %.01112.i.i251.epil.init ; 2 uses
  %i.qk = trunc i64 %i.qj to i32
  store i32 %i.qk, ptr %i.qf, align 4, !tbaa !65
  %i.ql = lshr i64 %i.qj, 32
  br label %._crit_edge.i.i253

._crit_edge.i.i253:                               ; preds = %._crit_edge.i.i253.unr-lcssa, %.epil.preheader1119
  %.lcssa1047 = phi i64 [ %i.rb, %._crit_edge.i.i253.unr-lcssa ], [ %i.ql, %.epil.preheader1119 ] ; 2 uses
  %i.qm = trunc nuw nsw i64 %.lcssa1047 to i32
  %.not.i.i254 = icmp eq i64 %.lcssa1047, 0
  br i1 %.not.i.i254, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261, label %bb.cy

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i.i249.new
  %.013.i.i250 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.rc, %bb.cx ] ; 3 uses
  %.01112.i.i251 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.rb, %bb.cx ]
  %niter1125 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %niter1125.next.1, %bb.cx ]
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %.013.i.i250 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !65
  %i.qp = zext i32 %i.qo to i64
  %i.qq = mul nuw nsw i64 %i.qp, 10
  %i.qr = add nuw nsw i64 %i.qq, %.01112.i.i251   ; 2 uses
  %i.qs = trunc i64 %i.qr to i32
  store i32 %i.qs, ptr %i.qn, align 4, !tbaa !65
  %i.qt = lshr i64 %i.qr, 32
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %.013.i.i250
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !65
  %i.qx = zext i32 %i.qw to i64
  %i.qy = mul nuw nsw i64 %i.qx, 10
  %i.qz = add nuw nsw i64 %i.qy, %i.qt            ; 2 uses
  %i.ra = trunc i64 %i.qz to i32
  store i32 %i.ra, ptr %i.qv, align 4, !tbaa !65
  %i.rb = lshr i64 %i.qz, 32                      ; 3 uses
  %i.rc = add nuw i64 %.013.i.i250, 2             ; 2 uses
  %niter1125.next.1 = add nuw i64 %niter1125, 2   ; 2 uses
  %niter1125.ncmp.1 = icmp eq i64 %niter1125.next.1, %unroll_iter1124
  br i1 %niter1125.ncmp.1, label %._crit_edge.i.i253.unr-lcssa, label %bb.cx, !llvm.loop !379

bb.cy:                                            ; preds = %._crit_edge.i.i253
  %i.rd = add i64 %i.qc, 1                        ; 3 uses
  %i.re = load i64, ptr %i.b, align 8, !tbaa !362
  %i.rf = icmp ugt i64 %i.rd, %i.re
  br i1 %i.rf, label %bb.cz, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255

bb.cz:                                            ; preds = %bb.cy
  %i.rg = load ptr, ptr %5, align 8, !tbaa !41
  %i.rh = load ptr, ptr %i.rg, align 8
  invoke void %i.rh(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.rd)
          to label %.noexc260 unwind label %.loopexit705, !inline_history !380

.noexc260:                                        ; preds = %bb.cz
  %.pre.i.i.i257 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i258 = add i64 %.pre.i.i.i257, 1
  %.pre.i259 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255: ; preds = %.noexc260, %bb.cy
  %i.ri = phi ptr [ %i.qd, %bb.cy ], [ %.pre.i259, %.noexc260 ]
  %.pre-phi.i.i.i256 = phi i64 [ %i.rd, %bb.cy ], [ %.pre2.i.i.i258, %.noexc260 ]
  %i.rj = phi i64 [ %i.qc, %bb.cy ], [ %.pre.i.i.i257, %.noexc260 ]
  store i64 %.pre-phi.i.i.i256, ptr %i.c, align 8, !tbaa !371
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.rj
  store i32 %i.qm, ptr %i.rk, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255, %._crit_edge.i.i253, %bb.cw
  %i.rl = load i64, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i262 = icmp eq i64 %i.rl, 0
  br i1 %.not14.i.i262, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275, label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261
  %i.rm = load ptr, ptr %i.k, align 8, !tbaa !360 ; 4 uses
  %xtraiter1127 = and i64 %i.rl, 1
  %i.rn = icmp eq i64 %i.rl, 1
  br i1 %i.rn, label %.epil.preheader1126, label %.lr.ph.i.i263.new

.lr.ph.i.i263.new:                                ; preds = %.lr.ph.i.i263
  %unroll_iter1131 = and i64 %i.rl, -2
  br label %bb.da

._crit_edge.i.i267.unr-lcssa:                     ; preds = %bb.da
  %lcmp.mod1128.not = icmp eq i64 %xtraiter1127, 0
  br i1 %lcmp.mod1128.not, label %._crit_edge.i.i267, label %.epil.preheader1126

.epil.preheader1126:                              ; preds = %._crit_edge.i.i267.unr-lcssa, %.lr.ph.i.i263
  %.013.i.i264.epil.init = phi i64 [ 0, %.lr.ph.i.i263 ], [ %i.sl, %._crit_edge.i.i267.unr-lcssa ]
  %.01112.i.i265.epil.init = phi i64 [ 0, %.lr.ph.i.i263 ], [ %i.sk, %._crit_edge.i.i267.unr-lcssa ]
  %lcmp.mod1130 = trunc i64 %i.rl to i1
  call void @llvm.assume(i1 %lcmp.mod1130)
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %.013.i.i264.epil.init ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !65
  %i.rq = zext i32 %i.rp to i64
  %i.rr = mul nuw nsw i64 %i.rq, 10
  %i.rs = add nuw nsw i64 %i.rr, %.01112.i.i265.epil.init ; 2 uses
  %i.rt = trunc i64 %i.rs to i32
  store i32 %i.rt, ptr %i.ro, align 4, !tbaa !65
  %i.ru = lshr i64 %i.rs, 32
  br label %._crit_edge.i.i267

._crit_edge.i.i267:                               ; preds = %._crit_edge.i.i267.unr-lcssa, %.epil.preheader1126
  %.lcssa1048 = phi i64 [ %i.sk, %._crit_edge.i.i267.unr-lcssa ], [ %i.ru, %.epil.preheader1126 ] ; 2 uses
  %i.rv = trunc nuw nsw i64 %.lcssa1048 to i32
end_hunk_1
begin_hunk_2_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.not14.i.i276 = icmp eq i64 %i.su, 0
  br i1 %.not14.i.i276, label %.backedge.backedge, label %.lr.ph.i.i277

.lr.ph.i.i277:                                    ; preds = %bb.dd
  %i.sv = load ptr, ptr %.2.sroa.gep397, align 8, !tbaa !360 ; 4 uses
  %xtraiter1134 = and i64 %i.su, 1
  %i.sw = icmp eq i64 %i.su, 1
  br i1 %i.sw, label %.epil.preheader1133, label %.lr.ph.i.i277.new

.lr.ph.i.i277.new:                                ; preds = %.lr.ph.i.i277
  %unroll_iter1138 = and i64 %i.su, -2
  br label %bb.de

._crit_edge.i.i281.unr-lcssa:                     ; preds = %bb.de
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  br i1 %lcmp.mod1135.not, label %._crit_edge.i.i281, label %.epil.preheader1133

.epil.preheader1133:                              ; preds = %._crit_edge.i.i281.unr-lcssa, %.lr.ph.i.i277
  %.013.i.i278.epil.init = phi i64 [ 0, %.lr.ph.i.i277 ], [ %i.tu, %._crit_edge.i.i281.unr-lcssa ]
  %.01112.i.i279.epil.init = phi i64 [ 0, %.lr.ph.i.i277 ], [ %i.tt, %._crit_edge.i.i281.unr-lcssa ]
  %lcmp.mod1137 = trunc i64 %i.su to i1
  call void @llvm.assume(i1 %lcmp.mod1137)
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %.013.i.i278.epil.init ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !65
  %i.sz = zext i32 %i.sy to i64
  %i.ta = mul nuw nsw i64 %i.sz, 10
  %i.tb = add nuw nsw i64 %i.ta, %.01112.i.i279.epil.init ; 2 uses
  %i.tc = trunc i64 %i.tb to i32
  store i32 %i.tc, ptr %i.sx, align 4, !tbaa !65
  %i.td = lshr i64 %i.tb, 32
  br label %._crit_edge.i.i281

._crit_edge.i.i281:                               ; preds = %._crit_edge.i.i281.unr-lcssa, %.epil.preheader1133
  %.lcssa1049 = phi i64 [ %i.tt, %._crit_edge.i.i281.unr-lcssa ], [ %i.td, %.epil.preheader1133 ] ; 2 uses
  %i.te = trunc nuw nsw i64 %.lcssa1049 to i32
  %.not.i.i282 = icmp eq i64 %.lcssa1049, 0
  br i1 %.not.i.i282, label %.backedge.backedge, label %bb.df

bb.de:                                            ; preds = %bb.de, %.lr.ph.i.i277.new
  %.013.i.i278 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %i.tu, %bb.de ] ; 3 uses
  %.01112.i.i279 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %i.tt, %bb.de ]
  %niter1139 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %niter1139.next.1, %bb.de ]
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %.013.i.i278 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !65
  %i.th = zext i32 %i.tg to i64
  %i.ti = mul nuw nsw i64 %i.th, 10
  %i.tj = add nuw nsw i64 %i.ti, %.01112.i.i279   ; 2 uses
  %i.tk = trunc i64 %i.tj to i32
  store i32 %i.tk, ptr %i.tf, align 4, !tbaa !65
  %i.tl = lshr i64 %i.tj, 32
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %.013.i.i278
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !65
  %i.tp = zext i32 %i.to to i64
  %i.tq = mul nuw nsw i64 %i.tp, 10
  %i.tr = add nuw nsw i64 %i.tq, %i.tl            ; 2 uses
  %i.ts = trunc i64 %i.tr to i32
  store i32 %i.ts, ptr %i.tn, align 4, !tbaa !65
  %i.tt = lshr i64 %i.tr, 32                      ; 3 uses
  %i.tu = add nuw i64 %.013.i.i278, 2             ; 2 uses
  %niter1139.next.1 = add nuw i64 %niter1139, 2   ; 2 uses
  %niter1139.ncmp.1 = icmp eq i64 %niter1139.next.1, %unroll_iter1138
  br i1 %niter1139.ncmp.1, label %._crit_edge.i.i281.unr-lcssa, label %bb.de, !llvm.loop !379

bb.df:                                            ; preds = %._crit_edge.i.i281
  %i.tv = add i64 %i.su, 1                        ; 3 uses
  %i.tw = load i64, ptr %.2.sroa.gep406, align 8, !tbaa !362
  %i.tx = icmp ugt i64 %i.tv, %i.tw
  br i1 %i.tx, label %bb.dg, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283

bb.dg:                                            ; preds = %bb.df
  %i.ty = load ptr, ptr %.2, align 8, !tbaa !41
  %i.tz = load ptr, ptr %i.ty, align 8
  invoke void %i.tz(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.tv)
          to label %.noexc288 unwind label %.loopexit705, !inline_history !380

.noexc288:                                        ; preds = %bb.dg
  %.pre.i.i.i285 = load i64, ptr %.2.sroa.gep391, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i286 = add i64 %.pre.i.i.i285, 1
  %.pre.i287 = load ptr, ptr %.2.sroa.gep397, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283: ; preds = %.noexc288, %bb.df
  %i.ua = phi ptr [ %i.sv, %bb.df ], [ %.pre.i287, %.noexc288 ]
  %.pre-phi.i.i.i284 = phi i64 [ %i.tv, %bb.df ], [ %.pre2.i.i.i286, %.noexc288 ]
  %i.ub = phi i64 [ %i.su, %bb.df ], [ %.pre.i.i.i285, %.noexc288 ]
  store i64 %.pre-phi.i.i.i284, ptr %.2.sroa.gep391, align 8, !tbaa !371
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.ub
  store i32 %i.te, ptr %i.uc, align 4, !tbaa !65
  br label %.backedge.backedge

bb.dh:                                            ; preds = %bb.bu
  %i.ud = add nsw i32 %.0421, -1                  ; 4 uses
  %i.ue = load i32, ptr %4, align 4, !tbaa !65
  %i.uf = sub nsw i32 %i.ue, %i.ud
  store i32 %i.uf, ptr %4, align 4, !tbaa !65
  %i.ug = icmp eq i32 %.0421, 0
  br i1 %i.ug, label %bb.di, label %bb.dv

bb.di:                                            ; preds = %bb.dh
  %i.uh = load i64, ptr %i.h, align 8, !tbaa !371 ; 8 uses
  %.not14.i.i290 = icmp eq i64 %i.uh, 0
  br i1 %.not14.i.i290, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, label %.lr.ph.i.i291

.lr.ph.i.i291:                                    ; preds = %bb.di
  %i.ui = load ptr, ptr %i.f, align 8, !tbaa !360 ; 4 uses
  %xtraiter1113 = and i64 %i.uh, 1
  %i.uj = icmp eq i64 %i.uh, 1
  br i1 %i.uj, label %.epil.preheader1112, label %.lr.ph.i.i291.new

.lr.ph.i.i291.new:                                ; preds = %.lr.ph.i.i291
  %unroll_iter1117 = and i64 %i.uh, -2
  br label %bb.dj

._crit_edge.i.i295.unr-lcssa:                     ; preds = %bb.dj
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1113, 0
  br i1 %lcmp.mod1114.not, label %._crit_edge.i.i295, label %.epil.preheader1112

.epil.preheader1112:                              ; preds = %._crit_edge.i.i295.unr-lcssa, %.lr.ph.i.i291
  %.013.i.i292.epil.init = phi i64 [ 0, %.lr.ph.i.i291 ], [ %i.vh, %._crit_edge.i.i295.unr-lcssa ]
  %.01112.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i291 ], [ %i.vg, %._crit_edge.i.i295.unr-lcssa ]
  %lcmp.mod1116 = trunc i64 %i.uh to i1
  call void @llvm.assume(i1 %lcmp.mod1116)
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i292.epil.init ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !65
  %i.um = zext i32 %i.ul to i64
  %i.un = mul nuw nsw i64 %i.um, 10
  %i.uo = add nuw nsw i64 %i.un, %.01112.i.i293.epil.init ; 2 uses
  %i.up = trunc i64 %i.uo to i32
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !65
  %i.uq = lshr i64 %i.uo, 32
  br label %._crit_edge.i.i295

._crit_edge.i.i295:                               ; preds = %._crit_edge.i.i295.unr-lcssa, %.epil.preheader1112
  %.lcssa1071 = phi i64 [ %i.vg, %._crit_edge.i.i295.unr-lcssa ], [ %i.uq, %.epil.preheader1112 ] ; 2 uses
  %i.ur = trunc nuw nsw i64 %.lcssa1071 to i32
  %.not.i.i296 = icmp eq i64 %.lcssa1071, 0
  br i1 %.not.i.i296, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, label %bb.dk

bb.dj:                                            ; preds = %bb.dj, %.lr.ph.i.i291.new
  %.013.i.i292 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %i.vh, %bb.dj ] ; 3 uses
  %.01112.i.i293 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %i.vg, %bb.dj ]
  %niter1118 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %niter1118.next.1, %bb.dj ]
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i292 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !65
  %i.uu = zext i32 %i.ut to i64
  %i.uv = mul nuw nsw i64 %i.uu, 10
  %i.uw = add nuw nsw i64 %i.uv, %.01112.i.i293   ; 2 uses
  %i.ux = trunc i64 %i.uw to i32
  store i32 %i.ux, ptr %i.us, align 4, !tbaa !65
  %i.uy = lshr i64 %i.uw, 32
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i292
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !65
  %i.vc = zext i32 %i.vb to i64
  %i.vd = mul nuw nsw i64 %i.vc, 10
  %i.ve = add nuw nsw i64 %i.vd, %i.uy            ; 2 uses
  %i.vf = trunc i64 %i.ve to i32
  store i32 %i.vf, ptr %i.va, align 4, !tbaa !65
  %i.vg = lshr i64 %i.ve, 32                      ; 3 uses
  %i.vh = add nuw i64 %.013.i.i292, 2             ; 2 uses
  %niter1118.next.1 = add nuw i64 %niter1118, 2   ; 2 uses
  %niter1118.ncmp.1 = icmp eq i64 %niter1118.next.1, %unroll_iter1117
  br i1 %niter1118.ncmp.1, label %._crit_edge.i.i295.unr-lcssa, label %bb.dj, !llvm.loop !379

bb.dk:                                            ; preds = %._crit_edge.i.i295
  %i.vi = add i64 %i.uh, 1                        ; 3 uses
  %i.vj = load i64, ptr %i.g, align 8, !tbaa !362
  %i.vk = icmp ugt i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.dl, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297

bb.dl:                                            ; preds = %bb.dk
  %i.vl = load ptr, ptr %6, align 8, !tbaa !41
  %i.vm = load ptr, ptr %i.vl, align 8
  invoke void %i.vm(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.vi)
          to label %.noexc302 unwind label %bb.bp, !inline_history !380

.noexc302:                                        ; preds = %bb.dl
  %.pre.i.i.i299 = load i64, ptr %i.h, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i300 = add i64 %.pre.i.i.i299, 1
  %.pre.i301 = load ptr, ptr %i.f, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297: ; preds = %.noexc302, %bb.dk
  %i.vn = phi ptr [ %i.ui, %bb.dk ], [ %.pre.i301, %.noexc302 ]
  %.pre-phi.i.i.i298 = phi i64 [ %i.vi, %bb.dk ], [ %.pre2.i.i.i300, %.noexc302 ] ; 2 uses
  %i.vo = phi i64 [ %i.uh, %bb.dk ], [ %.pre.i.i.i299, %.noexc302 ]
  store i64 %.pre-phi.i.i.i298, ptr %i.h, align 8, !tbaa !371
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vo
  store i32 %i.ur, ptr %i.vp, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297, %._crit_edge.i.i295, %bb.di
  %i.vq = phi i64 [ %.pre-phi.i.i.i298, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297 ], [ %i.uh, %._crit_edge.i.i295 ], [ 0, %bb.di ]
  %i.vr = load i64, ptr %i.c, align 8, !tbaa !371
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.vu = add nsw i32 %i.vt, %i.vs                ; 3 uses
  %i.vv = trunc i64 %i.vq to i32
  %i.vw = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.vx = add nsw i32 %i.vw, %i.vv                ; 5 uses
  %i.vy = add nsw i32 %i.vu, 1
  %i.vz = icmp slt i32 %i.vy, %i.vx
  br i1 %i.vz, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dm

bb.dm:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303
  %i.wa = icmp sgt i32 %i.vu, %i.vx
  br i1 %i.wa, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wb = call noundef i32 @llvm.smin.i32(i32 %i.vt, i32 %i.vw) ; 2 uses
  %.not.not.not55.i304 = icmp sgt i32 %i.vx, %i.wb
  br i1 %.not.not.not55.i304, label %.lr.ph.i306, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321

.lr.ph.i306:                                      ; preds = %bb.dn
  %i.wc = load ptr, ptr %i.a, align 8
  %i.wd = load ptr, ptr %i.f, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dr, %.lr.ph.i306
  %.0.in57.i307 = phi i32 [ %i.vx, %.lr.ph.i306 ], [ %.058.i309, %bb.dr ] ; 5 uses
  %.03256.i308 = phi i64 [ 0, %.lr.ph.i306 ], [ %i.ww, %bb.dr ] ; 2 uses
  %.058.i309 = add nsw i32 %.0.in57.i307, -1      ; 4 uses
  %.not.i.i310 = icmp sgt i32 %.0.in57.i307, %i.vt
  %i.we = icmp sle i32 %.0.in57.i307, %i.vu
  %or.cond.i311 = and i1 %.not.i.i310, %i.we
  br i1 %or.cond.i311, label %bb.dp, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315

bb.dp:                                            ; preds = %bb.do
  %i.wf = sub nsw i32 %.058.i309, %i.vt
  %i.wg = zext i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !65
  %i.wj = zext i32 %i.wi to i64
  %i.wk = shl nuw nsw i64 %i.wj, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315: ; preds = %bb.do, %bb.dp
  %i.wl = phi i64 [ %i.wk, %bb.dp ], [ 0, %bb.do ] ; 2 uses
  %.not.i45.i316 = icmp sgt i32 %.0.in57.i307, %i.vw
  %12 = icmp sle i32 %.0.in57.i307, %i.vx
  %or.cond53.i317 = and i1 %.not.i45.i316, %12
  br i1 %or.cond53.i317, label %bb.dq, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318

bb.dq:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315
  %i.wm = sub nsw i32 %.058.i309, %i.vw
  %i.wn = zext i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !65
  %i.wq = zext i32 %i.wp to i64
  %i.wr = or disjoint i64 %.03256.i308, %i.wq
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318: ; preds = %bb.dq, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315
  %i.ws = phi i64 [ %i.wr, %bb.dq ], [ %.03256.i308, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315 ] ; 2 uses
  %i.wt = icmp ugt i64 %i.wl, %i.ws
  br i1 %i.wt, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dr

bb.dr:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318
  %i.wu = sub nuw nsw i64 %i.ws, %i.wl            ; 2 uses
  %i.wv = icmp ult i64 %i.wu, 2
  %i.ww = shl nuw nsw i64 %i.wu, 32
  %.not.not.not.i319 = icmp sgt i32 %.058.i309, %i.wb
  %or.cond437 = select i1 %i.wv, i1 %.not.not.not.i319, i1 false
  br i1 %or.cond437, label %bb.do, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, !llvm.loop !378

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321: ; preds = %bb.dr, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318, %bb.dn, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, %bb.dm
  %i.wx = phi i8 [ 48, %bb.dn ], [ 49, %bb.dm ], [ 48, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303 ], [ 49, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318 ], [ 48, %bb.dr ]
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !39 ; 2 uses
  %i.xa = add i64 %i.wz, 1                        ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !40
  %i.xd = icmp ugt i64 %i.xa, %i.xc
  br i1 %i.xd, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321
  %i.xe = load ptr, ptr %3, align 8, !tbaa !41
  %i.xf = load ptr, ptr %i.xe, align 8
  invoke void %i.xf(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.xa)
          to label %.noexc323.a unwind label %bb.du, !inline_history !384

.noexc323.a:                                      ; preds = %bb.ds
  %.pre.i322.a = load i64, ptr %i.wy, align 8, !tbaa !39 ; 2 uses
  %.pre2.i = add i64 %.pre.i322.a, 1
  br label %bb.dt

bb.dt:                                            ; preds = %.noexc323.a, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321
  %.pre-phi.i = phi i64 [ %i.xa, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321 ], [ %.pre2.i, %.noexc323.a ]
  %i.xg = phi i64 [ %i.wz, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321 ], [ %.pre.i322.a, %.noexc323.a ]
  %i.xh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !37
  store i64 %.pre-phi.i, ptr %i.wy, align 8, !tbaa !39
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xg
  store i8 %i.wx, ptr %i.xj, align 1, !tbaa !45
  br label %.loopexit

bb.du:                                            ; preds = %bb.ds
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %bb.dh
  %i.xl = zext nneg i32 %.0421 to i64             ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !40 ; 2 uses
  %i.xo = icmp ult i64 %i.xn, %i.xl
  br i1 %i.xo, label %bb.dw, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327

bb.dw:                                            ; preds = %bb.dv
  %i.xp = load ptr, ptr %3, align 8, !tbaa !41
  %i.xq = load ptr, ptr %i.xp, align 8
  invoke void %i.xq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.xl)
          to label %.noexc326 unwind label %bb.bp, !inline_history !382

.noexc326:                                        ; preds = %bb.dw
  %.pre.i325 = load i64, ptr %i.xm, align 8, !tbaa !40
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327: ; preds = %bb.dv, %.noexc326
  %i.xr = phi i64 [ %i.xn, %bb.dv ], [ %.pre.i325, %.noexc326 ]
  %..i324 = call i64 @llvm.umin.i64(i64 %i.xl, i64 %i.xr)
  %i.xs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i324, ptr %i.xs, align 8, !tbaa !39
  %.not680 = icmp eq i32 %.0421, 1                ; 2 uses
  br i1 %.not680, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327
  %i.xt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.ud to i64
  br label %bb.dx

._crit_edge:                                      ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327
  %i.xu = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.ed unwind label %bb.en     ; 6 uses

bb.dx:                                            ; preds = %.lr.ph, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341 ] ; 2 uses
  %i.xv = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.xw = trunc i32 %i.xv to i8
  %i.xx = add i8 %i.xw, 48
  %i.xy = load ptr, ptr %i.xt, align 8, !tbaa !37
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %indvars.iv
  store i8 %i.xx, ptr %i.xz, align 1, !tbaa !45
  %i.ya = load i64, ptr %i.c, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i328 = icmp eq i64 %i.ya, 0
  br i1 %.not14.i.i328, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, label %.lr.ph.i.i329

.lr.ph.i.i329:                                    ; preds = %bb.dy
  %i.yb = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter1106 = and i64 %i.ya, 1
  %i.yc = icmp eq i64 %i.ya, 1
  br i1 %i.yc, label %.epil.preheader1105, label %.lr.ph.i.i329.new

.lr.ph.i.i329.new:                                ; preds = %.lr.ph.i.i329
  %unroll_iter1110 = and i64 %i.ya, -2
  br label %bb.dz

._crit_edge.i.i333.unr-lcssa:                     ; preds = %bb.dz
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %._crit_edge.i.i333, label %.epil.preheader1105

.epil.preheader1105:                              ; preds = %._crit_edge.i.i333.unr-lcssa, %.lr.ph.i.i329
  %.013.i.i330.epil.init = phi i64 [ 0, %.lr.ph.i.i329 ], [ %i.za, %._crit_edge.i.i333.unr-lcssa ]
  %.01112.i.i331.epil.init = phi i64 [ 0, %.lr.ph.i.i329 ], [ %i.yz, %._crit_edge.i.i333.unr-lcssa ]
  %lcmp.mod1109 = trunc i64 %i.ya to i1
  call void @llvm.assume(i1 %lcmp.mod1109)
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.013.i.i330.epil.init ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !65
  %i.yf = zext i32 %i.ye to i64
  %i.yg = mul nuw nsw i64 %i.yf, 10
  %i.yh = add nuw nsw i64 %i.yg, %.01112.i.i331.epil.init ; 2 uses
  %i.yi = trunc i64 %i.yh to i32
  store i32 %i.yi, ptr %i.yd, align 4, !tbaa !65
  %i.yj = lshr i64 %i.yh, 32
  br label %._crit_edge.i.i333

._crit_edge.i.i333:                               ; preds = %._crit_edge.i.i333.unr-lcssa, %.epil.preheader1105
  %.lcssa1078 = phi i64 [ %i.yz, %._crit_edge.i.i333.unr-lcssa ], [ %i.yj, %.epil.preheader1105 ] ; 2 uses
  %i.yk = trunc nuw nsw i64 %.lcssa1078 to i32
  %.not.i.i334 = icmp eq i64 %.lcssa1078, 0
  br i1 %.not.i.i334, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, label %bb.ea

bb.dz:                                            ; preds = %bb.dz, %.lr.ph.i.i329.new
  %.013.i.i330 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %i.za, %bb.dz ] ; 3 uses
  %.01112.i.i331 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %i.yz, %bb.dz ]
  %niter1111 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %niter1111.next.1, %bb.dz ]
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.013.i.i330 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !65
  %i.yn = zext i32 %i.ym to i64
  %i.yo = mul nuw nsw i64 %i.yn, 10
  %i.yp = add nuw nsw i64 %i.yo, %.01112.i.i331   ; 2 uses
  %i.yq = trunc i64 %i.yp to i32
  store i32 %i.yq, ptr %i.yl, align 4, !tbaa !65
  %i.yr = lshr i64 %i.yp, 32
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.013.i.i330
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !65
  %i.yv = zext i32 %i.yu to i64
  %i.yw = mul nuw nsw i64 %i.yv, 10
  %i.yx = add nuw nsw i64 %i.yw, %i.yr            ; 2 uses
  %i.yy = trunc i64 %i.yx to i32
  store i32 %i.yy, ptr %i.yt, align 4, !tbaa !65
  %i.yz = lshr i64 %i.yx, 32                      ; 3 uses
  %i.za = add nuw i64 %.013.i.i330, 2             ; 2 uses
  %niter1111.next.1 = add nuw i64 %niter1111, 2   ; 2 uses
  %niter1111.ncmp.1 = icmp eq i64 %niter1111.next.1, %unroll_iter1110
  br i1 %niter1111.ncmp.1, label %._crit_edge.i.i333.unr-lcssa, label %bb.dz, !llvm.loop !379

bb.ea:                                            ; preds = %._crit_edge.i.i333
  %i.zb = add i64 %i.ya, 1                        ; 3 uses
  %i.zc = load i64, ptr %i.b, align 8, !tbaa !362
  %i.zd = icmp ugt i64 %i.zb, %i.zc
  br i1 %i.zd, label %bb.eb, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335

bb.eb:                                            ; preds = %bb.ea
  %i.ze = load ptr, ptr %5, align 8, !tbaa !41
  %i.zf = load ptr, ptr %i.ze, align 8
  invoke void %i.zf(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zb)
          to label %.noexc340 unwind label %bb.ec, !inline_history !380

.noexc340:                                        ; preds = %bb.eb
  %.pre.i.i.i337 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i338 = add i64 %.pre.i.i.i337, 1
  %.pre.i339 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335: ; preds = %.noexc340, %bb.ea
  %i.zg = phi ptr [ %i.yb, %bb.ea ], [ %.pre.i339, %.noexc340 ]
  %.pre-phi.i.i.i336 = phi i64 [ %i.zb, %bb.ea ], [ %.pre2.i.i.i338, %.noexc340 ]
  %i.zh = phi i64 [ %i.ya, %bb.ea ], [ %.pre.i.i.i337, %.noexc340 ]
  store i64 %.pre-phi.i.i.i336, ptr %i.c, align 8, !tbaa !371
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.zh
  store i32 %i.yk, ptr %i.zi, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335, %._crit_edge.i.i333, %bb.dy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.dx, !llvm.loop !385

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %._crit_edge
  %i.zk = load i64, ptr %i.c, align 8, !tbaa !371
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.zn = add nsw i32 %i.zm, %i.zl                ; 3 uses
  %i.zo = load i64, ptr %i.h, align 8, !tbaa !371
  %i.zp = trunc i64 %i.zo to i32
  %i.zq = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.zr = add nsw i32 %i.zq, %i.zp                ; 5 uses
  %i.zs = add nsw i32 %i.zn, 1
  %i.zt = icmp slt i32 %i.zs, %i.zr
  br i1 %i.zt, label %.thread433, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zu = icmp sgt i32 %i.zn, %i.zr
  br i1 %i.zu, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zv = call noundef i32 @llvm.smin.i32(i32 %i.zm, i32 %i.zq) ; 2 uses
  %.not.not.not55.i342 = icmp sgt i32 %i.zr, %i.zv
  br i1 %.not.not.not55.i342, label %.lr.ph.i344, label %bb.el

.lr.ph.i344:                                      ; preds = %bb.ef
  %i.zw = load ptr, ptr %i.a, align 8
  %i.zx = load ptr, ptr %i.f, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph.i344
  %.0.in57.i345 = phi i32 [ %i.zr, %.lr.ph.i344 ], [ %.058.i347, %bb.ek ] ; 5 uses
  %.03256.i346 = phi i64 [ 0, %.lr.ph.i344 ], [ %i.aaq, %bb.ek ] ; 2 uses
  %.058.i347 = add nsw i32 %.0.in57.i345, -1      ; 4 uses
  %.not.i.i348 = icmp sgt i32 %.0.in57.i345, %i.zm
  %i.zy = icmp sle i32 %.0.in57.i345, %i.zn
  %or.cond.i349 = and i1 %.not.i.i348, %i.zy
  br i1 %or.cond.i349, label %bb.eh, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353

bb.eh:                                            ; preds = %bb.eg
  %i.zz = sub nsw i32 %.058.i347, %i.zm
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !65
  %i.aad = zext i32 %i.aac to i64
  %i.aae = shl nuw nsw i64 %i.aad, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353: ; preds = %bb.eg, %bb.eh
  %i.aaf = phi i64 [ %i.aae, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %.not.i45.i354 = icmp sgt i32 %.0.in57.i345, %i.zq
  %13 = icmp sle i32 %.0.in57.i345, %i.zr
  %or.cond53.i355 = and i1 %.not.i45.i354, %13
  br i1 %or.cond53.i355, label %bb.ei, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356

bb.ei:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353
  %i.aag = sub nsw i32 %.058.i347, %i.zq
  %i.aah = zext i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %i.aah
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !65
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = or disjoint i64 %.03256.i346, %i.aak
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356: ; preds = %bb.ei, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353
  %i.aam = phi i64 [ %i.aal, %bb.ei ], [ %.03256.i346, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353 ] ; 3 uses
  %i.aan = icmp ugt i64 %i.aaf, %i.aam
  br i1 %i.aan, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359, label %bb.ej

bb.ej:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356
  %i.aao = sub nuw nsw i64 %i.aam, %i.aaf         ; 2 uses
  %i.aap = icmp ugt i64 %i.aao, 1
  br i1 %i.aap, label %.thread433, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aaq = shl nuw nsw i64 %i.aao, 32
  %.not.not.not.i357 = icmp sgt i32 %.058.i347, %i.zv
  br i1 %.not.not.not.i357, label %bb.eg, label %.thread.loopexit.i358, !llvm.loop !378

.thread.loopexit.i358:                            ; preds = %bb.ek
  %i.aar = icmp ne i64 %i.aam, %i.aaf
  br label %bb.el

bb.el:                                            ; preds = %bb.ef, %.thread.loopexit.i358
  %.4.i343.ph = phi i1 [ false, %bb.ef ], [ %i.aar, %.thread.loopexit.i358 ]
  %i.aas = and i32 %i.xu, 1
  %.not99 = icmp eq i32 %i.aas, 0
  %or.cond112 = or i1 %.not99, %.4.i343.ph
  br i1 %or.cond112, label %.thread433, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359: ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356, %bb.ee, %bb.el
  %i.aat = icmp eq i32 %i.xu, 9
  br i1 %i.aat, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359
  %i.aau = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !37
  %i.aaw = sext i32 %i.ud to i64
  %i.aax = getelementptr inbounds i8, ptr %i.aav, i64 %i.aaw
  store i8 58, ptr %i.aax, align 1, !tbaa !45
  br i1 %.not680, label %.critedge, label %.lr.ph479

.lr.ph479:                                        ; preds = %bb.em, %bb.eo
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %bb.eo ], [ %i.xl, %bb.em ] ; 3 uses
  %indvars.iv.next518 = add nsw i64 %indvars.iv517, -1 ; 2 uses
  %i.aay = load ptr, ptr %i.aau, align 8, !tbaa !37
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 %indvars.iv.next518 ; 2 uses
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !45
  %i.abb = icmp eq i8 %i.aba, 58
  br i1 %i.abb, label %bb.eo, label %.critedge

.critedge:                                        ; preds = %.lr.ph479, %bb.eo, %bb.em
  %i.abc = load ptr, ptr %i.aau, align 8, !tbaa !37 ; 2 uses
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !45
  %i.abe = icmp eq i8 %i.abd, 58
  br i1 %i.abe, label %bb.ep, label %.loopexit

bb.en:                                            ; preds = %._crit_edge
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eo:                                            ; preds = %.lr.ph479
  store i8 48, ptr %i.aaz, align 1, !tbaa !45
  %i.abg = load ptr, ptr %i.aau, align 8, !tbaa !37
  %i.abh = getelementptr i8, ptr %i.abg, i64 %indvars.iv517
  %i.abi = getelementptr i8, ptr %i.abh, i64 -2   ; 2 uses
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !45
  %i.abk = add i8 %i.abj, 1
  store i8 %i.abk, ptr %i.abi, align 1, !tbaa !45
  %i.abl = icmp samesign ugt i64 %indvars.iv517, 2
  br i1 %i.abl, label %.lr.ph479, label %.critedge, !llvm.loop !386

bb.ep:                                            ; preds = %.critedge
  store i8 49, ptr %i.abc, align 1, !tbaa !45
  %i.abm = load i32, ptr %4, align 4, !tbaa !65
  %i.abn = add nsw i32 %i.abm, 1
  store i32 %i.abn, ptr %4, align 4, !tbaa !65
  br label %.loopexit

bb.eq:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359
  %i.abo = add nsw i32 %i.xu, 1
  br label %.thread433

.thread433:                                       ; preds = %bb.ej, %bb.ed, %bb.eq, %bb.el
  %.073 = phi i32 [ %i.abo, %bb.eq ], [ %i.xu, %bb.el ], [ %i.xu, %bb.ed ], [ %i.xu, %bb.ej ]
  %i.abp = trunc i32 %.073 to i8
  %i.abq = add i8 %i.abp, 48
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !37
  %i.abt = sext i32 %i.ud to i64
  %i.abu = getelementptr inbounds i8, ptr %i.abs, i64 %i.abt
  store i8 %i.abq, ptr %i.abu, align 1, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread433, %bb.ep, %.critedge, %bb.dt
  %i.abv = load ptr, ptr %i.p, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.abv, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt2v96detail6bigintD2Ev.exit, label %bb.er

bb.er:                                            ; preds = %.loopexit
  %i.abw = load i64, ptr %i.q, align 8, !tbaa !362
  %i.abx = shl i64 %i.abw, 2
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.abx) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit

_ZN3fmt2v96detail6bigintD2Ev.exit:                ; preds = %.loopexit, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.aby = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i360.a = icmp eq ptr %i.aby, %i.n
  br i1 %.not.i.i.i360.a, label %_ZN3fmt2v96detail6bigintD2Ev.exit361.a, label %bb.es

bb.es:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit
  %i.abz = load i64, ptr %i.l, align 8, !tbaa !362
  %i.aca = shl i64 %i.abz, 2
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.aca) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit361.a

_ZN3fmt2v96detail6bigintD2Ev.exit361.a:           ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.acb = load ptr, ptr %i.f, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i362.a = icmp eq ptr %i.acb, %i.i
  br i1 %.not.i.i.i362.a, label %_ZN3fmt2v96detail6bigintD2Ev.exit363.a, label %bb.et

bb.et:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit361.a
  %i.acc = load i64, ptr %i.g, align 8, !tbaa !362
  %i.acd = shl i64 %i.acc, 2
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.acd) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit363.a

_ZN3fmt2v96detail6bigintD2Ev.exit363.a:           ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit361.a, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ace = load ptr, ptr %i.a, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i364.a = icmp eq ptr %i.ace, %i.d
  br i1 %.not.i.i.i364.a, label %_ZN3fmt2v96detail6bigintD2Ev.exit365.a, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit363.a
  %i.acf = load i64, ptr %i.b, align 8, !tbaa !362
  %i.acg = shl i64 %i.acf, 2
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.acg) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit365.a

_ZN3fmt2v96detail6bigintD2Ev.exit365.a:           ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit363.a, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

.body:                                            ; preds = %.loopexit705, %.loopexit.split-lp706, %.loopexit438, %.loopexit.split-lp, %bb.bp, %bb.bt, %bb.du, %bb.ec, %bb.cl, %bb.en
  %.pn101.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.kr, %bb.bp ], [ %i.xk, %bb.du ], [ %i.abf, %bb.en ], [ %i.zj, %bb.ec ], [ %i.oi, %bb.cl ], [ %i.ky, %bb.bt ], [ %lpad.loopexit, %.loopexit438 ], [ %lpad.loopexit707, %.loopexit705 ], [ %lpad.loopexit.split-lp708, %.loopexit.split-lp706 ]
  %i.ach = load ptr, ptr %i.p, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i366.a = icmp eq ptr %i.ach, %i.s
  br i1 %.not.i.i.i366.a, label %_ZN3fmt2v96detail6bigintD2Ev.exit367.a, label %bb.ev

bb.ev:                                            ; preds = %.body
  %i.aci = load i64, ptr %i.q, align 8, !tbaa !362
  %i.acj = shl i64 %i.aci, 2
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acj) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit367.a

_ZN3fmt2v96detail6bigintD2Ev.exit367.a:           ; preds = %bb.ev, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ack = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i368.a = icmp eq ptr %i.ack, %i.n
  br i1 %.not.i.i.i368.a, label %_ZN3fmt2v96detail6bigintD2Ev.exit369.a, label %bb.ew

bb.ew:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit367.a
  %i.acl = load i64, ptr %i.l, align 8, !tbaa !362
  %i.acm = shl i64 %i.acl, 2
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acm) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit369.a

_ZN3fmt2v96detail6bigintD2Ev.exit369.a:           ; preds = %bb.ew, %_ZN3fmt2v96detail6bigintD2Ev.exit367.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.acn = load ptr, ptr %i.f, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.acn, %i.i
  br i1 %.not.i.i.i370, label %_ZN3fmt2v96detail6bigintD2Ev.exit371, label %bb.ex

bb.ex:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit369.a
  %i.aco = load i64, ptr %i.g, align 8, !tbaa !362
  %i.acp = shl i64 %i.aco, 2
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acp) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit371

_ZN3fmt2v96detail6bigintD2Ev.exit371:             ; preds = %bb.ex, %_ZN3fmt2v96detail6bigintD2Ev.exit369.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.acq = load ptr, ptr %i.a, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i372 = icmp eq ptr %i.acq, %i.d
  br i1 %.not.i.i.i372, label %_ZN3fmt2v96detail6bigintD2Ev.exit373, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit371
  %i.acr = load i64, ptr %i.b, align 8, !tbaa !362
  %i.acs = shl i64 %i.acr, 2
  call void @_ZdlPvm(ptr noundef %i.acq, i64 noundef %i.acs) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit373

end_hunk_2
