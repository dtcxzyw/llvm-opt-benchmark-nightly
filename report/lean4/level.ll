Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/level?download=true
inline.NumInlined: 745
inline.NumDeleted: 242
begin_hunk_0_@_ZN4lean9normalizeERKNS_5levelE:bb.a
  %.not431 = icmp eq i64 %i.cn, 0
  br i1 %.not431, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit129, %bb.bi
  %i.cp = load ptr, ptr %8, align 8, !tbaa !60    ; 5 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !58 ; 4 uses
  %.idx = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 3 uses
  %.not.i.i121 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i121, label %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge
  %i.cs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.ct = shl nuw nsw i64 %i.cs, 1
  %i.cu = xor i64 %i.ct, 126
  invoke void @_ZSt16__introsort_loopIPN4lean5levelElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr, i64 noundef %i.cu, ptr nonnull @_ZN4leanL10is_norm_ltERKNS_5levelES2_)
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %bb.bj
  %i.cv = icmp ugt i64 %i.cq, 16
  br i1 %i.cv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.noexc123
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 128 ; 2 uses
  invoke void @_ZSt16__insertion_sortIPN4lean5levelEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cw, ptr nonnull @_ZN4leanL10is_norm_ltERKNS_5levelES2_)
          to label %.lr.ph.i.i.i.i unwind label %.loopexit.split-lp

.lr.ph.i.i.i.i:                                   ; preds = %bb.bk, %.noexc125
  %.08.i.i.i.i = phi ptr [ %i.cx, %.noexc125 ], [ %i.cw, %bb.bk ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIPN4lean5levelEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_(ptr noundef nonnull %.08.i.i.i.i, ptr nonnull @_ZN4leanL10is_norm_ltERKNS_5levelES2_)
          to label %.noexc125 unwind label %.loopexit379

.noexc125:                                        ; preds = %.lr.ph.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.cx, %i.cr
  br i1 %.not.i.i.i.i122, label %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !151

bb.bl:                                            ; preds = %.noexc123
  invoke void @_ZSt16__insertion_sortIPN4lean5levelEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr, ptr nonnull @_ZN4leanL10is_norm_ltERKNS_5levelES2_)
          to label %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit unwind label %.loopexit.split-lp

.loopexit379:                                     ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

.loopexit.split-lp:                               ; preds = %bb.bh, %bb.bj, %bb.bk, %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

.lr.ph:                                           ; preds = %bb.bi, %_ZN4lean10object_refD2Ev.exit129
  %.051432 = phi ptr [ %i.dg, %_ZN4lean10object_refD2Ev.exit129 ], [ %i.cm, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZN4lean9normalizeERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %.051432)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %.lr.ph
  invoke void @_ZN4lean13push_max_argsERKNS_5levelERNS_6bufferIS0_Lm16EEE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(152) %8)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.cy = load ptr, ptr %9, align 8, !tbaa !16    ; 4 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = and i64 %i.cz, 1
  %.not.i.i.i127 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i127, label %bb.bo, label %_ZN4lean10object_refD2Ev.exit129

bb.bo:                                            ; preds = %bb.bn
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !18 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.bp, label %bb.bq, !prof !19

bb.bp:                                            ; preds = %bb.bo
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %i.cy, align 4, !tbaa !18
  br label %_ZN4lean10object_refD2Ev.exit129

bb.bq:                                            ; preds = %bb.bo
  %.not.i1.i.i128 = icmp eq i32 %i.db, 0
  br i1 %.not.i1.i.i128, label %_ZN4lean10object_refD2Ev.exit129, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.cy)
          to label %_ZN4lean10object_refD2Ev.exit129 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #20
  unreachable

_ZN4lean10object_refD2Ev.exit129:                 ; preds = %bb.bn, %bb.bp, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.dg = getelementptr inbounds nuw i8, ptr %.051432, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.co
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.bt:                                            ; preds = %.lr.ph
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bm
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn89 = phi { ptr, i32 } [ %i.di, %bb.bu ], [ %i.dh, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.jq

_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit: ; preds = %.noexc125, %._crit_edge, %bb.bl
  %i.dj = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.dk = load i64, ptr %i.ch, align 8, !tbaa !58 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.dk, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i.i
  %.not4.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not4.i.i.i, label %.loopexit378, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit, %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.du, %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i ], [ %i.dj, %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit ] ; 2 uses
  %i.dm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 4 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bw, label %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !18 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.bx, label %bb.by, !prof !19

bb.bx:                                            ; preds = %bb.bw
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !18
  br label %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i

bb.by:                                            ; preds = %bb.bw
  %.not.i1.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.dm)
          to label %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #20
  unreachable

_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i: ; preds = %bb.bz, %bb.by, %bb.bx, %.lr.ph.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.du, %i.dl
  br i1 %.not.i.i.i130, label %.loopexit378, label %.lr.ph.i.i.i, !llvm.loop !4

.loopexit378:                                     ; preds = %_ZZN4lean6bufferINS_5levelELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i, %_ZSt4sortIPN4lean5levelEPFbRKS1_S4_EEvT_S7_T0_.exit
  store i64 0, ptr %i.ch, align 8, !tbaa !58
  %i.dv = load ptr, ptr %8, align 8, !tbaa !60    ; 7 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !16 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %.not.i.i4.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i4.i, label %_ZN4lean4kindERKNS_5levelE.exit.i, label %_ZN4lean11is_explicitERKNS_5levelE.exit

_ZN4lean4kindERKNS_5levelE.exit.i:                ; preds = %.loopexit378, %tailrecurse.i
  %i.dz = phi ptr [ %i.ed, %tailrecurse.i ], [ %i.dw, %.loopexit378 ] ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val.i.i.i = load i32, ptr %i.ea, align 4
  %i.eb = lshr i32 %.val.i.i.i, 24
  %trunc.i = trunc nuw i32 %i.eb to i8
  switch i8 %trunc.i, label %.invoke626 [
    i8 0, label %_ZN4lean11is_explicitERKNS_5levelE.exit
    i8 4, label %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
    i8 5, label %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
    i8 2, label %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
    i8 3, label %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
    i8 1, label %tailrecurse.i
  ]

tailrecurse.i:                                    ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !16 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i.i.i131 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i131, label %_ZN4lean4kindERKNS_5levelE.exit.i, label %_ZN4lean11is_explicitERKNS_5levelE.exit

_ZN4lean11is_explicitERKNS_5levelE.exit:          ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i, %tailrecurse.i, %.loopexit378
  %i.eg = load i64, ptr %i.ck, align 8, !tbaa !58 ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 1
  br i1 %i.eh, label %.lr.ph434, label %.critedge

.lr.ph434:                                        ; preds = %_ZN4lean11is_explicitERKNS_5levelE.exit, %_ZN4lean11is_explicitERKNS_5levelE.exit142
  %i.ei = phi i64 [ %i.ez, %_ZN4lean11is_explicitERKNS_5levelE.exit142 ], [ 1, %_ZN4lean11is_explicitERKNS_5levelE.exit ]
  %17 = phi i32 [ %i.ey, %_ZN4lean11is_explicitERKNS_5levelE.exit142 ], [ 1, %_ZN4lean11is_explicitERKNS_5levelE.exit ] ; 7 uses
  %.050433 = phi i32 [ %17, %_ZN4lean11is_explicitERKNS_5levelE.exit142 ], [ 0, %_ZN4lean11is_explicitERKNS_5levelE.exit ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !16 ; 2 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = and i64 %i.el, 1
  %.not.i.i4.i133 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i4.i133, label %_ZN4lean4kindERKNS_5levelE.exit.i135, label %_ZN4lean11is_explicitERKNS_5levelE.exit142

_ZN4lean4kindERKNS_5levelE.exit.i135:             ; preds = %.lr.ph434, %tailrecurse.i138
  %i.en = phi ptr [ %i.er, %tailrecurse.i138 ], [ %i.ek, %.lr.ph434 ] ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %.val.i.i.i136 = load i32, ptr %i.eo, align 4
  %i.ep = lshr i32 %.val.i.i.i136, 24
  %trunc.i137 = trunc nuw i32 %i.ep to i8
  switch i8 %trunc.i137, label %.invoke626 [
    i8 0, label %_ZN4lean11is_explicitERKNS_5levelE.exit142
    i8 4, label %.critedge
    i8 5, label %.critedge
    i8 2, label %.critedge
    i8 3, label %.critedge
    i8 1, label %tailrecurse.i138
  ]

tailrecurse.i138:                                 ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i135
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !16 ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, 1
  %.not.i.i.i139 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i139, label %_ZN4lean4kindERKNS_5levelE.exit.i135, label %_ZN4lean11is_explicitERKNS_5levelE.exit142

.invoke626:                                       ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i, %_ZN4lean4kindERKNS_5levelE.exit.i135
  %i.eu = call ptr @__cxa_allocate_exception(i64 40) #19 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 0, ptr %i.ex, align 8, !tbaa !25
  store i8 0, ptr %i.ew, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.eu, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #18
          to label %.cont627 unwind label %bb.cb, !inline_history !33

.cont627:                                         ; preds = %.invoke626
  unreachable

_ZN4lean11is_explicitERKNS_5levelE.exit142:       ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i135, %tailrecurse.i138, %.lr.ph434
  %i.ey = add i32 %17, 1                          ; 3 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = icmp ugt i64 %i.eg, %i.ez
  br i1 %i.fa, label %.lr.ph434, label %.critedge, !llvm.loop !152

bb.cb:                                            ; preds = %.invoke626, %bb.ef
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

.critedge:                                        ; preds = %_ZN4lean11is_explicitERKNS_5levelE.exit142, %_ZN4lean4kindERKNS_5levelE.exit.i135, %_ZN4lean4kindERKNS_5levelE.exit.i135, %_ZN4lean4kindERKNS_5levelE.exit.i135, %_ZN4lean4kindERKNS_5levelE.exit.i135, %_ZN4lean11is_explicitERKNS_5levelE.exit
  %.050422 = phi i32 [ 0, %_ZN4lean11is_explicitERKNS_5levelE.exit ], [ %.050433, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %.050433, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %.050433, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %.050433, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %17, %_ZN4lean11is_explicitERKNS_5levelE.exit142 ] ; 3 uses
  %18 = phi i32 [ 1, %_ZN4lean11is_explicitERKNS_5levelE.exit ], [ %17, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %17, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %17, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %17, %_ZN4lean4kindERKNS_5levelE.exit.i135 ], [ %i.ey, %_ZN4lean11is_explicitERKNS_5levelE.exit142 ] ; 3 uses
  %i.fc = zext i32 %.050422 to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16 ; 7 uses
  store ptr %i.fe, ptr %10, align 8, !tbaa !16
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = and i64 %i.ff, 1
  %.not.i.i.i.i143 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i143, label %bb.cc, label %_ZN4lean9to_offsetENS_5levelE.exit169

bb.cc:                                            ; preds = %.critedge
  %.val.i.i.i.i.i144 = load i32, ptr %i.fe, align 4, !tbaa !18 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i.i.i.i144, 0
  br i1 %i.fh, label %bb.cd, label %bb.ce, !prof !19

bb.cd:                                            ; preds = %bb.cc
  %i.fi = add nuw i32 %.val.i.i.i.i.i144, 1
  store i32 %i.fi, ptr %i.fe, align 4, !tbaa !18
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i.i.i.i145 = icmp eq i32 %.val.i.i.i.i.i144, 0
  br i1 %.not.i.i.i.i.i145, label %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fj = atomicrmw sub ptr %i.fe, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader

_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader: ; preds = %bb.cf, %bb.ce, %bb.cd
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i152

_ZN4lean7is_succERKNS_5levelE.exit.i152:          ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader, %_ZN4lean5levelaSERKS0_.exit.i161
  %.pre.i167 = phi ptr [ %i.ft, %_ZN4lean5levelaSERKS0_.exit.i161 ], [ %i.fe, %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader ] ; 11 uses
  %storemerge6.i153 = phi i32 [ %i.fx, %_ZN4lean5levelaSERKS0_.exit.i161 ], [ 0, %_ZN4lean7is_succERKNS_5levelE.exit.i152.preheader ] ; 4 uses
  %i.fk = getelementptr i8, ptr %.pre.i167, i64 4
  %.val.i.i.i.i154 = load i32, ptr %i.fk, align 4, !noalias !194
  %.mask.i.i.i155 = and i32 %.val.i.i.i.i154, -16777216
  %i.fl = icmp eq i32 %.mask.i.i.i155, 16777216
  br i1 %i.fl, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i152
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre.i167, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !16, !noalias !194 ; 7 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i.i.i.i.i158 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.i158, label %bb.ch, label %_ZN4lean3incEP11lean_object.exit.i.i.i159

bb.ch:                                            ; preds = %bb.cg
  %.val.i.i.i.i.i.i164 = load i32, ptr %i.fn, align 4, !tbaa !18, !noalias !194 ; 3 uses
  %i.fq = icmp sgt i32 %.val.i.i.i.i.i.i164, 0
  br i1 %i.fq, label %bb.ci, label %bb.cj, !prof !19

bb.ci:                                            ; preds = %bb.ch
  %i.fr = add nuw i32 %.val.i.i.i.i.i.i164, 1
  store i32 %i.fr, ptr %i.fn, align 4, !tbaa !18, !noalias !194
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i159

bb.cj:                                            ; preds = %bb.ch
  %.not.i.i.i.i.i.i165 = icmp eq i32 %.val.i.i.i.i.i.i164, 0
  br i1 %.not.i.i.i.i.i.i165, label %_ZN4lean3incEP11lean_object.exit.i.i.i159, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fs = atomicrmw sub ptr %i.fn, i32 1 monotonic, align 4, !noalias !194 ; 0 uses
  %.pre.i.i.i166 = load ptr, ptr %i.fm, align 8, !tbaa !16, !noalias !194
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i159

_ZN4lean3incEP11lean_object.exit.i.i.i159:        ; preds = %bb.cg, %bb.ci, %bb.cj, %bb.ck
  %i.ft = phi ptr [ %i.fn, %bb.cg ], [ %i.fn, %bb.ci ], [ %i.fn, %bb.cj ], [ %.pre.i.i.i166, %bb.ck ] ; 4 uses
  %i.fu = load i32, ptr %.pre.i167, align 8, !tbaa !18, !noalias !194 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.cl, label %bb.cm, !prof !19

bb.cl:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i159
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %.pre.i167, align 8, !tbaa !18, !noalias !194
  br label %_ZN4lean5levelaSERKS0_.exit.i161

bb.cm:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i159
  %.not.i1.i.i.i.i163 = icmp eq i32 %i.fu, 0
  br i1 %.not.i1.i.i.i.i163, label %_ZN4lean5levelaSERKS0_.exit.i161, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %.pre.i167)
          to label %_ZN4lean5levelaSERKS0_.exit.i161 unwind label %bb.ed

_ZN4lean5levelaSERKS0_.exit.i161:                 ; preds = %bb.cn, %bb.cm, %bb.cl
  store ptr %i.ft, ptr %10, align 8, !tbaa !16, !noalias !194
  %i.fx = add i32 %storemerge6.i153, 1            ; 2 uses
  %i.fy = ptrtoint ptr %i.ft to i64
  %i.fz = and i64 %i.fy, 1
  %.not.i.i.i.i162 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i162, label %_ZN4lean7is_succERKNS_5levelE.exit.i152, label %_ZN4lean9to_offsetENS_5levelE.exit169, !llvm.loop !0

bb.co:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i152
  %.val.i.i.i.i.i.i.i.i.i156 = load i32, ptr %.pre.i167, align 4, !tbaa !18, !noalias !195 ; 3 uses
  %i.ga = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i156, 0
  br i1 %i.ga, label %bb.cp, label %bb.cq, !prof !19

bb.cp:                                            ; preds = %bb.co
  %i.gb = add nuw i32 %.val.i.i.i.i.i.i.i.i.i156, 1
  store i32 %i.gb, ptr %.pre.i167, align 4, !tbaa !18, !noalias !195
  br label %_ZN4lean9to_offsetENS_5levelE.exit169

bb.cq:                                            ; preds = %bb.co
  %.not.i.i.i.i.i.i.i.i.i157 = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i156, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i157, label %_ZN4lean9to_offsetENS_5levelE.exit169, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gc = atomicrmw sub ptr %.pre.i167, i32 1 monotonic, align 4, !noalias !195 ; 0 uses
  br label %_ZN4lean9to_offsetENS_5levelE.exit169

_ZN4lean9to_offsetENS_5levelE.exit169:            ; preds = %_ZN4lean5levelaSERKS0_.exit.i161, %.critedge, %bb.cr, %bb.cq, %bb.cp
  %.sroa.0372.0 = phi ptr [ %.pre.i167, %bb.cr ], [ %.pre.i167, %bb.cp ], [ %.pre.i167, %bb.cq ], [ %i.fe, %.critedge ], [ %i.ft, %_ZN4lean5levelaSERKS0_.exit.i161 ] ; 4 uses
  %storemerge4.i151 = phi i32 [ %storemerge6.i153, %bb.cr ], [ %storemerge6.i153, %bb.cp ], [ %storemerge6.i153, %bb.cq ], [ 0, %.critedge ], [ %i.fx, %_ZN4lean5levelaSERKS0_.exit.i161 ]
  %i.gd = ptrtoint ptr %.sroa.0372.0 to i64
  %i.ge = and i64 %i.gd, 1
  %.not.i.i.i.i170 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i170, label %bb.cs, label %_ZNSt4pairIN4lean5levelEjED2Ev.exit

bb.cs:                                            ; preds = %_ZN4lean9to_offsetENS_5levelE.exit169
  %i.gf = load i32, ptr %.sroa.0372.0, align 4, !tbaa !18 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.ct, label %bb.cu, !prof !19

bb.ct:                                            ; preds = %bb.cs
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %.sroa.0372.0, align 4, !tbaa !18
  br label %_ZNSt4pairIN4lean5levelEjED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %.not.i1.i.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i1.i.i.i, label %_ZNSt4pairIN4lean5levelEjED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %.sroa.0372.0)
          to label %_ZNSt4pairIN4lean5levelEjED2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #20
  unreachable

_ZNSt4pairIN4lean5levelEjED2Ev.exit:              ; preds = %_ZN4lean9to_offsetENS_5levelE.exit169, %bb.ct, %bb.cu, %bb.cv
  %i.gk = load ptr, ptr %10, align 8, !tbaa !16   ; 4 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = and i64 %i.gl, 1
  %.not.i.i.i172 = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i.i172, label %bb.cx, label %_ZN4lean10object_refD2Ev.exit174

bb.cx:                                            ; preds = %_ZNSt4pairIN4lean5levelEjED2Ev.exit
  %i.gn = load i32, ptr %i.gk, align 4, !tbaa !18 ; 3 uses
  %i.go = icmp sgt i32 %i.gn, 1
  br i1 %i.go, label %bb.cy, label %bb.cz, !prof !19

bb.cy:                                            ; preds = %bb.cx
  %i.gp = add nsw i32 %i.gn, -1
  store i32 %i.gp, ptr %i.gk, align 4, !tbaa !18
  br label %_ZN4lean10object_refD2Ev.exit174

bb.cz:                                            ; preds = %bb.cx
  %.not.i1.i.i173 = icmp eq i32 %i.gn, 0
  br i1 %.not.i1.i.i173, label %_ZN4lean10object_refD2Ev.exit174, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.gk)
          to label %_ZN4lean10object_refD2Ev.exit174 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #20
  unreachable

_ZN4lean10object_refD2Ev.exit174:                 ; preds = %_ZNSt4pairIN4lean5levelEjED2Ev.exit, %bb.cy, %bb.cz, %bb.da
  %i.gs = zext i32 %18 to i64                     ; 2 uses
  %i.gt = load i64, ptr %i.ck, align 8, !tbaa !58
  %i.gu = icmp ugt i64 %i.gt, %i.gs
  br i1 %i.gu, label %.lr.ph437, label %_ZN4lean10object_refD2Ev.exit208._crit_edge

bb.dc:                                            ; preds = %_ZN4lean10object_refD2Ev.exit208
  %i.gv = add i32 %.049436, 1                     ; 2 uses
  %i.gw = zext i32 %i.gv to i64                   ; 3 uses
  %i.gx = icmp ugt i64 %.pre.pre, %i.gw
  br i1 %i.gx, label %.lr.ph437, label %_ZN4lean10object_refD2Ev.exit208._crit_edge.loopexit, !llvm.loop !159

.lr.ph437:                                        ; preds = %_ZN4lean10object_refD2Ev.exit174, %bb.dc
  %i.gy = phi i64 [ %i.gw, %bb.dc ], [ %i.gs, %_ZN4lean10object_refD2Ev.exit174 ] ; 2 uses
  %.049436 = phi i32 [ %i.gv, %bb.dc ], [ %18, %_ZN4lean10object_refD2Ev.exit174 ]
  %i.gz = load ptr, ptr %8, align 8, !tbaa !60
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !16 ; 7 uses
  store ptr %i.hb, ptr %11, align 8, !tbaa !16
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = and i64 %i.hc, 1
  %.not.i.i.i.i175 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i.i175, label %bb.dd, label %_ZN4lean9to_offsetENS_5levelE.exit201

bb.dd:                                            ; preds = %.lr.ph437
  %.val.i.i.i.i.i176 = load i32, ptr %i.hb, align 4, !tbaa !18 ; 3 uses
  %i.he = icmp sgt i32 %.val.i.i.i.i.i176, 0
  br i1 %i.he, label %bb.de, label %bb.df, !prof !19

bb.de:                                            ; preds = %bb.dd
  %i.hf = add nuw i32 %.val.i.i.i.i.i176, 1
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !18
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader

bb.df:                                            ; preds = %bb.dd
  %.not.i.i.i.i.i177 = icmp eq i32 %.val.i.i.i.i.i176, 0
  br i1 %.not.i.i.i.i.i177, label %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hg = atomicrmw sub ptr %i.hb, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader

_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader: ; preds = %bb.dg, %bb.df, %bb.de
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i184

_ZN4lean7is_succERKNS_5levelE.exit.i184:          ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader, %_ZN4lean5levelaSERKS0_.exit.i193
  %.pre.i199 = phi ptr [ %i.hq, %_ZN4lean5levelaSERKS0_.exit.i193 ], [ %i.hb, %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader ] ; 11 uses
  %storemerge6.i185 = phi i32 [ %i.hu, %_ZN4lean5levelaSERKS0_.exit.i193 ], [ 0, %_ZN4lean7is_succERKNS_5levelE.exit.i184.preheader ] ; 4 uses
  %i.hh = getelementptr i8, ptr %.pre.i199, i64 4
  %.val.i.i.i.i186 = load i32, ptr %i.hh, align 4, !noalias !196
  %.mask.i.i.i187 = and i32 %.val.i.i.i.i186, -16777216
  %i.hi = icmp eq i32 %.mask.i.i.i187, 16777216
  br i1 %i.hi, label %bb.dh, label %bb.dp

bb.dh:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i184
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre.i199, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !16, !noalias !196 ; 7 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = and i64 %i.hl, 1
  %.not.i.i.i.i.i190 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i.i.i190, label %bb.di, label %_ZN4lean3incEP11lean_object.exit.i.i.i191

bb.di:                                            ; preds = %bb.dh
  %.val.i.i.i.i.i.i196 = load i32, ptr %i.hk, align 4, !tbaa !18, !noalias !196 ; 3 uses
  %i.hn = icmp sgt i32 %.val.i.i.i.i.i.i196, 0
  br i1 %i.hn, label %bb.dj, label %bb.dk, !prof !19

bb.dj:                                            ; preds = %bb.di
  %i.ho = add nuw i32 %.val.i.i.i.i.i.i196, 1
  store i32 %i.ho, ptr %i.hk, align 4, !tbaa !18, !noalias !196
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i191

bb.dk:                                            ; preds = %bb.di
  %.not.i.i.i.i.i.i197 = icmp eq i32 %.val.i.i.i.i.i.i196, 0
  br i1 %.not.i.i.i.i.i.i197, label %_ZN4lean3incEP11lean_object.exit.i.i.i191, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.hp = atomicrmw sub ptr %i.hk, i32 1 monotonic, align 4, !noalias !196 ; 0 uses
  %.pre.i.i.i198 = load ptr, ptr %i.hj, align 8, !tbaa !16, !noalias !196
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i191

_ZN4lean3incEP11lean_object.exit.i.i.i191:        ; preds = %bb.dh, %bb.dj, %bb.dk, %bb.dl
  %i.hq = phi ptr [ %i.hk, %bb.dh ], [ %i.hk, %bb.dj ], [ %i.hk, %bb.dk ], [ %.pre.i.i.i198, %bb.dl ] ; 4 uses
  %i.hr = load i32, ptr %.pre.i199, align 8, !tbaa !18, !noalias !196 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %bb.dm, label %bb.dn, !prof !19

bb.dm:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i191
  %i.ht = add nsw i32 %i.hr, -1
  store i32 %i.ht, ptr %.pre.i199, align 8, !tbaa !18, !noalias !196
  br label %_ZN4lean5levelaSERKS0_.exit.i193

bb.dn:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i191
  %.not.i1.i.i.i.i195 = icmp eq i32 %i.hr, 0
  br i1 %.not.i1.i.i.i.i195, label %_ZN4lean5levelaSERKS0_.exit.i193, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %.pre.i199)
          to label %_ZN4lean5levelaSERKS0_.exit.i193 unwind label %bb.ee

_ZN4lean5levelaSERKS0_.exit.i193:                 ; preds = %bb.do, %bb.dn, %bb.dm
  store ptr %i.hq, ptr %11, align 8, !tbaa !16, !noalias !196
  %i.hu = add i32 %storemerge6.i185, 1            ; 2 uses
  %i.hv = ptrtoint ptr %i.hq to i64
  %i.hw = and i64 %i.hv, 1
  %.not.i.i.i.i194 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i.i.i194, label %_ZN4lean7is_succERKNS_5levelE.exit.i184, label %_ZN4lean9to_offsetENS_5levelE.exit201, !llvm.loop !0

bb.dp:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i184
  %.val.i.i.i.i.i.i.i.i.i188 = load i32, ptr %.pre.i199, align 4, !tbaa !18, !noalias !197 ; 3 uses
  %i.hx = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i188, 0
  br i1 %i.hx, label %bb.dq, label %bb.dr, !prof !19

bb.dq:                                            ; preds = %bb.dp
  %i.hy = add nuw i32 %.val.i.i.i.i.i.i.i.i.i188, 1
  store i32 %i.hy, ptr %.pre.i199, align 4, !tbaa !18, !noalias !197
  br label %_ZN4lean9to_offsetENS_5levelE.exit201

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i.i.i.i.i.i.i.i189 = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i188, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i189, label %_ZN4lean9to_offsetENS_5levelE.exit201, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hz = atomicrmw sub ptr %.pre.i199, i32 1 monotonic, align 4, !noalias !197 ; 0 uses
  br label %_ZN4lean9to_offsetENS_5levelE.exit201

_ZN4lean9to_offsetENS_5levelE.exit201:            ; preds = %_ZN4lean5levelaSERKS0_.exit.i193, %.lr.ph437, %bb.ds, %bb.dr, %bb.dq
  %.sroa.0371.0 = phi ptr [ %.pre.i199, %bb.ds ], [ %.pre.i199, %bb.dq ], [ %.pre.i199, %bb.dr ], [ %i.hb, %.lr.ph437 ], [ %i.hq, %_ZN4lean5levelaSERKS0_.exit.i193 ] ; 4 uses
  %storemerge4.i183 = phi i32 [ %storemerge6.i185, %bb.ds ], [ %storemerge6.i185, %bb.dq ], [ %storemerge6.i185, %bb.dr ], [ 0, %.lr.ph437 ], [ %i.hu, %_ZN4lean5levelaSERKS0_.exit.i193 ]
  %.not79 = icmp ult i32 %storemerge4.i183, %storemerge4.i151
  %i.ia = ptrtoint ptr %.sroa.0371.0 to i64
  %i.ib = and i64 %i.ia, 1
  %.not.i.i.i.i202 = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i.i202, label %bb.dt, label %_ZNSt4pairIN4lean5levelEjED2Ev.exit205

bb.dt:                                            ; preds = %_ZN4lean9to_offsetENS_5levelE.exit201
  %i.ic = load i32, ptr %.sroa.0371.0, align 4, !tbaa !18 ; 3 uses
  %i.id = icmp sgt i32 %i.ic, 1
  br i1 %i.id, label %bb.du, label %bb.dv, !prof !19

bb.du:                                            ; preds = %bb.dt
  %i.ie = add nsw i32 %i.ic, -1
  store i32 %i.ie, ptr %.sroa.0371.0, align 4, !tbaa !18
  br label %_ZNSt4pairIN4lean5levelEjED2Ev.exit205

bb.dv:                                            ; preds = %bb.dt
  %.not.i1.i.i.i204 = icmp eq i32 %i.ic, 0
  br i1 %.not.i1.i.i.i204, label %_ZNSt4pairIN4lean5levelEjED2Ev.exit205, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %.sroa.0371.0)
          to label %_ZNSt4pairIN4lean5levelEjED2Ev.exit205 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #20
  unreachable

_ZNSt4pairIN4lean5levelEjED2Ev.exit205:           ; preds = %_ZN4lean9to_offsetENS_5levelE.exit201, %bb.du, %bb.dv, %bb.dw
  %i.ih = load ptr, ptr %11, align 8, !tbaa !16   ; 4 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = and i64 %i.ii, 1
  %.not.i.i.i206 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i.i206, label %bb.dy, label %_ZN4lean10object_refD2Ev.exit208

bb.dy:                                            ; preds = %_ZNSt4pairIN4lean5levelEjED2Ev.exit205
  %i.ik = load i32, ptr %i.ih, align 4, !tbaa !18 ; 3 uses
  %i.il = icmp sgt i32 %i.ik, 1
  br i1 %i.il, label %bb.dz, label %bb.ea, !prof !19

bb.dz:                                            ; preds = %bb.dy
  %i.im = add nsw i32 %i.ik, -1
  store i32 %i.im, ptr %i.ih, align 4, !tbaa !18
  br label %_ZN4lean10object_refD2Ev.exit208

bb.ea:                                            ; preds = %bb.dy
  %.not.i1.i.i207 = icmp eq i32 %i.ik, 0
  br i1 %.not.i1.i.i207, label %_ZN4lean10object_refD2Ev.exit208, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ih)
          to label %_ZN4lean10object_refD2Ev.exit208 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #20
  unreachable

_ZN4lean10object_refD2Ev.exit208:                 ; preds = %_ZNSt4pairIN4lean5levelEjED2Ev.exit205, %bb.dz, %bb.ea, %bb.eb
  %.pre.pre = load i64, ptr %i.ck, align 8, !tbaa !58 ; 2 uses
  br i1 %.not79, label %bb.dc, label %_ZN4lean10object_refD2Ev.exit208._crit_edge.loopexit

bb.ed:                                            ; preds = %bb.cn
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.jq

bb.ee:                                            ; preds = %bb.do
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.jq

_ZN4lean10object_refD2Ev.exit208._crit_edge.loopexit: ; preds = %_ZN4lean10object_refD2Ev.exit208, %bb.dc
  %.lcssa405.ph = phi i64 [ %i.gw, %bb.dc ], [ %i.gy, %_ZN4lean10object_refD2Ev.exit208 ]
  %i.ir = icmp ugt i64 %.pre.pre, %.lcssa405.ph
  %i.is = select i1 %i.ir, i32 %18, i32 %.050422
  br label %_ZN4lean10object_refD2Ev.exit208._crit_edge

_ZN4lean10object_refD2Ev.exit208._crit_edge:      ; preds = %_ZN4lean10object_refD2Ev.exit208._crit_edge.loopexit, %_ZN4lean10object_refD2Ev.exit174
  %spec.select = phi i32 [ %.050422, %_ZN4lean10object_refD2Ev.exit174 ], [ %i.is, %_ZN4lean10object_refD2Ev.exit208._crit_edge.loopexit ]
  %.pre500 = load ptr, ptr %8, align 8, !tbaa !60
  %.pre501 = load i64, ptr %i.ch, align 8, !tbaa !58
  br label %_ZN4lean11is_explicitERKNS_5levelE.exit.thread

_ZN4lean11is_explicitERKNS_5levelE.exit.thread:   ; preds = %_ZN4lean4kindERKNS_5levelE.exit.i, %_ZN4lean4kindERKNS_5levelE.exit.i, %_ZN4lean4kindERKNS_5levelE.exit.i, %_ZN4lean4kindERKNS_5levelE.exit.i, %_ZN4lean10object_refD2Ev.exit208._crit_edge
  %i.it = phi i64 [ %.pre501, %_ZN4lean10object_refD2Ev.exit208._crit_edge ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ] ; 2 uses
  %i.iu = phi ptr [ %.pre500, %_ZN4lean10object_refD2Ev.exit208._crit_edge ], [ %i.dv, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ %i.dv, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ %i.dv, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ %i.dv, %_ZN4lean4kindERKNS_5levelE.exit.i ]
  %.2 = phi i32 [ %spec.select, %_ZN4lean10object_refD2Ev.exit208._crit_edge ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ], [ 0, %_ZN4lean4kindERKNS_5levelE.exit.i ] ; 2 uses
  %i.iv = zext i32 %.2 to i64                     ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load i64, ptr %i.ci, align 8, !tbaa !59 ; 2 uses
  %.not.i209 = icmp ult i64 %i.it, %i.ix
  br i1 %.not.i209, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
  %i.iy = shl i64 %i.ix, 1
  invoke void @_ZN4lean6bufferINS_5levelELm16EE12set_capacityEm(ptr noundef nonnull align 8 dereferenceable(152) %7, i64 noundef %i.iy)
          to label %.noexc214 unwind label %bb.cb

.noexc214:                                        ; preds = %bb.ef
  %.pre.i210 = load i64, ptr %i.ch, align 8, !tbaa !58
  br label %bb.eg

bb.eg:                                            ; preds = %.noexc214, %_ZN4lean11is_explicitERKNS_5levelE.exit.thread
  %i.iz = phi i64 [ %.pre.i210, %.noexc214 ], [ %i.it, %_ZN4lean11is_explicitERKNS_5levelE.exit.thread ] ; 4 uses
  %i.ja = load ptr, ptr %7, align 8, !tbaa !60
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iz
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !16 ; 5 uses
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !16
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = and i64 %i.jd, 1
  %.not.i.i.i.i.i211 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i.i211, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %.val.i.i.i.i.i.i212 = load i32, ptr %i.jc, align 4, !tbaa !18 ; 3 uses
  %i.jf = icmp sgt i32 %.val.i.i.i.i.i.i212, 0
  br i1 %i.jf, label %bb.ei, label %bb.ej, !prof !19

bb.ei:                                            ; preds = %bb.eh
  %i.jg = add nuw i32 %.val.i.i.i.i.i.i212, 1
  store i32 %i.jg, ptr %i.jc, align 4, !tbaa !18
  br label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %.not.i.i.i.i.i.i213 = icmp eq i32 %.val.i.i.i.i.i.i212, 0
  br i1 %.not.i.i.i.i.i.i213, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.jh = atomicrmw sub ptr %i.jc, i32 1 monotonic, align 4 ; 0 uses
  %.pre2.i = load i64, ptr %i.ch, align 8, !tbaa !58
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eg
  %i.ji = phi i64 [ %i.iz, %bb.eg ], [ %i.iz, %bb.ei ], [ %i.iz, %bb.ej ], [ %.pre2.i, %bb.ek ]
  %i.jj = add i64 %i.ji, 1
  store i64 %i.jj, ptr %i.ch, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.jk = load ptr, ptr %8, align 8, !tbaa !60
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.iv
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !16 ; 7 uses
  store ptr %i.jm, ptr %13, align 8, !tbaa !16
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = and i64 %i.jn, 1
  %.not.i.i.i.i215 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i215, label %bb.em, label %_ZN4lean5levelC2ERKS0_.exit218

bb.em:                                            ; preds = %bb.el
  %.val.i.i.i.i.i216 = load i32, ptr %i.jm, align 4, !tbaa !18 ; 3 uses
  %i.jp = icmp sgt i32 %.val.i.i.i.i.i216, 0
  br i1 %i.jp, label %bb.en, label %bb.eo, !prof !19

bb.en:                                            ; preds = %bb.em
  %i.jq = add nuw i32 %.val.i.i.i.i.i216, 1
  store i32 %i.jq, ptr %i.jm, align 4, !tbaa !18
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader

_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader: ; preds = %bb.ep, %bb.eo, %bb.en
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i224

bb.eo:                                            ; preds = %bb.em
  %.not.i.i.i.i.i217 = icmp eq i32 %.val.i.i.i.i.i216, 0
  br i1 %.not.i.i.i.i.i217, label %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.jr = atomicrmw sub ptr %i.jm, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader

_ZN4lean5levelC2ERKS0_.exit218:                   ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  br label %._crit_edge.i220

_ZN4lean7is_succERKNS_5levelE.exit.i224:          ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader, %_ZN4lean5levelaSERKS0_.exit.i233
  %.pre.i239 = phi ptr [ %i.kb, %_ZN4lean5levelaSERKS0_.exit.i233 ], [ %i.jm, %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader ] ; 9 uses
  %storemerge6.i225 = phi i32 [ %i.kf, %_ZN4lean5levelaSERKS0_.exit.i233 ], [ 0, %_ZN4lean7is_succERKNS_5levelE.exit.i224.preheader ] ; 4 uses
  %i.js = getelementptr i8, ptr %.pre.i239, i64 4
  %.val.i.i.i.i226 = load i32, ptr %i.js, align 4, !noalias !198
  %.mask.i.i.i227 = and i32 %.val.i.i.i.i226, -16777216
  %i.jt = icmp eq i32 %.mask.i.i.i227, 16777216
  br i1 %i.jt, label %bb.eq, label %bb.ey

bb.eq:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i224
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre.i239, i64 8 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !16, !noalias !198 ; 7 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %.not.i.i.i.i.i230 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i.i230, label %bb.er, label %_ZN4lean3incEP11lean_object.exit.i.i.i231

bb.er:                                            ; preds = %bb.eq
  %.val.i.i.i.i.i.i236 = load i32, ptr %i.jv, align 4, !tbaa !18, !noalias !198 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i.i.i.i.i236, 0
  br i1 %i.jy, label %bb.es, label %bb.et, !prof !19

bb.es:                                            ; preds = %bb.er
  %i.jz = add nuw i32 %.val.i.i.i.i.i.i236, 1
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !18, !noalias !198
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i231

bb.et:                                            ; preds = %bb.er
  %.not.i.i.i.i.i.i237 = icmp eq i32 %.val.i.i.i.i.i.i236, 0
  br i1 %.not.i.i.i.i.i.i237, label %_ZN4lean3incEP11lean_object.exit.i.i.i231, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ka = atomicrmw sub ptr %i.jv, i32 1 monotonic, align 4, !noalias !198 ; 0 uses
  %.pre.i.i.i238 = load ptr, ptr %i.ju, align 8, !tbaa !16, !noalias !198
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i231

_ZN4lean3incEP11lean_object.exit.i.i.i231:        ; preds = %bb.eq, %bb.es, %bb.et, %bb.eu
  %i.kb = phi ptr [ %i.jv, %bb.eq ], [ %i.jv, %bb.es ], [ %i.jv, %bb.et ], [ %.pre.i.i.i238, %bb.eu ] ; 4 uses
  %i.kc = load i32, ptr %.pre.i239, align 8, !tbaa !18, !noalias !198 ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 1
  br i1 %i.kd, label %bb.ev, label %bb.ew, !prof !19

bb.ev:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i231
  %i.ke = add nsw i32 %i.kc, -1
  store i32 %i.ke, ptr %.pre.i239, align 8, !tbaa !18, !noalias !198
  br label %_ZN4lean5levelaSERKS0_.exit.i233

bb.ew:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i231
  %.not.i1.i.i.i.i235 = icmp eq i32 %i.kc, 0
  br i1 %.not.i1.i.i.i.i235, label %_ZN4lean5levelaSERKS0_.exit.i233, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %.pre.i239)
          to label %_ZN4lean5levelaSERKS0_.exit.i233 unwind label %bb.hd

_ZN4lean5levelaSERKS0_.exit.i233:                 ; preds = %bb.ex, %bb.ew, %bb.ev
  store ptr %i.kb, ptr %13, align 8, !tbaa !16, !noalias !198
  %i.kf = add i32 %storemerge6.i225, 1            ; 2 uses
  %i.kg = ptrtoint ptr %i.kb to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i.i.i.i234 = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i.i.i234, label %_ZN4lean7is_succERKNS_5levelE.exit.i224, label %._crit_edge.i220, !llvm.loop !0

._crit_edge.i220:                                 ; preds = %_ZN4lean5levelaSERKS0_.exit.i233, %_ZN4lean5levelC2ERKS0_.exit218
  %storemerge.lcssa.i221 = phi i32 [ 0, %_ZN4lean5levelC2ERKS0_.exit218 ], [ %i.kf, %_ZN4lean5levelaSERKS0_.exit.i233 ]
  %.lcssa.i222 = phi ptr [ %i.jm, %_ZN4lean5levelC2ERKS0_.exit218 ], [ %i.kb, %_ZN4lean5levelaSERKS0_.exit.i233 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  store ptr %.lcssa.i222, ptr %12, align 8, !tbaa !16, !alias.scope !201
  br label %bb.fc

bb.ey:                                            ; preds = %_ZN4lean7is_succERKNS_5levelE.exit.i224
  store ptr %.pre.i239, ptr %12, align 8, !tbaa !16, !alias.scope !202
  %.val.i.i.i.i.i.i.i.i.i228 = load i32, ptr %.pre.i239, align 4, !tbaa !18, !noalias !201 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i228, 0
  br i1 %i.ki, label %bb.ez, label %bb.fa, !prof !19

bb.ez:                                            ; preds = %bb.ey
  %i.kj = add nuw i32 %.val.i.i.i.i.i.i.i.i.i228, 1
  store i32 %i.kj, ptr %.pre.i239, align 4, !tbaa !18, !noalias !201
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ey
  %.not.i.i.i.i.i.i.i.i.i229 = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i228, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i229, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.kk = atomicrmw sub ptr %.pre.i239, i32 1 monotonic, align 4, !noalias !201 ; 0 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez, %._crit_edge.i220
  %storemerge4.i223 = phi i32 [ %storemerge.lcssa.i221, %._crit_edge.i220 ], [ %storemerge6.i225, %bb.ez ], [ %storemerge6.i225, %bb.fa ], [ %storemerge6.i225, %bb.fb ]
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 %storemerge4.i223, ptr %i.kl, align 8, !tbaa !32, !alias.scope !201
  %i.km = load ptr, ptr %13, align 8, !tbaa !16   ; 4 uses
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = and i64 %i.kn, 1
  %.not.i.i.i242 = icmp eq i64 %i.ko, 0
  br i1 %.not.i.i.i242, label %bb.fd, label %_ZN4lean10object_refD2Ev.exit244

bb.fd:                                            ; preds = %bb.fc
  %i.kp = load i32, ptr %i.km, align 4, !tbaa !18 ; 3 uses
  %i.kq = icmp sgt i32 %i.kp, 1
  br i1 %i.kq, label %bb.fe, label %bb.ff, !prof !19
end_hunk_0
