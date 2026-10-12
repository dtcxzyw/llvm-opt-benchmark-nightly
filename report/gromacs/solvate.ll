Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/solvate?download=true
inline.NumInlined: 828
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZL8add_solvPKcP7t_atomsP8t_symtabPSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_7PbcTypePA3_fP14AtomPropertiesfffi:bb.a
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.ax, %bb.p ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %41) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.aw, %bb.o ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %42) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.av, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.ju

bb.u:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6assignIPA3_fvEEvT_S8_.exit91, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6assignIPA3_fvEEvT_S8_.exit, %bb.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit90, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit92
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.v:                                             ; preds = %_ZL13gmx_snew_implI7t_atomsEvPKcS2_iRPT_m.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %bb.ju

bb.w:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn77 = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %i.bb, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.ju

bb.z:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 1 dereferenceable(70) @.str.63, i8 noundef zeroext 2)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !23
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef 667, ptr noundef nonnull @.str.81, ptr noundef %i.bf) #22
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %45) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn75 = phi { ptr, i32 } [ %i.bh, %bb.ae ], [ %i.bg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %bb.ju

bb.ag:                                            ; preds = %bb.z
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !25
  %fputc = call i32 @fputc(i32 10, ptr %i.bi)     ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite62 = call i64 @fwrite(ptr nonnull @.str.83, i64 39, i64 1, ptr %i.bj) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  invoke void @_Z22makeExclusionDistancesPK7t_atomsP14AtomPropertiesff(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %46, ptr noundef %1, ptr noundef nonnull %7, float noundef %8, float noundef %9)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  invoke void @_Z22makeExclusionDistancesPK7t_atomsP14AtomPropertiesff(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %47, ptr noundef nonnull %i.ah, ptr noundef nonnull %7, float noundef %8, float noundef %9)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite63 = call i64 @fwrite(ptr nonnull @.str.84, i64 33, i64 1, ptr %i.bk) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %48, i32 noundef %5, ptr noundef nonnull %6)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.bl = invoke noundef zeroext i1 @_ZN3gmx13boxesAreEqualEPA3_KfS2_(ptr noundef nonnull %i.c, ptr noundef nonnull %6)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bl, label %bb.fi, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !18
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bq = load float, ptr %i.bp, align 8
  %i.br = fcmp une float %i.bq, 0.000000e+00
  %or.cond = select i1 %i.bo, i1 true, i1 %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.bu
  br i1 %or.cond7, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef nonnull align 1 dereferenceable(70) @.str.63, i8 noundef zeroext 2)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef 686, ptr noundef nonnull @.str.85) #22
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit192

bb.aq:                                            ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit190

.loopexit:                                        ; preds = %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ai, %bb.aj, %bb.bi, %.noexc98, %bb.dn, %bb.fk, %bb.gu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.am
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %49) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn64 = phi { ptr, i32 } [ %i.by, %bb.as ], [ %i.bx, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %.body

bb.au:                                            ; preds = %bb.al
  %i.bz = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit

.lr.ph.i:                                         ; preds = %bb.au
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 17 uses
  %.phi.trans.insert142.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 17 uses
  %scevgep397 = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %scevgep434 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %scevgep491 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.bc, %.lr.ph.i
  %.sroa.28.0.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.28.3.i, %bb.bc ] ; 2 uses
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next110.i, %bb.bc ] ; 15 uses
  %indvars.iv100.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next101.i, %bb.bc ] ; 7 uses
  %.05688.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %bb.bc ] ; 2 uses
  %.05787.i = phi i32 [ 0, %.lr.ph.i ], [ %.158.i, %bb.bc ] ; 8 uses
  %i.cd = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.oa, %bb.bc ] ; 2 uses
  %51 = trunc i64 %indvars.iv109.i to i32         ; 2 uses
  %52 = trunc i64 %indvars.iv109.i to i32
  %53 = trunc i64 %indvars.iv109.i to i32         ; 2 uses
  %i.ce = trunc i64 %indvars.iv109.i to i32
  %i.cf = trunc i64 %indvars.iv109.i to i32       ; 2 uses
  %i.cg = trunc i64 %indvars.iv109.i to i32
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv109.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !121
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23
  %i.cl = invoke noundef zeroext i1 @_Z11is_hydrogenPKc(ptr noundef %i.ck)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.av
  br i1 %i.cl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc
  %i.cm = add nsw i32 %.05688.i, 1
  %i.cn = load ptr, ptr %38, align 8, !tbaa !107
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv109.i ; 2 uses
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !18
  %i.cq = fadd <2 x float> %i.cd, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = fadd float %.sroa.28.0.i, %i.cs
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc
  %.sroa.28.1.i = phi float [ %.sroa.28.0.i, %.noexc ], [ %i.ct, %bb.aw ] ; 2 uses
  %.1.i = phi i32 [ %.05688.i, %.noexc ], [ %i.cm, %bb.aw ] ; 3 uses
  %i.cu = phi <2 x float> [ %i.cd, %.noexc ], [ %i.cq, %bb.aw ] ; 2 uses
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 5 uses
  %i.cv = load i32, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp eq i64 %indvars.iv.next110.i, %i.cw
  br i1 %i.cx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !110 ; 2 uses
  %i.cz = getelementptr inbounds nuw [36 x i8], ptr %i.cy, i64 %indvars.iv.next110.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 4, !tbaa !114
  %i.dc = getelementptr inbounds nuw [36 x i8], ptr %i.cy, i64 %indvars.iv109.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !114
  %.not.i = icmp eq i32 %i.db, %i.de
  br i1 %.not.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.df = icmp eq i32 %.1.i, 0
  br i1 %i.df, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dg = load ptr, ptr %38, align 8, !tbaa !107
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %indvars.iv109.i ; 2 uses
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.28.2.i = phi float [ %i.dk, %bb.ba ], [ %.sroa.28.1.i, %bb.az ]
  %.2.i = phi i32 [ 1, %bb.ba ], [ %.1.i, %bb.az ]
  %i.dl = phi <2 x float> [ %i.di, %bb.ba ], [ %i.cu, %bb.az ] ; 2 uses
  %i.dm = sitofp i32 %.2.i to double
  %i.dn = fdiv double 1.000000e+00, %i.dm
  %i.do = fptrunc double %i.dn to float           ; 3 uses
  %i.dp = extractelement <2 x float> %i.dl, i64 0
  %i.dq = fmul float %i.dp, %i.do                 ; 3 uses
  %i.dr = extractelement <2 x float> %i.dl, i64 1
  %i.ds = fmul float %i.dr, %i.do                 ; 3 uses
  %i.dt = fmul float %.sroa.28.2.i, %i.do         ; 3 uses
  %i.du = sext i32 %.05787.i to i64               ; 37 uses
  %.not6166.i = icmp slt i64 %indvars.iv109.i, %i.du
  %.not6073.fr.i = freeze i1 %.not6166.i
  br i1 %.not6073.fr.i, label %.split85.us.i, label %.preheader64.preheader.i

.preheader64.preheader.i:                         ; preds = %bb.bb
  %i.dv = fcmp olt float %i.dq, 0.000000e+00
  br i1 %i.dv, label %.preheader62.lr.ph.split.i, label %.preheader64.preheader..preheader63_crit_edge.i

.preheader64.preheader..preheader63_crit_edge.i:  ; preds = %.preheader64.preheader.i
  %.pre.i = load float, ptr %i.c, align 16, !tbaa !18
  br label %.preheader63.i

.preheader62.lr.ph.split.i:                       ; preds = %.preheader64.preheader.i
  %i.dw = load ptr, ptr %38, align 8, !tbaa !107  ; 8 uses
  %i.dx = mul nsw i64 %i.du, 12
  %scevgep517 = getelementptr i8, ptr %i.dw, i64 %i.dx
  %scevgep518 = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = sub i32 %52, %.05787.i
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add nsw i64 %i.du, %i.dz
  %i.eb = mul nsw i64 %i.ea, 12
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.eb
  %i.ec = sub i32 %51, %.05787.i                  ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check524 = icmp ult i32 %i.ec, 8
  %bound0520 = icmp ult ptr %scevgep517, %scevgep491
  %bound1521 = icmp ult ptr %i.c, %scevgep519
  %found.conflict522 = and i1 %bound0520, %bound1521
  %i.ef = and i64 %i.ee, 7                        ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = select i1 %i.eg, i64 8, i64 %i.ef
  %n.vec526 = sub nsw i64 %i.ee, %i.eh            ; 2 uses
  %i.ei = add nsw i64 %n.vec526, %i.du
  %broadcast.splatinsert527 = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat528 = shufflevector <8 x i64> %broadcast.splatinsert527, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction529 = add nsw <8 x i64> %broadcast.splat528, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader62.i

.split85.us.i:                                    ; preds = %._crit_edge75.2.i, %bb.bb, %.preheader63.2.i
  %i.ej = trunc nuw nsw i64 %indvars.iv.next110.i to i32
  br label %bb.bc

.preheader63.i:                                   ; preds = %._crit_edge.i, %.preheader64.preheader..preheader63_crit_edge.i
  %i.ek = phi float [ %.pre.i, %.preheader64.preheader..preheader63_crit_edge.i ], [ %i.fm, %._crit_edge.i ]
  %.lcssa68.i = phi float [ %i.dq, %.preheader64.preheader..preheader63_crit_edge.i ], [ %i.fn, %._crit_edge.i ] ; 2 uses
  %i.el = fcmp ult float %.lcssa68.i, %i.ek
  br i1 %i.el, label %._crit_edge78.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader63.i
  %i.em = load ptr, ptr %38, align 8, !tbaa !107  ; 8 uses
  %smax118.i = call i64 @llvm.smax.i64(i64 %indvars.iv109.i, i64 %i.du) ; 6 uses
  %i.en = sub i64 %smax118.i, %i.du
  %i.eo = mul nsw i64 %i.du, 12
  %scevgep486 = getelementptr i8, ptr %i.em, i64 %i.eo ; 3 uses
  %scevgep492 = getelementptr i8, ptr %i.em, i64 4
  %i.ep = mul nuw nsw i64 %smax118.i, 12
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.ep
  %i.eq = add nuw i64 %smax118.i, 1
  %i.er = add nuw i64 %smax118.i, 1
  %i.es = sub i64 %i.er, %i.du                    ; 3 uses
  %min.iters.check498 = icmp ult i64 %i.es, 25
  %mul487 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.en, i64 12) ; 2 uses
  %mul.result488 = extractvalue { i64, i1 } %mul487, 0
  %mul.overflow489 = extractvalue { i64, i1 } %mul487, 1
  %i.et = getelementptr i8, ptr %scevgep486, i64 %mul.result488
  %i.eu = icmp ult ptr %i.et, %scevgep486
  %i.ev = or i1 %i.eu, %mul.overflow489
  %bound0494 = icmp ult ptr %i.c, %scevgep493
  %bound1495 = icmp ult ptr %scevgep486, %scevgep491
  %found.conflict496 = and i1 %bound0494, %bound1495
  %i.ew = and i64 %i.es, 7                        ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = select i1 %i.ex, i64 8, i64 %i.ew
  %n.vec500 = sub i64 %i.es, %i.ey                ; 2 uses
  %i.ez = add i64 %n.vec500, %i.du
  %broadcast.splatinsert501 = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat502 = shufflevector <8 x i64> %broadcast.splatinsert501, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction503 = add nsw <8 x i64> %broadcast.splat502, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader.i

.preheader62.i:                                   ; preds = %._crit_edge.i, %.preheader62.lr.ph.split.i
  %i.fa = phi float [ %i.dq, %.preheader62.lr.ph.split.i ], [ %i.fn, %._crit_edge.i ]
  %brmerge = select i1 %min.iters.check524, i1 true, i1 %found.conflict522
  br i1 %brmerge, label %scalar.ph523.preheader, label %vector.ph525

scalar.ph523.preheader:                           ; preds = %.preheader62.i, %vector.body530
  %indvars.iv.i.ph = phi i64 [ %i.ei, %vector.body530 ], [ %i.du, %.preheader62.i ] ; 3 uses
  %i.fb = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.fc = sub i32 %indvars.iv100.i, %i.fb
  %i.fd = sub i32 %51, %i.fb
  %xtraiter = and i32 %i.fc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph523.prol.loopexit, label %scalar.ph523.prol

scalar.ph523.prol:                                ; preds = %scalar.ph523.preheader, %scalar.ph523.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph523.prol ], [ %indvars.iv.i.ph, %scalar.ph523.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph523.prol ], [ 0, %scalar.ph523.preheader ]
  %i.fe = load float, ptr %i.c, align 16, !tbaa !18
  %gep.i.prol = getelementptr [12 x i8], ptr %i.dw, i64 %indvars.iv.i.prol ; 2 uses
  %i.ff = load float, ptr %gep.i.prol, align 4, !tbaa !18
  %i.fg = fadd float %i.fe, %i.ff
  store float %i.fg, ptr %gep.i.prol, align 4, !tbaa !18
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph523.prol.loopexit, label %scalar.ph523.prol, !llvm.loop !172

scalar.ph523.prol.loopexit:                       ; preds = %scalar.ph523.prol, %scalar.ph523.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph523.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph523.prol ]
  %i.fh = icmp ult i32 %i.fd, 3
  br i1 %i.fh, label %._crit_edge.i, label %scalar.ph523

vector.ph525:                                     ; preds = %.preheader62.i
  %i.fi = load <4 x float>, ptr %i.c, align 16
  %broadcast.splat537 = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph525
  %index531 = phi i64 [ 0, %vector.ph525 ], [ %index.next538, %vector.body530 ]
  %vec.ind532 = phi <8 x i64> [ %induction529, %vector.ph525 ], [ %vec.ind.next539, %vector.body530 ] ; 2 uses
  %wide.gep533 = getelementptr [12 x i8], ptr %i.dw, <8 x i64> %vec.ind532 ; 2 uses
  %i.fj = extractelement <8 x ptr> %wide.gep533, i64 0
  %wide.vec534 = load <24 x float>, ptr %i.fj, align 4, !tbaa !18, !alias.scope !235, !noalias !236
  %strided.vec535 = shufflevector <24 x float> %wide.vec534, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.fk = fadd <8 x float> %broadcast.splat537, %strided.vec535
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fk, <8 x ptr> align 4 %wide.gep533, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !235, !noalias !236
  %index.next538 = add nuw i64 %index531, 8       ; 2 uses
  %vec.ind.next539 = add nsw <8 x i64> %vec.ind532, splat (i64 8)
  %i.fl = icmp eq i64 %index.next538, %n.vec526
  br i1 %i.fl, label %scalar.ph523.preheader, label %vector.body530, !llvm.loop !176

._crit_edge.i:                                    ; preds = %scalar.ph523, %scalar.ph523.prol.loopexit
  %i.fm = load float, ptr %i.c, align 16, !tbaa !18 ; 2 uses
  %i.fn = fadd float %i.fa, %i.fm                 ; 3 uses
  %i.fo = fcmp olt float %i.fn, 0.000000e+00
  br i1 %i.fo, label %.preheader62.i, label %.preheader63.i, !llvm.loop !177

scalar.ph523:                                     ; preds = %scalar.ph523.prol.loopexit, %scalar.ph523
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph523 ], [ %indvars.iv.i.unr, %scalar.ph523.prol.loopexit ] ; 5 uses
  %i.fp = load float, ptr %i.c, align 16, !tbaa !18
  %gep.i = getelementptr [12 x i8], ptr %i.dw, i64 %indvars.iv.i ; 2 uses
  %i.fq = load float, ptr %gep.i, align 4, !tbaa !18
  %i.fr = fadd float %i.fp, %i.fq
  store float %i.fr, ptr %gep.i, align 4, !tbaa !18
  %i.fs = load float, ptr %i.c, align 16, !tbaa !18
  %i.ft = getelementptr [12 x i8], ptr %i.dw, i64 %indvars.iv.i
  %gep.i.1 = getelementptr i8, ptr %i.ft, i64 12  ; 2 uses
  %i.fu = load float, ptr %gep.i.1, align 4, !tbaa !18
  %i.fv = fadd float %i.fs, %i.fu
  store float %i.fv, ptr %gep.i.1, align 4, !tbaa !18
  %i.fw = load float, ptr %i.c, align 16, !tbaa !18
  %i.fx = getelementptr [12 x i8], ptr %i.dw, i64 %indvars.iv.i
  %gep.i.2 = getelementptr i8, ptr %i.fx, i64 24  ; 2 uses
  %i.fy = load float, ptr %gep.i.2, align 4, !tbaa !18
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %gep.i.2, align 4, !tbaa !18
  %i.ga = load float, ptr %i.c, align 16, !tbaa !18
  %i.gb = getelementptr [12 x i8], ptr %i.dw, i64 %indvars.iv.i
  %gep.i.3 = getelementptr i8, ptr %i.gb, i64 36  ; 2 uses
  %i.gc = load float, ptr %gep.i.3, align 4, !tbaa !18
  %i.gd = fadd float %i.ga, %i.gc
  store float %i.gd, ptr %gep.i.3, align 4, !tbaa !18
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv120.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond121.not.i.3 = icmp eq i32 %indvars.iv100.i, %lftr.wideiv120.i.3
  br i1 %exitcond121.not.i.3, label %._crit_edge.i, label %scalar.ph523, !llvm.loop !178

.preheader.i:                                     ; preds = %._crit_edge75.i, %.preheader.lr.ph.i
  %i.ge = phi float [ %.lcssa68.i, %.preheader.lr.ph.i ], [ %i.gq, %._crit_edge75.i ]
  %brmerge580 = select i1 %min.iters.check498, i1 true, i1 %i.ev
  %brmerge581 = select i1 %brmerge580, i1 true, i1 %found.conflict496
  br i1 %brmerge581, label %scalar.ph497.preheader, label %vector.ph499

scalar.ph497.preheader:                           ; preds = %.preheader.i, %vector.body504
  %indvars.iv102.i.ph = phi i64 [ %i.du, %.preheader.i ], [ %i.ez, %vector.body504 ] ; 4 uses
  %i.gf = sub i64 %i.eq, %indvars.iv102.i.ph
  %i.gg = sub i64 %smax118.i, %indvars.iv102.i.ph
  %xtraiter551 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %scalar.ph497.prol.loopexit, label %scalar.ph497.prol

scalar.ph497.prol:                                ; preds = %scalar.ph497.preheader, %scalar.ph497.prol
  %indvars.iv102.i.prol = phi i64 [ %indvars.iv.next103.i.prol, %scalar.ph497.prol ], [ %indvars.iv102.i.ph, %scalar.ph497.preheader ] ; 2 uses
  %prol.iter553 = phi i64 [ %prol.iter553.next, %scalar.ph497.prol ], [ 0, %scalar.ph497.preheader ]
  %i.gh = load float, ptr %i.c, align 16, !tbaa !18
  %gep77.i.prol = getelementptr [12 x i8], ptr %i.em, i64 %indvars.iv102.i.prol ; 2 uses
  %i.gi = load float, ptr %gep77.i.prol, align 4, !tbaa !18
  %i.gj = fsub float %i.gi, %i.gh
  store float %i.gj, ptr %gep77.i.prol, align 4, !tbaa !18
  %indvars.iv.next103.i.prol = add nsw i64 %indvars.iv102.i.prol, 1 ; 2 uses
  %prol.iter553.next = add i64 %prol.iter553, 1   ; 2 uses
  %prol.iter553.cmp.not = icmp eq i64 %prol.iter553.next, %xtraiter551
  br i1 %prol.iter553.cmp.not, label %scalar.ph497.prol.loopexit, label %scalar.ph497.prol, !llvm.loop !179

scalar.ph497.prol.loopexit:                       ; preds = %scalar.ph497.prol, %scalar.ph497.preheader
  %indvars.iv102.i.unr = phi i64 [ %indvars.iv102.i.ph, %scalar.ph497.preheader ], [ %indvars.iv.next103.i.prol, %scalar.ph497.prol ]
  %i.gk = icmp ult i64 %i.gg, 3
  br i1 %i.gk, label %._crit_edge75.i, label %scalar.ph497

vector.ph499:                                     ; preds = %.preheader.i
  %i.gl = load <4 x float>, ptr %i.c, align 16
  %broadcast.splat511 = shufflevector <4 x float> %i.gl, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph499
  %index505 = phi i64 [ 0, %vector.ph499 ], [ %index.next512, %vector.body504 ]
  %vec.ind506 = phi <8 x i64> [ %induction503, %vector.ph499 ], [ %vec.ind.next513, %vector.body504 ] ; 2 uses
  %wide.gep507 = getelementptr [12 x i8], ptr %i.em, <8 x i64> %vec.ind506 ; 2 uses
  %i.gm = extractelement <8 x ptr> %wide.gep507, i64 0
  %wide.vec508 = load <24 x float>, ptr %i.gm, align 4, !tbaa !18, !alias.scope !237
  %strided.vec509 = shufflevector <24 x float> %wide.vec508, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.gn = fsub <8 x float> %strided.vec509, %broadcast.splat511
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gn, <8 x ptr> align 4 %wide.gep507, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !237
  %index.next512 = add nuw i64 %index505, 8       ; 2 uses
  %vec.ind.next513 = add nsw <8 x i64> %vec.ind506, splat (i64 8)
  %i.go = icmp eq i64 %index.next512, %n.vec500
  br i1 %i.go, label %scalar.ph497.preheader, label %vector.body504, !llvm.loop !182

._crit_edge75.i:                                  ; preds = %scalar.ph497, %scalar.ph497.prol.loopexit
  %i.gp = load float, ptr %i.c, align 16, !tbaa !18 ; 2 uses
  %i.gq = fsub float %i.ge, %i.gp                 ; 2 uses
  %i.gr = fcmp ult float %i.gq, %i.gp
  br i1 %i.gr, label %._crit_edge78.split.i, label %.preheader.i, !llvm.loop !183

scalar.ph497:                                     ; preds = %scalar.ph497.prol.loopexit, %scalar.ph497
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i.3, %scalar.ph497 ], [ %indvars.iv102.i.unr, %scalar.ph497.prol.loopexit ] ; 5 uses
  %i.gs = load float, ptr %i.c, align 16, !tbaa !18
  %gep77.i = getelementptr [12 x i8], ptr %i.em, i64 %indvars.iv102.i ; 2 uses
  %i.gt = load float, ptr %gep77.i, align 4, !tbaa !18
  %i.gu = fsub float %i.gt, %i.gs
  store float %i.gu, ptr %gep77.i, align 4, !tbaa !18
  %i.gv = load float, ptr %i.c, align 16, !tbaa !18
  %i.gw = getelementptr [12 x i8], ptr %i.em, i64 %indvars.iv102.i
  %gep77.i.1 = getelementptr i8, ptr %i.gw, i64 12 ; 2 uses
  %i.gx = load float, ptr %gep77.i.1, align 4, !tbaa !18
  %i.gy = fsub float %i.gx, %i.gv
  store float %i.gy, ptr %gep77.i.1, align 4, !tbaa !18
  %i.gz = load float, ptr %i.c, align 16, !tbaa !18
  %i.ha = getelementptr [12 x i8], ptr %i.em, i64 %indvars.iv102.i
  %gep77.i.2 = getelementptr i8, ptr %i.ha, i64 24 ; 2 uses
  %i.hb = load float, ptr %gep77.i.2, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %i.gz
  store float %i.hc, ptr %gep77.i.2, align 4, !tbaa !18
  %indvars.iv.next103.i.2 = add nsw i64 %indvars.iv102.i, 3 ; 2 uses
  %i.hd = load float, ptr %i.c, align 16, !tbaa !18
  %gep77.i.3 = getelementptr [12 x i8], ptr %i.em, i64 %indvars.iv.next103.i.2 ; 2 uses
  %i.he = load float, ptr %gep77.i.3, align 4, !tbaa !18
  %i.hf = fsub float %i.he, %i.hd
  store float %i.hf, ptr %gep77.i.3, align 4, !tbaa !18
  %indvars.iv.next103.i.3 = add nsw i64 %indvars.iv102.i, 4
  %exitcond119.not.i.3 = icmp eq i64 %indvars.iv.next103.i.2, %smax118.i
  br i1 %exitcond119.not.i.3, label %._crit_edge75.i, label %scalar.ph497, !llvm.loop !184

._crit_edge78.split.i:                            ; preds = %._crit_edge75.i, %.preheader63.i
  %i.hg = fcmp olt float %i.ds, 0.000000e+00
  br i1 %i.hg, label %.preheader62.lr.ph.split.1.i, label %._crit_edge78.split..preheader63.1_crit_edge.i

._crit_edge78.split..preheader63.1_crit_edge.i:   ; preds = %._crit_edge78.split.i
  %.pre140.i = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  br label %.preheader63.1.i

.preheader62.lr.ph.split.1.i:                     ; preds = %._crit_edge78.split.i
  %i.hh = load ptr, ptr %38, align 8, !tbaa !107  ; 2 uses
  %invariant.gep.1.i = getelementptr i8, ptr %i.hh, i64 4 ; 7 uses
  %i.hi = mul nsw i64 %i.du, 12
  %scevgep460 = getelementptr i8, ptr %invariant.gep.1.i, i64 %i.hi
  %scevgep461 = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = sub i32 %i.ce, %.05787.i
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add nsw i64 %i.du, %i.hk
  %i.hm = mul nsw i64 %i.hl, 12
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.hm
  %i.hn = sub i32 %53, %.05787.i                  ; 2 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check467 = icmp ult i32 %i.hn, 8
  %bound0463 = icmp ult ptr %scevgep460, %scevgep434
  %bound1464 = icmp ult ptr %.phi.trans.insert139.i, %scevgep462
  %found.conflict465 = and i1 %bound0463, %bound1464
  %i.hq = and i64 %i.hp, 7                        ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  %i.hs = select i1 %i.hr, i64 8, i64 %i.hq
  %n.vec469 = sub nsw i64 %i.hp, %i.hs            ; 2 uses
  %i.ht = add nsw i64 %n.vec469, %i.du
  %broadcast.splatinsert470 = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat471 = shufflevector <8 x i64> %broadcast.splatinsert470, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction472 = add nsw <8 x i64> %broadcast.splat471, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader62.1.i

.preheader62.1.i:                                 ; preds = %._crit_edge.1.i, %.preheader62.lr.ph.split.1.i
  %i.hu = phi float [ %i.ds, %.preheader62.lr.ph.split.1.i ], [ %i.iw, %._crit_edge.1.i ]
  %brmerge582 = select i1 %min.iters.check467, i1 true, i1 %found.conflict465
  br i1 %brmerge582, label %scalar.ph466.preheader, label %vector.ph468

vector.ph468:                                     ; preds = %.preheader62.1.i
  %i.hv = load <4 x float>, ptr %.phi.trans.insert139.i, align 16
  %broadcast.splat480 = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph468
  %index474 = phi i64 [ 0, %vector.ph468 ], [ %index.next481, %vector.body473 ]
  %vec.ind475 = phi <8 x i64> [ %induction472, %vector.ph468 ], [ %vec.ind.next482, %vector.body473 ] ; 2 uses
  %wide.gep476 = getelementptr [12 x i8], ptr %invariant.gep.1.i, <8 x i64> %vec.ind475 ; 2 uses
  %i.hw = extractelement <8 x ptr> %wide.gep476, i64 0
  %wide.vec477 = load <24 x float>, ptr %i.hw, align 4, !tbaa !18, !alias.scope !238, !noalias !239
  %strided.vec478 = shufflevector <24 x float> %wide.vec477, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.hx = fadd <8 x float> %broadcast.splat480, %strided.vec478
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hx, <8 x ptr> align 4 %wide.gep476, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !238, !noalias !239
  %index.next481 = add nuw i64 %index474, 8       ; 2 uses
  %vec.ind.next482 = add nsw <8 x i64> %vec.ind475, splat (i64 8)
  %i.hy = icmp eq i64 %index.next481, %n.vec469
  br i1 %i.hy, label %scalar.ph466.preheader, label %vector.body473, !llvm.loop !188

scalar.ph466.preheader:                           ; preds = %vector.body473, %.preheader62.1.i
  %indvars.iv.1.i.ph = phi i64 [ %i.du, %.preheader62.1.i ], [ %i.ht, %vector.body473 ] ; 3 uses
  %i.hz = trunc i64 %indvars.iv.1.i.ph to i32     ; 2 uses
  %i.ia = sub i32 %indvars.iv100.i, %i.hz
  %i.ib = sub i32 %53, %i.hz
  %xtraiter554 = and i32 %i.ia, 3                 ; 2 uses
  %lcmp.mod555.not = icmp eq i32 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %scalar.ph466.prol.loopexit, label %scalar.ph466.prol

scalar.ph466.prol:                                ; preds = %scalar.ph466.preheader, %scalar.ph466.prol
  %indvars.iv.1.i.prol = phi i64 [ %indvars.iv.next.1.i.prol, %scalar.ph466.prol ], [ %indvars.iv.1.i.ph, %scalar.ph466.preheader ] ; 2 uses
  %prol.iter556 = phi i32 [ %prol.iter556.next, %scalar.ph466.prol ], [ 0, %scalar.ph466.preheader ]
  %i.ic = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %gep.1.i.prol = getelementptr [12 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i.prol ; 2 uses
  %i.id = load float, ptr %gep.1.i.prol, align 4, !tbaa !18
  %i.ie = fadd float %i.ic, %i.id
  store float %i.ie, ptr %gep.1.i.prol, align 4, !tbaa !18
  %indvars.iv.next.1.i.prol = add nsw i64 %indvars.iv.1.i.prol, 1 ; 2 uses
  %prol.iter556.next = add i32 %prol.iter556, 1   ; 2 uses
  %prol.iter556.cmp.not = icmp eq i32 %prol.iter556.next, %xtraiter554
  br i1 %prol.iter556.cmp.not, label %scalar.ph466.prol.loopexit, label %scalar.ph466.prol, !llvm.loop !189

scalar.ph466.prol.loopexit:                       ; preds = %scalar.ph466.prol, %scalar.ph466.preheader
  %indvars.iv.1.i.unr = phi i64 [ %indvars.iv.1.i.ph, %scalar.ph466.preheader ], [ %indvars.iv.next.1.i.prol, %scalar.ph466.prol ]
  %i.if = icmp ult i32 %i.ib, 3
  br i1 %i.if, label %._crit_edge.1.i, label %scalar.ph466

scalar.ph466:                                     ; preds = %scalar.ph466.prol.loopexit, %scalar.ph466
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i.3, %scalar.ph466 ], [ %indvars.iv.1.i.unr, %scalar.ph466.prol.loopexit ] ; 5 uses
  %i.ig = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %gep.1.i = getelementptr [12 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i ; 2 uses
  %i.ih = load float, ptr %gep.1.i, align 4, !tbaa !18
  %i.ii = fadd float %i.ig, %i.ih
  store float %i.ii, ptr %gep.1.i, align 4, !tbaa !18
  %i.ij = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %i.ik = getelementptr [12 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i
  %gep.1.i.1 = getelementptr i8, ptr %i.ik, i64 12 ; 2 uses
  %i.il = load float, ptr %gep.1.i.1, align 4, !tbaa !18
  %i.im = fadd float %i.ij, %i.il
  store float %i.im, ptr %gep.1.i.1, align 4, !tbaa !18
  %i.in = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %i.io = getelementptr [12 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i
  %gep.1.i.2 = getelementptr i8, ptr %i.io, i64 24 ; 2 uses
  %i.ip = load float, ptr %gep.1.i.2, align 4, !tbaa !18
  %i.iq = fadd float %i.in, %i.ip
  store float %i.iq, ptr %gep.1.i.2, align 4, !tbaa !18
  %i.ir = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %i.is = getelementptr [12 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i
  %gep.1.i.3 = getelementptr i8, ptr %i.is, i64 36 ; 2 uses
  %i.it = load float, ptr %gep.1.i.3, align 4, !tbaa !18
  %i.iu = fadd float %i.ir, %i.it
  store float %i.iu, ptr %gep.1.i.3, align 4, !tbaa !18
  %indvars.iv.next.1.i.3 = add nsw i64 %indvars.iv.1.i, 4 ; 2 uses
  %lftr.wideiv116.i.3 = trunc i64 %indvars.iv.next.1.i.3 to i32
  %exitcond117.not.i.3 = icmp eq i32 %indvars.iv100.i, %lftr.wideiv116.i.3
  br i1 %exitcond117.not.i.3, label %._crit_edge.1.i, label %scalar.ph466, !llvm.loop !190

._crit_edge.1.i:                                  ; preds = %scalar.ph466, %scalar.ph466.prol.loopexit
  %i.iv = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18 ; 2 uses
  %i.iw = fadd float %i.hu, %i.iv                 ; 3 uses
  %i.ix = fcmp olt float %i.iw, 0.000000e+00
  br i1 %i.ix, label %.preheader62.1.i, label %.preheader63.1.i, !llvm.loop !177

.preheader63.1.i:                                 ; preds = %._crit_edge.1.i, %._crit_edge78.split..preheader63.1_crit_edge.i
  %i.iy = phi float [ %.pre140.i, %._crit_edge78.split..preheader63.1_crit_edge.i ], [ %i.iv, %._crit_edge.1.i ]
  %.lcssa68.1.i = phi float [ %i.ds, %._crit_edge78.split..preheader63.1_crit_edge.i ], [ %i.iw, %._crit_edge.1.i ] ; 2 uses
  %i.iz = fcmp ult float %.lcssa68.1.i, %i.iy
  br i1 %i.iz, label %._crit_edge78.split.1.i, label %.preheader.lr.ph.1.i

.preheader.lr.ph.1.i:                             ; preds = %.preheader63.1.i
  %i.ja = load ptr, ptr %38, align 8, !tbaa !107  ; 2 uses
  %invariant.gep76.1.i = getelementptr i8, ptr %i.ja, i64 4 ; 7 uses
  %smax114.i = call i64 @llvm.smax.i64(i64 %indvars.iv109.i, i64 %i.du) ; 6 uses
  %i.jb = sub i64 %smax114.i, %i.du
  %i.jc = mul nsw i64 %i.du, 12
  %scevgep429 = getelementptr i8, ptr %invariant.gep76.1.i, i64 %i.jc ; 3 uses
  %scevgep435 = getelementptr i8, ptr %i.ja, i64 8
  %i.jd = mul nuw nsw i64 %smax114.i, 12
  %scevgep436 = getelementptr i8, ptr %scevgep435, i64 %i.jd
  %i.je = add nuw i64 %smax114.i, 1
  %i.jf = add nuw i64 %smax114.i, 1
  %i.jg = sub i64 %i.jf, %i.du                    ; 3 uses
  %min.iters.check441 = icmp ult i64 %i.jg, 25
  %mul430 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jb, i64 12) ; 2 uses
  %mul.result431 = extractvalue { i64, i1 } %mul430, 0
  %mul.overflow432 = extractvalue { i64, i1 } %mul430, 1
  %i.jh = getelementptr i8, ptr %scevgep429, i64 %mul.result431
  %i.ji = icmp ult ptr %i.jh, %scevgep429
  %i.jj = or i1 %i.ji, %mul.overflow432
  %bound0437 = icmp ult ptr %.phi.trans.insert139.i, %scevgep436
  %bound1438 = icmp ult ptr %scevgep429, %scevgep434
  %found.conflict439 = and i1 %bound0437, %bound1438
  %i.jk = and i64 %i.jg, 7                        ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  %i.jm = select i1 %i.jl, i64 8, i64 %i.jk
  %n.vec443 = sub i64 %i.jg, %i.jm                ; 2 uses
  %i.jn = add i64 %n.vec443, %i.du
  %broadcast.splatinsert444 = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat445 = shufflevector <8 x i64> %broadcast.splatinsert444, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction446 = add nsw <8 x i64> %broadcast.splat445, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %._crit_edge75.1.i, %.preheader.lr.ph.1.i
  %i.jo = phi float [ %.lcssa68.1.i, %.preheader.lr.ph.1.i ], [ %i.ko, %._crit_edge75.1.i ]
  %brmerge583 = select i1 %min.iters.check441, i1 true, i1 %i.jj
  %brmerge584 = select i1 %brmerge583, i1 true, i1 %found.conflict439
  br i1 %brmerge584, label %scalar.ph440.preheader, label %vector.ph442

vector.ph442:                                     ; preds = %.preheader.1.i
  %i.jp = load <4 x float>, ptr %.phi.trans.insert139.i, align 16
  %broadcast.splat454 = shufflevector <4 x float> %i.jp, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph442
  %index448 = phi i64 [ 0, %vector.ph442 ], [ %index.next455, %vector.body447 ]
  %vec.ind449 = phi <8 x i64> [ %induction446, %vector.ph442 ], [ %vec.ind.next456, %vector.body447 ] ; 2 uses
  %wide.gep450 = getelementptr [12 x i8], ptr %invariant.gep76.1.i, <8 x i64> %vec.ind449 ; 2 uses
  %i.jq = extractelement <8 x ptr> %wide.gep450, i64 0
  %wide.vec451 = load <24 x float>, ptr %i.jq, align 4, !tbaa !18, !alias.scope !240
  %strided.vec452 = shufflevector <24 x float> %wide.vec451, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.jr = fsub <8 x float> %strided.vec452, %broadcast.splat454
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jr, <8 x ptr> align 4 %wide.gep450, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !240
  %index.next455 = add nuw i64 %index448, 8       ; 2 uses
  %vec.ind.next456 = add nsw <8 x i64> %vec.ind449, splat (i64 8)
  %i.js = icmp eq i64 %index.next455, %n.vec443
  br i1 %i.js, label %scalar.ph440.preheader, label %vector.body447, !llvm.loop !193

scalar.ph440.preheader:                           ; preds = %vector.body447, %.preheader.1.i
  %indvars.iv102.1.i.ph = phi i64 [ %i.du, %.preheader.1.i ], [ %i.jn, %vector.body447 ] ; 4 uses
  %i.jt = sub i64 %i.je, %indvars.iv102.1.i.ph
  %i.ju = sub i64 %smax114.i, %indvars.iv102.1.i.ph
  %xtraiter557 = and i64 %i.jt, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %scalar.ph440.prol.loopexit, label %scalar.ph440.prol

scalar.ph440.prol:                                ; preds = %scalar.ph440.preheader, %scalar.ph440.prol
  %indvars.iv102.1.i.prol = phi i64 [ %indvars.iv.next103.1.i.prol, %scalar.ph440.prol ], [ %indvars.iv102.1.i.ph, %scalar.ph440.preheader ] ; 2 uses
  %prol.iter559 = phi i64 [ %prol.iter559.next, %scalar.ph440.prol ], [ 0, %scalar.ph440.preheader ]
  %i.jv = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %gep77.1.i.prol = getelementptr [12 x i8], ptr %invariant.gep76.1.i, i64 %indvars.iv102.1.i.prol ; 2 uses
  %i.jw = load float, ptr %gep77.1.i.prol, align 4, !tbaa !18
  %i.jx = fsub float %i.jw, %i.jv
  store float %i.jx, ptr %gep77.1.i.prol, align 4, !tbaa !18
  %indvars.iv.next103.1.i.prol = add nsw i64 %indvars.iv102.1.i.prol, 1 ; 2 uses
  %prol.iter559.next = add i64 %prol.iter559, 1   ; 2 uses
  %prol.iter559.cmp.not = icmp eq i64 %prol.iter559.next, %xtraiter557
  br i1 %prol.iter559.cmp.not, label %scalar.ph440.prol.loopexit, label %scalar.ph440.prol, !llvm.loop !194

scalar.ph440.prol.loopexit:                       ; preds = %scalar.ph440.prol, %scalar.ph440.preheader
  %indvars.iv102.1.i.unr = phi i64 [ %indvars.iv102.1.i.ph, %scalar.ph440.preheader ], [ %indvars.iv.next103.1.i.prol, %scalar.ph440.prol ]
  %i.jy = icmp ult i64 %i.ju, 3
  br i1 %i.jy, label %._crit_edge75.1.i, label %scalar.ph440

scalar.ph440:                                     ; preds = %scalar.ph440.prol.loopexit, %scalar.ph440
  %indvars.iv102.1.i = phi i64 [ %indvars.iv.next103.1.i.3, %scalar.ph440 ], [ %indvars.iv102.1.i.unr, %scalar.ph440.prol.loopexit ] ; 5 uses
  %i.jz = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %gep77.1.i = getelementptr [12 x i8], ptr %invariant.gep76.1.i, i64 %indvars.iv102.1.i ; 2 uses
  %i.ka = load float, ptr %gep77.1.i, align 4, !tbaa !18
  %i.kb = fsub float %i.ka, %i.jz
  store float %i.kb, ptr %gep77.1.i, align 4, !tbaa !18
  %i.kc = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %i.kd = getelementptr [12 x i8], ptr %invariant.gep76.1.i, i64 %indvars.iv102.1.i
  %gep77.1.i.1 = getelementptr i8, ptr %i.kd, i64 12 ; 2 uses
  %i.ke = load float, ptr %gep77.1.i.1, align 4, !tbaa !18
  %i.kf = fsub float %i.ke, %i.kc
  store float %i.kf, ptr %gep77.1.i.1, align 4, !tbaa !18
  %i.kg = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %i.kh = getelementptr [12 x i8], ptr %invariant.gep76.1.i, i64 %indvars.iv102.1.i
  %gep77.1.i.2 = getelementptr i8, ptr %i.kh, i64 24 ; 2 uses
  %i.ki = load float, ptr %gep77.1.i.2, align 4, !tbaa !18
  %i.kj = fsub float %i.ki, %i.kg
  store float %i.kj, ptr %gep77.1.i.2, align 4, !tbaa !18
  %indvars.iv.next103.1.i.2 = add nsw i64 %indvars.iv102.1.i, 3 ; 2 uses
  %i.kk = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18
  %gep77.1.i.3 = getelementptr [12 x i8], ptr %invariant.gep76.1.i, i64 %indvars.iv.next103.1.i.2 ; 2 uses
  %i.kl = load float, ptr %gep77.1.i.3, align 4, !tbaa !18
  %i.km = fsub float %i.kl, %i.kk
  store float %i.km, ptr %gep77.1.i.3, align 4, !tbaa !18
  %indvars.iv.next103.1.i.3 = add nsw i64 %indvars.iv102.1.i, 4
  %exitcond115.not.i.3 = icmp eq i64 %indvars.iv.next103.1.i.2, %smax114.i
  br i1 %exitcond115.not.i.3, label %._crit_edge75.1.i, label %scalar.ph440, !llvm.loop !195

._crit_edge75.1.i:                                ; preds = %scalar.ph440, %scalar.ph440.prol.loopexit
  %i.kn = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !18 ; 2 uses
  %i.ko = fsub float %i.jo, %i.kn                 ; 2 uses
  %i.kp = fcmp ult float %i.ko, %i.kn
  br i1 %i.kp, label %._crit_edge78.split.1.i, label %.preheader.1.i, !llvm.loop !183

._crit_edge78.split.1.i:                          ; preds = %._crit_edge75.1.i, %.preheader63.1.i
  %i.kq = fcmp olt float %i.dt, 0.000000e+00
  br i1 %i.kq, label %.preheader62.lr.ph.split.2.i, label %._crit_edge78.split.1..preheader63.2_crit_edge.i

._crit_edge78.split.1..preheader63.2_crit_edge.i: ; preds = %._crit_edge78.split.1.i
  %.pre143.i = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  br label %.preheader63.2.i

.preheader62.lr.ph.split.2.i:                     ; preds = %._crit_edge78.split.1.i
  %i.kr = load ptr, ptr %38, align 8, !tbaa !107  ; 2 uses
  %invariant.gep.2.i = getelementptr i8, ptr %i.kr, i64 8 ; 7 uses
  %i.ks = mul nsw i64 %i.du, 12
  %scevgep403 = getelementptr i8, ptr %invariant.gep.2.i, i64 %i.ks
  %scevgep404 = getelementptr i8, ptr %i.kr, i64 12
  %i.kt = sub i32 %i.cg, %.05787.i
  %i.ku = zext i32 %i.kt to i64
  %i.kv = add nsw i64 %i.du, %i.ku
  %i.kw = mul nsw i64 %i.kv, 12
  %scevgep405 = getelementptr i8, ptr %scevgep404, i64 %i.kw
  %i.kx = sub i32 %i.cf, %.05787.i                ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = add nuw nsw i64 %i.ky, 1                ; 2 uses
  %min.iters.check410 = icmp ult i32 %i.kx, 8
  %bound0406 = icmp ult ptr %scevgep403, %scevgep397
  %bound1407 = icmp ult ptr %.phi.trans.insert142.i, %scevgep405
  %found.conflict408 = and i1 %bound0406, %bound1407
  %i.la = and i64 %i.kz, 7                        ; 2 uses
  %i.lb = icmp eq i64 %i.la, 0
  %i.lc = select i1 %i.lb, i64 8, i64 %i.la
  %n.vec412 = sub nsw i64 %i.kz, %i.lc            ; 2 uses
  %i.ld = add nsw i64 %n.vec412, %i.du
  %broadcast.splatinsert413 = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat414 = shufflevector <8 x i64> %broadcast.splatinsert413, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction415 = add nsw <8 x i64> %broadcast.splat414, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader62.2.i

.preheader62.2.i:                                 ; preds = %._crit_edge.2.i, %.preheader62.lr.ph.split.2.i
  %i.le = phi float [ %i.dt, %.preheader62.lr.ph.split.2.i ], [ %i.mg, %._crit_edge.2.i ]
  %brmerge585 = select i1 %min.iters.check410, i1 true, i1 %found.conflict408
  br i1 %brmerge585, label %scalar.ph409.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %.preheader62.2.i
  %i.lf = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18, !alias.scope !241
  %broadcast.splatinsert422 = insertelement <8 x float> poison, float %i.lf, i64 0
  %broadcast.splat423 = shufflevector <8 x float> %broadcast.splatinsert422, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph411
  %index417 = phi i64 [ 0, %vector.ph411 ], [ %index.next424, %vector.body416 ]
  %vec.ind418 = phi <8 x i64> [ %induction415, %vector.ph411 ], [ %vec.ind.next425, %vector.body416 ] ; 2 uses
  %wide.gep419 = getelementptr [12 x i8], ptr %invariant.gep.2.i, <8 x i64> %vec.ind418 ; 2 uses
  %i.lg = extractelement <8 x ptr> %wide.gep419, i64 0
  %wide.vec420 = load <24 x float>, ptr %i.lg, align 4, !tbaa !18, !alias.scope !242, !noalias !241
  %strided.vec421 = shufflevector <24 x float> %wide.vec420, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.lh = fadd <8 x float> %broadcast.splat423, %strided.vec421
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lh, <8 x ptr> align 4 %wide.gep419, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !242, !noalias !241
  %index.next424 = add nuw i64 %index417, 8       ; 2 uses
  %vec.ind.next425 = add nsw <8 x i64> %vec.ind418, splat (i64 8)
  %i.li = icmp eq i64 %index.next424, %n.vec412
  br i1 %i.li, label %scalar.ph409.preheader, label %vector.body416, !llvm.loop !199

scalar.ph409.preheader:                           ; preds = %vector.body416, %.preheader62.2.i
  %indvars.iv.2.i.ph = phi i64 [ %i.du, %.preheader62.2.i ], [ %i.ld, %vector.body416 ] ; 3 uses
  %i.lj = trunc i64 %indvars.iv.2.i.ph to i32     ; 2 uses
  %i.lk = sub i32 %indvars.iv100.i, %i.lj
  %i.ll = sub i32 %i.cf, %i.lj
  %xtraiter560 = and i32 %i.lk, 3                 ; 2 uses
  %lcmp.mod561.not = icmp eq i32 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %scalar.ph409.prol.loopexit, label %scalar.ph409.prol

scalar.ph409.prol:                                ; preds = %scalar.ph409.preheader, %scalar.ph409.prol
  %indvars.iv.2.i.prol = phi i64 [ %indvars.iv.next.2.i.prol, %scalar.ph409.prol ], [ %indvars.iv.2.i.ph, %scalar.ph409.preheader ] ; 2 uses
  %prol.iter562 = phi i32 [ %prol.iter562.next, %scalar.ph409.prol ], [ 0, %scalar.ph409.preheader ]
  %i.lm = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep.2.i.prol = getelementptr [12 x i8], ptr %invariant.gep.2.i, i64 %indvars.iv.2.i.prol ; 2 uses
  %i.ln = load float, ptr %gep.2.i.prol, align 4, !tbaa !18
  %i.lo = fadd float %i.lm, %i.ln
  store float %i.lo, ptr %gep.2.i.prol, align 4, !tbaa !18
  %indvars.iv.next.2.i.prol = add nsw i64 %indvars.iv.2.i.prol, 1 ; 2 uses
  %prol.iter562.next = add i32 %prol.iter562, 1   ; 2 uses
  %prol.iter562.cmp.not = icmp eq i32 %prol.iter562.next, %xtraiter560
  br i1 %prol.iter562.cmp.not, label %scalar.ph409.prol.loopexit, label %scalar.ph409.prol, !llvm.loop !200

scalar.ph409.prol.loopexit:                       ; preds = %scalar.ph409.prol, %scalar.ph409.preheader
  %indvars.iv.2.i.unr = phi i64 [ %indvars.iv.2.i.ph, %scalar.ph409.preheader ], [ %indvars.iv.next.2.i.prol, %scalar.ph409.prol ]
  %i.lp = icmp ult i32 %i.ll, 3
  br i1 %i.lp, label %._crit_edge.2.i, label %scalar.ph409

scalar.ph409:                                     ; preds = %scalar.ph409.prol.loopexit, %scalar.ph409
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i.3, %scalar.ph409 ], [ %indvars.iv.2.i.unr, %scalar.ph409.prol.loopexit ] ; 5 uses
  %i.lq = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep.2.i = getelementptr [12 x i8], ptr %invariant.gep.2.i, i64 %indvars.iv.2.i ; 2 uses
  %i.lr = load float, ptr %gep.2.i, align 4, !tbaa !18
  %i.ls = fadd float %i.lq, %i.lr
  store float %i.ls, ptr %gep.2.i, align 4, !tbaa !18
  %i.lt = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.lu = getelementptr [12 x i8], ptr %invariant.gep.2.i, i64 %indvars.iv.2.i
  %gep.2.i.1 = getelementptr i8, ptr %i.lu, i64 12 ; 2 uses
  %i.lv = load float, ptr %gep.2.i.1, align 4, !tbaa !18
  %i.lw = fadd float %i.lt, %i.lv
  store float %i.lw, ptr %gep.2.i.1, align 4, !tbaa !18
  %i.lx = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.ly = getelementptr [12 x i8], ptr %invariant.gep.2.i, i64 %indvars.iv.2.i
  %gep.2.i.2 = getelementptr i8, ptr %i.ly, i64 24 ; 2 uses
  %i.lz = load float, ptr %gep.2.i.2, align 4, !tbaa !18
  %i.ma = fadd float %i.lx, %i.lz
  store float %i.ma, ptr %gep.2.i.2, align 4, !tbaa !18
  %i.mb = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.mc = getelementptr [12 x i8], ptr %invariant.gep.2.i, i64 %indvars.iv.2.i
  %gep.2.i.3 = getelementptr i8, ptr %i.mc, i64 36 ; 2 uses
  %i.md = load float, ptr %gep.2.i.3, align 4, !tbaa !18
  %i.me = fadd float %i.mb, %i.md
  store float %i.me, ptr %gep.2.i.3, align 4, !tbaa !18
  %indvars.iv.next.2.i.3 = add nsw i64 %indvars.iv.2.i, 4 ; 2 uses
  %lftr.wideiv112.i.3 = trunc i64 %indvars.iv.next.2.i.3 to i32
  %exitcond113.not.i.3 = icmp eq i32 %indvars.iv100.i, %lftr.wideiv112.i.3
  br i1 %exitcond113.not.i.3, label %._crit_edge.2.i, label %scalar.ph409, !llvm.loop !201

._crit_edge.2.i:                                  ; preds = %scalar.ph409, %scalar.ph409.prol.loopexit
  %i.mf = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18 ; 2 uses
  %i.mg = fadd float %i.le, %i.mf                 ; 3 uses
  %i.mh = fcmp olt float %i.mg, 0.000000e+00
  br i1 %i.mh, label %.preheader62.2.i, label %.preheader63.2.i, !llvm.loop !177

.preheader63.2.i:                                 ; preds = %._crit_edge.2.i, %._crit_edge78.split.1..preheader63.2_crit_edge.i
  %i.mi = phi float [ %.pre143.i, %._crit_edge78.split.1..preheader63.2_crit_edge.i ], [ %i.mf, %._crit_edge.2.i ]
  %.lcssa68.2.i = phi float [ %i.dt, %._crit_edge78.split.1..preheader63.2_crit_edge.i ], [ %i.mg, %._crit_edge.2.i ] ; 2 uses
  %i.mj = fcmp ult float %.lcssa68.2.i, %i.mi
  br i1 %i.mj, label %.split85.us.i, label %.preheader.lr.ph.2.i

.preheader.lr.ph.2.i:                             ; preds = %.preheader63.2.i
  %i.mk = load ptr, ptr %38, align 8, !tbaa !107  ; 2 uses
  %invariant.gep76.2.i = getelementptr i8, ptr %i.mk, i64 8 ; 7 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %indvars.iv109.i, i64 %i.du) ; 6 uses
  %i.ml = sub i64 %smax.i, %i.du
  %i.mm = mul nsw i64 %i.du, 12
  %scevgep = getelementptr i8, ptr %invariant.gep76.2.i, i64 %i.mm ; 3 uses
  %scevgep398 = getelementptr i8, ptr %i.mk, i64 12
  %i.mn = mul nuw nsw i64 %smax.i, 12
  %scevgep399 = getelementptr i8, ptr %scevgep398, i64 %i.mn
  %i.mo = add nuw i64 %smax.i, 1
  %i.mp = add nuw i64 %smax.i, 1
  %i.mq = sub i64 %i.mp, %i.du                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.mq, 25
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ml, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.mr = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ms = icmp ult ptr %i.mr, %scevgep
  %i.mt = or i1 %i.ms, %mul.overflow
  %bound0 = icmp ult ptr %.phi.trans.insert142.i, %scevgep399
  %bound1 = icmp ult ptr %scevgep, %scevgep397
  %found.conflict = and i1 %bound0, %bound1
  %i.mu = and i64 %i.mq, 7                        ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 8, i64 %i.mu
  %n.vec = sub i64 %i.mq, %i.mw                   ; 2 uses
  %i.mx = add i64 %n.vec, %i.du
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %._crit_edge75.2.i, %.preheader.lr.ph.2.i
  %i.my = phi float [ %.lcssa68.2.i, %.preheader.lr.ph.2.i ], [ %i.ny, %._crit_edge75.2.i ]
  %brmerge586 = select i1 %min.iters.check, i1 true, i1 %i.mt
  %brmerge587 = select i1 %brmerge586, i1 true, i1 %found.conflict
  br i1 %brmerge587, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.2.i
  %i.mz = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18, !alias.scope !243, !noalias !244
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %i.mz, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr [12 x i8], ptr %invariant.gep76.2.i, <8 x i64> %vec.ind ; 2 uses
  %i.na = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.vec = load <24 x float>, ptr %i.na, align 4, !tbaa !18, !alias.scope !244
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.nb = fsub <8 x float> %strided.vec, %broadcast.splat401
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nb, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !244
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !205

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.2.i
  %indvars.iv102.2.i.ph = phi i64 [ %i.du, %.preheader.2.i ], [ %i.mx, %vector.body ] ; 4 uses
  %i.nd = sub i64 %i.mo, %indvars.iv102.2.i.ph
  %i.ne = sub i64 %smax.i, %indvars.iv102.2.i.ph
  %xtraiter563 = and i64 %i.nd, 3                 ; 2 uses
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv102.2.i.prol = phi i64 [ %indvars.iv.next103.2.i.prol, %scalar.ph.prol ], [ %indvars.iv102.2.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter565 = phi i64 [ %prol.iter565.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nf = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i.prol = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i.prol ; 2 uses
  %i.ng = load float, ptr %gep77.2.i.prol, align 4, !tbaa !18
  %i.nh = fsub float %i.ng, %i.nf
  store float %i.nh, ptr %gep77.2.i.prol, align 4, !tbaa !18
  %indvars.iv.next103.2.i.prol = add nsw i64 %indvars.iv102.2.i.prol, 1 ; 2 uses
  %prol.iter565.next = add i64 %prol.iter565, 1   ; 2 uses
  %prol.iter565.cmp.not = icmp eq i64 %prol.iter565.next, %xtraiter563
  br i1 %prol.iter565.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !206

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv102.2.i.unr = phi i64 [ %indvars.iv102.2.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next103.2.i.prol, %scalar.ph.prol ]
  %i.ni = icmp ult i64 %i.ne, 3
  br i1 %i.ni, label %._crit_edge75.2.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv102.2.i = phi i64 [ %indvars.iv.next103.2.i.3, %scalar.ph ], [ %indvars.iv102.2.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nj = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i ; 2 uses
  %i.nk = load float, ptr %gep77.2.i, align 4, !tbaa !18
  %i.nl = fsub float %i.nk, %i.nj
  store float %i.nl, ptr %gep77.2.i, align 4, !tbaa !18
  %i.nm = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.nn = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i
  %gep77.2.i.1 = getelementptr i8, ptr %i.nn, i64 12 ; 2 uses
  %i.no = load float, ptr %gep77.2.i.1, align 4, !tbaa !18
  %i.np = fsub float %i.no, %i.nm
  store float %i.np, ptr %gep77.2.i.1, align 4, !tbaa !18
  %i.nq = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.nr = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i
  %gep77.2.i.2 = getelementptr i8, ptr %i.nr, i64 24 ; 2 uses
  %i.ns = load float, ptr %gep77.2.i.2, align 4, !tbaa !18
  %i.nt = fsub float %i.ns, %i.nq
  store float %i.nt, ptr %gep77.2.i.2, align 4, !tbaa !18
  %indvars.iv.next103.2.i.2 = add nsw i64 %indvars.iv102.2.i, 3 ; 2 uses
  %i.nu = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i.3 = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv.next103.2.i.2 ; 2 uses
  %i.nv = load float, ptr %gep77.2.i.3, align 4, !tbaa !18
  %i.nw = fsub float %i.nv, %i.nu
  store float %i.nw, ptr %gep77.2.i.3, align 4, !tbaa !18
  %indvars.iv.next103.2.i.3 = add nsw i64 %indvars.iv102.2.i, 4
  %exitcond111.not.i.3 = icmp eq i64 %indvars.iv.next103.2.i.2, %smax.i
  br i1 %exitcond111.not.i.3, label %._crit_edge75.2.i, label %scalar.ph, !llvm.loop !207

._crit_edge75.2.i:                                ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.nx = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18 ; 2 uses
  %i.ny = fsub float %i.my, %i.nx                 ; 2 uses
  %i.nz = fcmp ult float %i.ny, %i.nx
  br i1 %i.nz, label %.split85.us.i, label %.preheader.2.i, !llvm.loop !183

bb.bc:                                            ; preds = %.split85.us.i, %bb.ay
  %.sroa.28.3.i = phi float [ 0.000000e+00, %.split85.us.i ], [ %.sroa.28.1.i, %bb.ay ]
  %.158.i = phi i32 [ %i.ej, %.split85.us.i ], [ %.05787.i, %bb.ay ]
  %.3.i = phi i32 [ 0, %.split85.us.i ], [ %.1.i, %bb.ay ]
  %i.oa = phi <2 x float> [ zeroinitializer, %.split85.us.i ], [ %i.cu, %bb.ay ]
  %i.ob = sext i32 %i.cv to i64
  %i.oc = icmp slt i64 %indvars.iv.next110.i, %i.ob
  %indvars.iv.next101.i = add nuw i32 %indvars.iv100.i, 1
  br i1 %i.oc, label %bb.av, label %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit, !llvm.loop !208

_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit: ; preds = %bb.bc, %bb.au
  %i.od = load float, ptr %i.c, align 16, !tbaa !18
  %i.oe = load float, ptr %6, align 4, !tbaa !18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit
end_hunk_0
