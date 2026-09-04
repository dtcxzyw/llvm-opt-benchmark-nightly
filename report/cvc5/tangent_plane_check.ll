Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/tangent_plane_check?download=true
inline.NumInlined: 1103
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl17TangentPlaneCheck5checkEb:bb.a
  %i.tc = or i64 %i.sr, 1152920405095219200
  store i64 %i.tc, ptr %i.sq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339 unwind label %bb.ee

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339: ; preds = %bb.dj, %bb.di, %bb.dk
  %i.td = load ptr, ptr %89, align 8, !tbaa !33   ; 3 uses
  %i.te = load ptr, ptr %90, align 8, !tbaa !33   ; 3 uses
  %.not930 = icmp eq ptr %i.td, %i.te
  br i1 %.not930, label %bb.fo, label %bb.dl

bb.dl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #19
  %i.tf = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.tf, 0
  %i.tg = select i1 %.not, i32 76, i32 78
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19, !noalias !157
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !160, !noalias !157
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %55, ptr noundef %i.ti, i32 noundef %i.tg)
          to label %.noexc340 unwind label %bb.ef

.noexc340:                                        ; preds = %bb.dl
  store ptr %i.td, ptr %56, align 8, !tbaa !43, !noalias !157
  %i.tj = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %55, ptr noundef nonnull align 8 %56)
          to label %bb.dm unwind label %bb.dp, !noalias !157

bb.dm:                                            ; preds = %.noexc340
  store ptr %i.te, ptr %57, align 8, !tbaa !43, !noalias !157
  %i.tk = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.tj, ptr noundef nonnull align 8 %57)
          to label %bb.dn unwind label %bb.dq, !noalias !157 ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %91, ptr noundef nonnull align 8 dereferenceable(124) %55)
          to label %bb.ds unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dp:                                            ; preds = %.noexc340
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do
  %.pn5.i = phi { ptr, i32 } [ %i.tl, %bb.do ], [ %i.tn, %bb.dq ], [ %i.tm, %bb.dp ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !157
  br label %.body

bb.ds:                                            ; preds = %bb.dn
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #19
  %i.to = load ptr, ptr %91, align 8, !tbaa !33
  store ptr %i.to, ptr %93, align 8, !tbaa !43
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %92, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %93)
          to label %bb.dt unwind label %bb.eg

bb.dt:                                            ; preds = %bb.ds
  %i.tp = load ptr, ptr %91, align 8, !tbaa !33   ; 4 uses
  %i.tq = load ptr, ptr %92, align 8, !tbaa !33
  %.not.i341 = icmp eq ptr %i.tp, %i.tq
  br i1 %.not.i341, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.du, !prof !35

bb.du:                                            ; preds = %bb.dt
  %i.tr = load i64, ptr %i.tp, align 8            ; 3 uses
  %i.ts = and i64 %i.tr, 1152920405095219200
  %.not.i.i342 = icmp eq i64 %i.ts, 1152920405095219200
  br i1 %.not.i.i342, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.dv, !prof !35

bb.dv:                                            ; preds = %bb.du
  %i.tt = add i64 %i.tr, 1152920405095219200
  %i.tu = and i64 %i.tt, 1152920405095219200      ; 2 uses
  %i.tv = and i64 %i.tr, -1152920405095219201
  %i.tw = or disjoint i64 %i.tu, %i.tv
  store i64 %i.tw, ptr %i.tp, align 8
  %i.tx = icmp eq i64 %i.tu, 0
  br i1 %i.tx, label %bb.dw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !35

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.eh

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.dw, %bb.dv, %bb.du
  %i.ty = load ptr, ptr %92, align 8, !tbaa !33   ; 5 uses
  store ptr %i.ty, ptr %91, align 8, !tbaa !33
  %i.tz = load i64, ptr %i.ty, align 8            ; 3 uses
  %i.ua = lshr i64 %i.tz, 40
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = and i32 %i.ub, 1048575                  ; 3 uses
  %i.ud = icmp samesign ult i32 %i.uc, 1048574
  br i1 %i.ud, label %bb.dx, label %bb.dy, !prof !34

bb.dx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ue = add nuw nsw i32 %i.uc, 1
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = shl nuw nsw i64 %i.uf, 40
  %i.uh = and i64 %i.tz, -1152920405095219201
  %i.ui = or i64 %i.ug, %i.uh
  store i64 %i.ui, ptr %i.ty, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.dy:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.uj = icmp eq i32 %i.uc, 1048574
  br i1 %i.uj, label %bb.dz, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !35

bb.dz:                                            ; preds = %bb.dy
  %i.uk = or i64 %i.tz, 1152920405095219200
  store i64 %i.uk, ptr %i.ty, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.eh

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.dy, %bb.dx, %bb.dt, %bb.dz
  %i.ul = load ptr, ptr %92, align 8, !tbaa !33   ; 3 uses
  %i.um = load i64, ptr %i.ul, align 8            ; 3 uses
  %i.un = and i64 %i.um, 1152920405095219200
  %.not.i.i345 = icmp eq i64 %i.un, 1152920405095219200
  br i1 %.not.i.i345, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347, label %bb.ea, !prof !35

bb.ea:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.uo = add i64 %i.um, 1152920405095219200
  %i.up = and i64 %i.uo, 1152920405095219200      ; 2 uses
  %i.uq = and i64 %i.um, -1152920405095219201
  %i.ur = or disjoint i64 %i.up, %i.uq
  store i64 %i.ur, ptr %i.ul, align 8
  %i.us = icmp eq i64 %i.up, 0
  br i1 %i.us, label %bb.eb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347, !prof !35

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ul)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ut = landingpad { ptr, i32 }
          catch ptr null
  %i.uu = extractvalue { ptr, i32 } %i.ut, 0
  call void @__clang_call_terminate(ptr %i.uu) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  %i.uv = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load ptr, ptr %91, align 8, !tbaa !33   ; 2 uses
  %i.uy = load ptr, ptr %i.uw, align 8, !tbaa !33
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %.preheader936, label %.loopexit937

.preheader936:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347
  %.sroa.sel.sroa.sel899 = select i1 %i.pc, ptr %i.ah, ptr %i.ak ; 3 uses
  %.sroa.sel = select i1 %i.pc, ptr %88, ptr %i.aj
  %.sroa.sel902 = select i1 %i.pc, ptr %i.aj, ptr %88
  %.sroa.sel902.sroa.sel905 = select i1 %i.pc, ptr %i.ak, ptr %i.ah ; 3 uses
  br label %bb.ej

bb.ed:                                            ; preds = %bb.cq
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.ee:                                            ; preds = %.noexc782, %.critedge.i335, %bb.dk, %.critedge.i321
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body784

bb.ef:                                            ; preds = %bb.dl
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eg:                                            ; preds = %bb.ds
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.dz, %bb.dw
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #19
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn136 = phi { ptr, i32 } [ %i.ve, %bb.eh ], [ %i.vd, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  br label %.body794

bb.ej:                                            ; preds = %.preheader936, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387
  %i.vf = phi i1 [ true, %.preheader936 ], [ false, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387 ]
  %.0481440 = phi i64 [ 0, %.preheader936 ], [ 1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387 ] ; 2 uses
  %i.vg = load ptr, ptr %.sroa.sel.sroa.sel899, align 8, !tbaa !29 ; 3 uses
  %.val931 = load ptr, ptr %i.al, align 8
  %.val932 = load ptr, ptr %i.ai, align 16
  %i.vh = select i1 %i.pc, ptr %.val932, ptr %.val931
  %.not.i348 = icmp eq ptr %i.vg, %i.vh
  br i1 %.not.i348, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vi = load ptr, ptr %89, align 8, !tbaa !33   ; 5 uses
  store ptr %i.vi, ptr %i.vg, align 8, !tbaa !33
  %i.vj = load i64, ptr %i.vi, align 8            ; 3 uses
  %i.vk = lshr i64 %i.vj, 40
  %i.vl = trunc nuw nsw i64 %i.vk to i32
  %i.vm = and i32 %i.vl, 1048575                  ; 3 uses
  %i.vn = icmp samesign ult i32 %i.vm, 1048574
  br i1 %i.vn, label %bb.el, label %bb.em, !prof !34

bb.el:                                            ; preds = %bb.ek
  %i.vo = add nuw nsw i32 %i.vm, 1
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = shl nuw nsw i64 %i.vp, 40
  %i.vr = and i64 %i.vj, -1152920405095219201
  %i.vs = or i64 %i.vq, %i.vr
  store i64 %i.vs, ptr %i.vi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i349

bb.em:                                            ; preds = %bb.ek
  %i.vt = icmp eq i32 %i.vm, 1048574
  br i1 %i.vt, label %bb.en, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i349, !prof !35

bb.en:                                            ; preds = %bb.em
  %i.vu = or i64 %i.vj, 1152920405095219200
  store i64 %i.vu, ptr %i.vi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i349 unwind label %bb.fk

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i349: ; preds = %bb.en, %bb.em, %bb.el
  %i.vv = load ptr, ptr %.sroa.sel.sroa.sel899, align 8, !tbaa !29
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store ptr %i.vw, ptr %.sroa.sel.sroa.sel899, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352

bb.eo:                                            ; preds = %bb.ej
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.sel, ptr %i.vg, ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352 unwind label %bb.fk

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i349, %bb.eo
  %113 = or disjoint i64 %.0481440, 2
  %114 = select i1 %i.pc, i64 %113, i64 %.0481440
  %i.vx = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %114 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !23 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 3 uses
  %.not10.i.i.i.i353 = icmp eq ptr %i.vz, null
  br i1 %.not10.i.i.i.i353, label %.critedge.i364, label %.lr.ph.i.i.i.i354

.lr.ph.i.i.i.i354:                                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352
  %i.wb = load ptr, ptr %82, align 8, !tbaa !33
  %i.wc = load i64, ptr %i.wb, align 8
  %i.wd = and i64 %i.wc, 1099511627775            ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i354
  %.012.i.i.i.i355 = phi ptr [ %i.vz, %.lr.ph.i.i.i.i354 ], [ %.1.i.i.i.i360, %bb.ep ] ; 3 uses
  %.0811.i.i.i.i356 = phi ptr [ %i.wa, %.lr.ph.i.i.i.i354 ], [ %.19.i.i.i.i357, %bb.ep ]
  %i.we = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i355, i64 32
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !33
  %i.wg = load i64, ptr %i.wf, align 8
  %i.wh = and i64 %i.wg, 1099511627775
  %i.wi = icmp samesign ult i64 %i.wh, %i.wd      ; 2 uses
  %.19.i.i.i.i357 = select i1 %i.wi, ptr %.0811.i.i.i.i356, ptr %.012.i.i.i.i355 ; 6 uses
  %.1.in.v.i.i.i.i358 = select i1 %i.wi, i64 24, i64 16
  %.1.in.i.i.i.i359 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i355, i64 %.1.in.v.i.i.i.i358
  %.1.i.i.i.i360 = load ptr, ptr %.1.in.i.i.i.i359, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i361 = icmp eq ptr %.1.i.i.i.i360, null
  br i1 %.not.i.i.i.i361, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i362, label %bb.ep, !llvm.loop !66

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i362: ; preds = %bb.ep
  %i.wj = icmp eq ptr %.19.i.i.i.i357, %i.wa
  br i1 %i.wj, label %.critedge.i364, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i362
  %i.wk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i357, i64 32
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !33
  %i.wm = load i64, ptr %i.wl, align 8
  %i.wn = and i64 %i.wm, 1099511627775
  %i.wo = icmp samesign ult i64 %i.wd, %i.wn
  br i1 %i.wo, label %.critedge.i364, label %bb.er

.critedge.i364:                                   ; preds = %bb.eq, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i362, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352
  %.08.lcssa.i.i.i11.i365 = phi ptr [ %.19.i.i.i.i357, %bb.eq ], [ %.19.i.i.i.i357, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i362 ], [ %i.wa, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit352 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  store ptr %82, ptr %53, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.wp = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.vx, ptr %.08.lcssa.i.i.i11.i365, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 1 dereferenceable(1) %54)
          to label %.noexc366 unwind label %bb.fk

.noexc366:                                        ; preds = %.critedge.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  br label %bb.er

bb.er:                                            ; preds = %.noexc366, %bb.eq
  %.sroa.06.0.i363 = phi ptr [ %i.wp, %.noexc366 ], [ %.19.i.i.i.i357, %bb.eq ] ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i363, i64 40 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i363, i64 56
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !23 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i363, i64 48 ; 5 uses
  %.not10.i.i.i.i368 = icmp eq ptr %i.ws, null
  br i1 %.not10.i.i.i.i368, label %.critedge.i379, label %.lr.ph.i.i.i.i369

.lr.ph.i.i.i.i369:                                ; preds = %bb.er
  %i.wu = load ptr, ptr %83, align 8, !tbaa !33
  %i.wv = load i64, ptr %i.wu, align 8
  %i.ww = and i64 %i.wv, 1099511627775            ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %.lr.ph.i.i.i.i369
  %.012.i.i.i.i370 = phi ptr [ %i.ws, %.lr.ph.i.i.i.i369 ], [ %.1.i.i.i.i375, %bb.es ] ; 3 uses
  %.0811.i.i.i.i371 = phi ptr [ %i.wt, %.lr.ph.i.i.i.i369 ], [ %.19.i.i.i.i372, %bb.es ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i370, i64 32
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !33
  %i.wz = load i64, ptr %i.wy, align 8
  %i.xa = and i64 %i.wz, 1099511627775
  %i.xb = icmp samesign ult i64 %i.xa, %i.ww      ; 2 uses
  %.19.i.i.i.i372 = select i1 %i.xb, ptr %.0811.i.i.i.i371, ptr %.012.i.i.i.i370 ; 6 uses
  %.1.in.v.i.i.i.i373 = select i1 %i.xb, i64 24, i64 16
  %.1.in.i.i.i.i374 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i370, i64 %.1.in.v.i.i.i.i373
  %.1.i.i.i.i375 = load ptr, ptr %.1.in.i.i.i.i374, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i376 = icmp eq ptr %.1.i.i.i.i375, null
  br i1 %.not.i.i.i.i376, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i377, label %bb.es, !llvm.loop !67

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i377: ; preds = %bb.es
  %i.xc = icmp eq ptr %.19.i.i.i.i372, %i.wt
  br i1 %i.xc, label %.critedge.i379, label %bb.et

bb.et:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i377
  %i.xd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i372, i64 32
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !33
  %i.xf = load i64, ptr %i.xe, align 8
  %i.xg = and i64 %i.xf, 1099511627775
  %i.xh = icmp samesign ult i64 %i.ww, %i.xg
  br i1 %i.xh, label %.critedge.i379, label %bb.fe

.critedge.i379:                                   ; preds = %bb.et, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i377, %bb.er
  %.08.lcssa.i.i.i11.i380 = phi ptr [ %.19.i.i.i.i372, %bb.et ], [ %.19.i.i.i.i372, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i377 ], [ %i.wt, %bb.er ]
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  store ptr %83, ptr %51, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.xi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc792 unwind label %bb.fk ; 7 uses

.noexc792:                                        ; preds = %.critedge.i379
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.wq, ptr noundef nonnull %i.xi, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 1 dereferenceable(1) %52)
          to label %.noexc793 unwind label %bb.fk

.noexc793:                                        ; preds = %.noexc792
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 32 ; 3 uses
  %i.xk = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.wq, ptr %.08.lcssa.i.i.i11.i380, ptr noundef nonnull align 8 dereferenceable(8) %i.xj)
          to label %bb.eu unwind label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i786 ; 2 uses

bb.eu:                                            ; preds = %.noexc793
  %i.xl = extractvalue { ptr, ptr } %i.xk, 0      ; 2 uses
  %i.xm = extractvalue { ptr, ptr } %i.xk, 1      ; 4 uses
  %.not.i787 = icmp eq ptr %i.xm, null
  br i1 %.not.i787, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.not.i.i.i788 = icmp ne ptr %i.xl, null
  %i.xn = icmp eq ptr %i.xm, %i.wt
  %or.cond.i.i.i789 = select i1 %.not.i.i.i788, i1 true, i1 %i.xn
  br i1 %or.cond.i.i.i789, label %.thread.i790, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.xp = load ptr, ptr %i.xj, align 8, !tbaa !33
  %i.xq = load i64, ptr %i.xp, align 8
  %i.xr = and i64 %i.xq, 1099511627775
  %i.xs = load ptr, ptr %i.xo, align 8, !tbaa !33
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = and i64 %i.xt, 1099511627775
  %i.xv = icmp samesign ult i64 %i.xr, %i.xu
  br label %.thread.i790

.thread.i790:                                     ; preds = %bb.ew, %bb.ev
  %i.xw = phi i1 [ %i.xv, %bb.ew ], [ true, %bb.ev ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.xw, ptr noundef nonnull %i.xi, ptr noundef nonnull %i.xm, ptr noundef nonnull align 8 dereferenceable(32) %i.wt) #19
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i363, i64 80 ; 2 uses
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !26
  %i.xz = add i64 %i.xy, 1
  store i64 %i.xz, ptr %i.xx, align 8, !tbaa !26
  br label %.noexc381

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i786: ; preds = %.noexc793
  %i.ya = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.wq, ptr noundef nonnull %i.xi) #19
  br label %.body794

bb.ex:                                            ; preds = %bb.eu
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !33 ; 3 uses
  %i.yd = load i64, ptr %i.yc, align 8            ; 3 uses
  %i.ye = and i64 %i.yd, 1152920405095219200
  %.not.i.i.i.i.i823 = icmp eq i64 %i.ye, 1152920405095219200
  br i1 %.not.i.i.i.i.i823, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i824, label %bb.ey, !prof !35

bb.ey:                                            ; preds = %bb.ex
  %i.yf = add i64 %i.yd, 1152920405095219200
  %i.yg = and i64 %i.yf, 1152920405095219200      ; 2 uses
  %i.yh = and i64 %i.yd, -1152920405095219201
  %i.yi = or disjoint i64 %i.yg, %i.yh
  store i64 %i.yi, ptr %i.yc, align 8
  %i.yj = icmp eq i64 %i.yg, 0
  br i1 %i.yj, label %bb.ez, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i824, !prof !35

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i824 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i824: ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.ym = load ptr, ptr %i.xj, align 8, !tbaa !33 ; 3 uses
  %i.yn = load i64, ptr %i.ym, align 8            ; 3 uses
  %i.yo = and i64 %i.yn, 1152920405095219200
  %.not.i.i1.i.i.i825 = icmp eq i64 %i.yo, 1152920405095219200
  br i1 %.not.i.i1.i.i.i825, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit826, label %bb.fb, !prof !35

bb.fb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i824
  %i.yp = add i64 %i.yn, 1152920405095219200
  %i.yq = and i64 %i.yp, 1152920405095219200      ; 2 uses
  %i.yr = and i64 %i.yn, -1152920405095219201
  %i.ys = or disjoint i64 %i.yq, %i.yr
  store i64 %i.ys, ptr %i.ym, align 8
  %i.yt = icmp eq i64 %i.yq, 0
  br i1 %i.yt, label %bb.fc, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit826, !prof !35

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ym)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit826 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
