inline.NumInlined: 2249
inline.NumDeleted: 829
begin_hunk_0_@_ZN4cvc58internal6theory4bags10TheoryBags16computeCareGraphEv:bb.a

bb.z:                                             ; preds = %bb.q, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn45 = phi { ptr, i32 } [ %i.bt, %bb.z ], [ %i.bs, %bb.y ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.aa ], [ %i.br, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ch

bb.ac:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.bu = load ptr, ptr %6, align 8, !tbaa !268, !noalias !377 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !377
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1023                     ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1023
  %i.ca = select i1 %i.bz, i32 -1, i32 %i.by
  %i.cb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ca)
          to label %bb.ad unwind label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.cc = icmp eq i32 %i.cb, 2
  %spec.select.i.i = select i1 %i.cc, i64 2, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %spec.select.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !291, !noalias !377
  store ptr %i.cf, ptr %12, align 8, !tbaa !268, !alias.scope !377
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.at

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNK4cvc58internal8TypeNode17getBagElementTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.au

bb.af:                                            ; preds = %bb.ae
  %i.cg = load ptr, ptr %7, align 8, !tbaa !327   ; 4 uses
  %i.ch = load ptr, ptr %10, align 8, !tbaa !327
  %.not.i100 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i100, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105, label %bb.ag, !prof !73

bb.ag:                                            ; preds = %bb.af
  %i.ci = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i101 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i101, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102, label %bb.ah, !prof !73

bb.ah:                                            ; preds = %bb.ag
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.cg, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.ai, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102, !prof !73

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102 unwind label %bb.av

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cp = load ptr, ptr %10, align 8, !tbaa !327  ; 5 uses
  store ptr %i.cp, ptr %7, align 8, !tbaa !327
  %i.cq = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cr = lshr i64 %i.cq, 40
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 1048575                  ; 3 uses
  %i.cu = icmp samesign ult i32 %i.ct, 1048574
  br i1 %i.cu, label %bb.aj, label %bb.ak, !prof !270

bb.aj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102
  %i.cv = add nuw nsw i32 %i.ct, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 40
  %i.cy = and i64 %i.cq, -1152920405095219201
  %i.cz = or i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.cp, align 8
  br label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105

bb.ak:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i102
  %i.da = icmp eq i32 %i.ct, 1048574
  br i1 %i.da, label %bb.al, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105, !prof !73

bb.al:                                            ; preds = %bb.ak
  %i.db = or i64 %i.cq, 1152920405095219200
  store i64 %i.db, ptr %i.cp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105 unwind label %bb.av

_ZN4cvc58internal8TypeNodeaSERKS1_.exit105:       ; preds = %bb.ak, %bb.aj, %bb.af, %bb.al
  %i.dc = load ptr, ptr %10, align 8, !tbaa !327  ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = and i64 %i.dd, 1152920405095219200
  %.not.i.i106 = icmp eq i64 %i.de, 1152920405095219200
  br i1 %.not.i.i106, label %_ZN4cvc58internal8TypeNodeD2Ev.exit108, label %bb.am, !prof !73

bb.am:                                            ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105
  %i.df = add i64 %i.dd, 1152920405095219200
  %i.dg = and i64 %i.df, 1152920405095219200      ; 2 uses
  %i.dh = and i64 %i.dd, -1152920405095219201
  %i.di = or disjoint i64 %i.dg, %i.dh
  store i64 %i.di, ptr %i.dc, align 8
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %bb.an, label %_ZN4cvc58internal8TypeNodeD2Ev.exit108, !prof !73

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit108 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit108:           ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit105, %bb.am, %bb.an
  %i.dm = load ptr, ptr %11, align 8, !tbaa !327  ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %i.do = and i64 %i.dn, 1152920405095219200
  %.not.i.i109 = icmp eq i64 %i.do, 1152920405095219200
  br i1 %.not.i.i109, label %_ZN4cvc58internal8TypeNodeD2Ev.exit111, label %bb.ap, !prof !73

bb.ap:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit108
  %i.dp = add i64 %i.dn, 1152920405095219200
  %i.dq = and i64 %i.dp, 1152920405095219200      ; 2 uses
  %i.dr = and i64 %i.dn, -1152920405095219201
  %i.ds = or disjoint i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.dm, align 8
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %bb.aq, label %_ZN4cvc58internal8TypeNodeD2Ev.exit111, !prof !73

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit111 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit111:           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit108, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ay

bb.as:                                            ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.at:                                            ; preds = %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.ae
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.al, %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn41 = phi { ptr, i32 } [ %i.dz, %bb.av ], [ %i.dy, %bb.au ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %bb.as
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.as ], [ %.pn41, %bb.aw ], [ %i.dx, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ch

bb.ay:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit111, %_ZN4cvc58internal8TypeNodeD2Ev.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ 0, %bb.ay ] ; 4 uses
  %.021 = phi i1 [ %spec.select, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ false, %bb.ay ] ; 2 uses
  %i.ea = load ptr, ptr %6, align 8, !tbaa !268
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1023
  %i.eg = select i1 %i.ef, i32 -1, i32 %i.ee
  %i.eh = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eg)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ei = icmp eq i32 %i.eh, 2
  %i.ej = load i64, ptr %i.eb, align 8
  %i.ek = lshr i64 %i.ej, 32
  %i.el = and i64 %i.ek, 67108863
  %i.em = sext i1 %i.ei to i64
  %i.en = add nsw i64 %i.el, %i.em
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = icmp samesign ugt i64 %i.eo, %indvars.iv
  br i1 %i.ep, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.021, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit180, label %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197_crit_edge

._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197_crit_edge: ; preds = %bb.bb
  %.pre = load ptr, ptr %13, align 8, !tbaa !380
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197

bb.bc:                                            ; preds = %bb.bm, %bb.az
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !267
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.es = load ptr, ptr %6, align 8, !tbaa !268, !noalias !383 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !noalias !383
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 1023                     ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 1023
  %i.ey = select i1 %i.ex, i32 -1, i32 %i.ew
  %i.ez = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ey)
          to label %bb.be unwind label %bb.br

bb.be:                                            ; preds = %bb.bd
  %i.fa = icmp eq i32 %i.ez, 2
  %17 = zext i1 %i.fa to i64
  %18 = trunc nuw i64 %indvars.iv to i32
  %spec.select.i.i113 = add nuw nsw i64 %indvars.iv, %17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %sext = shl nuw i64 %spec.select.i.i113, 32
  %19 = ashr exact i64 %sext, 29
  %20 = getelementptr inbounds i8, ptr %i.fb, i64 %19
  %i.fc = load ptr, ptr %20, align 8, !tbaa !291, !noalias !383
  store ptr %i.fc, ptr %15, align 8, !tbaa !268, !alias.scope !383
  invoke void @_ZNK4cvc58internal6theory2eq14EqualityEngine17getRepresentativeENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.549") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1784) %i.er, ptr noundef nonnull align 8 %15)
          to label %bb.bf unwind label %bb.bs

bb.bf:                                            ; preds = %bb.be
  %i.fd = load ptr, ptr %i.j, align 8, !tbaa !386 ; 6 uses
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !387
  %.not.i.i116 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.i116, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = load ptr, ptr %14, align 8, !tbaa !268
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !268
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fg, ptr %i.j, align 8, !tbaa !386
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr %13, align 8, !tbaa !380  ; 7 uses
  %i.fi = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 4 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.bi, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #27
          to label %.noexc117 unwind label %.loopexit.split-lp

.noexc117:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bh
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #26
          to label %.noexc118 unwind label %.loopexit ; 8 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  %i.fu = load ptr, ptr %14, align 8, !tbaa !268
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !268
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.fd
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc118
  %i.fv = ptrtoaddr ptr %i.fs to i64
  %i.fw = add i64 %i.fi, -8
  %i.fx = sub i64 %i.fw, %i.fj                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fx, 24
  %i.ga = sub i64 %i.fj, %i.fv
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader479, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fz, 4611686018427387900     ; 3 uses
  %i.gb = shl i64 %n.vec, 3                       ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fs, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fh, i64 %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.ge ; 2 uses
  %next.gep476 = getelementptr i8, ptr %i.fh, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep476, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep476, align 8, !tbaa !268
  %wide.load477 = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !268
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !268
  store <2 x ptr> %wide.load477, ptr %i.gg, align 8, !tbaa !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fz, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader479

.lr.ph.i.i.i.i.i.i.i.i.preheader479:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gc, %middle.block ]
  %.01214.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader479, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader479 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader479 ] ; 2 uses
  %i.gi = load ptr, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !268
  store ptr %i.gi, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !268
  %i.gj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.fd
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !391

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc118
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fs, %.noexc118 ], [ %i.gc, %middle.block ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fk) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  store ptr %i.fs, ptr %13, align 8, !tbaa !380
  store ptr %i.gl, ptr %i.j, align 8, !tbaa !386
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.gm, ptr %i.k, align 8, !tbaa !387
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.gn = load ptr, ptr %6, align 8, !tbaa !268   ; 8 uses
  store ptr %i.gn, ptr %16, align 8, !tbaa !70
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  %i.gp = lshr i64 %i.go, 40
  %i.gq = trunc nuw nsw i64 %i.gp to i32
  %i.gr = and i32 %i.gq, 1048575                  ; 3 uses
  %i.gs = icmp samesign ult i32 %i.gr, 1048574
  br i1 %i.gs, label %bb.bk, label %bb.bl, !prof !270

bb.bk:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit
  %i.gt = add nuw nsw i32 %i.gr, 1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 40
  %i.gw = and i64 %i.go, -1152920405095219201
  %i.gx = or i64 %i.gv, %i.gw
  store i64 %i.gx, ptr %i.gn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.bl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit
  %i.gy = icmp eq i32 %i.gr, 1048574
  br i1 %i.gy, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !73

bb.bm:                                            ; preds = %bb.bl
  %i.gz = or i64 %i.go, 1152920405095219200
  store i64 %i.gz, ptr %i.gn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.bc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.bl, %bb.bk, %bb.bm
  %i.ha = invoke noundef zeroext i1 @_ZN4cvc58internal6theory4bags10TheoryBags9isCareArgENS0_12NodeTemplateILb1EEEj(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 %16, i32 noundef %18)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hb = load i64, ptr %i.gn, align 8            ; 3 uses
  %i.hc = and i64 %i.hb, 1152920405095219200
  %.not.i.i120 = icmp eq i64 %i.hc, 1152920405095219200
  br i1 %.not.i.i120, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.bo, !prof !73

bb.bo:                                            ; preds = %bb.bn
  %i.hd = add i64 %i.hb, 1152920405095219200
  %i.he = and i64 %i.hd, 1152920405095219200      ; 2 uses
  %i.hf = and i64 %i.hb, -1152920405095219201
  %i.hg = or disjoint i64 %i.he, %i.hf
  store i64 %i.hg, ptr %i.gn, align 8
  %i.hh = icmp eq i64 %i.he, 0
  br i1 %i.hh, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !73

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.bn, %bb.bo, %bb.bp
  %spec.select = select i1 %i.ha, i1 true, i1 %.021
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.az, !llvm.loop !392

bb.br:                                            ; preds = %bb.bd
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.be
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bs, %bb.br
  %.pn48.pn = phi { ptr, i32 } [ %i.hk, %bb.br ], [ %i.hl, %bb.bs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.cf

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.cf

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit180: ; preds = %bb.bb
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit180
  %i.ho = load ptr, ptr %7, align 8, !tbaa !327
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = and i64 %i.hp, 1099511627775            ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.bv ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.bv ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !327
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = and i64 %i.ht, 1099511627775
  %i.hv = icmp samesign ult i64 %i.hu, %i.hq      ; 3 uses
  %.19.i.i.i.i = select i1 %i.hv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.hv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !332 ; 2 uses
  %.not.i.i.i.i181 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i181, label %_ZNSt3mapIN4cvc58internal8TypeNodeENS1_16NodeTemplateTrieILb0EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.bv, !llvm.loop !393

_ZNSt3mapIN4cvc58internal8TypeNodeENS1_16NodeTemplateTrieILb0EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.bv
  %i.hw = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.hw, label %.critedge.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeENS1_16NodeTemplateTrieILb0EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.hx = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = and i64 %i.hy, 1099511627775
  %i.ia = icmp samesign ult i64 %i.hq, %i.hz
  br i1 %i.ia, label %.critedge.i, label %bb.bx

.critedge.i:                                      ; preds = %bb.bw, %_ZNSt3mapIN4cvc58internal8TypeNodeENS1_16NodeTemplateTrieILb0EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit180
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.bw ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal8TypeNodeENS1_16NodeTemplateTrieILb0EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.d, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit180 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %7, ptr %3, align 8, !tbaa !394
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ib = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_16NodeTemplateTrieILb0EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc182 unwind label %bb.bz

.noexc182:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc182, %bb.bw
  %.sroa.06.0.i = phi ptr [ %i.ib, %.noexc182 ], [ %.19.i.i.i.i, %bb.bw ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.id = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %i.id, ptr %2, align 8, !tbaa !268
  invoke void @_ZN4cvc58internal16NodeTemplateTrieILb0EE12addOrGetTermENS0_12NodeTemplateILb0EEERKSt6vectorIS4_SaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.549") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ic, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !386
  %i.if = load ptr, ptr %13, align 8, !tbaa !380  ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = lshr exact i64 %i.ii, 3
  %i.ik = trunc i64 %i.ij to i32
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197

bb.bz:                                            ; preds = %.critedge.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bx
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197: ; preds = %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197_crit_edge, %bb.by
  %i.in = phi ptr [ %i.if, %bb.by ], [ %.pre, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197_crit_edge ] ; 3 uses
  %.139 = phi i32 [ %i.ik, %bb.by ], [ %.038417, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197_crit_edge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !387
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit197, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.is = load ptr, ptr %7, align 8, !tbaa !327   ; 3 uses
  %i.it = load i64, ptr %i.is, align 8            ; 3 uses
  %i.iu = and i64 %i.it, 1152920405095219200
  %.not.i.i198 = icmp eq i64 %i.iu, 1152920405095219200
  br i1 %.not.i.i198, label %_ZN4cvc58internal8TypeNodeD2Ev.exit200, label %bb.cc, !prof !73

bb.cc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit
  %i.iv = add i64 %i.it, 1152920405095219200
  %i.iw = and i64 %i.iv, 1152920405095219200      ; 2 uses
  %i.ix = and i64 %i.it, -1152920405095219201
  %i.iy = or disjoint i64 %i.iw, %i.ix
  store i64 %i.iy, ptr %i.is, align 8
  %i.iz = icmp eq i64 %i.iw, 0
  br i1 %i.iz, label %bb.cd, label %_ZN4cvc58internal8TypeNodeD2Ev.exit200, !prof !73

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit200 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit200:           ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0328.0416, i64 8 ; 2 uses
  %.not357 = icmp eq ptr %i.jc, %i.r
  br i1 %.not357, label %._crit_edge, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit89

bb.cf:                                            ; preds = %bb.bc, %bb.bt, %bb.bu, %bb.ca, %bb.bz
  %.pn51.pn = phi { ptr, i32 } [ %i.eq, %bb.bc ], [ %i.im, %bb.ca ], [ %i.il, %bb.bz ], [ %.pn48.pn, %bb.bt ], [ %i.hm, %bb.bu ]
  %i.jd = load ptr, ptr %13, align 8, !tbaa !380  ; 3 uses
  %.not.i.i.i201 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit202, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.je = load ptr, ptr %i.k, align 8, !tbaa !387
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jh) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit202

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit202: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit202, %bb.ax, %bb.ab
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit202 ], [ %.pn45.pn, %bb.ab ], [ %.pn41.pn.pn, %bb.ax ] ; 3 uses
  %i.ji = load ptr, ptr %7, align 8, !tbaa !327   ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 3 uses
  %i.jk = and i64 %i.jj, 1152920405095219200
  %.not.i.i203 = icmp eq i64 %i.jk, 1152920405095219200
  br i1 %.not.i.i203, label %.body, label %bb.ci, !prof !73

bb.ci:                                            ; preds = %bb.ch
  %i.jl = add i64 %i.jj, 1152920405095219200
  %i.jm = and i64 %i.jl, 1152920405095219200      ; 2 uses
  %i.jn = and i64 %i.jj, -1152920405095219201
  %i.jo = or disjoint i64 %i.jm, %i.jn
  store i64 %i.jo, ptr %i.ji, align 8
  %i.jp = icmp eq i64 %i.jm, 0
  br i1 %i.jp, label %bb.cj, label %.body, !prof !73
end_hunk_0
