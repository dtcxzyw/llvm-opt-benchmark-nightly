Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/solvate?download=true
inline.NumInlined: 828
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL8add_solvPKcP7t_atomsP8t_symtabPSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_7PbcTypePA3_fP14AtomPropertiesfffi:bb.a
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.ay, %bb.p ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %41) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ax, %bb.o ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %42) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.aw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.js

bb.u:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6assignIPA3_fvEEvT_S8_.exit88, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6assignIPA3_fvEEvT_S8_.exit, %bb.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit87, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit89
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.v:                                             ; preds = %_ZL13gmx_snew_implI7t_atomsEvPKcS2_iRPT_m.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %bb.js

bb.w:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn74 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.bc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.js

bb.z:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 1 dereferenceable(70) @.str.63, i8 noundef zeroext 2)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !35
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef 667, ptr noundef nonnull @.str.81, ptr noundef %i.bg) #23
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %45) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn72 = phi { ptr, i32 } [ %i.bi, %bb.ae ], [ %i.bh, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.js

bb.ag:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !36
  %fputc = call i32 @fputc(i32 10, ptr %i.bj)     ; 0 uses
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.bl = call i64 @fwrite(ptr nonnull @.str.83, i64 39, i64 1, ptr %i.bk) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  invoke void @_Z22makeExclusionDistancesPK7t_atomsP14AtomPropertiesff(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %46, ptr noundef %1, ptr noundef nonnull %7, float noundef %8, float noundef %9)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  invoke void @_Z22makeExclusionDistancesPK7t_atomsP14AtomPropertiesff(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %47, ptr noundef nonnull %i.ai, ptr noundef nonnull %7, float noundef %8, float noundef %9)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.bn = call i64 @fwrite(ptr nonnull @.str.84, i64 33, i64 1, ptr %i.bm) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %48, i32 noundef %5, ptr noundef nonnull %6)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.bo = invoke noundef zeroext i1 @_ZN3gmx13boxesAreEqualEPA3_KfS2_(ptr noundef nonnull %i.c, ptr noundef nonnull %6)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bo, label %bb.fg, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !23
  %i.br = fcmp une float %i.bq, 0.000000e+00
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  %or.cond = select i1 %i.br, i1 true, i1 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.bx
  br i1 %or.cond7, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef nonnull align 1 dereferenceable(70) @.str.63, i8 noundef zeroext 2)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef 686, ptr noundef nonnull @.str.85) #23
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.ag
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit188

bb.aq:                                            ; preds = %bb.ah
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit186

.loopexit:                                        ; preds = %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ai, %bb.aj, %bb.bi, %.noexc95, %bb.dk, %bb.fi, %bb.gs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.am
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %49) #22
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn61 = phi { ptr, i32 } [ %i.cb, %bb.as ], [ %i.ca, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %.body

bb.au:                                            ; preds = %bb.al
  %i.cc = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i, label %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit

.lr.ph.i:                                         ; preds = %bb.au
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 17 uses
  %.phi.trans.insert142.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 17 uses
  %scevgep388 = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %scevgep423 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %scevgep480 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.bc, %.lr.ph.i
  %.sroa.28.0.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.28.3.i, %bb.bc ] ; 2 uses
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next110.i, %bb.bc ] ; 15 uses
  %indvars.iv100.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next101.i, %bb.bc ] ; 7 uses
  %.05688.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %bb.bc ] ; 2 uses
  %.05787.i = phi i32 [ 0, %.lr.ph.i ], [ %.158.i, %bb.bc ] ; 8 uses
  %i.cg = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.nu, %bb.bc ] ; 2 uses
  %i.ch = trunc i64 %indvars.iv109.i to i32       ; 2 uses
  %i.ci = trunc i64 %indvars.iv109.i to i32
  %i.cj = trunc i64 %indvars.iv109.i to i32       ; 2 uses
  %i.ck = trunc i64 %indvars.iv109.i to i32
  %i.cl = trunc i64 %indvars.iv109.i to i32       ; 2 uses
  %i.cm = trunc i64 %indvars.iv109.i to i32
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !133
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv109.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !134
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.cr = invoke noundef zeroext i1 @_Z11is_hydrogenPKc(ptr noundef %i.cq)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.av
  br i1 %i.cr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc
  %i.cs = add nsw i32 %.05688.i, 1
  %i.ct = load ptr, ptr %38, align 8, !tbaa !118
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %indvars.iv109.i ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4, !tbaa !23
  %i.cw = fadd <2 x float> %i.cg, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  %i.cz = fadd float %.sroa.28.0.i, %i.cy
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc
  %.sroa.28.1.i = phi float [ %.sroa.28.0.i, %.noexc ], [ %i.cz, %bb.aw ] ; 2 uses
  %.1.i = phi i32 [ %.05688.i, %.noexc ], [ %i.cs, %bb.aw ] ; 3 uses
  %i.da = phi <2 x float> [ %i.cg, %.noexc ], [ %i.cw, %bb.aw ] ; 2 uses
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 5 uses
  %i.db = load i32, ptr %i.ai, align 8, !tbaa !114 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp eq i64 %indvars.iv.next110.i, %i.dc
  br i1 %i.dd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.de = load ptr, ptr %i.cf, align 8, !tbaa !123 ; 2 uses
  %i.df = getelementptr inbounds nuw [36 x i8], ptr %i.de, i64 %indvars.iv.next110.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !124
  %i.di = getelementptr inbounds nuw [36 x i8], ptr %i.de, i64 %indvars.iv109.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !124
  %.not.i = icmp eq i32 %i.dh, %i.dk
  br i1 %.not.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dl = icmp eq i32 %.1.i, 0
  br i1 %i.dl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dm = load ptr, ptr %38, align 8, !tbaa !118
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %indvars.iv109.i ; 2 uses
  %i.do = load <2 x float>, ptr %i.dn, align 4, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.28.2.i = phi float [ %i.dq, %bb.ba ], [ %.sroa.28.1.i, %bb.az ]
  %.2.i = phi i32 [ 1, %bb.ba ], [ %.1.i, %bb.az ]
  %i.dr = phi <2 x float> [ %i.do, %bb.ba ], [ %i.da, %bb.az ] ; 2 uses
  %i.ds = sitofp i32 %.2.i to double
  %i.dt = fdiv double 1.000000e+00, %i.ds
  %i.du = fptrunc double %i.dt to float           ; 3 uses
  %i.dv = extractelement <2 x float> %i.dr, i64 0
  %i.dw = fmul float %i.dv, %i.du                 ; 3 uses
  %i.dx = extractelement <2 x float> %i.dr, i64 1
  %i.dy = fmul float %i.dx, %i.du                 ; 3 uses
  %i.dz = fmul float %.sroa.28.2.i, %i.du         ; 3 uses
  %i.ea = sext i32 %.05787.i to i64               ; 37 uses
  %.not6166.i = icmp slt i64 %indvars.iv109.i, %i.ea
  %.not6073.fr.i = freeze i1 %.not6166.i
  br i1 %.not6073.fr.i, label %.split85.us.i, label %.preheader64.preheader.i

.preheader64.preheader.i:                         ; preds = %bb.bb
  %i.eb = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.eb, label %.preheader62.lr.ph.split.i, label %.preheader64.preheader..preheader63_crit_edge.i

.preheader64.preheader..preheader63_crit_edge.i:  ; preds = %.preheader64.preheader.i
  %.pre.i = load float, ptr %i.c, align 16, !tbaa !23
  br label %.preheader63.i

.preheader62.lr.ph.split.i:                       ; preds = %.preheader64.preheader.i
  %i.ec = load ptr, ptr %38, align 8, !tbaa !118  ; 8 uses
  %i.ed = mul nsw i64 %i.ea, 12
  %scevgep506 = getelementptr i8, ptr %i.ec, i64 %i.ed
  %scevgep507 = getelementptr i8, ptr %i.ec, i64 4
  %i.ee = sub i32 %i.ci, %.05787.i
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.ea, %i.ef
  %i.eh = mul nsw i64 %i.eg, 12
  %scevgep508 = getelementptr i8, ptr %scevgep507, i64 %i.eh
  %i.ei = sub i32 %i.ch, %.05787.i                ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check513 = icmp ult i32 %i.ei, 8
  %bound0509 = icmp ult ptr %scevgep506, %scevgep480
  %bound1510 = icmp ult ptr %i.c, %scevgep508
  %found.conflict511 = and i1 %bound0509, %bound1510
  %i.el = and i64 %i.ek, 7                        ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  %i.en = select i1 %i.em, i64 8, i64 %i.el
  %n.vec515 = sub nsw i64 %i.ek, %i.en            ; 2 uses
  %i.eo = add nsw i64 %n.vec515, %i.ea
  %broadcast.splatinsert516 = insertelement <8 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat517 = shufflevector <8 x i64> %broadcast.splatinsert516, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction518 = add nsw <8 x i64> %broadcast.splat517, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader62.i

.split85.us.i:                                    ; preds = %._crit_edge75.2.i, %bb.bb, %.preheader63.2.i
  %i.ep = trunc nuw nsw i64 %indvars.iv.next110.i to i32
  br label %bb.bc

.preheader63.i:                                   ; preds = %._crit_edge.i, %.preheader64.preheader..preheader63_crit_edge.i
  %i.eq = phi float [ %.pre.i, %.preheader64.preheader..preheader63_crit_edge.i ], [ %i.fp, %._crit_edge.i ]
  %.lcssa68.i = phi float [ %i.dw, %.preheader64.preheader..preheader63_crit_edge.i ], [ %i.fq, %._crit_edge.i ] ; 2 uses
  %i.er = fcmp ult float %.lcssa68.i, %i.eq
  br i1 %i.er, label %._crit_edge78.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader63.i
  %i.es = load ptr, ptr %38, align 8, !tbaa !118  ; 8 uses
  %smax118.i = call i64 @llvm.smax.i64(i64 %indvars.iv109.i, i64 %i.ea) ; 6 uses
  %i.et = sub i64 %smax118.i, %i.ea
  %i.eu = mul nsw i64 %i.ea, 12
  %scevgep475 = getelementptr i8, ptr %i.es, i64 %i.eu ; 3 uses
  %scevgep481 = getelementptr i8, ptr %i.es, i64 4
  %i.ev = mul nuw nsw i64 %smax118.i, 12
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.ev
  %i.ew = add nuw i64 %smax118.i, 1
  %i.ex = add nuw i64 %smax118.i, 1
  %i.ey = sub i64 %i.ex, %i.ea                    ; 3 uses
  %min.iters.check487 = icmp ult i64 %i.ey, 24
  %mul476 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.et, i64 12) ; 2 uses
  %mul.result477 = extractvalue { i64, i1 } %mul476, 0
  %mul.overflow478 = extractvalue { i64, i1 } %mul476, 1
  %i.ez = getelementptr i8, ptr %scevgep475, i64 %mul.result477
  %i.fa = icmp ult ptr %i.ez, %scevgep475
  %i.fb = or i1 %i.fa, %mul.overflow478
  %bound0483 = icmp ult ptr %i.c, %scevgep482
  %bound1484 = icmp ult ptr %scevgep475, %scevgep480
  %found.conflict485 = and i1 %bound0483, %bound1484
  %n.vec489 = and i64 %i.ey, -8                   ; 3 uses
  %i.fc = add i64 %n.vec489, %i.ea
  %broadcast.splatinsert490 = insertelement <8 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat491 = shufflevector <8 x i64> %broadcast.splatinsert490, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction492 = add nsw <8 x i64> %broadcast.splat491, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n503 = icmp eq i64 %i.ey, %n.vec489
  br label %.preheader.i

.preheader62.i:                                   ; preds = %._crit_edge.i, %.preheader62.lr.ph.split.i
  %i.fd = phi float [ %i.dw, %.preheader62.lr.ph.split.i ], [ %i.fq, %._crit_edge.i ]
  %brmerge = select i1 %min.iters.check513, i1 true, i1 %found.conflict511
  br i1 %brmerge, label %scalar.ph512.preheader, label %vector.ph514

scalar.ph512.preheader:                           ; preds = %.preheader62.i, %vector.body519
  %indvars.iv.i.ph = phi i64 [ %i.eo, %vector.body519 ], [ %i.ea, %.preheader62.i ] ; 3 uses
  %i.fe = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.ff = sub i32 %indvars.iv100.i, %i.fe
  %i.fg = sub i32 %i.ch, %i.fe
  %xtraiter = and i32 %i.ff, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph512.prol.loopexit, label %scalar.ph512.prol

scalar.ph512.prol:                                ; preds = %scalar.ph512.preheader, %scalar.ph512.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph512.prol ], [ %indvars.iv.i.ph, %scalar.ph512.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph512.prol ], [ 0, %scalar.ph512.preheader ]
  %i.fh = load float, ptr %i.c, align 16, !tbaa !23
  %gep.i.prol = getelementptr [12 x i8], ptr %i.ec, i64 %indvars.iv.i.prol ; 2 uses
  %i.fi = load float, ptr %gep.i.prol, align 4, !tbaa !23
  %i.fj = fadd float %i.fh, %i.fi
  store float %i.fj, ptr %gep.i.prol, align 4, !tbaa !23
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph512.prol.loopexit, label %scalar.ph512.prol, !llvm.loop !146

scalar.ph512.prol.loopexit:                       ; preds = %scalar.ph512.prol, %scalar.ph512.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph512.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph512.prol ]
  %i.fk = icmp ult i32 %i.fg, 3
  br i1 %i.fk, label %._crit_edge.i, label %scalar.ph512

vector.ph514:                                     ; preds = %.preheader62.i
  %i.fl = load <4 x float>, ptr %i.c, align 16
  %broadcast.splat526 = shufflevector <4 x float> %i.fl, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph514
  %index520 = phi i64 [ 0, %vector.ph514 ], [ %index.next527, %vector.body519 ]
  %vec.ind521 = phi <8 x i64> [ %induction518, %vector.ph514 ], [ %vec.ind.next528, %vector.body519 ] ; 2 uses
  %wide.gep522 = getelementptr [12 x i8], ptr %i.ec, <8 x i64> %vec.ind521 ; 2 uses
  %i.fm = extractelement <8 x ptr> %wide.gep522, i64 0
  %wide.vec523 = load <24 x float>, ptr %i.fm, align 4, !tbaa !23, !alias.scope !148, !noalias !151
  %strided.vec524 = shufflevector <24 x float> %wide.vec523, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.fn = fadd <8 x float> %broadcast.splat526, %strided.vec524
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fn, <8 x ptr> align 4 %wide.gep522, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !148, !noalias !151
  %index.next527 = add nuw i64 %index520, 8       ; 2 uses
  %vec.ind.next528 = add nsw <8 x i64> %vec.ind521, splat (i64 8)
  %i.fo = icmp eq i64 %index.next527, %n.vec515
  br i1 %i.fo, label %scalar.ph512.preheader, label %vector.body519, !llvm.loop !153

._crit_edge.i:                                    ; preds = %scalar.ph512, %scalar.ph512.prol.loopexit
  %i.fp = load float, ptr %i.c, align 16, !tbaa !23 ; 2 uses
  %i.fq = fadd float %i.fd, %i.fp                 ; 3 uses
  %i.fr = fcmp olt float %i.fq, 0.000000e+00
  br i1 %i.fr, label %.preheader62.i, label %.preheader63.i, !llvm.loop !156

scalar.ph512:                                     ; preds = %scalar.ph512.prol.loopexit, %scalar.ph512
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph512 ], [ %indvars.iv.i.unr, %scalar.ph512.prol.loopexit ] ; 5 uses
  %i.fs = load float, ptr %i.c, align 16, !tbaa !23
  %gep.i = getelementptr [12 x i8], ptr %i.ec, i64 %indvars.iv.i ; 2 uses
  %i.ft = load float, ptr %gep.i, align 4, !tbaa !23
  %i.fu = fadd float %i.fs, %i.ft
  store float %i.fu, ptr %gep.i, align 4, !tbaa !23
  %i.fv = load float, ptr %i.c, align 16, !tbaa !23
  %i.fw = getelementptr [12 x i8], ptr %i.ec, i64 %indvars.iv.i
  %gep.i.1 = getelementptr i8, ptr %i.fw, i64 12  ; 2 uses
  %i.fx = load float, ptr %gep.i.1, align 4, !tbaa !23
  %i.fy = fadd float %i.fv, %i.fx
  store float %i.fy, ptr %gep.i.1, align 4, !tbaa !23
  %i.fz = load float, ptr %i.c, align 16, !tbaa !23
  %i.ga = getelementptr [12 x i8], ptr %i.ec, i64 %indvars.iv.i
  %gep.i.2 = getelementptr i8, ptr %i.ga, i64 24  ; 2 uses
  %i.gb = load float, ptr %gep.i.2, align 4, !tbaa !23
  %i.gc = fadd float %i.fz, %i.gb
  store float %i.gc, ptr %gep.i.2, align 4, !tbaa !23
  %i.gd = load float, ptr %i.c, align 16, !tbaa !23
  %i.ge = getelementptr [12 x i8], ptr %i.ec, i64 %indvars.iv.i
  %gep.i.3 = getelementptr i8, ptr %i.ge, i64 36  ; 2 uses
  %i.gf = load float, ptr %gep.i.3, align 4, !tbaa !23
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %gep.i.3, align 4, !tbaa !23
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv120.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond121.not.i.3 = icmp eq i32 %indvars.iv100.i, %lftr.wideiv120.i.3
  br i1 %exitcond121.not.i.3, label %._crit_edge.i, label %scalar.ph512, !llvm.loop !157

.preheader.i:                                     ; preds = %._crit_edge75.i, %.preheader.lr.ph.i
  %i.gh = phi float [ %.lcssa68.i, %.preheader.lr.ph.i ], [ %i.gs, %._crit_edge75.i ]
  %brmerge570 = select i1 %min.iters.check487, i1 true, i1 %i.fb
  %brmerge571 = select i1 %brmerge570, i1 true, i1 %found.conflict485
  br i1 %brmerge571, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %.preheader.i
  %i.gi = load <4 x float>, ptr %i.c, align 16
  %broadcast.splat499 = shufflevector <4 x float> %i.gi, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph488
  %index494 = phi i64 [ 0, %vector.ph488 ], [ %index.next500, %vector.body493 ]
  %vec.ind495 = phi <8 x i64> [ %induction492, %vector.ph488 ], [ %vec.ind.next501, %vector.body493 ] ; 2 uses
  %wide.gep496 = getelementptr [12 x i8], ptr %i.es, <8 x i64> %vec.ind495 ; 2 uses
  %wide.masked.gather497 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep496, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !23, !alias.scope !158
  %i.gj = fsub <8 x float> %wide.masked.gather497, %broadcast.splat499
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gj, <8 x ptr> align 4 %wide.gep496, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !158
  %index.next500 = add nuw i64 %index494, 8       ; 2 uses
  %vec.ind.next501 = add nsw <8 x i64> %vec.ind495, splat (i64 8)
  %i.gk = icmp eq i64 %index.next500, %n.vec489
  br i1 %i.gk, label %middle.block502, label %vector.body493, !llvm.loop !161

middle.block502:                                  ; preds = %vector.body493
  br i1 %cmp.n503, label %._crit_edge75.i, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %.preheader.i, %middle.block502
  %indvars.iv102.i.ph = phi i64 [ %i.ea, %.preheader.i ], [ %i.fc, %middle.block502 ] ; 4 uses
  %i.gl = sub i64 %i.ew, %indvars.iv102.i.ph
  %i.gm = sub i64 %smax118.i, %indvars.iv102.i.ph
  %xtraiter543 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %scalar.ph486.prol.loopexit, label %scalar.ph486.prol

scalar.ph486.prol:                                ; preds = %scalar.ph486.preheader, %scalar.ph486.prol
  %indvars.iv102.i.prol = phi i64 [ %indvars.iv.next103.i.prol, %scalar.ph486.prol ], [ %indvars.iv102.i.ph, %scalar.ph486.preheader ] ; 2 uses
  %prol.iter545 = phi i64 [ %prol.iter545.next, %scalar.ph486.prol ], [ 0, %scalar.ph486.preheader ]
  %i.gn = load float, ptr %i.c, align 16, !tbaa !23
  %gep77.i.prol = getelementptr [12 x i8], ptr %i.es, i64 %indvars.iv102.i.prol ; 2 uses
  %i.go = load float, ptr %gep77.i.prol, align 4, !tbaa !23
  %i.gp = fsub float %i.go, %i.gn
  store float %i.gp, ptr %gep77.i.prol, align 4, !tbaa !23
  %indvars.iv.next103.i.prol = add nsw i64 %indvars.iv102.i.prol, 1 ; 2 uses
  %prol.iter545.next = add i64 %prol.iter545, 1   ; 2 uses
  %prol.iter545.cmp.not = icmp eq i64 %prol.iter545.next, %xtraiter543
  br i1 %prol.iter545.cmp.not, label %scalar.ph486.prol.loopexit, label %scalar.ph486.prol, !llvm.loop !162

scalar.ph486.prol.loopexit:                       ; preds = %scalar.ph486.prol, %scalar.ph486.preheader
  %indvars.iv102.i.unr = phi i64 [ %indvars.iv102.i.ph, %scalar.ph486.preheader ], [ %indvars.iv.next103.i.prol, %scalar.ph486.prol ]
  %i.gq = icmp ult i64 %i.gm, 3
  br i1 %i.gq, label %._crit_edge75.i, label %scalar.ph486

._crit_edge75.i:                                  ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486, %middle.block502
  %i.gr = load float, ptr %i.c, align 16, !tbaa !23 ; 2 uses
  %i.gs = fsub float %i.gh, %i.gr                 ; 2 uses
  %i.gt = fcmp ult float %i.gs, %i.gr
  br i1 %i.gt, label %._crit_edge78.split.i, label %.preheader.i, !llvm.loop !163

scalar.ph486:                                     ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i.3, %scalar.ph486 ], [ %indvars.iv102.i.unr, %scalar.ph486.prol.loopexit ] ; 5 uses
  %i.gu = load float, ptr %i.c, align 16, !tbaa !23
  %gep77.i = getelementptr [12 x i8], ptr %i.es, i64 %indvars.iv102.i ; 2 uses
  %i.gv = load float, ptr %gep77.i, align 4, !tbaa !23
  %i.gw = fsub float %i.gv, %i.gu
  store float %i.gw, ptr %gep77.i, align 4, !tbaa !23
  %i.gx = load float, ptr %i.c, align 16, !tbaa !23
  %i.gy = getelementptr [12 x i8], ptr %i.es, i64 %indvars.iv102.i
  %gep77.i.1 = getelementptr i8, ptr %i.gy, i64 12 ; 2 uses
  %i.gz = load float, ptr %gep77.i.1, align 4, !tbaa !23
  %i.ha = fsub float %i.gz, %i.gx
  store float %i.ha, ptr %gep77.i.1, align 4, !tbaa !23
  %i.hb = load float, ptr %i.c, align 16, !tbaa !23
  %i.hc = getelementptr [12 x i8], ptr %i.es, i64 %indvars.iv102.i
  %gep77.i.2 = getelementptr i8, ptr %i.hc, i64 24 ; 2 uses
  %i.hd = load float, ptr %gep77.i.2, align 4, !tbaa !23
  %i.he = fsub float %i.hd, %i.hb
  store float %i.he, ptr %gep77.i.2, align 4, !tbaa !23
  %indvars.iv.next103.i.2 = add nsw i64 %indvars.iv102.i, 3 ; 2 uses
  %i.hf = load float, ptr %i.c, align 16, !tbaa !23
  %gep77.i.3 = getelementptr [12 x i8], ptr %i.es, i64 %indvars.iv.next103.i.2 ; 2 uses
  %i.hg = load float, ptr %gep77.i.3, align 4, !tbaa !23
  %i.hh = fsub float %i.hg, %i.hf
  store float %i.hh, ptr %gep77.i.3, align 4, !tbaa !23
  %indvars.iv.next103.i.3 = add nsw i64 %indvars.iv102.i, 4
  %exitcond119.not.i.3 = icmp eq i64 %indvars.iv.next103.i.2, %smax118.i
  br i1 %exitcond119.not.i.3, label %._crit_edge75.i, label %scalar.ph486, !llvm.loop !164

._crit_edge78.split.i:                            ; preds = %._crit_edge75.i, %.preheader63.i
  %i.hi = fcmp olt float %i.dy, 0.000000e+00
  br i1 %i.hi, label %.preheader62.lr.ph.split.1.i, label %._crit_edge78.split..preheader63.1_crit_edge.i

._crit_edge78.split..preheader63.1_crit_edge.i:   ; preds = %._crit_edge78.split.i
  %.pre140.i = load float, ptr %.phi.trans.insert139.i, align 16, !tbaa !23
  br label %.preheader63.1.i

.preheader62.lr.ph.split.1.i:                     ; preds = %._crit_edge78.split.i
  %i.hj = load ptr, ptr %38, align 8, !tbaa !118  ; 2 uses
  %invariant.gep.1.i = getelementptr i8, ptr %i.hj, i64 4 ; 7 uses
  %i.hk = mul nsw i64 %i.ea, 12
  %scevgep449 = getelementptr i8, ptr %invariant.gep.1.i, i64 %i.hk
  %scevgep450 = getelementptr i8, ptr %i.hj, i64 8
  %i.hl = sub i32 %i.ck, %.05787.i
  %i.hm = zext i32 %i.hl to i64
  %i.hn = add nsw i64 %i.ea, %i.hm
  %i.ho = mul nsw i64 %i.hn, 12
  %scevgep451 = getelementptr i8, ptr %scevgep450, i64 %i.ho
  %i.hp = sub i32 %i.cj, %.05787.i                ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check456 = icmp ult i32 %i.hp, 8
  %bound0452 = icmp ult ptr %scevgep449, %scevgep423
  %bound1453 = icmp ult ptr %.phi.trans.insert139.i, %scevgep451
  %found.conflict454 = and i1 %bound0452, %bound1453
  %i.hs = and i64 %i.hr, 7                        ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  %i.hu = select i1 %i.ht, i64 8, i64 %i.hs
  %n.vec458 = sub nsw i64 %i.hr, %i.hu            ; 2 uses
  %i.hv = add nsw i64 %n.vec458, %i.ea
  %broadcast.splatinsert459 = insertelement <8 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat460 = shufflevector <8 x i64> %broadcast.splatinsert459, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction461 = add nsw <8 x i64> %broadcast.splat460, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader62.1.i

end_hunk_0
begin_hunk_1_@_ZL8add_solvPKcP7t_atomsP8t_symtabPSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_7PbcTypePA3_fP14AtomPropertiesfffi:bb.a
  br i1 %i.aks, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorINS_11BasicVectorIfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull %39)
          to label %bb.hi unwind label %.loopexit.split-lp.i154

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  invoke void @_ZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull %47)
          to label %bb.hj unwind label %.loopexit.split-lp.i154

bb.hj:                                            ; preds = %bb.hi
  %i.akt = load i32, ptr %i.ai, align 8, !tbaa !114
  invoke void @_ZNK3gmx12AtomsRemover17removeMarkedAtomsEP7t_atoms(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull %i.ai)
          to label %bb.hk unwind label %bb.hx

bb.hk:                                            ; preds = %bb.hj
  %i.aku = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.akv = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.akw = sub nsw i32 %i.akt, %i.akv
  %i.akx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aku, ptr noundef nonnull @.str.97, i32 noundef %i.akw) #24 ; 0 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !235 ; 8 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.akz, null
  br i1 %.not.i.i.i.i156, label %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 8 ; 4 uses
  %i.alb = load atomic i64, ptr %i.ala acquire, align 8 ; 2 uses
  %i.alc = icmp eq i64 %i.alb, 4294967297
  %i.ald = trunc i64 %i.alb to i32                ; 2 uses
  br i1 %i.alc, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store i32 0, ptr %i.ala, align 8, !tbaa !238
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akz, i64 12
  store i32 0, ptr %i.ale, align 4, !tbaa !240
  %i.alf = load ptr, ptr %i.akz, align 8, !tbaa !241
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %i.alh = load ptr, ptr %i.alg, align 8
  call void %i.alh(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #22, !inline_history !251
  %i.ali = load ptr, ptr %i.akz, align 8, !tbaa !241
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 24
  %i.alk = load ptr, ptr %i.alj, align 8
  call void %i.alk(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #22, !inline_history !251
  br label %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160

bb.hn:                                            ; preds = %bb.hl
  %i.all = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i157 = icmp eq i8 %i.all, 0
  br i1 %.not.i.i.i.i.i157, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.alm = add nsw i32 %i.ald, -1
  store i32 %i.alm, ptr %i.ala, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158

bb.hp:                                            ; preds = %bb.hn
  %i.aln = atomicrmw volatile add ptr %i.ala, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158: ; preds = %bb.hp, %bb.ho
  %.0.i.i.i.i.i.i159 = phi i32 [ %i.ald, %bb.ho ], [ %i.aln, %bb.hp ]
  %i.alo = icmp eq i32 %.0.i.i.i.i.i.i159, 1
  br i1 %i.alo, label %bb.hq, label %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160, !prof !244

bb.hq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #22
  br label %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160

_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160: ; preds = %bb.hq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158, %bb.hm, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.alp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !235 ; 8 uses
  %.not.i.i.i55.i = icmp eq ptr %i.alq, null
  br i1 %.not.i.i.i55.i, label %_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit, label %bb.hr

bb.hr:                                            ; preds = %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8 ; 4 uses
  %i.als = load atomic i64, ptr %i.alr acquire, align 8 ; 2 uses
  %i.alt = icmp eq i64 %i.als, 4294967297
  %i.alu = trunc i64 %i.als to i32                ; 2 uses
  br i1 %i.alt, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  store i32 0, ptr %i.alr, align 8, !tbaa !238
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alq, i64 12
  store i32 0, ptr %i.alv, align 4, !tbaa !240
  %i.alw = load ptr, ptr %i.alq, align 8, !tbaa !241
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %i.aly = load ptr, ptr %i.alx, align 8
  call void %i.aly(ptr noundef nonnull align 8 dereferenceable(16) %i.alq) #22, !inline_history !252
  %i.alz = load ptr, ptr %i.alq, align 8, !tbaa !241
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 24
  %i.amb = load ptr, ptr %i.ama, align 8
  call void %i.amb(ptr noundef nonnull align 8 dereferenceable(16) %i.alq) #22, !inline_history !252
  br label %_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit

bb.ht:                                            ; preds = %bb.hr
  %i.amc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i56.i = icmp eq i8 %i.amc, 0
  br i1 %.not.i.i.i.i56.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.amd = add nsw i32 %i.alu, -1
  store i32 %i.amd, ptr %i.alr, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57.i

bb.hv:                                            ; preds = %bb.ht
  %i.ame = atomicrmw volatile add ptr %i.alr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57.i: ; preds = %bb.hv, %bb.hu
  %.0.i.i.i.i.i58.i = phi i32 [ %i.alu, %bb.hu ], [ %i.ame, %bb.hv ]
  %i.amf = icmp eq i32 %.0.i.i.i.i.i58.i, 1
  br i1 %i.amf, label %bb.hw, label %_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit, !prof !244

bb.hw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alq) #22
  br label %_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit

bb.hx:                                            ; preds = %bb.hj
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.he, %.loopexit.split-lp.i154, %.loopexit.i151
  %.pn.i153 = phi { ptr, i32 } [ %i.amg, %bb.hx ], [ %i.ako, %bb.he ], [ %lpad.loopexit.i152, %.loopexit.i151 ], [ %lpad.loopexit.split-lp.i155, %.loopexit.split-lp.i154 ]
  call void @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #22
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hc
  %.pn.pn.i149 = phi { ptr, i32 } [ %.pn.i153, %bb.hy ], [ %i.akb, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN3gmx26AnalysisNeighborhoodSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #22
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hb
  %.pn.pn.pn.pn.i148 = phi { ptr, i32 } [ %.pn.pn.i149, %bb.hz ], [ %i.aka, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.ha
  %.pn.pn.pn.pn.pn.pn.i147 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i148, %bb.ia ], [ %i.ajz, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN3gmx20AnalysisNeighborhoodD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.gz
  %.pn.pn.pn.pn.pn.pn.pn.i146 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i147, %bb.ib ], [ %i.ajy, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN3gmx12AtomsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit: ; preds = %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i160, %bb.hs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57.i, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN3gmx20AnalysisNeighborhoodD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN3gmx12AtomsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.id

bb.id:                                            ; preds = %_ZL34removeSolventOverlappingWithSoluteP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_PS1_IfSaIfEERK5t_pbcRKS6_RKS9_.exit, %bb.fg
  %i.amh = icmp sgt i32 %11, 0
  br i1 %i.amh, label %bb.ie, label %bb.iv

bb.ie:                                            ; preds = %bb.id
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !116 ; 2 uses
  %i.amk = icmp sgt i32 %i.amj, %11
  br i1 %i.amk, label %bb.if, label %bb.iv

bb.if:                                            ; preds = %bb.ie
  %i.aml = sub nsw i32 %i.amj, %11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN3gmx12AtomsRemoverC1ERK7t_atoms(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc170 unwind label %bb.iu

.noexc170:                                        ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.amm = invoke noundef i64 @_ZN3gmx14makeRandomSeedEv()
          to label %bb.ig unwind label %bb.il

bb.ig:                                            ; preds = %.noexc170
  %i.amn = and i64 %i.amm, 4294967295             ; 2 uses
  store i64 %i.amn, ptr %13, align 8, !tbaa !131
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ii, %bb.ig
  %store_forwarded = phi i64 [ %i.amn, %bb.ig ], [ %i.ano, %bb.ii ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.ig ], [ %i.anp, %bb.ii ] ; 6 uses
  %i.amo = getelementptr [8 x i8], ptr %13, i64 %.011.i.i.i
  %i.amp = lshr i64 %store_forwarded, 30
  %i.amq = xor i64 %i.amp, %store_forwarded
  %i.amr = mul nuw nsw i64 %i.amq, 1812433253
  %i.ams = add nuw i64 %i.amr, %.011.i.i.i        ; 2 uses
  %i.amt = and i64 %i.ams, 4294967295             ; 2 uses
  store i64 %i.amt, ptr %i.amo, align 8, !tbaa !131
  %i.amu = add nuw nsw i64 %.011.i.i.i, 1         ; 2 uses
  %i.amv = getelementptr [8 x i8], ptr %13, i64 %i.amu
  %i.amw = lshr i64 %i.amt, 30
  %i.amx = xor i64 %i.amw, %i.ams
  %i.amy = mul i64 %i.amx, 1812433253
  %i.amz = add i64 %i.amy, %i.amu                 ; 2 uses
  %i.ana = and i64 %i.amz, 4294967295             ; 2 uses
  store i64 %i.ana, ptr %i.amv, align 8, !tbaa !131
  %i.anb = add nuw nsw i64 %.011.i.i.i, 2         ; 2 uses
  %i.anc = getelementptr [8 x i8], ptr %13, i64 %i.anb
  %i.and = lshr i64 %i.ana, 30
  %i.ane = xor i64 %i.and, %i.amz
  %i.anf = mul i64 %i.ane, 1812433253
  %i.ang = add i64 %i.anf, %i.anb                 ; 2 uses
  %i.anh = and i64 %i.ang, 4294967295             ; 2 uses
  store i64 %i.anh, ptr %i.anc, align 8, !tbaa !131
  %i.ani = add nuw nsw i64 %.011.i.i.i, 3         ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.ani, 624
  br i1 %exitcond.not.i.i.i.2, label %.lr.ph.i168.preheader, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.anj = getelementptr [8 x i8], ptr %13, i64 %i.ani
  %i.ank = lshr i64 %i.anh, 30
  %i.anl = xor i64 %i.ank, %i.ang
  %i.anm = mul i64 %i.anl, 1812433253
  %i.ann = add i64 %i.anm, %i.ani
  %i.ano = and i64 %i.ann, 4294967295             ; 2 uses
  store i64 %i.ano, ptr %i.anj, align 8, !tbaa !131
  %i.anp = add nuw nsw i64 %.011.i.i.i, 4
  br label %bb.ih

.lr.ph.i168.preheader:                            ; preds = %bb.ih
  %i.anq = getelementptr inbounds nuw i8, ptr %13, i64 4992
  store i64 624, ptr %i.anq, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.anr = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.ans = add nsw i32 %i.anr, -1
  store i32 0, ptr %14, align 4, !tbaa !255
  %i.ant = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !257
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %bb.io
  %.01418.i = phi i32 [ %.115.i, %bb.io ], [ %i.aml, %.lr.ph.i168.preheader ] ; 2 uses
  %i.anu = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(5000) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i unwind label %bb.in ; 2 uses

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i: ; preds = %.lr.ph.i168
  %i.anv = sext i32 %i.anu to i64
  %i.anw = load ptr, ptr %12, align 8, !tbaa !228
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.anv
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !31
  %.not.i169 = icmp eq i8 %i.any, 0
  br i1 %.not.i169, label %bb.ij, label %bb.io

bb.ij:                                            ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i
  invoke void @_ZN3gmx12AtomsRemover11markResidueERK7t_atomsib(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i32 noundef %i.anu, i1 noundef zeroext true)
          to label %bb.ik unwind label %bb.in

bb.ik:                                            ; preds = %bb.ij
  %i.anz = add nsw i32 %.01418.i, -1
  br label %bb.io

bb.il:                                            ; preds = %.noexc170
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.im:                                            ; preds = %bb.ir, %bb.iq, %._crit_edge.i166
  %i.aob = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.in:                                            ; preds = %bb.ij, %.lr.ph.i168
  %i.aoc = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.io:                                            ; preds = %bb.ik, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i
  %.115.i = phi i32 [ %.01418.i, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i ], [ %i.anz, %bb.ik ] ; 2 uses
  %i.aod = icmp sgt i32 %.115.i, 0
  br i1 %i.aod, label %.lr.ph.i168, label %._crit_edge.i166, !llvm.loop !258

._crit_edge.i166:                                 ; preds = %bb.io
  invoke void @_ZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorINS_11BasicVectorIfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %38)
          to label %bb.ip unwind label %bb.im

bb.ip:                                            ; preds = %._crit_edge.i166
  %i.aoe = load ptr, ptr %39, align 8, !tbaa !121
  %i.aof = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !121
  %i.aoh = icmp eq ptr %i.aoe, %i.aog
  br i1 %i.aoh, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZNK3gmx12AtomsRemover20removeMarkedElementsEPSt6vectorINS_11BasicVectorIfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %39)
          to label %bb.ir unwind label %bb.im

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  invoke void @_ZNK3gmx12AtomsRemover17removeMarkedAtomsEP7t_atoms(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.ai)
          to label %_ZL27removeExtraSolventMoleculesP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_i.exit unwind label %bb.im

bb.is:                                            ; preds = %bb.in, %bb.im
  %.pn.i167 = phi { ptr, i32 } [ %i.aoc, %bb.in ], [ %i.aob, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.il
  %.pn.pn.i165 = phi { ptr, i32 } [ %.pn.i167, %bb.is ], [ %i.aoa, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN3gmx12AtomsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

_ZL27removeExtraSolventMoleculesP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_i.exit: ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN3gmx12AtomsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.iv

bb.iu:                                            ; preds = %bb.if
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.iv:                                            ; preds = %_ZL27removeExtraSolventMoleculesP7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES7_i.exit, %bb.ie, %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store ptr null, ptr %i.i, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !259
  invoke fastcc void @_ZL13sort_moleculePP7t_atomsS1_PSt6vectorIN3gmx11BasicVectorIfEESaIS5_EES8_(ptr noundef %i.j, ptr noundef %i.i, ptr noundef %38, ptr noundef %39)
          to label %bb.iw unwind label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  %i.aoj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !121
  %i.aol = load ptr, ptr %38, align 8, !tbaa !121
  %i.aom = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !121
  %i.aoo = load ptr, ptr %3, align 8, !tbaa !121  ; 2 uses
  %i.aop = ptrtoint ptr %i.aok to i64
  %i.aoq = ptrtoint ptr %i.aoo to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = getelementptr inbounds i8, ptr %i.aoo, i64 %i.aor
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.aos, ptr %i.aol, ptr %i.aon)
          to label %bb.ix unwind label %bb.ja

bb.ix:                                            ; preds = %bb.iw
  %i.aot = load ptr, ptr %4, align 8, !tbaa !121  ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !121 ; 2 uses
  %i.aow = icmp eq ptr %i.aot, %i.aov
  br i1 %i.aow, label %bb.jc, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aox = load ptr, ptr %39, align 8, !tbaa !121
  %i.aoy = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !121
  %i.apa = ptrtoint ptr %i.aov to i64
  %i.apb = ptrtoint ptr %i.aot to i64
  %i.apc = sub i64 %i.apa, %i.apb
  %i.apd = getelementptr inbounds i8, ptr %i.aot, i64 %i.apc
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.apd, ptr %i.aox, ptr %i.aoz)
          to label %bb.jc unwind label %bb.jb

bb.iz:                                            ; preds = %bb.jk, %bb.jg, %_ZL14gmx_sfree_implI7t_atomsEvPKcS2_iPT_.exit, %bb.jf, %bb.iv
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.ja:                                            ; preds = %bb.iw
  %i.apf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.jb:                                            ; preds = %bb.iy
  %i.apg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.jc:                                            ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  invoke void @_ZN3gmx12AtomsBuilderC1EP7t_atomsP8t_symtab(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.jd unwind label %bb.jh

bb.jd:                                            ; preds = %bb.jc
  %i.aph = load ptr, ptr %i.j, align 8, !tbaa !259
  invoke void @_ZN3gmx12AtomsBuilder10mergeAtomsERK7t_atoms(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(72) %i.aph)
          to label %bb.je unwind label %bb.ji

bb.je:                                            ; preds = %bb.jd
  call void @_ZN3gmx12AtomsBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  %i.api = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.apj = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !116
end_hunk_1
