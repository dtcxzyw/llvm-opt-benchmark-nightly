inline.NumInlined: 1396
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp11X3DImporter17readElevationGridERN4pugi8xml_nodeE:bb.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ak = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17)
          to label %.noexc145 unwind label %bb.y

.noexc145:                                        ; preds = %bb.o
  store ptr %i.ak, ptr %5, align 8
  %i.al = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc146 unwind label %bb.y

.noexc146:                                        ; preds = %.noexc145
  br i1 %i.al, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc146
  %i.am = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %.noexc146, %bb.p
  %.0384 = phi i32 [ 0, %.noexc146 ], [ %i.am, %bb.p ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.an = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18)
          to label %.noexc149 unwind label %bb.y

.noexc149:                                        ; preds = %bb.q
  store ptr %i.an, ptr %4, align 8
  %i.ao = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc150 unwind label %bb.y

.noexc150:                                        ; preds = %.noexc149
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc150
  %i.ap = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %.noexc150, %bb.r
  %.0385 = phi float [ 1.000000e+00, %.noexc150 ], [ %i.ap, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aq = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.19)
          to label %.noexc154 unwind label %bb.y

.noexc154:                                        ; preds = %bb.s
  store ptr %i.aq, ptr %3, align 8
  %i.ar = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc155 unwind label %bb.y

.noexc155:                                        ; preds = %.noexc154
  br i1 %i.ar, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc155
  %i.as = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.noexc155, %bb.t
  %.0386 = phi i32 [ 0, %.noexc155 ], [ %i.as, %bb.t ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.at = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20)
          to label %.noexc159 unwind label %bb.y

.noexc159:                                        ; preds = %bb.u
  store ptr %i.at, ptr %2, align 8
  %i.au = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc160 unwind label %bb.y

.noexc160:                                        ; preds = %.noexc159
  br i1 %i.au, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc160
  %i.av = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.noexc160, %bb.v
  %.0387 = phi float [ 1.000000e+00, %.noexc160 ], [ %i.av, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.aw = load i64, ptr %i.c, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 19, ptr noundef null)
          to label %bb.dy unwind label %bb.y      ; 0 uses

bb.y:                                             ; preds = %.invoke, %bb.ak, %bb.v, %.noexc159, %bb.u, %bb.t, %.noexc154, %bb.s, %bb.r, %.noexc149, %bb.q, %bb.p, %.noexc145, %bb.o, %bb.m, %.noexc141, %bb.l, %bb.k, %.noexc136, %bb.j, %bb.i, %.noexc131, %.noexc128, %bb.h, %.noexc126, %bb.g, %bb.f, %.noexc122, %bb.e, %.noexc118, %bb.d, %.noexc116, %bb.c, %.noexc113, %bb.b, %.noexc, %bb.a, %bb.ai, %bb.ag, %bb.x, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

bb.z:                                             ; preds = %bb.w
  %i.ba = fcmp oeq float %.0385, 0.000000e+00
  %i.bb = fcmp oeq float %.0387, 0.000000e+00
  %or.cond = or i1 %i.ba, %i.bb
  br i1 %or.cond, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.21)
          to label %.invoke unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #20
  br label %.loopexit448

bb.ac:                                            ; preds = %bb.z
  %i.be = icmp slt i32 %.0384, 1
  %i.bf = icmp slt i32 %.0386, 1
  %or.cond3 = or i1 %i.be, %i.bf
  br i1 %or.cond3, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull @.str.22)
          to label %.invoke unwind label %bb.ae

.invoke:                                          ; preds = %bb.ad, %bb.aa
  %i.bh = phi ptr [ %i.bc, %bb.aa ], [ %i.bg, %bb.ad ]
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %bb.y

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bg) #20
  br label %.loopexit448

bb.af:                                            ; preds = %bb.ac
  %i.bj = mul nuw nsw i32 %.0386, %.0384
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %15, align 8
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2
  %.not = icmp eq i64 %i.br, %i.bk
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.23)
          to label %bb.ah unwind label %bb.y

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.bs = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21
          to label %bb.aj unwind label %bb.y      ; 25 uses

bb.aj:                                            ; preds = %bb.ai
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  store ptr %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 0, ptr %i.by, align 8
  store i8 0, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store ptr %i.bz, ptr %i.ca, align 8
  store ptr %i.bz, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store i64 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store i32 19, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  store ptr %i.cd, ptr %i.ce, align 8
  store ptr %i.cd, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 96 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cg, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV27X3DNodeElementElevationGrid, i64 16), ptr %i.bs, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.ci = load i64, ptr %i.e, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.preheader.us.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.preheader.us.preheader unwind label %bb.y

.preheader.us.preheader:                          ; preds = %bb.ak, %bb.aj
  %i.ck = load ptr, ptr %15, align 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge
  %.089465.us = phi i32 [ %26, %._crit_edge ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.sroa.0346.0464.us = phi ptr [ %i.cu, %._crit_edge ], [ %i.ck, %.preheader.us.preheader ]
  %i.cl = uitofp nneg i32 %.089465.us to float
  %i.cm = fmul float %.0387, %i.cl
  br label %bb.al

._crit_edge466.split:                             ; preds = %._crit_edge
  %23 = icmp slt i32 %.0384, 2
  %24 = icmp slt i32 %.0386, 2
  %or.cond5 = or i1 %23, %24
  %25 = getelementptr inbounds nuw i8, ptr %i.bs, i64 104 ; 2 uses
  br i1 %or.cond5, label %bb.an, label %.lr.ph483.split.us

._crit_edge:                                      ; preds = %bb.am
  %26 = add nuw nsw i32 %.089465.us, 1            ; 2 uses
  %exitcond498.not = icmp eq i32 %26, %.0386
  br i1 %exitcond498.not, label %._crit_edge466.split, label %.preheader.us, !llvm.loop !9

bb.al:                                            ; preds = %.preheader.us, %bb.am
  %.092463.us = phi i32 [ 0, %.preheader.us ], [ %i.cv, %bb.am ] ; 2 uses
  %.sroa.0346.1462.us = phi ptr [ %.sroa.0346.0464.us, %.preheader.us ], [ %i.cu, %bb.am ] ; 2 uses
  %i.cn = load float, ptr %.sroa.0346.1462.us, align 4
  %i.co = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %bb.am unwind label %.split.us.a ; 4 uses

bb.am:                                            ; preds = %bb.al
  %i.cp = uitofp nneg i32 %.092463.us to float
  %i.cq = fmul float %.0385, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store float %i.cq, ptr %i.cr, align 4
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  store float %i.cn, ptr %.sroa.5.0..sroa_idx.us, align 4
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store float %i.cm, ptr %.sroa.6.0..sroa_idx.us, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #20
  %i.cs = load i64, ptr %i.cf, align 8
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cf, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0346.1462.us, i64 4 ; 2 uses
  %i.cv = add nuw nsw i32 %.092463.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %.0384
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !10

.split.us.a:                                      ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

bb.an:                                            ; preds = %._crit_edge466.split
  store i64 2, ptr %25, align 8
  %i.cx = load i64, ptr %i.cf, align 8
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  %.not520 = icmp eq i64 %i.cy, 0
  br i1 %.not520, label %.loopexit392, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.an
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bs, i64 128 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 6 uses
  %.pre541 = load ptr, ptr %i.cz, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186
  %i.db = phi ptr [ %.pre541, %.lr.ph.a ], [ %i.fm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186 ] ; 3 uses
  %.093519 = phi i64 [ 0, %.lr.ph.a ], [ %i.dy, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186 ] ; 2 uses
  %i.dc = trunc i64 %.093519 to i32               ; 2 uses
  %i.dd = load ptr, ptr %i.da, align 8
  %.not.i.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.dc, ptr %i.db, align 4
  %i.de = load ptr, ptr %i.cz, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  store ptr %i.df, ptr %i.cz, align 8
  %.pre542 = load ptr, ptr %i.da, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dg = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.dh = ptrtoint ptr %i.db to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 6 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %bb.ar, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc165 unwind label %.loopexit.split-lp394

.noexc165:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.dl = ashr exact i64 %i.dj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #21
          to label %.noexc166 unwind label %.loopexit393 ; 4 uses

.noexc166:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 %i.dc, ptr %i.ds, align 4
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.as, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.as:                                            ; preds = %.noexc166
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.as, %.noexc166
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dj) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dr, ptr %i.ch, align 8
  store ptr %i.du, ptr %i.cz, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp ; 2 uses
  store ptr %i.dv, ptr %i.da, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ap
  %i.dw = phi ptr [ %i.dv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.pre542, %bb.ap ] ; 2 uses
  %i.dx = phi ptr [ %i.du, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.df, %bb.ap ] ; 2 uses
  %i.dy = add nuw i64 %.093519, 1                 ; 3 uses
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %.not.i.i167 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not.i.i167, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 %i.dz, ptr %i.dx, align 4
  %i.ea = load ptr, ptr %i.cz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  store ptr %i.eb, ptr %i.cz, align 8
  %.pre543 = load ptr, ptr %i.da, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ec = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.ed = ptrtoint ptr %i.dw to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.aw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc174 unwind label %.loopexit.split-lp399

.noexc174:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168: ; preds = %bb.av
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i169, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i.i170 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i.i170)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #21
          to label %.noexc175 unwind label %.loopexit398 ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  store i32 %i.dz, ptr %i.eo, align 4
  %i.ep = icmp sgt i64 %i.ef, 0
  br i1 %i.ep, label %bb.ax, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171

bb.ax:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171: ; preds = %bb.ax, %.noexc175
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %.not.i17.i.i.i172 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173: ; preds = %bb.ay, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171
  store ptr %i.en, ptr %i.ch, align 8
  store ptr %i.eq, ptr %i.cz, align 8
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el ; 2 uses
  store ptr %i.er, ptr %i.da, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176

_ZNSt6vectorIiSaIiEE9push_backEOi.exit176:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173, %bb.au
  %i.es = phi ptr [ %i.er, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173 ], [ %.pre543, %bb.au ] ; 2 uses
  %i.et = phi ptr [ %i.eq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173 ], [ %i.eb, %bb.au ] ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.et, %i.es
  br i1 %.not.i.i177, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176
  store i32 -1, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.cz, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  store ptr %i.ev, ptr %i.cz, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176
  %i.ew = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 6 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775804
  br i1 %i.fa, label %bb.bb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i178

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc184 unwind label %.loopexit.split-lp404

.noexc184:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i178: ; preds = %bb.ba
  %i.fb = ashr exact i64 %i.ez, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i179 = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i.i179, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 2305843009213693951)
  %i.ff = select i1 %i.fd, i64 2305843009213693951, i64 %i.fe ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.fg = shl nuw nsw i64 %i.ff, 2
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #21
          to label %.noexc185 unwind label %.loopexit403 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i178
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.ez ; 2 uses
  store i32 -1, ptr %i.fi, align 4
  %i.fj = icmp sgt i64 %i.ez, 0
  br i1 %i.fj, label %bb.bc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i181

bb.bc:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fh, ptr align 4 %i.ew, i64 %i.ez, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i181

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i181: ; preds = %bb.bc, %.noexc185
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %.not.i17.i.i.i182 = icmp eq ptr %i.ew, null
  br i1 %.not.i17.i.i.i182, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i183, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i181
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.ez) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i183

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i183: ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i181
  store ptr %i.fh, ptr %i.ch, align 8
  store ptr %i.fk, ptr %i.cz, align 8
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.fl, ptr %i.da, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186

_ZNSt6vectorIiSaIiEE9push_backEOi.exit186:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i183, %bb.az
  %i.fm = phi ptr [ %i.fk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i183 ], [ %i.ev, %bb.az ]
  %exitcond531.not = icmp eq i64 %i.dy, %i.cy
  br i1 %exitcond531.not, label %.loopexit392, label %bb.ao, !llvm.loop !11

.loopexit393:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit395 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp394:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit398:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168
  %lpad.loopexit400 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp399:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp401 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit403:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i178
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp404:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.lr.ph483.split.us:                               ; preds = %._crit_edge466.split
  store i64 4, ptr %25, align 8
  %i.fn = add nsw i32 %.0386, -1                  ; 2 uses
  %i.fo = add nsw i32 %.0384, -1                  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bs, i64 128 ; 31 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 20 uses
  %.pre536.pre = load ptr, ptr %i.fp, align 8     ; 2 uses
  br i1 %.0, label %.lr.ph.us.us, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph483.split.us, %._crit_edge.split.us.us.us
  %.pre536 = phi ptr [ %i.jv, %._crit_edge.split.us.us.us ], [ %.pre536.pre, %.lr.ph483.split.us ]
  %.091481.us.us = phi i32 [ %i.fr, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph483.split.us ] ; 2 uses
  %i.fr = add nuw nsw i32 %.091481.us.us, 1       ; 3 uses
  %i.fs = mul nuw nsw i32 %i.fr, %.0384           ; 2 uses
  %i.ft = mul nuw nsw i32 %.091481.us.us, %.0384  ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us, %.lr.ph.us.us
  %i.fu = phi ptr [ %.pre536, %.lr.ph.us.us ], [ %i.jv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us ] ; 3 uses
  %.090467.us.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.gr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us ] ; 3 uses
  %i.fv = add nuw nsw i32 %.090467.us.us.us, %i.fs ; 2 uses
  %i.fw = load ptr, ptr %i.fq, align 8
  %.not.i.i187.us.us.us = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i187.us.us.us, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.fv, ptr %i.fu, align 4
  %i.fx = load ptr, ptr %i.fp, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  store ptr %i.fy, ptr %i.fp, align 8
  %.pre537 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit196.us.us.us

bb.bg:                                            ; preds = %bb.be
  %i.fz = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.ga = ptrtoint ptr %i.fu to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 6 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775804
  br i1 %i.gd, label %.split.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i188.us.us.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i188.us.us.us: ; preds = %bb.bg
  %i.ge = ashr exact i64 %i.gc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i189.us.us.us = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i.i189.us.us.us, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 2305843009213693951)
  %i.gi = select i1 %i.gg, i64 2305843009213693951, i64 %i.gh ; 3 uses
  %.not.i.i.i.i190.us.us.us = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i190.us.us.us)
  %i.gj = shl nuw nsw i64 %i.gi, 2
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #21
          to label %.noexc195.us.us.us unwind label %.loopexit428.split.us.split.us.split.us ; 4 uses

.noexc195.us.us.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i188.us.us.us
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  store i32 %i.fv, ptr %i.gl, align 4
  %i.gm = icmp sgt i64 %i.gc, 0
  br i1 %i.gm, label %bb.bh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i191.us.us.us

bb.bh:                                            ; preds = %.noexc195.us.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gk, ptr align 4 %i.fz, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i191.us.us.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i191.us.us.us: ; preds = %bb.bh, %.noexc195.us.us.us
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %.not.i17.i.i.i192.us.us.us = icmp eq ptr %i.fz, null
  br i1 %.not.i17.i.i.i192.us.us.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i191.us.us.us
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gc) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i191.us.us.us
  store ptr %i.gk, ptr %i.ch, align 8
  store ptr %i.gn, ptr %i.fp, align 8
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gi ; 2 uses
  store ptr %i.go, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit196.us.us.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit196.us.us.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us, %bb.bf
  %i.gp = phi ptr [ %i.go, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us ], [ %.pre537, %bb.bf ] ; 2 uses
  %i.gq = phi ptr [ %i.gn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i193.us.us.us ], [ %i.fy, %bb.bf ] ; 2 uses
  %i.gr = add nuw nsw i32 %.090467.us.us.us, 1    ; 4 uses
  %i.gs = add nuw nsw i32 %i.gr, %i.fs            ; 2 uses
  %.not.i.i197.us.us.us = icmp eq ptr %i.gq, %i.gp
  br i1 %.not.i.i197.us.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit196.us.us.us
  store i32 %i.gs, ptr %i.gq, align 4
  %i.gt = load ptr, ptr %i.fp, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  store ptr %i.gu, ptr %i.fp, align 8
  %.pre538 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206.us.us.us

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit196.us.us.us
  %i.gv = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.gw = ptrtoint ptr %i.gp to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775804
  br i1 %i.gz, label %.split471.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i198.us.us.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i198.us.us.us: ; preds = %bb.bk
  %i.ha = ashr exact i64 %i.gy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i199.us.us.us = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i.i199.us.us.us, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 2305843009213693951)
  %i.he = select i1 %i.hc, i64 2305843009213693951, i64 %i.hd ; 3 uses
  %.not.i.i.i.i200.us.us.us = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i.i200.us.us.us)
  %i.hf = shl nuw nsw i64 %i.he, 2
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #21
          to label %.noexc205.us.us.us unwind label %.loopexit433.split.us.split.us.split.us ; 4 uses

.noexc205.us.us.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i198.us.us.us
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gy ; 2 uses
  store i32 %i.gs, ptr %i.hh, align 4
  %i.hi = icmp sgt i64 %i.gy, 0
  br i1 %i.hi, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i201.us.us.us

bb.bl:                                            ; preds = %.noexc205.us.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr align 4 %i.gv, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i201.us.us.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i201.us.us.us: ; preds = %bb.bl, %.noexc205.us.us.us
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %.not.i17.i.i.i202.us.us.us = icmp eq ptr %i.gv, null
  br i1 %.not.i17.i.i.i202.us.us.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i201.us.us.us
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us: ; preds = %bb.bm, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i201.us.us.us
  store ptr %i.hg, ptr %i.ch, align 8
  store ptr %i.hj, ptr %i.fp, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.he ; 2 uses
  store ptr %i.hk, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206.us.us.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit206.us.us.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us, %bb.bj
  %i.hl = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us ], [ %.pre538, %bb.bj ] ; 2 uses
  %i.hm = phi ptr [ %i.hj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i203.us.us.us ], [ %i.gu, %bb.bj ] ; 2 uses
  %i.hn = add nuw nsw i32 %i.gr, %i.ft            ; 2 uses
  %.not.i.i207.us.us.us = icmp eq ptr %i.hm, %i.hl
  br i1 %.not.i.i207.us.us.us, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206.us.us.us
  store i32 %i.hn, ptr %i.hm, align 4
  %i.ho = load ptr, ptr %i.fp, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  store ptr %i.hp, ptr %i.fp, align 8
  %.pre539 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216.us.us.us

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206.us.us.us
  %i.hq = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.hr = ptrtoint ptr %i.hl to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 6 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775804
  br i1 %i.hu, label %.split474.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i208.us.us.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i208.us.us.us: ; preds = %bb.bo
  %i.hv = ashr exact i64 %i.ht, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i209.us.us.us = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i209.us.us.us, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 2305843009213693951)
  %i.hz = select i1 %i.hx, i64 2305843009213693951, i64 %i.hy ; 3 uses
  %.not.i.i.i.i210.us.us.us = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i210.us.us.us)
  %i.ia = shl nuw nsw i64 %i.hz, 2
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #21
          to label %.noexc215.us.us.us unwind label %.loopexit438.split.us.split.us.split.us ; 4 uses

.noexc215.us.us.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i208.us.us.us
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %i.ht ; 2 uses
  store i32 %i.hn, ptr %i.ic, align 4
  %i.id = icmp sgt i64 %i.ht, 0
  br i1 %i.id, label %bb.bp, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i211.us.us.us

bb.bp:                                            ; preds = %.noexc215.us.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %i.hq, i64 %i.ht, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i211.us.us.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i211.us.us.us: ; preds = %bb.bp, %.noexc215.us.us.us
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4 ; 2 uses
  %.not.i17.i.i.i212.us.us.us = icmp eq ptr %i.hq, null
  br i1 %.not.i17.i.i.i212.us.us.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i211.us.us.us
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us: ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i211.us.us.us
  store ptr %i.ib, ptr %i.ch, align 8
  store ptr %i.ie, ptr %i.fp, align 8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hz ; 2 uses
  store ptr %i.if, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216.us.us.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit216.us.us.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us, %bb.bn
  %i.ig = phi ptr [ %i.if, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us ], [ %.pre539, %bb.bn ] ; 2 uses
  %i.ih = phi ptr [ %i.ie, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i213.us.us.us ], [ %i.hp, %bb.bn ] ; 2 uses
  %i.ii = add nuw nsw i32 %.090467.us.us.us, %i.ft ; 2 uses
  %.not.i.i217.us.us.us = icmp eq ptr %i.ih, %i.ig
  br i1 %.not.i.i217.us.us.us, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216.us.us.us
  store i32 %i.ii, ptr %i.ih, align 4
  %i.ij = load ptr, ptr %i.fp, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  store ptr %i.ik, ptr %i.fp, align 8
  %.pre540 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us.us.us

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216.us.us.us
  %i.il = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.im = ptrtoint ptr %i.ig to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in                    ; 6 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775804
  br i1 %i.ip, label %.split477.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i218.us.us.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i218.us.us.us: ; preds = %bb.bs
  %i.iq = ashr exact i64 %i.io, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i219.us.us.us = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i219.us.us.us, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 2305843009213693951)
  %i.iu = select i1 %i.is, i64 2305843009213693951, i64 %i.it ; 3 uses
  %.not.i.i.i.i220.us.us.us = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i220.us.us.us)
  %i.iv = shl nuw nsw i64 %i.iu, 2
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #21
          to label %.noexc225.us.us.us unwind label %.loopexit443.split.us.split.us.split.us ; 4 uses

.noexc225.us.us.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i218.us.us.us
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  store i32 %i.ii, ptr %i.ix, align 4
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.bt, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i221.us.us.us

bb.bt:                                            ; preds = %.noexc225.us.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iw, ptr align 4 %i.il, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i221.us.us.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i221.us.us.us: ; preds = %bb.bt, %.noexc225.us.us.us
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %.not.i17.i.i.i222.us.us.us = icmp eq ptr %i.il, null
  br i1 %.not.i17.i.i.i222.us.us.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i221.us.us.us
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.io) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us: ; preds = %bb.bu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i221.us.us.us
  store ptr %i.iw, ptr %i.ch, align 8
  store ptr %i.iz, ptr %i.fp, align 8
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iu ; 2 uses
  store ptr %i.ja, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us.us.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us.us.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us, %bb.br
  %i.jb = phi ptr [ %i.ja, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us ], [ %.pre540, %bb.br ] ; 2 uses
  %i.jc = phi ptr [ %i.iz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i223.us.us.us ], [ %i.ik, %bb.br ] ; 2 uses
  %.not.i.i267.us.us.us = icmp eq ptr %i.jc, %i.jb
  br i1 %.not.i.i267.us.us.us, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us.us.us
  store i32 -1, ptr %i.jc, align 4
  %i.jd = load ptr, ptr %i.fp, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  store ptr %i.je, ptr %i.fp, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us.us.us
  %i.jf = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.jg = ptrtoint ptr %i.jb to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 6 uses
  %i.jj = icmp eq i64 %i.ji, 9223372036854775804
  br i1 %i.jj, label %.split480.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us.us.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us.us.us: ; preds = %bb.bw
  %i.jk = ashr exact i64 %i.ji, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i269.us.us.us = call i64 @llvm.umax.i64(i64 %i.jk, i64 1)
  %i.jl = add nsw i64 %.sroa.speculated.i.i.i.i269.us.us.us, %i.jk ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.jk
  %i.jn = call i64 @llvm.umin.i64(i64 %i.jl, i64 2305843009213693951)
  %i.jo = select i1 %i.jm, i64 2305843009213693951, i64 %i.jn ; 3 uses
  %.not.i.i.i.i270.us.us.us = icmp ne i64 %i.jo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i270.us.us.us)
  %i.jp = shl nuw nsw i64 %i.jo, 2
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #21
          to label %.noexc275.us.us.us unwind label %.loopexit448.split.us.split.us.split.us ; 4 uses

.noexc275.us.us.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us.us.us
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.ji ; 2 uses
  store i32 -1, ptr %i.jr, align 4
  %i.js = icmp sgt i64 %i.ji, 0
  br i1 %i.js, label %bb.bx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us.us.us

bb.bx:                                            ; preds = %.noexc275.us.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jq, ptr align 4 %i.jf, i64 %i.ji, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us.us.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us.us.us: ; preds = %bb.bx, %.noexc275.us.us.us
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 2 uses
  %.not.i17.i.i.i272.us.us.us = icmp eq ptr %i.jf, null
  br i1 %.not.i17.i.i.i272.us.us.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us.us.us, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us.us.us
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.ji) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us.us.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us.us.us: ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us.us.us
  store ptr %i.jq, ptr %i.ch, align 8
  store ptr %i.jt, ptr %i.fp, align 8
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jo
  store ptr %i.ju, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us.us.us, %bb.bv
  %i.jv = phi ptr [ %i.jt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us.us.us ], [ %i.je, %bb.bv ] ; 2 uses
  %exitcond529.not = icmp eq i32 %i.gr, %i.fo
  br i1 %exitcond529.not, label %._crit_edge.split.us.us.us, label %bb.be, !llvm.loop !12

._crit_edge.split.us.us.us:                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us.us.us
  %exitcond530.not = icmp eq i32 %i.fr, %i.fn
  br i1 %exitcond530.not, label %.loopexit392, label %.lr.ph.us.us, !llvm.loop !13

.loopexit428.split.us.split.us.split.us:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i188.us.us.us
  %lpad.loopexit430.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit433.split.us.split.us.split.us:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i198.us.us.us
  %lpad.loopexit435.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit438.split.us.split.us.split.us:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i208.us.us.us
  %lpad.loopexit440.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit443.split.us.split.us.split.us:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i218.us.us.us
  %lpad.loopexit445.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit448.split.us.split.us.split.us:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us.us.us
  %lpad.loopexit450.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.lr.ph.us:                                        ; preds = %.lr.ph483.split.us, %._crit_edge469.split
  %.pre = phi ptr [ %i.oa, %._crit_edge469.split ], [ %.pre536.pre, %.lr.ph483.split.us ]
  %.091481.us = phi i32 [ %i.jx, %._crit_edge469.split ], [ 0, %.lr.ph483.split.us ] ; 2 uses
  %i.jw = mul nuw nsw i32 %.091481.us, %.0384     ; 2 uses
  %i.jx = add nuw nsw i32 %.091481.us, 1          ; 3 uses
  %i.jy = mul nuw nsw i32 %i.jx, %.0384           ; 2 uses
  br label %bb.bz

._crit_edge469.split:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494
  %exitcond500.not = icmp eq i32 %i.jx, %i.fn
  br i1 %exitcond500.not, label %.loopexit392, label %.lr.ph.us, !llvm.loop !13

bb.bz:                                            ; preds = %.lr.ph.us, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494
  %i.jz = phi ptr [ %.pre, %.lr.ph.us ], [ %i.oa, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494 ] ; 3 uses
  %.090467.us484 = phi i32 [ 0, %.lr.ph.us ], [ %i.kw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494 ] ; 3 uses
  %i.ka = add nuw nsw i32 %.090467.us484, %i.jw   ; 2 uses
  %i.kb = load ptr, ptr %i.fq, align 8
  %.not.i.i227.us = icmp eq ptr %i.jz, %i.kb
  br i1 %.not.i.i227.us, label %bb.cb, label %bb.ca

.split.us:                                        ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc194 unwind label %.loopexit.split-lp429

.noexc194:                                        ; preds = %.split.us
  unreachable

.split471.us:                                     ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc204 unwind label %.loopexit.split-lp434

.noexc204:                                        ; preds = %.split471.us
  unreachable

.split474.us:                                     ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc214 unwind label %.loopexit.split-lp439

.noexc214:                                        ; preds = %.split474.us
  unreachable

.split477.us:                                     ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc224 unwind label %.loopexit.split-lp444

.noexc224:                                        ; preds = %.split477.us
  unreachable

.loopexit.split-lp429:                            ; preds = %.split.us
  %lpad.loopexit.split-lp431 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp434:                            ; preds = %.split471.us
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp439:                            ; preds = %.split474.us
  %lpad.loopexit.split-lp441 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp444:                            ; preds = %.split477.us
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

bb.ca:                                            ; preds = %bb.bz
  store i32 %i.ka, ptr %i.jz, align 4
  %i.kc = load ptr, ptr %i.fp, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4 ; 2 uses
  store ptr %i.kd, ptr %i.fp, align 8
  %.pre532 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit236.us

bb.cb:                                            ; preds = %bb.bz
  %i.ke = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.kf = ptrtoint ptr %i.jz to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg                    ; 6 uses
  %i.ki = icmp eq i64 %i.kh, 9223372036854775804
  br i1 %i.ki, label %27, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i228.us

27:                                               ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc234 unwind label %.loopexit.split-lp409

.noexc234:                                        ; preds = %27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i228.us: ; preds = %bb.cb
  %i.kj = ashr exact i64 %i.kh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i229.us = call i64 @llvm.umax.i64(i64 %i.kj, i64 1)
  %i.kk = add nsw i64 %.sroa.speculated.i.i.i.i229.us, %i.kj ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.kj
  %i.km = call i64 @llvm.umin.i64(i64 %i.kk, i64 2305843009213693951)
  %i.kn = select i1 %i.kl, i64 2305843009213693951, i64 %i.km ; 3 uses
  %.not.i.i.i.i230.us = icmp ne i64 %i.kn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i230.us)
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #21
          to label %.noexc235.us unwind label %.loopexit408 ; 4 uses

.noexc235.us:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i228.us
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %i.kh ; 2 uses
  store i32 %i.ka, ptr %i.kq, align 4
  %i.kr = icmp sgt i64 %i.kh, 0
  br i1 %i.kr, label %bb.cc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i231.us

bb.cc:                                            ; preds = %.noexc235.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 4 %i.ke, i64 %i.kh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i231.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i231.us: ; preds = %bb.cc, %.noexc235.us
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  %.not.i17.i.i.i232.us = icmp eq ptr %i.ke, null
  br i1 %.not.i17.i.i.i232.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i231.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kh) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i231.us
  store ptr %i.kp, ptr %i.ch, align 8
  store ptr %i.ks, ptr %i.fp, align 8
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kn ; 2 uses
  store ptr %i.kt, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit236.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit236.us:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us, %bb.ca
  %i.ku = phi ptr [ %i.kt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us ], [ %.pre532, %bb.ca ] ; 2 uses
  %i.kv = phi ptr [ %i.ks, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i233.us ], [ %i.kd, %bb.ca ] ; 2 uses
  %i.kw = add nuw nsw i32 %.090467.us484, 1       ; 4 uses
  %i.kx = add nuw nsw i32 %i.kw, %i.jw            ; 2 uses
  %.not.i.i237.us = icmp eq ptr %i.kv, %i.ku
  br i1 %.not.i.i237.us, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit236.us
  store i32 %i.kx, ptr %i.kv, align 4
  %i.ky = load ptr, ptr %i.fp, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4 ; 2 uses
  store ptr %i.kz, ptr %i.fp, align 8
  %.pre533 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit246.us

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit236.us
  %i.la = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.lb = ptrtoint ptr %i.ku to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 6 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775804
  br i1 %i.le, label %28, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i238.us

28:                                               ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc244 unwind label %.loopexit.split-lp414

.noexc244:                                        ; preds = %28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i238.us: ; preds = %bb.cf
  %i.lf = ashr exact i64 %i.ld, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i239.us = call i64 @llvm.umax.i64(i64 %i.lf, i64 1)
  %i.lg = add nsw i64 %.sroa.speculated.i.i.i.i239.us, %i.lf ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.lf
  %i.li = call i64 @llvm.umin.i64(i64 %i.lg, i64 2305843009213693951)
  %i.lj = select i1 %i.lh, i64 2305843009213693951, i64 %i.li ; 3 uses
  %.not.i.i.i.i240.us = icmp ne i64 %i.lj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i240.us)
  %i.lk = shl nuw nsw i64 %i.lj, 2
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #21
          to label %.noexc245.us unwind label %.loopexit413 ; 4 uses

.noexc245.us:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i238.us
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.ld ; 2 uses
  store i32 %i.kx, ptr %i.lm, align 4
  %i.ln = icmp sgt i64 %i.ld, 0
  br i1 %i.ln, label %bb.cg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i241.us

bb.cg:                                            ; preds = %.noexc245.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ll, ptr align 4 %i.la, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i241.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i241.us: ; preds = %bb.cg, %.noexc245.us
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %.not.i17.i.i.i242.us = icmp eq ptr %i.la, null
  br i1 %.not.i17.i.i.i242.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i241.us
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.ld) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us: ; preds = %bb.ch, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i241.us
  store ptr %i.ll, ptr %i.ch, align 8
  store ptr %i.lo, ptr %i.fp, align 8
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lj ; 2 uses
  store ptr %i.lp, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit246.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit246.us:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us, %bb.ce
  %i.lq = phi ptr [ %i.lp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us ], [ %.pre533, %bb.ce ] ; 2 uses
  %i.lr = phi ptr [ %i.lo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i243.us ], [ %i.kz, %bb.ce ] ; 2 uses
  %i.ls = add nuw nsw i32 %i.kw, %i.jy            ; 2 uses
  %.not.i.i247.us = icmp eq ptr %i.lr, %i.lq
  br i1 %.not.i.i247.us, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit246.us
  store i32 %i.ls, ptr %i.lr, align 4
  %i.lt = load ptr, ptr %i.fp, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  store ptr %i.lu, ptr %i.fp, align 8
  %.pre534 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit256.us

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit246.us
  %i.lv = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.lw = ptrtoint ptr %i.lq to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 6 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775804
  br i1 %i.lz, label %29, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i248.us

29:                                               ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc254 unwind label %.loopexit.split-lp419

.noexc254:                                        ; preds = %29
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i248.us: ; preds = %bb.cj
  %i.ma = ashr exact i64 %i.ly, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i249.us = call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i.i249.us, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 2305843009213693951)
  %i.me = select i1 %i.mc, i64 2305843009213693951, i64 %i.md ; 3 uses
  %.not.i.i.i.i250.us = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i.i.i250.us)
  %i.mf = shl nuw nsw i64 %i.me, 2
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #21
          to label %.noexc255.us unwind label %.loopexit418 ; 4 uses

.noexc255.us:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i248.us
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.ly ; 2 uses
  store i32 %i.ls, ptr %i.mh, align 4
  %i.mi = icmp sgt i64 %i.ly, 0
  br i1 %i.mi, label %bb.ck, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i251.us

bb.ck:                                            ; preds = %.noexc255.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr align 4 %i.lv, i64 %i.ly, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i251.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i251.us: ; preds = %bb.ck, %.noexc255.us
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4 ; 2 uses
  %.not.i17.i.i.i252.us = icmp eq ptr %i.lv, null
  br i1 %.not.i17.i.i.i252.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i251.us
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ly) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us: ; preds = %bb.cl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i251.us
  store ptr %i.mg, ptr %i.ch, align 8
  store ptr %i.mj, ptr %i.fp, align 8
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me ; 2 uses
  store ptr %i.mk, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit256.us

_ZNSt6vectorIiSaIiEE9push_backEOi.exit256.us:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us, %bb.ci
  %i.ml = phi ptr [ %i.mk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us ], [ %.pre534, %bb.ci ] ; 2 uses
  %i.mm = phi ptr [ %i.mj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i253.us ], [ %i.lu, %bb.ci ] ; 2 uses
  %i.mn = add nuw nsw i32 %.090467.us484, %i.jy   ; 2 uses
  %.not.i.i257.us = icmp eq ptr %i.mm, %i.ml
  br i1 %.not.i.i257.us, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit256.us
  store i32 %i.mn, ptr %i.mm, align 4
  %i.mo = load ptr, ptr %i.fp, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4 ; 2 uses
  store ptr %i.mp, ptr %i.fp, align 8
  %.pre535 = load ptr, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us485

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit256.us
  %i.mq = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.mr = ptrtoint ptr %i.ml to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms                    ; 6 uses
  %i.mu = icmp eq i64 %i.mt, 9223372036854775804
  br i1 %i.mu, label %30, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i258.us

30:                                               ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc264 unwind label %.loopexit.split-lp424

.noexc264:                                        ; preds = %30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i258.us: ; preds = %bb.cn
  %i.mv = ashr exact i64 %i.mt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i259.us = call i64 @llvm.umax.i64(i64 %i.mv, i64 1)
  %i.mw = add nsw i64 %.sroa.speculated.i.i.i.i259.us, %i.mv ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %i.mv
  %i.my = call i64 @llvm.umin.i64(i64 %i.mw, i64 2305843009213693951)
  %i.mz = select i1 %i.mx, i64 2305843009213693951, i64 %i.my ; 3 uses
  %.not.i.i.i.i260.us = icmp ne i64 %i.mz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i260.us)
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #21
          to label %.noexc265.us unwind label %.loopexit423 ; 4 uses

.noexc265.us:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i258.us
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.mt ; 2 uses
  store i32 %i.mn, ptr %i.nc, align 4
  %i.nd = icmp sgt i64 %i.mt, 0
  br i1 %i.nd, label %bb.co, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i261.us

bb.co:                                            ; preds = %.noexc265.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nb, ptr align 4 %i.mq, i64 %i.mt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i261.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i261.us: ; preds = %bb.co, %.noexc265.us
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %.not.i17.i.i.i262.us = icmp eq ptr %i.mq, null
  br i1 %.not.i17.i.i.i262.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i261.us
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mt) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us: ; preds = %bb.cp, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i261.us
  store ptr %i.nb, ptr %i.ch, align 8
  store ptr %i.ne, ptr %i.fp, align 8
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.mz ; 2 uses
  store ptr %i.nf, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us485

.loopexit408:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i228.us
  %lpad.loopexit410 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp409:                            ; preds = %27
  %lpad.loopexit.split-lp411 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit413:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i238.us
  %lpad.loopexit415 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp414:                            ; preds = %28
  %lpad.loopexit.split-lp416 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit418:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i248.us
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp419:                            ; preds = %29
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit423:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i258.us
  %lpad.loopexit425 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp424:                            ; preds = %30
  %lpad.loopexit.split-lp426 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us485:  ; preds = %bb.cm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us
  %i.ng = phi ptr [ %.pre535, %bb.cm ], [ %i.nf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us ] ; 2 uses
  %i.nh = phi ptr [ %i.mp, %bb.cm ], [ %i.ne, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i263.us ] ; 2 uses
  %.not.i.i267.us486 = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i267.us486, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us485
  store i32 -1, ptr %i.nh, align 4
  %i.ni = load ptr, ptr %i.fp, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 2 uses
  store ptr %i.nj, ptr %i.fp, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit226.us485
  %i.nk = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.nl = ptrtoint ptr %i.ng to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 6 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775804
  br i1 %i.no, label %.split480.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us487

.split480.us:                                     ; preds = %bb.cr, %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc274 unwind label %.loopexit.split-lp449

.noexc274:                                        ; preds = %.split480.us
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us487: ; preds = %bb.cr
  %i.np = ashr exact i64 %i.nn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i269.us488 = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i.i269.us488, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 2305843009213693951)
  %i.nt = select i1 %i.nr, i64 2305843009213693951, i64 %i.ns ; 3 uses
  %.not.i.i.i.i270.us489 = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i270.us489)
  %i.nu = shl nuw nsw i64 %i.nt, 2
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #21
          to label %.noexc275.us490 unwind label %.loopexit.split-lp424.a ; 4 uses

.noexc275.us490:                                  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us487
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %i.nn ; 2 uses
  store i32 -1, ptr %i.nw, align 4
  %i.nx = icmp sgt i64 %i.nn, 0
  br i1 %i.nx, label %bb.cs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us491

bb.cs:                                            ; preds = %.noexc275.us490
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nv, ptr align 4 %i.nk, i64 %i.nn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us491

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us491: ; preds = %bb.cs, %.noexc275.us490
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4 ; 2 uses
  %.not.i17.i.i.i272.us492 = icmp eq ptr %i.nk, null
  br i1 %.not.i17.i.i.i272.us492, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us493, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us491
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.nn) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us493

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us493: ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271.us491
  store ptr %i.nv, ptr %i.ch, align 8
  store ptr %i.ny, ptr %i.fp, align 8
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.nt
  store ptr %i.nz, ptr %i.fq, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494

_ZNSt6vectorIiSaIiEE9push_backEOi.exit276.us494:  ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us493, %bb.cq
  %i.oa = phi ptr [ %i.ny, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273.us493 ], [ %i.nj, %bb.cq ] ; 2 uses
  %exitcond527.not = icmp eq i32 %i.kw, %i.fo
  br i1 %exitcond527.not, label %._crit_edge469.split, label %bb.bz, !llvm.loop !12

.loopexit.split-lp424.a:                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268.us487
  %lpad.loopexit.split-lp426.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit.split-lp449:                            ; preds = %.split480.us
  %lpad.loopexit.split-lp451 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

.loopexit392:                                     ; preds = %._crit_edge469.split, %._crit_edge.split.us.us.us, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit186, %bb.an
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bs, i64 114
  store i8 %.0380, ptr %i.ob, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bs, i64 113
  store i8 %.0382, ptr %i.oc, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %i.bs, i64 116
  store float %.0381, ptr %i.od, align 4
  store i8 %.0383, ptr %i.cg, align 8
  %i.oe = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %.loopexit392
  br i1 %i.oe, label %bb.dw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN6Assimp11X3DImporter22ParseHelper_Node_EnterEP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.bs)
          to label %bb.cw unwind label %bb.db

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cx unwind label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.of = load <2 x ptr>, ptr %17, align 16
  store <2 x ptr> %i.of, ptr %18, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.oh = load <2 x ptr>, ptr %i.og, align 16
  store <2 x ptr> %i.oh, ptr %19, align 16
  %i.oi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %22, i64 29
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.cx
  %i.on = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.on, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.dx unwind label %bb.db

bb.db:                                            ; preds = %bb.dx, %bb.dw, %bb.da, %bb.cv, %.loopexit392
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

bb.dc:                                            ; preds = %bb.cw
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit448

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.cy
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.de:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.df unwind label %bb.dm

bb.df:                                            ; preds = %bb.de
  %i.os = load i64, ptr %i.or, align 8
  store i64 %i.os, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.ot = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.dg unwind label %bb.dn     ; 4 uses

bb.dg:                                            ; preds = %bb.df
  store ptr %i.oi, ptr %21, align 8
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #23
          to label %.noexc282 unwind label %.loopexit.split-lp

.noexc282:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.ov = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ot) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ov, ptr %i.a, align 8
  %i.ow = icmp ugt i64 %i.ov, 15
  br i1 %i.ow, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.di
  %i.ox = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc283 unwind label %.loopexit ; 2 uses

.noexc283:                                        ; preds = %.noexc.i
  store ptr %i.ox, ptr %21, align 8
  %i.oy = load i64, ptr %i.a, align 8
  store i64 %i.oy, ptr %i.oi, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc283, %bb.di
  %i.oz = phi ptr [ %i.ox, %.noexc283 ], [ %i.oi, %bb.di ] ; 2 uses
  switch i64 %i.ov, label %bb.dk [
    i64 1, label %bb.dj
    i64 0, label %bb.dl
  ]

bb.dj:                                            ; preds = %._crit_edge.i.i
  %i.pa = load i8, ptr %i.ot, align 1
  store i8 %i.pa, ptr %i.oz, align 1
  br label %bb.dl

bb.dk:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oz, ptr nonnull align 1 %i.ot, i64 %i.ov, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %._crit_edge.i.i
  %i.pb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.pb, ptr %i.oj, align 8
  %i.pc = load ptr, ptr %21, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb
  store i8 0, ptr %i.pd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.pe = load i64, ptr %i.oj, align 8            ; 4 uses
  switch i64 %i.pe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.dl
  %i.pf = load ptr, ptr %21, align 8              ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 1
  %i.ph = xor i32 %i.pg, 1869377347
  %i.pi = getelementptr i8, ptr %i.pf, i64 4
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i32
  %i.pl = xor i32 %i.pk, 114
  %i.pm = or i32 %i.ph, %i.pl
  %i.pn = icmp ne i32 %i.pm, 0
  %i.po = zext i1 %i.pn to i32
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN6Assimp11X3DImporter9readColorERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ds unwind label %bb.do

bb.dm:                                            ; preds = %bb.de
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dn:                                            ; preds = %bb.df
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp:                               ; preds = %bb.dh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.do:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285: ; preds = %bb.dl
  %.pre544 = load ptr, ptr %21, align 8
  %bcmp.i284 = call i32 @bcmp(ptr %.pre544, ptr nonnull @.str.25, i64 %i.pe)
  %i.pt = icmp eq i32 %bcmp.i284, 0
  br i1 %i.pt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
  invoke void @_ZN6Assimp11X3DImporter13readColorRGBAERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ds unwind label %bb.do

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287: ; preds = %bb.dl
  %.pre545 = load ptr, ptr %21, align 8
  %bcmp.i286 = call i32 @bcmp(ptr %.pre545, ptr nonnull @.str.26, i64 %i.pe)
  %i.pu = icmp eq i32 %bcmp.i286, 0
  br i1 %i.pu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
  invoke void @_ZN6Assimp11X3DImporter10readNormalERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ds unwind label %bb.do

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289: ; preds = %bb.dl
  %.pre546 = load ptr, ptr %21, align 8
  %bcmp.i288 = call i32 @bcmp(ptr %.pre546, ptr nonnull @.str.27, i64 %i.pe)
  %i.pv = icmp eq i32 %bcmp.i288, 0
  br i1 %i.pv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  invoke void @_ZN6Assimp11X3DImporter21readTextureCoordinateERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ds unwind label %bb.do

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  %i.pw = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter20checkForMetadataNodeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.dp unwind label %bb.do

bb.dp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391
  br i1 %i.pw, label %bb.ds, label %._crit_edge.i.i290

._crit_edge.i.i290:                               ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store ptr %i.ok, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ok, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false)
  store i64 13, ptr %i.ol, align 8
  store i8 0, ptr %i.om, align 1
  invoke void @_ZN6Assimp11X3DImporter19skipUnsupportedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.i.i290
  %i.px = load ptr, ptr %22, align 8              ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.ok
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dq
  %i.pz = load i64, ptr %i.ok, align 8
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.ds

bb.dr:                                            ; preds = %._crit_edge.i.i290
  %i.qb = landingpad { ptr, i32 }
          cleanup
  %i.qc = load ptr, ptr %22, align 8              ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.ok
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.dr
  %i.qe = load i64, ptr %i.ok, align 8
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.dt

bb.ds:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.qg = load ptr, ptr %21, align 8              ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.oi
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.ds
  %i.qi = load i64, ptr %i.oi, align 8
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.qk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.cy unwind label %bb.dd     ; 0 uses

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.do
  %.pn99 = phi { ptr, i32 } [ %i.ps, %bb.do ], [ %i.qb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ]
  %i.ql = load ptr, ptr %21, align 8              ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.oi
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.dt
  %i.qn = load i64, ptr %i.oi, align 8
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.du

bb.du:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.dm
  %.pn99.pn.pn = phi { ptr, i32 } [ %i.pq, %bb.dm ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.pr, %bb.dn ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dd
  %.pn103 = phi { ptr, i32 } [ %i.oq, %bb.dd ], [ %.pn99.pn.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.loopexit448

bb.dw:                                            ; preds = %bb.cu
  %i.qp = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.qq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.db ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.dw
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store ptr %i.bs, ptr %i.qs, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qq, ptr noundef nonnull align 8 dereferenceable(24) %i.qr) #20
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 64 ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = add i64 %i.qu, 1
  store i64 %i.qv, ptr %i.qt, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %bb.da
  %i.qw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305 unwind label %bb.db ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305: ; preds = %bb.dx
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store ptr %i.bs, ptr %i.qy, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qw, ptr noundef nonnull align 8 dereferenceable(24) %i.qx) #20
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8
  %i.rb = add i64 %i.ra, 1
  store i64 %i.rb, ptr %i.qz, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.x, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305
  %i.rc = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.ri = load ptr, ptr %14, align 8              ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.d
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.rk = load i64, ptr %i.d, align 8
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.rm = load ptr, ptr %13, align 8              ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.b
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.ro = load i64, ptr %i.b, align 8
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret void

.loopexit448:                                     ; preds = %.loopexit.split-lp449, %.loopexit448.split.us.split.us.split.us, %.loopexit.split-lp424.a, %.loopexit423, %.loopexit.split-lp424, %.loopexit418, %.loopexit.split-lp419, %.loopexit413, %.loopexit.split-lp414, %.loopexit408, %.loopexit.split-lp409, %.loopexit443.split.us.split.us.split.us, %.loopexit.split-lp444, %.loopexit438.split.us.split.us.split.us, %.loopexit.split-lp439, %.loopexit433.split.us.split.us.split.us, %.loopexit.split-lp434, %.loopexit428.split.us.split.us.split.us, %.loopexit.split-lp429, %.loopexit403, %.loopexit.split-lp404, %.loopexit398, %.loopexit.split-lp399, %.loopexit393, %.loopexit.split-lp394, %.split.us.a, %bb.db, %bb.dv, %bb.dc, %bb.ae, %bb.ab, %bb.y
  %.pn110 = phi { ptr, i32 } [ %i.az, %bb.y ], [ %i.bd, %bb.ab ], [ %i.bi, %bb.ae ], [ %i.op, %bb.dc ], [ %i.cw, %.split.us.a ], [ %.pn103, %bb.dv ], [ %i.oo, %bb.db ], [ %lpad.loopexit.split-lp446, %.loopexit.split-lp444 ], [ %lpad.loopexit.split-lp401, %.loopexit.split-lp399 ], [ %lpad.loopexit.split-lp396, %.loopexit.split-lp394 ], [ %lpad.loopexit.split-lp426, %.loopexit.split-lp424 ], [ %lpad.loopexit.split-lp441, %.loopexit.split-lp439 ], [ %lpad.loopexit.split-lp436, %.loopexit.split-lp434 ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp429 ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp404 ], [ %lpad.loopexit.split-lp421, %.loopexit.split-lp419 ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp414 ], [ %lpad.loopexit.split-lp411, %.loopexit.split-lp409 ], [ %lpad.loopexit395, %.loopexit393 ], [ %lpad.loopexit400, %.loopexit398 ], [ %lpad.loopexit405, %.loopexit403 ], [ %lpad.loopexit430.us.us.us, %.loopexit428.split.us.split.us.split.us ], [ %lpad.loopexit435.us.us.us, %.loopexit433.split.us.split.us.split.us ], [ %lpad.loopexit440.us.us.us, %.loopexit438.split.us.split.us.split.us ], [ %lpad.loopexit445.us.us.us, %.loopexit443.split.us.split.us.split.us ], [ %lpad.loopexit410, %.loopexit408 ], [ %lpad.loopexit415, %.loopexit413 ], [ %lpad.loopexit420, %.loopexit418 ], [ %lpad.loopexit425, %.loopexit423 ], [ %lpad.loopexit.split-lp451, %.loopexit.split-lp449 ], [ %lpad.loopexit.split-lp426.a, %.loopexit.split-lp424.a ], [ %lpad.loopexit450.us.us.us, %.loopexit448.split.us.split.us.split.us ]
  %i.rq = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i312 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIfSaIfEED2Ev.exit313, label %bb.ea

bb.ea:                                            ; preds = %.loopexit448
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rq to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rv) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit313

_ZNSt6vectorIfSaIfEED2Ev.exit313:                 ; preds = %.loopexit448, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.rw = load ptr, ptr %14, align 8              ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.d
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313
  %i.ry = load i64, ptr %i.d, align 8
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.sa = load ptr, ptr %13, align 8              ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.b
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %i.sc = load i64, ptr %i.b, align 8
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  resume { ptr, i32 } %.pn110
}

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN6Assimp11X3DImporter22ParseHelper_Node_EnterEP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #2

declare void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind writable sret(%"class.pugi::xml_object_range") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter9readColorERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter13readColorRGBAERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter10readNormalERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter21readTextureCoordinateERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp11X3DImporter20checkForMetadataNodeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter19skipUnsupportedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::vector.24", align 8   ; 23 uses
  %13 = alloca %"class.std::vector.11", align 8   ; 23 uses
  %14 = alloca %"class.std::vector.24", align 8   ; 16 uses
  %15 = alloca %"class.std::vector", align 8      ; 27 uses
  %16 = alloca %"class.std::vector.29", align 8   ; 19 uses
  %17 = alloca %"class.std::vector.34", align 8   ; 13 uses
  %18 = alloca %"class.std::vector", align 8      ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.c, ptr %11, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %9, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc259 unwind label %bb.w

.noexc259:                                        ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc259
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.55)
          to label %.noexc260 unwind label %bb.w  ; 2 uses

.noexc260:                                        ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %.noexc259, %.noexc260
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc263 unwind label %bb.w

end_hunk_0
