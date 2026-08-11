inline.NumInlined: 466
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv20CalibrateDebevecImpl7processERKNS_11_InputArrayERKNS_12_OutputArrayES3_:bb.a
  %.sroa.speculated.i.i.i.i205.us = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i205.us, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 3 uses
  %.not.i.i.i.i206.us = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i.i206.us)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #20
          to label %.noexc217.us unwind label %.loopexit329.split.us ; 8 uses

.noexc217.us:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.us
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  %.sroa.6.0.insert.ext281.us = zext nneg i32 %.0125363.us378 to i64
  %.sroa.6.0.insert.shift282.us = shl nuw nsw i64 %.sroa.6.0.insert.ext281.us, 32
  %.sroa.0275.0.insert.insert279.us = or disjoint i64 %.sroa.6.0.insert.shift282.us, %.sroa.0275.0.insert.ext.us
  store i64 %.sroa.0275.0.insert.insert279.us, ptr %i.ev, align 4
  %.not10.i.i.i.i.i.i207.us = icmp eq ptr %.sroa.0296.2361.us, %.sroa.17.2360.us
  br i1 %.not10.i.i.i.i.i.i207.us, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us, label %.lr.ph.i.i.i.i.i.i208.us.preheader

.lr.ph.i.i.i.i.i.i208.us.preheader:               ; preds = %.noexc217.us
  %i.ew = ptrtoaddr ptr %i.eu to i64
  %i.ex = add i64 %i.ek, -8
  %i.ey = sub i64 %i.ex, %i.el                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check523 = icmp ult i64 %i.ey, 24
  %i.fb = sub i64 %i.el, %i.ew
  %diff.check521 = icmp ugt i64 %i.fb, -32
  %or.cond538 = or i1 %min.iters.check523, %diff.check521
  br i1 %or.cond538, label %.lr.ph.i.i.i.i.i.i208.us.preheader539, label %vector.ph524

vector.ph524:                                     ; preds = %.lr.ph.i.i.i.i.i.i208.us.preheader
  %n.vec525 = and i64 %i.fa, 4611686018427387900  ; 3 uses
  %i.fc = shl i64 %n.vec525, 3                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eu, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %.sroa.0296.2361.us, i64 %i.fc
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph524
  %index527 = phi i64 [ 0, %vector.ph524 ], [ %index.next532, %vector.body526 ] ; 2 uses
  %i.ff = shl i64 %index527, 3                    ; 2 uses
  %next.gep528 = getelementptr i8, ptr %i.eu, i64 %i.ff ; 2 uses
  %next.gep529 = getelementptr i8, ptr %.sroa.0296.2361.us, i64 %i.ff ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.fg = getelementptr i8, ptr %next.gep529, i64 16
  %wide.load530 = load <2 x i64>, ptr %next.gep529, align 4, !alias.scope !102, !noalias !99
  %wide.load531 = load <2 x i64>, ptr %i.fg, align 4, !alias.scope !102, !noalias !99
  %i.fh = getelementptr i8, ptr %next.gep528, i64 16
  store <2 x i64> %wide.load530, ptr %next.gep528, align 4, !alias.scope !99, !noalias !102
  store <2 x i64> %wide.load531, ptr %i.fh, align 4, !alias.scope !99, !noalias !102
  %index.next532 = add nuw i64 %index527, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next532, %n.vec525
  br i1 %i.fi, label %middle.block533, label %vector.body526, !llvm.loop !104

middle.block533:                                  ; preds = %vector.body526
  %cmp.n534 = icmp eq i64 %i.fa, %n.vec525
  br i1 %cmp.n534, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us, label %.lr.ph.i.i.i.i.i.i208.us.preheader539

.lr.ph.i.i.i.i.i.i208.us.preheader539:            ; preds = %.lr.ph.i.i.i.i.i.i208.us.preheader, %middle.block533
  %.012.i.i.i.i.i.i209.us.ph = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i208.us.preheader ], [ %i.fd, %middle.block533 ]
  %.0911.i.i.i.i.i.i210.us.ph = phi ptr [ %.sroa.0296.2361.us, %.lr.ph.i.i.i.i.i.i208.us.preheader ], [ %i.fe, %middle.block533 ]
  br label %.lr.ph.i.i.i.i.i.i208.us

.lr.ph.i.i.i.i.i.i208.us:                         ; preds = %.lr.ph.i.i.i.i.i.i208.us.preheader539, %.lr.ph.i.i.i.i.i.i208.us
  %.012.i.i.i.i.i.i209.us = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i208.us ], [ %.012.i.i.i.i.i.i209.us.ph, %.lr.ph.i.i.i.i.i.i208.us.preheader539 ] ; 2 uses
  %.0911.i.i.i.i.i.i210.us = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i208.us ], [ %.0911.i.i.i.i.i.i210.us.ph, %.lr.ph.i.i.i.i.i.i208.us.preheader539 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.fj = load i64, ptr %.0911.i.i.i.i.i.i210.us, align 4, !alias.scope !102, !noalias !99
  store i64 %i.fj, ptr %.012.i.i.i.i.i.i209.us, align 4, !alias.scope !99, !noalias !102
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i210.us, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i209.us, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i211.us = icmp eq ptr %i.fk, %.sroa.17.2360.us
  br i1 %.not.i.i.i.i.i.i211.us, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us, label %.lr.ph.i.i.i.i.i.i208.us, !llvm.loop !105

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us: ; preds = %.lr.ph.i.i.i.i.i.i208.us, %middle.block533, %.noexc217.us
  %.0.lcssa.i.i.i.i.i.i213.us = phi ptr [ %i.eu, %.noexc217.us ], [ %i.fd, %middle.block533 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i208.us ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i213.us, i64 8
  %.not.i23.i.i.i214.us = icmp eq ptr %.sroa.0296.2361.us, null
  br i1 %.not.i23.i.i.i214.us, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.2361.us, i64 noundef %i.em) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us: ; preds = %bb.bb, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.us
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us, %bb.az, %.lr.ph.split.us382
  %.sroa.30.3.us = phi ptr [ %.sroa.30.2359.us, %.lr.ph.split.us382 ], [ %i.fn, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us ], [ %.sroa.30.2359.us, %bb.az ] ; 2 uses
  %.sroa.17.3.us = phi ptr [ %.sroa.17.2360.us, %.lr.ph.split.us382 ], [ %i.fm, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us ], [ %i.ej, %bb.az ] ; 2 uses
  %.sroa.0296.3.us = phi ptr [ %.sroa.0296.2361.us, %.lr.ph.split.us382 ], [ %i.eu, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.us ], [ %.sroa.0296.2361.us, %bb.az ] ; 2 uses
  %i.fo = add nuw nsw i32 %.0126362.us379, 1      ; 2 uses
  %i.fp = add nuw nsw i32 %.0125363.us378, %i.ee
  %exitcond.not = icmp eq i32 %i.fo, %i.du
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us382, !llvm.loop !106

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380, %.lr.ph.us
  %.us-phi.us = phi ptr [ %.sroa.30.1368.us, %.lr.ph.us ], [ %.sroa.30.3.us, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380 ] ; 2 uses
  %.us-phi366.us = phi ptr [ %.sroa.17.1369.us, %.lr.ph.us ], [ %.sroa.17.3.us, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380 ] ; 2 uses
  %.us-phi367.us = phi ptr [ %.sroa.0296.1370.us, %.lr.ph.us ], [ %.sroa.0296.3.us, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit218.us380 ] ; 2 uses
  %i.fq = add nuw nsw i32 %.0128371.us, 1         ; 2 uses
  %i.fr = add nsw i32 %.0127372.us, %i.ed
  %exitcond428.not = icmp eq i32 %i.fq, %i.dl
  br i1 %exitcond428.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !107

.loopexit329.split.us:                            ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.us
  %lpad.loopexit331.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

.split.us:                                        ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #24
          to label %.noexc216 unwind label %.loopexit.split-lp330

.noexc216:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp330:                            ; preds = %.split.us
  %lpad.loopexit.split-lp332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

.loopexit:                                        ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit, %._crit_edge.us, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.thread
  %.sroa.30.4 = phi ptr [ null, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.thread ], [ %.us-phi.us, %._crit_edge.us ], [ %.sroa.30.7, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.17.4 = phi ptr [ null, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.thread ], [ %.us-phi366.us, %._crit_edge.us ], [ %.sroa.17.6, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.0296.4 = phi ptr [ null, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.thread ], [ %.us-phi367.us, %._crit_edge.us ], [ %.sroa.0296.7, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fs = zext nneg i32 %i.au to i64              ; 4 uses
  %i.ft = mul nuw nsw i64 %i.fs, 208
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #20
          to label %.noexc220 unwind label %bb.bd ; 3 uses

.noexc220:                                        ; preds = %.loopexit
  store ptr %i.fu, ptr %20, align 8, !tbaa !81
  %i.fv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw [208 x i8], ptr %i.fu, i64 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !108
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc220
  %.08.i.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i ], [ %i.fu, %.noexc220 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i ], [ %i.fs, %.noexc220 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #22
  %i.fy = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i.i, label %bb.bc, label %.lr.ph.i.i.i.i.i, !llvm.loop !109

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.fz, ptr %i.fv, align 8, !tbaa !78
  %i.ga = ptrtoint ptr %.sroa.17.4 to i64
  %i.gb = ptrtoint ptr %.sroa.0296.4 to i64       ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3                 ; 2 uses
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = add nsw i32 %i.ge, 256
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 432
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 224
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 432
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 224
  %i.gm = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.not411 = icmp eq ptr %.sroa.17.4, %.sroa.0296.4
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.hd = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.hj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %30, i64 16
  %umax431 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  br label %bb.be

bb.bd:                                            ; preds = %.loopexit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit261

bb.be:                                            ; preds = %bb.bc, %bb.cl
  %indvars.iv441 = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next442, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.hu = load ptr, ptr %7, align 8, !tbaa !81
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = sdiv exact i64 %i.hx, 208
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = mul nsw i32 %i.hz, %i.ge
  %i.ib = add nsw i32 %i.ia, 257
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, i32 noundef %i.ib, i32 noundef %i.gf, i32 noundef 5)
          to label %bb.bf unwind label %bb.bw

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #22
  %i.ic = load ptr, ptr %22, align 8, !tbaa !110, !noalias !117 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.bf
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #22
  br label %bb.bx

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.bf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gg) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gh) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.ih = load i32, ptr %i.gj, align 8, !tbaa !83
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %24, i32 noundef %i.ih, i32 noundef 1, i32 noundef 5)
          to label %bb.bg unwind label %bb.by

bb.bg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #22
  %i.ii = load ptr, ptr %24, align 8, !tbaa !110, !noalias !120 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull align 8 dereferenceable(688) %24, ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit223 unwind label %.body221

.body221:                                         ; preds = %bb.bg
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %24) #22
  br label %bb.bz

_ZNK2cv7MatExprcvNS_3MatEEv.exit223:              ; preds = %bb.bg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gk) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gl) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %.pre445 = load i32, ptr %i.gu, align 4         ; 2 uses
  %.pre447 = load ptr, ptr %i.gv, align 8         ; 6 uses
  br i1 %.not411, label %._crit_edge403, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit223
  %i.in = load ptr, ptr %i.e, align 8, !tbaa !78  ; 2 uses
  %i.io = load ptr, ptr %7, align 8, !tbaa !81    ; 3 uses
  %.not412 = icmp eq ptr %i.in, %i.io
  %i.ip = icmp slt i32 %.pre445, 2                ; 2 uses
  %i.iq = load i32, ptr %i.gx, align 4
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load i32, ptr %i.hd, align 4
  %i.it = icmp slt i32 %i.is, 2
  %i.iu = load ptr, ptr %i.he, align 8
  br i1 %.not412, label %._crit_edge403, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.iv = ptrtoint ptr %i.in to i64
  %i.iw = ptrtoint ptr %i.io to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = sdiv exact i64 %i.ix, 208
  %i.iz = load i32, ptr %i.gn, align 4, !tbaa !123
  %i.ja = icmp slt i32 %i.iz, 2
  %i.jb = trunc nuw nsw i64 %indvars.iv441 to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us405, %.preheader.lr.ph.split.us
  %.0120402.us = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %i.mh, %._crit_edge.us405 ] ; 3 uses
  %.0121401.us = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %indvars.iv.next.a, %._crit_edge.us405 ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0296.4, i64 %.0120402.us ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !124
  %i.jf = mul nsw i32 %i.je, %i.ba
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !126
  %i.jh = add nsw i32 %i.jf, %i.jg
  %i.ji = mul nsw i32 %i.jh, %i.au
  %i.jj = add nsw i32 %i.ji, %i.jb
  %i.jk = sext i32 %i.jj to i64
  %i.jl = shl i64 %.0120402.us, 32
  %sext.us = add i64 %i.jl, 1099511627776
  %i.jm = ashr exact i64 %sext.us, 30
  %invariant.gep.us = getelementptr i8, ptr %.pre447, i64 %i.jm
  %i.jn = load i32, ptr %8, align 8
  %i.jo = and i32 %i.jn, 16384
  %i.jp = icmp ne i32 %i.jo, 0
  %i.jq = load i32, ptr %i.gz, align 8
  %i.jr = icmp eq i32 %i.jq, 1
  %i.js = load i32, ptr %i.ha, align 4            ; 3 uses
  %i.jt = load ptr, ptr %i.hb, align 8            ; 4 uses
  %i.ju = load i64, ptr %i.hc, align 8            ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.preheader.us, %bb.bv
  %indvars.iv.a = phi i64 [ %.0121401.us, %.preheader.us ], [ %indvars.iv.next.a, %bb.bv ] ; 4 uses
  %.0119398.us = phi i64 [ 0, %.preheader.us ], [ %i.mg, %bb.bv ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [208 x i8], ptr %i.io, i64 %.0119398.us
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !127
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %i.jk
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !34  ; 5 uses
  %i.ka = zext i8 %i.jz to i32                    ; 2 uses
  br i1 %i.ja, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kb = load i32, ptr %i.go, align 8, !tbaa !82
  %i.kc = and i32 %i.kb, 16384
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = load i32, ptr %i.gp, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  %or.cond.i.us = select i1 %i.kd, i1 true, i1 %i.kf
  br i1 %or.cond.i.us, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kg = load i32, ptr %i.gq, align 8, !tbaa !35
  %i.kh = icmp eq i32 %i.kg, 1
  br i1 %i.kh, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ki = load i32, ptr %i.gr, align 4, !tbaa !84 ; 3 uses
  %i.kj = sdiv i32 %i.ka, %i.ki                   ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.ki                ; 0 uses
  %.recomposed = srem i32 %i.ka, %i.ki
  %i.kl = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.km = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.kn = sext i32 %i.kj to i64
  %i.ko = mul i64 %i.km, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ko
  %i.kq = sext i32 %.recomposed to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kq
  %.pre = zext i8 %i.jz to i64
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ks = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.kt = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.ku = zext i8 %i.jz to i64                    ; 2 uses
  %i.kv = mul i64 %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kv
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %i.kx = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.ky = zext i8 %i.jz to i64                    ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ky
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bh
  %i.la = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.lb = zext i8 %i.jz to i64                    ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lb
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.pre-phi = phi i64 [ %i.lb, %bb.bn ], [ %i.ky, %bb.bm ], [ %i.ku, %bb.bl ], [ %.pre, %bb.bk ]
  %.0.i.us = phi ptr [ %i.lc, %bb.bn ], [ %i.kz, %bb.bm ], [ %i.kw, %bb.bl ], [ %i.kr, %bb.bk ]
  %i.ld = load float, ptr %.0.i.us, align 4, !tbaa !69 ; 3 uses
  %i.le = load i64, ptr %i.gw, align 8
  %i.lf = mul i64 %i.le, %indvars.iv.a
  %.sink.idx.i224.us = select i1 %i.ip, i64 0, i64 %i.lf
  %.sink.i225.us = getelementptr inbounds nuw i8, ptr %.pre447, i64 %.sink.idx.i224.us
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i225.us, i64 %.pre-phi
  store float %i.ld, ptr %i.lg, align 4, !tbaa !69
  %i.lh = load i64, ptr %i.gw, align 8
  %i.li = mul i64 %i.lh, %indvars.iv.a
  %.sink.idx.i226.us = select i1 %i.ip, i64 0, i64 %i.li
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.sink.idx.i226.us
  %i.lj = fneg float %i.ld
  store float %i.lj, ptr %gep.us, align 4, !tbaa !69
  %i.lk = trunc i64 %.0119398.us to i32           ; 2 uses
  br i1 %i.ir, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ll = load i32, ptr %i.gy, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  %or.cond.i228.us = select i1 %i.jp, i1 true, i1 %i.lm
  br i1 %or.cond.i228.us, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.jr, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ln = sdiv i32 %i.lk, %i.js                   ; 2 uses
  %i.lo = mul nsw i32 %i.ln, %i.js                ; 0 uses
  %.recomposed562 = srem i32 %i.lk, %i.js
  %i.lp = sext i32 %i.ln to i64
  %i.lq = mul i64 %i.ju, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.lq
  %i.ls = sext i32 %.recomposed562 to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ls
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %sext324.us = shl i64 %.0119398.us, 32
  %i.lu = ashr exact i64 %sext324.us, 32
  %i.lv = mul i64 %i.ju, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.lv
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bp
  %sext325.us = shl i64 %.0119398.us, 32
  %i.lx = ashr exact i64 %sext325.us, 30
  %i.ly = getelementptr inbounds i8, ptr %i.jt, i64 %i.lx
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  %sext326.us = shl i64 %.0119398.us, 32
  %i.lz = ashr exact i64 %sext326.us, 30
  %i.ma = getelementptr inbounds i8, ptr %i.jt, i64 %i.lz
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.0.i229.us = phi ptr [ %i.ma, %bb.bu ], [ %i.ly, %bb.bt ], [ %i.lw, %bb.bs ], [ %i.lt, %bb.br ]
  %i.mb = load float, ptr %.0.i229.us, align 4, !tbaa !69
  %i.mc = call noundef float @logf(float noundef %i.mb) #22
  %i.md = load i64, ptr %i.hf, align 8
  %i.me = mul i64 %i.md, %indvars.iv.a
  %.sink.idx.i231.us = select i1 %i.it, i64 0, i64 %i.me
  %.sink.i232.us = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.sink.idx.i231.us
  %i.mf = fmul float %i.ld, %i.mc
  store float %i.mf, ptr %.sink.i232.us, align 4, !tbaa !69
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.mg = add nuw i64 %.0119398.us, 1             ; 2 uses
  %exitcond430.not = icmp eq i64 %i.mg, %i.iy
  br i1 %exitcond430.not, label %._crit_edge.us405, label %bb.bh, !llvm.loop !128

._crit_edge.us405:                                ; preds = %bb.bv
  %i.mh = add nuw i64 %.0120402.us, 1             ; 2 uses
  %exitcond432.not = icmp eq i64 %i.mh, %umax431
  br i1 %exitcond432.not, label %._crit_edge403, label %.preheader.us, !llvm.loop !129

bb.bw:                                            ; preds = %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.body, %bb.bw
  %.pn153 = phi { ptr, i32 } [ %i.ig, %.body ], [ %i.mi, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.cs

bb.by:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.body221, %bb.by
  %.pn155 = phi { ptr, i32 } [ %i.im, %.body221 ], [ %i.mj, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.cr

._crit_edge403:                                   ; preds = %._crit_edge.us405, %.preheader.lr.ph, %_ZNK2cv7MatExprcvNS_3MatEEv.exit223
  %.0121.lcssa = phi i64 [ 0, %_ZNK2cv7MatExprcvNS_3MatEEv.exit223 ], [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.a, %._crit_edge.us405 ] ; 2 uses
  %i.mk = icmp slt i32 %.pre445, 2                ; 4 uses
  %i.ml = load i64, ptr %i.gw, align 8
  %i.mm = mul i64 %i.ml, %.0121.lcssa
  %.sink.idx.i = select i1 %i.mk, i64 0, i64 %i.mm
  %.sink.i = getelementptr inbounds nuw i8, ptr %.pre447, i64 %.sink.idx.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.sink.i, i64 512
  store float 1.000000e+00, ptr %i.mn, align 4, !tbaa !69
  %i.mo = load i32, ptr %i.gn, align 4, !tbaa !123
  %i.mp = icmp slt i32 %i.mo, 2
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge403, %bb.ch
  %indvars.iv435.a = phi i64 [ 0, %._crit_edge403 ], [ %indvars.iv.next436, %bb.ch ] ; 3 uses
  %indvars.iv433 = phi i64 [ %.0121.lcssa, %._crit_edge403 ], [ %indvars.iv.next434, %bb.ch ]
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 4 uses
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435.a, 1 ; 7 uses
  br i1 %i.mp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mq = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.next436
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.ms = load i32, ptr %i.go, align 8, !tbaa !82
  %i.mt = and i32 %i.ms, 16384
  %i.mu = icmp ne i32 %i.mt, 0
  %i.mv = load i32, ptr %i.gp, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  %or.cond.i233 = select i1 %i.mu, i1 true, i1 %i.mw
  br i1 %or.cond.i233, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mx = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next436
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.mz = load i32, ptr %i.gq, align 8, !tbaa !35
  %i.na = icmp eq i32 %i.mz, 1
  br i1 %i.na, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nb = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.nc = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.nd = mul i64 %i.nc, %indvars.iv.next436
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nd
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.nf = load i32, ptr %i.gr, align 4, !tbaa !84 ; 3 uses
  %i.ng = trunc nuw nsw i64 %indvars.iv.next436 to i32 ; 2 uses
  %i.nh = sdiv i32 %i.ng, %i.nf                   ; 2 uses
  %i.ni = mul nsw i32 %i.nh, %i.nf                ; 0 uses
  %.recomposed563 = srem i32 %i.ng, %i.nf
  %i.nj = load ptr, ptr %i.gs, align 8, !tbaa !127
  %i.nk = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.nl = sext i32 %i.nh to i64
  %i.nm = mul i64 %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nm
  %i.no = sext i32 %.recomposed563 to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.no
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cb, %bb.cd, %bb.cf, %bb.cg
  %.0.i234 = phi ptr [ %i.mr, %bb.cb ], [ %i.my, %bb.cd ], [ %i.ne, %bb.cf ], [ %i.np, %bb.cg ]
  %i.nq = load float, ptr %.0.i234, align 4, !tbaa !69 ; 3 uses
  %i.nr = load float, ptr %i.hg, align 4, !tbaa !59
  %i.ns = load i64, ptr %i.gw, align 8
  %i.nt = mul i64 %i.ns, %indvars.iv.next434
  %.sink.idx.i236 = select i1 %i.mk, i64 0, i64 %i.nt
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %.pre447, i64 %.sink.idx.i236
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i237, i64 %indvars.iv435.a
  %i.nv = fmul float %i.nq, %i.nr
  store float %i.nv, ptr %i.nu, align 4, !tbaa !69
  %i.nw = load float, ptr %i.hg, align 4, !tbaa !59
  %i.nx = load i64, ptr %i.gw, align 8
  %i.ny = mul i64 %i.nx, %indvars.iv.next434
  %.sink.idx.i238 = select i1 %i.mk, i64 0, i64 %i.ny
  %.sink.i239 = getelementptr inbounds nuw i8, ptr %.pre447, i64 %.sink.idx.i238
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i239, i64 %indvars.iv.next436
  %i.oa = fmul float %i.nw, -2.000000e+00
  %i.ob = fmul float %i.nq, %i.oa
  store float %i.ob, ptr %i.nz, align 4, !tbaa !69
  %i.oc = load float, ptr %i.hg, align 4, !tbaa !59
  %i.od = load i64, ptr %i.gw, align 8
  %i.oe = mul i64 %i.od, %indvars.iv.next434
  %.sink.idx.i240 = select i1 %i.mk, i64 0, i64 %i.oe
  %.sink.i241 = getelementptr inbounds nuw i8, ptr %.pre447, i64 %.sink.idx.i240
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.sink.i241, i64 %indvars.iv435.a
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = fmul float %i.nq, %i.oc
  store float %i.oh, ptr %i.og, align 4, !tbaa !69
  %exitcond440.not = icmp eq i64 %indvars.iv.next436, 254
  br i1 %exitcond440.not, label %bb.ci, label %bb.ca, !llvm.loop !130

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store i32 0, ptr %i.hh, align 8, !tbaa !131
  store i32 0, ptr %i.hi, align 4, !tbaa !132
  store i32 16842752, ptr %26, align 8, !tbaa !133
  store ptr %21, ptr %i.hj, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store i32 0, ptr %i.hk, align 8, !tbaa !131
  store i32 0, ptr %i.hl, align 4, !tbaa !132
  store i32 16842752, ptr %27, align 8, !tbaa !133
  store ptr %23, ptr %i.hm, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store i64 0, ptr %i.ho, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !133
  store ptr %25, ptr %i.hn, align 8, !tbaa !72
  %i.oi = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef 1)
          to label %bb.cj unwind label %bb.cm     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !134
  store i32 0, ptr %4, align 4, !tbaa !137, !noalias !134
  store i32 256, ptr %i.hp, align 4, !tbaa !139, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !134
  store i64 9223372034707292160, ptr %5, align 8, !noalias !134
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.oj = load ptr, ptr %20, align 8, !tbaa !81
  %i.ok = getelementptr inbounds nuw [208 x i8], ptr %i.oj, i64 %indvars.iv441
  store i64 0, ptr %i.hr, align 8
  store i32 33619968, ptr %30, align 8, !tbaa !133
  store ptr %i.ok, ptr %i.hq, align 8, !tbaa !72
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next442, %i.fs
  br i1 %exitcond444.not, label %bb.ct, label %bb.be, !llvm.loop !140

bb.cm:                                            ; preds = %bb.ci
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cj
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn161.pn = phi { ptr, i32 } [ %i.on, %bb.co ], [ %i.om, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cm
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %bb.cp ], [ %i.ol, %bb.cm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.bz
  %.pn165.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %bb.cq ], [ %.pn155, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bx
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %bb.cr ], [ %.pn153, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.dd

bb.ct:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
end_hunk_0
