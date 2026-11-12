Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/state?download=true
inline.NumInlined: 2190
inline.NumDeleted: 955
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers5ieval5State5watchENS0_12NodeTemplateILb1EEERKSt6vectorIS6_SaIS6_EES6_:bb.a

bb.x:                                             ; preds = %.lr.ph310
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !84 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !93
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !94
  %i.ei = icmp eq ptr %i.ec, %i.eh
  br i1 %i.ei, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i74, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(74) %i.ej)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i74 unwind label %.loopexit.split-lp215.loopexit.split-lp

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i74: ; preds = %bb.y, %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 152 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !103 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !105
  %.not.i11.i75 = icmp eq ptr %i.el, %i.en
  br i1 %.not.i11.i75, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i74
  %i.eo = load ptr, ptr %1, align 8, !tbaa !72    ; 5 uses
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !72
  %i.ep = load i64, ptr %i.eo, align 8            ; 3 uses
  %i.eq = lshr i64 %i.ep, 40
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = and i32 %i.er, 1048575                  ; 3 uses
  %i.et = icmp samesign ult i32 %i.es, 1048574
  br i1 %i.et, label %bb.aa, label %bb.ab, !prof !98

bb.aa:                                            ; preds = %bb.z
  %i.eu = add nuw nsw i32 %i.es, 1
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 40
  %i.ex = and i64 %i.ep, -1152920405095219201
  %i.ey = or i64 %i.ew, %i.ex
  store i64 %i.ey, ptr %i.eo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i76

bb.ab:                                            ; preds = %bb.z
  %i.ez = icmp eq i32 %i.es, 1048574
  br i1 %i.ez, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i76, !prof !99

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %i.ep, 1152920405095219200
  store i64 %i.fa, ptr %i.eo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i76 unwind label %.loopexit.split-lp215.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i76: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fb = load ptr, ptr %i.ek, align 8, !tbaa !103
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fc, ptr %i.ek, align 8, !tbaa !103
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i74
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr %i.el, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %.loopexit.split-lp215.loopexit.split-lp

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i76, %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ea, i64 168 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !123
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !123
  %.not.i = icmp eq ptr %.sroa.11.0306, %.sroa.21.0307
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %i.dy, align 8, !tbaa !112
  store ptr %i.fh, ptr %.sroa.11.0306, align 8, !tbaa !112
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fi = ptrtoint ptr %.sroa.21.0307 to i64      ; 2 uses
  %i.fj = ptrtoint ptr %.sroa.0158.0305 to i64    ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 4 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.ah, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc82 unwind label %.loopexit.split-lp215.loopexit.split-lp

.noexc82:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i81)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #24
          to label %.noexc83 unwind label %.loopexit.split-lp215.loopexit.split-lp ; 8 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  %i.fu = load ptr, ptr %i.dy, align 8, !tbaa !112
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !112
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0158.0305, %.sroa.21.0307
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %i.fv = ptrtoaddr ptr %i.fs to i64
  %i.fw = add i64 %i.fi, -8
  %i.fx = sub i64 %i.fw, %i.fj                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fx, 24
  %i.ga = sub i64 %i.fj, %i.fv
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader670, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fz, 4611686018427387900     ; 3 uses
  %i.gb = shl i64 %n.vec, 3                       ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fs, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %.sroa.0158.0305, i64 %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.ge ; 2 uses
  %next.gep579 = getelementptr i8, ptr %.sroa.0158.0305, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep579, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep579, align 8, !tbaa !112
  %wide.load580 = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !112
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !112
  store <2 x ptr> %wide.load580, ptr %i.gg, align 8, !tbaa !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fz, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader670

.lr.ph.i.i.i.i.i.i.i.preheader670:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gc, %middle.block ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0158.0305, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader670, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader670 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader670 ] ; 2 uses
  %i.gi = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !112
  store ptr %i.gi, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !112
  %i.gj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %.sroa.21.0307
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !214

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fs, %.noexc83 ], [ %i.gc, %middle.block ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.0158.0305, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0305, i64 noundef %i.fk) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.af
  %.sroa.0158.11 = phi ptr [ %i.fs, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0158.0305, %bb.af ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.11.0306, %bb.af ]
  %.sroa.21.11 = phi ptr [ %i.gl, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.21.0307, %bb.af ] ; 2 uses
  %.sroa.11.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.gm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0155.0308) #28 ; 2 uses
  %.not210 = icmp eq ptr %i.gm, %i.bz
  br i1 %.not210, label %._crit_edge311, label %.lr.ph310

.loopexit.split-lp215.loopexit.split-lp:          ; preds = %bb.y, %bb.ac, %bb.ad, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph310, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEC2Ev.exit, %bb.di
  %.sroa.0158.1 = phi ptr [ %.sroa.0158.0.lcssa, %_ZN4cvc58internal12NodeTemplateILb0EEC2Ev.exit ], [ %.sroa.0158.7, %bb.di ] ; 9 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0.lcssa, %_ZN4cvc58internal12NodeTemplateILb0EEC2Ev.exit ], [ %.sroa.11.5, %bb.di ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.0.lcssa, %_ZN4cvc58internal12NodeTemplateILb0EEC2Ev.exit ], [ %.sroa.21.7, %bb.di ] ; 9 uses
  %.sroa.0144.0 = phi ptr [ %i.dp, %_ZN4cvc58internal12NodeTemplateILb0EEC2Ev.exit ], [ %spec.select, %bb.di ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.11.1, i64 -8 ; 6 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !112 ; 2 uses
  %.not.i84 = icmp eq ptr %.sroa.0144.0, %i.go
  %spec.select = select i1 %.not.i84, ptr %.sroa.0144.0, ptr %i.go, !prof !99 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %spec.select, ptr %8, align 8, !tbaa !72
  %i.gp = load i64, ptr %spec.select, align 8     ; 3 uses
  %i.gq = lshr i64 %i.gp, 40
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 1048575                  ; 3 uses
  %i.gt = icmp samesign ult i32 %i.gs, 1048574
  br i1 %i.gt, label %bb.aj, label %bb.ak, !prof !98

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.gu = add nuw nsw i32 %i.gs, 1
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 40
  %i.gx = and i64 %i.gp, -1152920405095219201
  %i.gy = or i64 %i.gw, %i.gx
  store i64 %i.gy, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.gz = icmp eq i32 %i.gs, 1048574
  br i1 %i.gz, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !99

bb.al:                                            ; preds = %bb.ak
  %i.ha = or i64 %i.gp, 1152920405095219200
  store i64 %i.ha, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.bg

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.ak, %bb.aj, %bb.al
  %i.hb = load ptr, ptr %i.dr, align 8, !tbaa !81 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !124
  %.not.not.i.i.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  %i.hf = load ptr, ptr %8, align 8               ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.he, %bb.am ], [ %.sroa.06.0.i.i.i.i.i, %bb.ao ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !110 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !72
  %i.hi = icmp eq ptr %i.hf, %i.hh
  br i1 %i.hi, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.an, !llvm.loop !4

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 80 ; 2 uses
  %i.hk = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc88 unwind label %bb.bh  ; 3 uses

.noexc88:                                         ; preds = %bb.ap
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !80 ; 2 uses
  %i.hn = urem i64 %i.hk, %i.hm                   ; 2 uses
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !79
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.hq, null
  %.pre397 = load ptr, ptr %8, align 8            ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.aq

bb.aq:                                            ; preds = %.noexc88
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !110 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !127
  %i.hv = icmp eq i64 %i.hk, %i.hu
  %i.hw = load ptr, ptr %i.hs, align 8
  %i.hx = icmp eq ptr %.pre397, %i.hw
  %i.hy = select i1 %i.hv, i1 %i.hx, i1 false
  br i1 %i.hy, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i87

bb.ar:                                            ; preds = %bb.as
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ia = icmp eq i64 %i.hk, %i.ig
  %i.ib = load ptr, ptr %i.hz, align 8
  %i.ic = icmp eq ptr %.pre397, %i.ib
  %i.id = select i1 %i.ia, i1 %i.ic, i1 false
  br i1 %i.id, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i87, !llvm.loop !5

.lr.ph.i.i.i.i.i.i.i87:                           ; preds = %bb.aq, %bb.ar
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ie, %bb.ar ], [ %i.hr, %bb.aq ]
  %i.ie = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !110 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i87
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !127 ; 2 uses
  %i.ih = urem i64 %i.ig, %i.hm
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ih, %i.hn
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.ar, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.as
  br label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, !llvm.loop !5

_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i87, %bb.ar, %bb.ao, %bb.an, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.aq, %.noexc88
  %i.ii = phi ptr [ %.pre397, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ %i.hf, %bb.ao ], [ %.pre397, %bb.aq ], [ %.pre397, %.noexc88 ], [ %i.hf, %bb.an ], [ %.pre397, %bb.ar ], [ %.pre397, %.lr.ph.i.i.i.i.i.i.i87 ] ; 3 uses
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i, %bb.ao ], [ %i.hr, %bb.aq ], [ null, %.noexc88 ], [ null, %bb.an ], [ null, %.lr.ph.i.i.i.i.i.i.i87 ], [ %i.ie, %bb.ar ]
  %i.ij = load i64, ptr %i.ii, align 8            ; 3 uses
  %i.ik = and i64 %i.ij, 1152920405095219200
  %.not.i.i89 = icmp eq i64 %i.ik, 1152920405095219200
  br i1 %.not.i.i89, label %bb.aw, label %bb.at, !prof !99

bb.at:                                            ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit
  %i.il = add i64 %i.ij, 1152920405095219200
  %i.im = and i64 %i.il, 1152920405095219200      ; 2 uses
  %i.in = and i64 %i.ij, -1152920405095219201
  %i.io = or disjoint i64 %i.im, %i.in
  store i64 %i.io, ptr %i.ii, align 8
  %i.ip = icmp eq i64 %i.im, 0
  br i1 %i.ip, label %bb.au, label %bb.aw, !prof !99

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ii)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #26
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at, %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.is = icmp eq ptr %.sroa.06.1.i.i.i.i.i, null
  br i1 %i.is, label %bb.ax, label %bb.di

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %spec.select, ptr %9, align 8, !tbaa !72
  %i.it = load i64, ptr %spec.select, align 8     ; 3 uses
  %i.iu = lshr i64 %i.it, 40
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %i.iw = and i32 %i.iv, 1048575                  ; 3 uses
  %i.ix = icmp samesign ult i32 %i.iw, 1048574
  br i1 %i.ix, label %bb.ay, label %bb.az, !prof !98

bb.ay:                                            ; preds = %bb.ax
  %i.iy = add nuw nsw i32 %i.iw, 1
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 40
  %i.jb = and i64 %i.it, -1152920405095219201
  %i.jc = or i64 %i.ja, %i.jb
  store i64 %i.jc, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92

bb.az:                                            ; preds = %bb.ax
  %i.jd = icmp eq i32 %i.iw, 1048574
  br i1 %i.jd, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92, !prof !99

bb.ba:                                            ; preds = %bb.az
  %i.je = or i64 %i.it, 1152920405095219200
  store i64 %i.je, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92 unwind label %bb.bj

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92: ; preds = %bb.az, %bb.ay, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !107
  %i.jf = invoke noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.bb unwind label %bb.bk     ; 0 uses

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.jg = load ptr, ptr %9, align 8, !tbaa !72    ; 3 uses
  %i.jh = load i64, ptr %i.jg, align 8            ; 3 uses
  %i.ji = and i64 %i.jh, 1152920405095219200
  %.not.i.i94 = icmp eq i64 %i.ji, 1152920405095219200
  br i1 %.not.i.i94, label %bb.bf, label %bb.bc, !prof !99

bb.bc:                                            ; preds = %bb.bb
  %i.jj = add i64 %i.jh, 1152920405095219200
  %i.jk = and i64 %i.jj, 1152920405095219200      ; 2 uses
  %i.jl = and i64 %i.jh, -1152920405095219201
  %i.jm = or disjoint i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.jg, align 8
  %i.jn = icmp eq i64 %i.jk, 0
  br i1 %i.jn, label %bb.bd, label %bb.bf, !prof !99

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jg)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #26
  unreachable

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.jq = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = and i64 %i.jr, 1023
  %i.jt = icmp eq i64 %i.js, 7
  br i1 %i.jt, label %bb.di, label %bb.bm

bb.bg:                                            ; preds = %bb.al
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ap
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn37 = phi { ptr, i32 } [ %i.jv, %bb.bh ], [ %i.ju, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.bj:                                            ; preds = %bb.ba
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit92
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn39 = phi { ptr, i32 } [ %i.jx, %bb.bk ], [ %i.jw, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.bm:                                            ; preds = %bb.bf
  store ptr %spec.select, ptr %10, align 8, !tbaa !112
  %i.jy = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers5ieval9QuantInfo14isTraverseTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %10)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.jy, label %bb.bo, label %.thread183

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 0, ptr %i.ds, align 8, !tbaa !65
  store ptr null, ptr %i.dt, align 8, !tbaa !66
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !67
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !68
  store i64 0, ptr %i.dw, align 8, !tbaa !69
  %i.jz = load i64, ptr %i.jq, align 8
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = and i32 %i.ka, 1023                     ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 1023
  %i.kd = select i1 %i.kc, i32 -1, i32 %i.kb
  %i.ke = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kd)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.kf = icmp eq i32 %i.ke, 2
  %spec.select.v.i.i = select i1 %i.kf, i64 32, i64 24
  %spec.select.i.i96 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select.v.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %spec.select, i64 12
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 67108863
  %20 = zext nneg i32 %19 to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %20
  invoke void @_ZNSt3setIN4cvc58internal12NodeTemplateILb0EEESt4lessIS3_ESaIS3_EE6insertINS1_4expr9NodeValue8iteratorIS3_EEEEvT_SD_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %spec.select.i.i96, ptr nonnull %i.kh)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.ki = load ptr, ptr %i.du, align 8, !tbaa !67 ; 2 uses
  %.not211314 = icmp eq ptr %i.ki, %i.ds
  br i1 %.not211314, label %._crit_edge322, label %.lr.ph321

._crit_edge322:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124, %bb.bq
  %.sroa.0158.2.lcssa = phi ptr [ %.sroa.0158.1, %bb.bq ], [ %.sroa.0158.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ] ; 3 uses
  %.sroa.11.2.lcssa = phi ptr [ %i.gn, %bb.bq ], [ %.sroa.11.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ] ; 2 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.1, %bb.bq ], [ %.sroa.21.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.bq ], [ %.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ] ; 2 uses
  %i.kj = load ptr, ptr %i.dt, align 8, !tbaa !66
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.kj)
          to label %bb.ct unwind label %bb.br

bb.br:                                            ; preds = %._crit_edge322
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #26
  unreachable

bb.bs:                                            ; preds = %bb.bm
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %bb.bo, %bb.bp
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.lr.ph321:                                        ; preds = %bb.bq, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124
  %.sroa.0137.0319 = phi ptr [ %i.od, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ], [ %i.ki, %bb.bq ] ; 2 uses
  %.0318 = phi i64 [ %.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.21.2317 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ], [ %.sroa.21.1, %bb.bq ] ; 7 uses
  %.sroa.11.2316 = phi ptr [ %.sroa.11.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ], [ %i.gn, %bb.bq ] ; 4 uses
  %.sroa.0158.2315 = phi ptr [ %.sroa.0158.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124 ], [ %.sroa.0158.1, %bb.bq ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0137.0319, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !112
  store ptr %i.kp, ptr %12, align 8, !tbaa !112
  %i.kq = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.lr.ph321
  br i1 %i.kq, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kr = add i64 %.0318, 1                       ; 2 uses
  %i.ks = load ptr, ptr %12, align 8, !tbaa !112
  store ptr %i.ks, ptr %13, align 8, !tbaa !112
  %i.kt = invoke noundef nonnull align 8 dereferenceable(232) ptr @_ZN4cvc58internal6theory11quantifiers5ieval5State18getOrMkPatTermInfoENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 %13)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %spec.select, ptr %14, align 8, !tbaa !72
  %i.ku = load i64, ptr %spec.select, align 8     ; 3 uses
  %i.kv = lshr i64 %i.ku, 40
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 1048575                  ; 3 uses
  %i.ky = icmp samesign ult i32 %i.kx, 1048574
  br i1 %i.ky, label %bb.bx, label %bb.by, !prof !98

bb.bx:                                            ; preds = %bb.bw
  %i.kz = add nuw nsw i32 %i.kx, 1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 40
  %i.lc = and i64 %i.ku, -1152920405095219201
  %i.ld = or i64 %i.lb, %i.lc
  store i64 %i.ld, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99

bb.by:                                            ; preds = %bb.bw
  %i.le = icmp eq i32 %i.kx, 1048574
  br i1 %i.le, label %bb.bz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99, !prof !99

bb.bz:                                            ; preds = %bb.by
  %i.lf = or i64 %i.ku, 1152920405095219200
  store i64 %i.lf, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99 unwind label %bb.co

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99: ; preds = %bb.by, %bb.bx, %bb.bz
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 112
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !84 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !91
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !93
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !94
  %i.ln = icmp eq ptr %i.lh, %i.lm
  br i1 %i.ln, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i100, label %bb.ca

bb.ca:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kt, i64 104
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(74) %i.lo)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i100 unwind label %bb.cp

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i100: ; preds = %bb.ca, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit99
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kt, i64 152 ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !103 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kt, i64 160
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !105
  %.not.i11.i101 = icmp eq ptr %i.lq, %i.ls
  br i1 %.not.i11.i101, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i100
  %i.lt = load ptr, ptr %14, align 8, !tbaa !72   ; 5 uses
  store ptr %i.lt, ptr %i.lq, align 8, !tbaa !72
  %i.lu = load i64, ptr %i.lt, align 8            ; 3 uses
  %i.lv = lshr i64 %i.lu, 40
  %i.lw = trunc nuw nsw i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 1048575                  ; 3 uses
  %i.ly = icmp samesign ult i32 %i.lx, 1048574
  br i1 %i.ly, label %bb.cc, label %bb.cd, !prof !98

bb.cc:                                            ; preds = %bb.cb
  %i.lz = add nuw nsw i32 %i.lx, 1
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = shl nuw nsw i64 %i.ma, 40
  %i.mc = and i64 %i.lu, -1152920405095219201
  %i.md = or i64 %i.mb, %i.mc
  store i64 %i.md, ptr %i.lt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i102

bb.cd:                                            ; preds = %bb.cb
  %i.me = icmp eq i32 %i.lx, 1048574
  br i1 %i.me, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i102, !prof !99

bb.ce:                                            ; preds = %bb.cd
  %i.mf = or i64 %i.lu, 1152920405095219200
  store i64 %i.mf, ptr %i.lt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i102 unwind label %bb.cp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i102: ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.mg = load ptr, ptr %i.lp, align 8, !tbaa !103
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.mh, ptr %i.lp, align 8, !tbaa !103
  br label %bb.cg

bb.cf:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i100
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kt, i64 144
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, ptr %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.cg unwind label %bb.cp

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i102, %bb.cf
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kt, i64 168 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !123
  %i.ml = add i64 %i.mk, 1
  store i64 %i.ml, ptr %i.mj, align 8, !tbaa !123
  %i.mm = load ptr, ptr %14, align 8, !tbaa !72   ; 3 uses
  %i.mn = load i64, ptr %i.mm, align 8            ; 3 uses
  %i.mo = and i64 %i.mn, 1152920405095219200
  %.not.i.i107 = icmp eq i64 %i.mo, 1152920405095219200
  br i1 %.not.i.i107, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, label %bb.ch, !prof !99

bb.ch:                                            ; preds = %bb.cg
  %i.mp = add i64 %i.mn, 1152920405095219200
  %i.mq = and i64 %i.mp, 1152920405095219200      ; 2 uses
  %i.mr = and i64 %i.mn, -1152920405095219201
  %i.ms = or disjoint i64 %i.mq, %i.mr
  store i64 %i.ms, ptr %i.mm, align 8
  %i.mt = icmp eq i64 %i.mq, 0
  br i1 %i.mt, label %bb.ci, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, !prof !99

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108: ; preds = %bb.cg, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.not.i109 = icmp eq ptr %.sroa.11.2316, %.sroa.21.2317
  br i1 %.not.i109, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108
  %i.mw = load ptr, ptr %12, align 8, !tbaa !112
  store ptr %i.mw, ptr %.sroa.11.2316, align 8, !tbaa !112
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.11.2316, i64 8
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit124

bb.cl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108
  %i.my = ptrtoint ptr %.sroa.21.2317 to i64      ; 2 uses
  %i.mz = ptrtoint ptr %.sroa.0158.2315 to i64    ; 3 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 4 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775800
  br i1 %i.nb, label %bb.cm, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i110

bb.cm:                                            ; preds = %bb.cl
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers5ieval5State14getFreeVarInfoENS0_12NodeTemplateILb0EEE:bb.a
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !99

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval11FreeVarInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  ret ptr %i.ak
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(280) ptr @_ZN4cvc58internal6theory11quantifiers5ieval5State12getQuantInfoENS0_12NodeTemplateILb0EEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(424) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.pre.pre = load i64, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre = phi i64 [ %i.k, %bb.b ], [ %i.b, %bb.c ], [ %.pre.pre, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.q = and i64 %.pre, 1099511627775             ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1099511627775
  %i.v = icmp samesign ult i64 %i.u, %i.q         ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.e, !llvm.loop !3

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.e
  %i.w = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.w, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1099511627775
  %i.ab = icmp samesign ult i64 %i.q, %i.aa
  %spec.select.i.i = select i1 %i.ab, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %.sroa.0.0.i.i = phi ptr [ %i.p, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit ], [ %i.p, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.f ]
  %i.ac = and i64 %.pre, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !99

bb.g:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit
  %i.ad = add i64 %.pre, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %.pre, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !99

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  ret ptr %i.ak
}

declare noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers5ieval9QuantInfo8isActiveEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

declare noundef i64 @_ZNK4cvc58internal6theory11quantifiers5ieval9QuantInfo20getNumUnassignedVarsEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers5ieval5State16setQuantInactiveERNS3_9QuantInfoE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers5ieval9QuantInfo8isActiveEv(ptr noundef nonnull align 8 dereferenceable(280) %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal6theory11quantifiers5ieval9QuantInfo9setActiveEb(ptr noundef nonnull align 8 dereferenceable(280) %1, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !113
  %i.d = add i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %_ZN4cvc57context3CDOImEaSERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  br label %_ZN4cvc57context3CDOImEaSERKm.exit

_ZN4cvc57context3CDOImEaSERKm.exit:               ; preds = %bb.b, %bb.c
  store i64 %i.d, ptr %i.b, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %_ZN4cvc57context3CDOImEaSERKm.exit, %bb.a
  ret void
}

declare void @_ZN4cvc58internal6theory11quantifiers5ieval9QuantInfo22decrementUnassignedVarEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory11quantifiers5ieval5State13getFailureExpENS0_12NodeTemplateILb1EEERSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.509", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.509", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.295", align 8   ; 14 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.509", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.509", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.509", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %i.a, ptr %4, align 8, !tbaa !112
  %i.b = call noundef nonnull align 8 dereferenceable(280) ptr @_ZNK4cvc58internal6theory11quantifiers5ieval5State12getQuantInfoENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK4cvc58internal6theory11quantifiers5ieval9QuantInfo20getFailureConstraintEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.509") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.f = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %i.f, ptr %i.e, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !130
  store ptr %i.g, ptr %i.d, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.noexc32, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57
  %i.k = phi ptr [ %i.g, %.noexc32 ], [ %i.fc, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57 ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 17 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.m, ptr %7, align 8, !tbaa !72
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.b, label %bb.c, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.z

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.z = load i64, ptr %i.h, align 8, !tbaa !134
  %.not.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.aa = load ptr, ptr %7, align 8               ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %i.j, %bb.e ], [ %.sroa.06.0.i.i, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !110 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.f, !llvm.loop !223

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ae = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc34 unwind label %bb.aa  ; 3 uses

.noexc34:                                         ; preds = %bb.h
  %i.af = load i64, ptr %i.i, align 8, !tbaa !135 ; 2 uses
  %i.ag = urem i64 %i.ae, %i.af                   ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  %.pre = load ptr, ptr %7, align 8               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc34
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = icmp eq i64 %i.ae, %i.an
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = icmp eq ptr %.pre, %i.ap
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.at = icmp eq i64 %i.ae, %i.az
  %i.au = load ptr, ptr %i.as, align 8
  %i.av = icmp eq ptr %.pre, %i.au
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !224

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.ak, %bb.i ]
  %i.ax = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !127 ; 2 uses
  %i.ba = urem i64 %i.az, %i.af
  %.not19.i.i.i.i = icmp eq i64 %i.ba, %i.ag
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !224

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, !llvm.loop !224

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.j, %bb.g, %bb.f, %..loopexit_crit_edge21.i.i.i.i, %bb.i, %.noexc34
  %i.bb = phi ptr [ %.pre, %..loopexit_crit_edge21.i.i.i.i ], [ %i.aa, %bb.g ], [ %.pre, %bb.i ], [ %.pre, %.noexc34 ], [ %i.aa, %bb.f ], [ %.pre, %bb.j ], [ %.pre, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ %.sroa.06.0.i.i, %bb.g ], [ %i.ak, %bb.i ], [ null, %.noexc34 ], [ null, %bb.f ], [ null, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.j ]
  %i.bc = icmp eq ptr %.sroa.06.1.i.i, null
  %i.bd = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.be = and i64 %i.bd, 1152920405095219200
  %.not.i.i35 = icmp eq i64 %i.be, 1152920405095219200
  br i1 %.not.i.i35, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !99

bb.l:                                             ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  %i.bf = add i64 %i.bd, 1152920405095219200
  %i.bg = and i64 %i.bf, 1152920405095219200      ; 2 uses
  %i.bh = and i64 %i.bd, -1152920405095219201
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.bb, align 8
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !99

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.bc, label %bb.o, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.m, ptr %8, align 8, !tbaa !72
  %i.bm = load i64, ptr %i.m, align 8             ; 3 uses
  %i.bn = lshr i64 %i.bm, 40
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 1048575                  ; 3 uses
  %i.bq = icmp samesign ult i32 %i.bp, 1048574
  br i1 %i.bq, label %bb.p, label %bb.q, !prof !98

bb.p:                                             ; preds = %bb.o
  %i.br = add nuw nsw i32 %i.bp, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 40
  %i.bu = and i64 %i.bm, -1152920405095219201
  %i.bv = or i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.m, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37

bb.q:                                             ; preds = %bb.o
  %i.bw = icmp eq i32 %i.bp, 1048574
  br i1 %i.bw, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37, !prof !99

bb.r:                                             ; preds = %bb.q
  %i.bx = or i64 %i.bm, 1152920405095219200
  store i64 %i.bx, ptr %i.m, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37 unwind label %bb.ac

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37: ; preds = %bb.q, %bb.p, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !228
  %i.by = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.s unwind label %bb.ad      ; 0 uses

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bz = load ptr, ptr %8, align 8, !tbaa !72    ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i39 = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i39, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit40, label %bb.t, !prof !99

bb.t:                                             ; preds = %bb.s
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bz, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit40, !prof !99

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit40 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit40: ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  store ptr %i.m, ptr %9, align 8, !tbaa !112
  %i.cj = invoke noundef zeroext i1 @_ZN4cvc58internal4expr11hasBoundVarENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %9)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_1
begin_hunk_2_@_ZNK4cvc58internal6theory11quantifiers5ieval5State13getFailureExpENS0_12NodeTemplateILb1EEERSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EE:_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
bb.x:                                             ; preds = %bb.w
  store ptr %i.m, ptr %10, align 8, !tbaa !112
  %i.ck = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers5ieval9QuantInfo14isTraverseTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %10)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.ck, label %bb.af, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split

bb.z:                                             ; preds = %bb.d
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.aa ], [ %i.cl, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.ac:                                            ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit37
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.co, %bb.ad ], [ %i.cn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.af:                                            ; preds = %bb.y
  store ptr %i.m, ptr %11, align 8, !tbaa !112
  %i.cp = invoke noundef nonnull align 8 dereferenceable(232) ptr @_ZNK4cvc58internal6theory11quantifiers5ieval5State14getPatTermInfoENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 %11)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 224
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !112 ; 3 uses
  %i.cs = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.ah, label %bb.al, !prof !70

bb.ah:                                            ; preds = %bb.ag
  %i.cu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i41 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i41, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.aj unwind label %bb.ak     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  store i64 1152920405095219200, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store ptr %i.cv, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !71
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body

bb.al:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %i.cy = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !71
  %i.cz = icmp eq ptr %i.cr, %i.cy
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !229 ; 7 uses
  br i1 %i.cz, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !131
  %.not.i42 = icmp eq ptr %i.da, %i.db
  br i1 %.not.i42, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.cr, ptr %i.da, align 8, !tbaa !112
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !132
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split

bb.ao:                                            ; preds = %bb.am
  %i.dd = load ptr, ptr %6, align 8, !tbaa !130   ; 7 uses
  %i.de = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 4 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.ap, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i43

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i43: ; preds = %bb.ao
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i44, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i45)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #24
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i43
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store ptr %i.cr, ptr %i.dp, align 8, !tbaa !112
  %.not13.i.i.i.i.i.i.i46 = icmp eq ptr %i.dd, %i.da
  br i1 %.not13.i.i.i.i.i.i.i46, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51, label %.lr.ph.i.i.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %.noexc56
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = add i64 %i.de, -8
  %i.ds = sub i64 %i.dr, %i.df                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 24
  %i.dv = sub i64 %i.df, %i.dq
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i47.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i47.preheader
  %n.vec = and i64 %i.du, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %i.do, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dd, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.dz ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.dd, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep102, align 8, !tbaa !112
  %wide.load103 = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !112
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !112
  store <2 x ptr> %wide.load103, ptr %i.eb, align 8, !tbaa !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51, label %.lr.ph.i.i.i.i.i.i.i47.preheader105

.lr.ph.i.i.i.i.i.i.i47.preheader105:              ; preds = %.lr.ph.i.i.i.i.i.i.i47.preheader, %middle.block
  %.015.i.i.i.i.i.i.i48.ph = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i47.preheader ], [ %i.dx, %middle.block ]
  %.01214.i.i.i.i.i.i.i49.ph = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i47.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i.i47:                           ; preds = %.lr.ph.i.i.i.i.i.i.i47.preheader105, %.lr.ph.i.i.i.i.i.i.i47
  %.015.i.i.i.i.i.i.i48 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i47 ], [ %.015.i.i.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i.i.i47.preheader105 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i49 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i47 ], [ %.01214.i.i.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i.i.i47.preheader105 ] ; 2 uses
  %i.ed = load ptr, ptr %.01214.i.i.i.i.i.i.i49, align 8, !tbaa !112
  store ptr %i.ed, ptr %.015.i.i.i.i.i.i.i48, align 8, !tbaa !112
  %i.ee = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i49, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i48, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i50 = icmp eq ptr %i.ee, %i.da
  br i1 %.not.i.i.i.i.i.i.i50, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51, label %.lr.ph.i.i.i.i.i.i.i47, !llvm.loop !226

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51: ; preds = %.lr.ph.i.i.i.i.i.i.i47, %middle.block, %.noexc56
  %.0.lcssa.i.i.i.i.i.i.i52 = phi ptr [ %i.do, %.noexc56 ], [ %i.dx, %middle.block ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i47 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i52, i64 8
  %.not.i35.i.i53 = icmp eq ptr %i.dd, null
  br i1 %.not.i35.i.i53, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i54, label %bb.aq

bb.aq:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.ej) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i54

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i54: ; preds = %bb.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i51
  store ptr %i.do, ptr %6, align 8, !tbaa !130
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !132
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.ek, ptr %i.d, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57

bb.ar:                                            ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = trunc i64 %i.em to i32
  %i.eo = and i32 %i.en, 1023                     ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 1023
  %i.eq = select i1 %i.ep, i32 -1, i32 %i.eo
  %i.er = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eq)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.es = icmp eq i32 %i.er, 2
  %spec.select.v.i.i = select i1 %i.es, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.v.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 67108863
  %15 = zext nneg i32 %14 to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %15
  %i.ev = load ptr, ptr %6, align 8, !tbaa !229   ; 2 uses
  %i.ew = ptrtoint ptr %i.da to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ez, ptr nonnull %spec.select.i.i, ptr nonnull %i.eu)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.fa = load ptr, ptr %6, align 8, !tbaa !229
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i43, %bb.x, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit40, %bb.af, %bb.as, %bb.ar, %bb.ap, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split: ; preds = %bb.w, %bb.y, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.an
  %.pr = load ptr, ptr %6, align 8, !tbaa !229
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split, %bb.at, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i54
  %i.fb = phi ptr [ %.pr, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57thread-pre-split ], [ %i.fa, %bb.at ], [ %i.do, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i54 ] ; 4 uses
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.au, label %bb.a, !llvm.loop !227

bb.au:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit57
  %.not.i.i.i60 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fh) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %bb.ae, %bb.ak
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.ak ], [ %.pn, %bb.ab ], [ %.pn22, %bb.ae ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fi = load ptr, ptr %6, align 8, !tbaa !130   ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit62, label %bb.aw

bb.aw:                                            ; preds = %.body
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit62

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit62: ; preds = %.body, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(280) ptr @_ZNK4cvc58internal6theory11quantifiers5ieval5State12getQuantInfoENS0_12NodeTemplateILb0EEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(424) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.pre.pre = load i64, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre = phi i64 [ %i.k, %bb.b ], [ %i.b, %bb.c ], [ %.pre.pre, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.q = and i64 %.pre, 1099511627775             ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1099511627775
  %i.v = icmp samesign ult i64 %i.u, %i.q         ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.e, !llvm.loop !7

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.e
  %i.w = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.w, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1099511627775
  %i.ab = icmp samesign ult i64 %i.q, %i.aa
  %spec.select.i.i = select i1 %i.ab, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit: ; preds = %bb.f, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %.sroa.0.0.i.i = phi ptr [ %i.p, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit ], [ %i.p, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers5ieval9QuantInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.f ]
  %i.ac = and i64 %.pre, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !99

bb.g:                                             ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit
  %i.ad = add i64 %.pre, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %.pre, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !99

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers5ieval9QuantInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit, %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  ret ptr %i.ak
}

declare void @_ZNK4cvc58internal6theory11quantifiers5ieval9QuantInfo20getFailureConstraintEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.509") align 8, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal4expr11hasBoundVarENS0_12NodeTemplateILb0EEE(ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(232) ptr @_ZNK4cvc58internal6theory11quantifiers5ieval5State14getPatTermInfoENS0_12NodeTemplateILb0EEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(424) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.pre.pre = load i64, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
end_hunk_2
