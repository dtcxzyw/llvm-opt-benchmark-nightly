Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader19parseDataObjectMeshERNS0_6SXMeshE:bb.a
  br i1 %i.en, label %_ZN4core5arrayIjE8set_usedEj.exit298, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ah
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.em, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !137
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ag
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.ef)
  %i.ep = add nuw nsw i64 %.sroa.speculated.i.i, %i.ed ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #30
          to label %.noexc419 unwind label %.loopexit448 ; 4 uses

.noexc419:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ec ; 3 uses
  store i32 0, ptr %i.es, align 4, !tbaa !137
  %i.et = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc419
  %i.ev = getelementptr i8, ptr %i.es, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.et, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ev, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc419
  %i.ew = icmp sgt i64 %i.ec, 0
  br i1 %i.ew, label %bb.ai, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.ai:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.er, ptr align 4 %.sroa.0.0517, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.ai, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0.0517, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ex = sub i64 %i.eg, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0517, i64 noundef %i.ex) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ef
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ep
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.ak:                                            ; preds = %bb.af
  %i.fa = icmp ugt i64 %i.ed, %i.dz
  br i1 %i.fa, label %bb.al, label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.al:                                            ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0517, i64 %i.dz ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %.sroa.13.0518, %i.fb
  %spec.select = select i1 %.not.i.i.i295, ptr %.sroa.13.0518, ptr %i.fb
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZN4core5arrayIjE8set_usedEj.exit298:             ; preds = %bb.al, %bb.ak, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ah
  %.sroa.0.4 = phi ptr [ %.sroa.0.0517, %bb.ak ], [ %.sroa.0.0517, %bb.al ], [ %.sroa.0.0517, %bb.ah ], [ %.sroa.0.0517, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.er, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 8 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0518, %bb.ak ], [ %spec.select, %bb.al ], [ %i.el, %bb.ah ], [ %i.eo, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ey, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.22.4 = phi ptr [ %.sroa.22.0519, %bb.ak ], [ %.sroa.22.0519, %bb.al ], [ %.sroa.22.0519, %bb.ah ], [ %.sroa.22.0519, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ez, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 2 uses
  %i.fc = add i32 %i.dj, -2                       ; 2 uses
  %i.fd = load ptr, ptr %i.bx, align 8, !tbaa !135 ; 2 uses
  %i.fe = load ptr, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = lshr exact i64 %i.fh, 2
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = mul i32 %i.dj, 3
  %i.fl = add i32 %i.fk, -9
  %i.fm = add i32 %i.fl, %i.fj
  %i.fn = zext i32 %i.fm to i64                   ; 4 uses
  %i.fo = ashr exact i64 %i.fh, 2                 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  br i1 %i.fp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.fq = sub nuw nsw i64 %i.fn, %i.fo
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.bu, i64 noundef %i.fq)
          to label %_ZN4core5arrayIjE8set_usedEj.exit302 unwind label %.loopexit448

bb.an:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.fr = icmp ugt i64 %i.fo, %i.fn
  br i1 %i.fr, label %bb.ao, label %_ZN4core5arrayIjE8set_usedEj.exit302

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fn ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.fd, %i.fs
  br i1 %.not.i.i.i299, label %_ZN4core5arrayIjE8set_usedEj.exit302, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300:   ; preds = %bb.ao
  store ptr %i.fs, ptr %i.bx, align 8, !tbaa !135
  br label %_ZN4core5arrayIjE8set_usedEj.exit302

_ZN4core5arrayIjE8set_usedEj.exit302:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300, %bb.ao, %bb.an, %bb.am
  %i.ft = load ptr, ptr %i.ck, align 8, !tbaa !159
  %i.fu = load ptr, ptr %i.ci, align 8, !tbaa !158 ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 1
  %i.fz = icmp ugt i64 %i.fy, %indvars.iv616
  br i1 %i.fz, label %_ZN4core5arrayItEixEj.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit:                       ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  %i.ga = trunc i32 %i.fc to i16
  %i.gb = mul i16 %i.ga, 3
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv616
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !145
  %i.gd = ptrtoint ptr %.sroa.13.2 to i64
  %i.ge = ptrtoint ptr %.sroa.0.4 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2                 ; 3 uses
  br label %bb.aq

.lr.ph515:                                        ; preds = %_ZN4core5arrayIjEixEj.exit
  %.not437 = icmp eq ptr %.sroa.13.2, %.sroa.0.4
  br i1 %.not437, label %bb.bc, label %.lr.ph515.split

.lr.ph515.split:                                  ; preds = %.lr.ph515
  %i.gh = load ptr, ptr %i.bx, align 8, !tbaa !135
  %i.gi = load ptr, ptr %i.bu, align 8, !tbaa !138 ; 4 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 2                 ; 3 uses
  %i.gn = call i64 @llvm.usub.sat.i64(i64 %i.gg, i64 1)
  %wide.trip.count614 = zext i32 %i.fc to i64
  br label %_ZN4core5arrayIjEixEj.exit303

bb.aq:                                            ; preds = %_ZN4core5arrayItEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %indvars.iv604 = phi i64 [ 0, %_ZN4core5arrayItEixEj.exit ], [ %indvars.iv.next605, %_ZN4core5arrayIjEixEj.exit ] ; 3 uses
  %i.go = load i8, ptr %i.cv, align 8, !tbaa !165, !range !78, !noundef !79
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ar, label %.preheader.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load i32, ptr %i.cz, align 8, !tbaa !166 ; 2 uses
  %.not.i = icmp eq i32 %i.gq, 0
  %i.gr = load ptr, ptr %i.cw, align 8, !tbaa !168 ; 6 uses
  %i.gs = load ptr, ptr %i.cx, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i, label %bb.as, label %._crit_edge.i

bb.as:                                            ; preds = %bb.ar
  %.not.i.i = icmp ult ptr %i.gr, %i.gs
  br i1 %.not.i.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, label %._crit_edge.i

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i: ; preds = %bb.as
  %i.gt = load i16, ptr %i.gr, align 2, !tbaa !145
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2 ; 5 uses
  store ptr %i.gu, ptr %i.cw, align 8, !tbaa !168
  %i.gv = icmp eq i16 %i.gt, 6
  br i1 %i.gv, label %bb.at, label %._crit_edge.i

bb.at:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i
  %.not.i3.i = icmp ult ptr %i.gu, %i.gs
  br i1 %.not.i3.i, label %bb.au, label %._crit_edge.i

bb.au:                                            ; preds = %bb.at
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !137
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 6 ; 2 uses
  store ptr %i.gx, ptr %i.cw, align 8, !tbaa !168
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.au, %bb.at, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, %bb.as, %bb.ar
  %i.gy = phi ptr [ %i.gr, %bb.ar ], [ %i.gu, %bb.at ], [ %i.gu, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gx, %bb.au ], [ %i.gr, %bb.as ] ; 3 uses
  %i.gz = phi i32 [ %i.gq, %bb.ar ], [ 0, %bb.at ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gw, %bb.au ], [ 1, %bb.as ]
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr %i.cz, align 8, !tbaa !166
  %.not.i5.i = icmp ult ptr %i.gy, %i.gs
  br i1 %.not.i5.i, label %bb.av, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

bb.av:                                            ; preds = %._crit_edge.i
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !137
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store ptr %i.hc, ptr %i.cw, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

.preheader.i.i:                                   ; preds = %bb.aq
  %i.hd = load ptr, ptr %i.cx, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.cw, align 8, !tbaa !168 ; 3 uses
  %i.he = icmp ult ptr %.promoted.i.i, %i.hd
  br i1 %i.he, label %.lr.ph.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted7.i.i = load i32, ptr %i.cy, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %.lr.ph.i.i
  %i.hf = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.hr, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 3 uses
  %i.hg = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hs, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 5 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !27  ; 3 uses
  %.off.i.i = add i8 %i.hh, -45
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %15 = add i8 %i.hh, -48
  %i.hi = icmp ult i8 %15, 10
  %or.cond.i.i = or i1 %switch.i.i, %i.hi
  br i1 %or.cond.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  switch i8 %i.hh, label %.thread.i.i [
    i8 47, label %bb.ay
    i8 35, label %.lr.ph.i.i.i.preheader
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !27
  %i.hl = icmp eq i8 %i.hk, 47
  br i1 %i.hl, label %.lr.ph.i.i.i.preheader, label %.thread.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ay, %bb.ax
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.ba
  %i.hm = phi ptr [ %i.ho, %bb.ba ], [ %i.hg, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1 ; 5 uses
  store ptr %i.ho, ptr %i.cw, align 8, !tbaa !168
  switch i8 %i.hn, label %bb.ba [
    i8 10, label %bb.az
    i8 13, label %bb.az
  ]

bb.az:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.hp = add i32 %i.hf, 1                        ; 2 uses
  store i32 %i.hp, ptr %i.cy, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq ptr %i.ho, %i.hd
  br i1 %exitcond.not.i.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.thread.i.i:                                      ; preds = %bb.ay, %bb.ax
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 2 uses
  store ptr %i.hq, ptr %i.cw, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i: ; preds = %bb.ba, %.thread.i.i, %bb.az
  %i.hr = phi i32 [ %i.hf, %.thread.i.i ], [ %i.hp, %bb.az ], [ %i.hf, %bb.ba ]
  %i.hs = phi ptr [ %i.hq, %.thread.i.i ], [ %i.ho, %bb.az ], [ %i.ho, %bb.ba ] ; 3 uses
  %i.ht = icmp ult ptr %i.hs, %i.hd
  br i1 %i.ht, label %bb.aw, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %bb.aw, %.preheader.i.i
  %i.hu = phi ptr [ %.promoted.i.i, %.preheader.i.i ], [ %i.hs, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ], [ %i.hg, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.hv = call i64 @__isoc23_strtoul(ptr noundef %i.hu, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.hx, ptr %i.cw, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

_ZN5scene16CXMeshFileLoader7readIntEv.exit:       ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, %bb.av, %._crit_edge.i
  %.0.i = phi i32 [ %i.hw, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i ], [ %i.hb, %bb.av ], [ 0, %._crit_edge.i ]
  %exitcond607.not = icmp eq i64 %indvars.iv604, %i.gg
  br i1 %exitcond607.not, label %bb.bb, label %_ZN4core5arrayIjEixEj.exit

bb.bb:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %indvars.iv604
  store i32 %.0.i, ptr %i.hy, align 4, !tbaa !137
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %exitcond609.not = icmp eq i64 %indvars.iv.next605, %i.dz
  br i1 %exitcond609.not, label %.lr.ph515, label %bb.aq, !llvm.loop !285

.loopexit448:                                     ; preds = %bb.am, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0517, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0.4, %bb.am ]
  %.sroa.22.1.ph = phi ptr [ %.sroa.22.0519, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.22.4, %bb.am ]
  %lpad.loopexit450 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

.loopexit.split-lp449:                            ; preds = %.critedge271, %bb.bs, %bb.bp, %bb.ac
  %.sroa.0.0509 = phi ptr [ %.sroa.0.0.lcssa, %.critedge271 ], [ %.sroa.0.0.lcssa, %bb.bs ], [ %.sroa.0.0.lcssa, %bb.bp ], [ %.sroa.0.0517, %bb.ac ]
  %.sroa.22.0493 = phi ptr [ %.sroa.22.0.lcssa, %.critedge271 ], [ %.sroa.22.0.lcssa, %bb.bs ], [ %.sroa.22.0.lcssa, %bb.bp ], [ %.sroa.22.0519, %bb.ac ]
  %lpad.loopexit.split-lp451 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

_ZN4core5arrayIjEixEj.exit303:                    ; preds = %.lr.ph515.split, %_ZN4core5arrayIjEixEj.exit308
  %indvars.iv610 = phi i64 [ 0, %.lr.ph515.split ], [ %indvars.iv.next611, %_ZN4core5arrayIjEixEj.exit308 ] ; 3 uses
  %.1195513 = phi i32 [ %.0194520, %.lr.ph515.split ], [ %i.io, %_ZN4core5arrayIjEixEj.exit308 ] ; 4 uses
  %i.hz = add i32 %.1195513, 1
  %i.ia = zext i32 %.1195513 to i64               ; 2 uses
  %i.ib = icmp ugt i64 %i.gm, %i.ia
  br i1 %i.ib, label %_ZN4core5arrayIjEixEj.exit304, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph515
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bd:                                            ; preds = %_ZN4core5arrayIjEixEj.exit303
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit304:                    ; preds = %_ZN4core5arrayIjEixEj.exit303
  %i.ic = load i32, ptr %.sroa.0.4, align 4, !tbaa !137
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ia
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !137
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 3 uses
  %exitcond613.not = icmp eq i64 %indvars.iv610, %i.gn
  br i1 %exitcond613.not, label %bb.be, label %_ZN4core5arrayIjEixEj.exit305

bb.be:                                            ; preds = %_ZN4core5arrayIjEixEj.exit304
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit305:                    ; preds = %_ZN4core5arrayIjEixEj.exit304
  %i.ie = add i32 %.1195513, 2
  %i.if = zext i32 %i.hz to i64                   ; 2 uses
  %i.ig = icmp ugt i64 %i.gm, %i.if
  br i1 %i.ig, label %_ZN4core5arrayIjEixEj.exit306, label %bb.bf

bb.bf:                                            ; preds = %_ZN4core5arrayIjEixEj.exit305
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit306:                    ; preds = %_ZN4core5arrayIjEixEj.exit305
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %indvars.iv.next611
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !137
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.if
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !137
  %i.ik = add nuw nsw i64 %indvars.iv610, 2       ; 2 uses
  %i.il = icmp ugt i64 %i.gg, %i.ik
  br i1 %i.il, label %_ZN4core5arrayIjEixEj.exit307, label %bb.bg

bb.bg:                                            ; preds = %_ZN4core5arrayIjEixEj.exit306
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit307:                    ; preds = %_ZN4core5arrayIjEixEj.exit306
  %i.im = zext i32 %i.ie to i64                   ; 2 uses
  %i.in = icmp ugt i64 %i.gm, %i.im
  br i1 %i.in, label %_ZN4core5arrayIjEixEj.exit308, label %bb.bh

bb.bh:                                            ; preds = %_ZN4core5arrayIjEixEj.exit307
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit308:                    ; preds = %_ZN4core5arrayIjEixEj.exit307
  %i.io = add i32 %.1195513, 3                    ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %i.ik
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !137
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.im
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !137
  %exitcond615.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count614
  br i1 %exitcond615.not, label %.loopexit447, label %_ZN4core5arrayIjEixEj.exit303, !llvm.loop !286

bb.bi:                                            ; preds = %bb.aa
  %i.is = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.it = zext i32 %.0194520 to i64               ; 2 uses
  %i.iu = load ptr, ptr %i.bx, align 8, !tbaa !135
  %i.iv = load ptr, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr exact i64 %i.iy, 2
  %i.ja = icmp ugt i64 %i.iz, %i.it
  br i1 %i.ja, label %_ZN4core5arrayIjEixEj.exit309, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit309:                    ; preds = %bb.bi
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  store i32 %i.is, ptr %i.jb, align 4, !tbaa !137
  %i.jc = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.jd = add i32 %.0194520, 1
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = load ptr, ptr %i.bx, align 8, !tbaa !135
  %i.jg = load ptr, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = ashr exact i64 %i.jj, 2
  %i.jl = icmp ugt i64 %i.jk, %i.je
  br i1 %i.jl, label %_ZN4core5arrayIjEixEj.exit310, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5arrayIjEixEj.exit309
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit310:                    ; preds = %_ZN4core5arrayIjEixEj.exit309
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.je
  store i32 %i.jc, ptr %i.jm, align 4, !tbaa !137
  %i.jn = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.jo = add i32 %.0194520, 2
  %i.jp = add i32 %.0194520, 3
  %i.jq = zext i32 %i.jo to i64                   ; 2 uses
  %i.jr = load ptr, ptr %i.bx, align 8, !tbaa !135
end_hunk_0
begin_hunk_1_@_ZN5scene16CXMeshFileLoader10readMatrixERN4core8CMatrix4IfEE:bb.a

sub_0.i:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.ai = load ptr, ptr %2, align 8, !tbaa !52    ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %.not.i = icmp eq i8 %i.aj, 59
  br i1 %.not.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %.not5.i.i = phi i1 [ false, %sub_0.i ], [ %i.am, %sub_1.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.ai, %i.an
  br i1 %i.ao, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !27
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.aq) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not5.i.i, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit: ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit.i, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZN4core6stringIcED2Ev.exit.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::string", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !165, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %sub_0

sub_0:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.d = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 59
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %.not5.i = phi i1 [ false, %sub_0 ], [ %i.h, %sub_1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.d, %i.i
  br i1 %i.j, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.tail
  %i.k = load i64, ptr %i.i, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.l) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  store ptr %i.o, ptr %i.m, align 8, !tbaa !168
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core6stringIcED2Ev.exit, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZN4core6stringIcED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20checkForClosingBraceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
sub_0:
  %1 = alloca %"class.core::string", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 125
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %.not5.i = phi i1 [ false, %sub_0 ], [ %i.e, %sub_1 ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.tail
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.not5.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i8, ptr %i.b, align 8, !tbaa !165, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 3 uses
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, label %._crit_edge

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit:  ; preds = %bb.c
  %i.k = load i16, ptr %i.h, align 2, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 5 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !168
  %i.m = icmp eq i16 %i.k, 6
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit
  %.not.i3 = icmp ult ptr %i.l, %i.j
  br i1 %.not.i3, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 6 ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !168
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, %bb.d, %bb.e, %bb.c, %bb.b
  %i.p = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.l, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit ], [ %i.o, %bb.e ], [ %i.h, %bb.c ] ; 3 uses
  %i.q = phi i32 [ %i.f, %bb.b ], [ 0, %bb.d ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit ], [ %i.n, %bb.e ], [ 1, %bb.c ]
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8, !tbaa !166
  %.not.i5 = icmp ult ptr %i.p, %i.j
  br i1 %.not.i5, label %bb.f, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit7

bb.f:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i32, ptr %i.p, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.u, ptr %i.s, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit7

.preheader.i:                                     ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164  ; 3 uses
  %.promoted.i = load ptr, ptr %i.v, align 8, !tbaa !168 ; 3 uses
  %i.y = icmp ult ptr %.promoted.i, %i.x
  br i1 %i.y, label %.lr.ph.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.promoted7.i = load i32, ptr %i.z, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.lr.ph.i
  %i.aa = phi i32 [ %.promoted7.i, %.lr.ph.i ], [ %i.am, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 3 uses
  %i.ab = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.an, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 5 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27  ; 3 uses
  %.off.i = add i8 %i.ac, -45
  %switch.i = icmp ult i8 %.off.i, 2
  %1 = add i8 %i.ac, -48
  %i.ad = icmp ult i8 %1, 10
  %or.cond.i = or i1 %switch.i, %i.ad
  br i1 %or.cond.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.ac, label %.thread.i [
    i8 47, label %bb.i
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = icmp eq i8 %i.af, 47
  br i1 %i.ag, label %.lr.ph.i.i.preheader, label %.thread.i

.lr.ph.i.i.preheader:                             ; preds = %bb.i, %bb.h
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.k
  %i.ah = phi ptr [ %i.aj, %bb.k ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 5 uses
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !168
  switch i8 %i.ai, label %bb.k [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ak = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.z, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.aj, %i.x
  br i1 %exitcond.not.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i: ; preds = %bb.k, %.thread.i, %bb.j
  %i.am = phi i32 [ %i.aa, %.thread.i ], [ %i.ak, %bb.j ], [ %i.aa, %bb.k ]
  %i.an = phi ptr [ %i.al, %.thread.i ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 3 uses
  %i.ao = icmp ult ptr %i.an, %i.x
  br i1 %i.ao, label %bb.g, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit: ; preds = %bb.g, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.preheader.i
  %i.ap = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.ab, %bb.g ], [ %i.an, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.aq = call i64 @__isoc23_strtoul(ptr noundef %i.ap, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ar = trunc i64 %i.aq to i32
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.as, ptr %i.v, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit7

_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit7: ; preds = %bb.f, %._crit_edge, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit
  %.0 = phi i32 [ %i.ar, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit ], [ %i.t, %bb.f ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader11readVector3ERN4core8vector3dIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  store float %i.a, ptr %1, align 4, !tbaa !180
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.b, ptr %i.c, align 4, !tbaa !181
  %i.d = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.d, ptr %i.e, align 4, !tbaa !182
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::string", align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !165, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.e = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 59
  br i1 %.not, label %sub_1, label %.tail

sub_0.1:                                          ; preds = %_ZN4core6stringIcED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.g = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not.1 = icmp eq i8 %i.h, 59
  br i1 %.not.1, label %sub_1.1, label %.tail.1

sub_1.1:                                          ; preds = %sub_0.1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br label %.tail.1

.tail.1:                                          ; preds = %sub_1.1, %sub_0.1
  %.not5.i.i.not.1 = phi i1 [ false, %sub_0.1 ], [ %i.k, %sub_1.1 ]
  %i.l = icmp eq ptr %i.g, %i.d
  br i1 %i.l, label %_ZN4core6stringIcED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %.tail.1
  %i.m = load i64, ptr %i.d, align 8, !tbaa !27
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.n) #29
  br label %_ZN4core6stringIcED2Ev.exit.1

_ZN4core6stringIcED2Ev.exit.1:                    ; preds = %.tail.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.not5.i.i.not.1, label %.loopexit, label %bb.b

sub_1:                                            ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br label %.tail

.tail:                                            ; preds = %.preheader, %sub_1
  %.not5.i.i.not = phi i1 [ false, %.preheader ], [ %i.q, %sub_1 ]
  %i.r = icmp eq ptr %i.e, %i.d
  br i1 %i.r, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.tail
  %i.s = load i64, ptr %i.d, align 8, !tbaa !27
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.t) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.not5.i.i.not, label %sub_0.1, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.1, %_ZN4core6stringIcED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  store ptr %i.w, ptr %i.u, align 8, !tbaa !168
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4core6stringIcED2Ev.exit.1, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %_ZN4core6stringIcED2Ev.exit.1 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader26parseDataObjectMeshNormalsERNS0_6SXMeshE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(302) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %3 = alloca %"class.core::string", align 8      ; 9 uses
  %4 = alloca %"class.core::string", align 8      ; 9 uses
  %5 = alloca %"class.core::string", align 8      ; 9 uses
  %6 = alloca %"class.core::string", align 8      ; 9 uses
  %7 = alloca %"class.core::string", align 8      ; 9 uses
  %i.c = tail call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20readHeadOfDataObjectEPN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.61, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.e)
  %i.f = load ptr, ptr %3, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.l, align 8, !tbaa !48
  br label %_ZN4core5arrayINS_8vector3dIfEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN5scene16CXMeshFileLoader26parseDataObjectMeshNormalsERNS0_6SXMeshE:bb.a
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = and i64 %i.ba, 4294967295               ; 4 uses
  %.not234 = icmp eq i64 %i.bb, 0
  br i1 %.not234, label %_ZN4core5arrayIjE8set_usedEj.exit, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #30
          to label %.noexc167 unwind label %_ZN4core5arrayIjED2Ev.exit154.thread ; 4 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.bd, align 4, !tbaa !137
  %i.be = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.noexc91, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc167
  %i.bg = getelementptr i8, ptr %i.bd, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.be, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !137
  br label %.noexc91

.noexc91:                                         ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc167
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %_ZN4core5arrayIjE8set_usedEj.exit

_ZN4core5arrayIjE8set_usedEj.exit:                ; preds = %.noexc91, %bb.o
  %.sroa.0200.2 = phi ptr [ %i.bd, %.noexc91 ], [ null, %bb.o ] ; 6 uses
  %.sroa.14.2 = phi i64 [ %i.bi, %.noexc91 ], [ 0, %bb.o ] ; 2 uses
  %i.bj = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 2 uses
  %.not73385.not = icmp eq i32 %i.bj, 0
  br i1 %.not73385.not, label %.critedge, label %.lr.ph391

.lr.ph391:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 28 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.bt = ptrtoint ptr %.sroa.24.2646 to i64
  %i.bu = ptrtoint ptr %.sroa.0208.2649 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 12                ; 6 uses
  %wide.trip.count512 = zext i32 %i.bj to i64
  br label %bb.p

_ZN4core5arrayIjED2Ev.exit154.thread:             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core5arrayIjED2Ev.exit156

bb.p:                                             ; preds = %.lr.ph391, %.loopexit
  %indvars.iv509 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next510, %.loopexit ] ; 3 uses
  %.050389 = phi i32 [ 0, %.lr.ph391 ], [ %.4, %.loopexit ] ; 7 uses
  %.sroa.22.0388 = phi ptr [ null, %.lr.ph391 ], [ %.sroa.22.2, %.loopexit ] ; 10 uses
  %.sroa.13.0387 = phi ptr [ null, %.lr.ph391 ], [ %.sroa.13.1, %.loopexit ] ; 7 uses
  %.sroa.0.0386 = phi ptr [ null, %.lr.ph391 ], [ %.sroa.0.2, %.loopexit ] ; 14 uses
  %i.by = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %i.bz = add i32 %i.by, -2                       ; 4 uses
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !159
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !158 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 1
  %i.cg = icmp ugt i64 %i.cf, %indvars.iv509
  br i1 %i.cg, label %_ZN4core5arrayItEixEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit:                       ; preds = %bb.p
  %i.ch = mul i32 %i.bz, 3
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv509
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !145
  %i.ck = zext i16 %i.cj to i32
  %.not = icmp eq i32 %i.ch, %i.ck
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayItEixEj.exit
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.63, i32 noundef 2)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cl = load i32, ptr %i.bp, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.cl)
  %i.cm = load ptr, ptr %5, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.cm, i32 noundef 2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #29
  br label %.thread

.thread:                                          ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN4core6stringIcED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.u
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !27
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #29
  br label %_ZN4core6stringIcED2Ev.exit97

_ZN4core6stringIcED2Ev.exit97:                    ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ct

bb.v:                                             ; preds = %_ZN4core5arrayItEixEj.exit
  %i.cy = icmp eq i32 %i.bz, 1
  br i1 %i.cy, label %.preheader.preheader, label %bb.bd

.preheader.preheader:                             ; preds = %bb.v
  %i.cz = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.w, label %.preheader.i.i

bb.w:                                             ; preds = %.preheader.preheader
  %i.db = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i = icmp eq i32 %i.db, 0
  %i.dc = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 6 uses
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i, label %bb.x, label %._crit_edge.i

bb.x:                                             ; preds = %bb.w
  %.not.i.i = icmp ult ptr %i.dc, %i.dd
  br i1 %.not.i.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, label %._crit_edge.i

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i: ; preds = %bb.x
  %i.de = load i16, ptr %i.dc, align 2, !tbaa !145
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 5 uses
  store ptr %i.df, ptr %i.bn, align 8, !tbaa !168
  %i.dg = icmp eq i16 %i.de, 6
  br i1 %i.dg, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i
  %.not.i3.i = icmp ult ptr %i.df, %i.dd
  br i1 %.not.i3.i, label %bb.z, label %._crit_edge.i

bb.z:                                             ; preds = %bb.y
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !137
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 6 ; 2 uses
  store ptr %i.di, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, %bb.x, %bb.w
  %i.dj = phi ptr [ %i.dc, %bb.w ], [ %i.df, %bb.y ], [ %i.df, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.di, %bb.z ], [ %i.dc, %bb.x ] ; 4 uses
  %i.dk = phi i32 [ %i.db, %bb.w ], [ 0, %bb.y ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.dh, %bb.z ], [ 1, %bb.x ]
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i = icmp ult ptr %i.dj, %i.dd
  br i1 %.not.i5.i, label %bb.aa, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !137
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  store ptr %i.dn, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

.preheader.i.i:                                   ; preds = %.preheader.preheader
  %i.do = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 3 uses
  %i.dp = icmp ult ptr %.promoted.i.i, %i.do
  br i1 %i.dp, label %.lr.ph.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted7.i.i = load i32, ptr %i.bp, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %.lr.ph.i.i
  %i.dq = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.ec, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 3 uses
  %i.dr = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ed, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 5 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !27  ; 3 uses
  %.off.i.i = add i8 %i.ds, -45
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %8 = add i8 %i.ds, -48
  %i.dt = icmp ult i8 %8, 10
  %or.cond.i.i = or i1 %switch.i.i, %i.dt
  br i1 %or.cond.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.ds, label %.thread.i.i [
    i8 47, label %bb.ad
    i8 35, label %.lr.ph.i.i.i.preheader
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !27
  %i.dw = icmp eq i8 %i.dv, 47
  br i1 %i.dw, label %.lr.ph.i.i.i.preheader, label %.thread.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ad, %bb.ac
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.af
  %i.dx = phi ptr [ %i.dz, %bb.af ], [ %i.dr, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 5 uses
  store ptr %i.dz, ptr %i.bn, align 8, !tbaa !168
  switch i8 %i.dy, label %bb.af [
    i8 10, label %bb.ae
    i8 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ea = add i32 %i.dq, 1                        ; 2 uses
  store i32 %i.ea, ptr %i.bp, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq ptr %i.dz, %i.do
  br i1 %exitcond.not.i.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.thread.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  store ptr %i.eb, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i: ; preds = %bb.af, %.thread.i.i, %bb.ae
  %i.ec = phi i32 [ %i.dq, %.thread.i.i ], [ %i.ea, %bb.ae ], [ %i.dq, %bb.af ]
  %i.ed = phi ptr [ %i.eb, %.thread.i.i ], [ %i.dz, %bb.ae ], [ %i.dz, %bb.af ] ; 3 uses
  %i.ee = icmp ult ptr %i.ed, %i.do
  br i1 %i.ee, label %bb.ab, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %bb.ab, %.preheader.i.i
  %i.ef = phi ptr [ %.promoted.i.i, %.preheader.i.i ], [ %i.ed, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ], [ %i.dr, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !177
  %i.eg = call i64 @__isoc23_strtoul(ptr noundef %i.ef, ptr noundef nonnull %i.b, i32 noundef 10) #28
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  store ptr %i.ei, ptr %i.bn, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

_ZN5scene16CXMeshFileLoader7readIntEv.exit:       ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, %bb.aa, %._crit_edge.i
  %i.ej = phi ptr [ %i.ei, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i ], [ %i.dn, %bb.aa ], [ %i.dj, %._crit_edge.i ] ; 9 uses
  %.0.i = phi i32 [ %i.eh, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i ], [ %i.dm, %bb.aa ], [ 0, %._crit_edge.i ]
  %i.ek = add i32 %.050389, 1
  %i.el = zext i32 %.050389 to i64                ; 2 uses
  %i.em = load ptr, ptr %i.au, align 8, !tbaa !135
  %i.en = load ptr, ptr %i.at, align 8, !tbaa !138 ; 4 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2                 ; 3 uses
  %i.es = icmp ugt i64 %i.er, %i.el
  br i1 %i.es, label %_ZN4core5arrayIjEixEj.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2, %_ZN5scene16CXMeshFileLoader7readIntEv.exit.1, %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !137
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.ex = load ptr, ptr %i.br, align 8, !tbaa !143 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 40
  %i.fc = icmp ugt i64 %i.fb, %i.ev
  br i1 %i.fc, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5arrayIjEixEj.exit.2, %_ZN4core5arrayIjEixEj.exit.1, %_ZN4core5arrayIjEixEj.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit:      ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.fd = zext i32 %.0.i to i64                   ; 2 uses
  %i.fe = icmp ugt i64 %i.bw, %i.fd
  br i1 %i.fe, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98, label %bb.ai

bb.ai:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2, %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.1, %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98:      ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.ev ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2649, i64 %i.fd ; 2 uses
  %i.fi = load <2 x float>, ptr %i.fh, align 4, !tbaa !90
  store <2 x float> %i.fi, ptr %i.fg, align 4, !tbaa !90
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !182
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  store float %i.fk, ptr %i.fl, align 4, !tbaa !182
  %i.fm = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ao, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98
  %i.fo = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %i.fp = icmp ult ptr %i.ej, %i.fo
  br i1 %i.fp, label %.lr.ph.i.i.1, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1

.lr.ph.i.i.1:                                     ; preds = %.preheader.i.i.1
  %.promoted7.i.i.1 = load i32, ptr %i.bp, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1, %.lr.ph.i.i.1
  %i.fq = phi i32 [ %.promoted7.i.i.1, %.lr.ph.i.i.1 ], [ %i.gc, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1 ] ; 3 uses
  %i.fr = phi ptr [ %i.ej, %.lr.ph.i.i.1 ], [ %i.gd, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1 ] ; 5 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !27  ; 3 uses
  %.off.i.i.1 = add i8 %i.fs, -45
  %switch.i.i.1 = icmp ult i8 %.off.i.i.1, 2
  %9 = add i8 %i.fs, -48
  %i.ft = icmp ult i8 %9, 10
  %or.cond.i.i.1 = or i1 %switch.i.i.1, %i.ft
  br i1 %or.cond.i.i.1, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.fs, label %.thread.i.i.1 [
    i8 47, label %bb.al
    i8 35, label %.lr.ph.i.i.i.1.preheader
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !27
  %i.fw = icmp eq i8 %i.fv, 47
  br i1 %i.fw, label %.lr.ph.i.i.i.1.preheader, label %.thread.i.i.1

.lr.ph.i.i.i.1.preheader:                         ; preds = %bb.al, %bb.ak
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i.1.preheader, %bb.an
  %i.fx = phi ptr [ %i.fz, %bb.an ], [ %i.fr, %.lr.ph.i.i.i.1.preheader ] ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !27
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 5 uses
  store ptr %i.fz, ptr %i.bn, align 8, !tbaa !168
  switch i8 %i.fy, label %bb.an [
    i8 10, label %bb.am
    i8 13, label %bb.am
  ]

bb.am:                                            ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.1
  %i.ga = add i32 %i.fq, 1                        ; 2 uses
  store i32 %i.ga, ptr %i.bp, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1

bb.an:                                            ; preds = %.lr.ph.i.i.i.1
  %exitcond.not.i.i.i.1 = icmp eq ptr %i.fz, %i.fo
  br i1 %exitcond.not.i.i.i.1, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !3

.thread.i.i.1:                                    ; preds = %bb.al, %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1: ; preds = %bb.an, %.thread.i.i.1, %bb.am
  %i.gc = phi i32 [ %i.fq, %.thread.i.i.1 ], [ %i.ga, %bb.am ], [ %i.fq, %bb.an ]
  %i.gd = phi ptr [ %i.gb, %.thread.i.i.1 ], [ %i.fz, %bb.am ], [ %i.fz, %bb.an ] ; 3 uses
  %i.ge = icmp ult ptr %i.gd, %i.fo
  br i1 %i.ge, label %bb.aj, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1: ; preds = %bb.aj, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1, %.preheader.i.i.1
  %i.gf = phi ptr [ %i.ej, %.preheader.i.i.1 ], [ %i.gd, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.1 ], [ %i.fr, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !177
  %i.gg = call i64 @__isoc23_strtoul(ptr noundef %i.gf, ptr noundef nonnull %i.b, i32 noundef 10) #28
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  store ptr %i.gi, ptr %i.bn, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !135
  %.pre515 = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %.pre519 = ptrtoint ptr %.pre to i64
  %.pre520 = ptrtoint ptr %.pre515 to i64
  %.pre522 = sub i64 %.pre519, %.pre520
  %.pre524 = ashr exact i64 %.pre522, 2
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.1

bb.ao:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98
  %i.gj = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.gj, 0
  %i.gk = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i.1, label %bb.ap, label %._crit_edge.i.1

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.1 = icmp ult ptr %i.ej, %i.gk
  br i1 %.not.i.i.1, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1, label %._crit_edge.i.1

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1: ; preds = %bb.ap
  %i.gl = load i16, ptr %i.ej, align 2, !tbaa !145
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ej, i64 2 ; 5 uses
  store ptr %i.gm, ptr %i.bn, align 8, !tbaa !168
  %i.gn = icmp eq i16 %i.gl, 6
  br i1 %i.gn, label %bb.aq, label %._crit_edge.i.1

bb.aq:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1
  %.not.i3.i.1 = icmp ult ptr %i.gm, %i.gk
  br i1 %.not.i3.i.1, label %bb.ar, label %._crit_edge.i.1

bb.ar:                                            ; preds = %bb.aq
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !137
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ej, i64 6 ; 2 uses
  store ptr %i.gp, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %bb.ar, %bb.aq, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1, %bb.ap, %bb.ao
  %i.gq = phi ptr [ %i.ej, %bb.ao ], [ %i.gm, %bb.aq ], [ %i.gm, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1 ], [ %i.gp, %bb.ar ], [ %i.ej, %bb.ap ] ; 4 uses
  %i.gr = phi i32 [ %i.gj, %bb.ao ], [ 0, %bb.aq ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.1 ], [ %i.go, %bb.ar ], [ 1, %bb.ap ]
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i.1 = icmp ult ptr %i.gq, %i.gk
  br i1 %.not.i5.i.1, label %bb.as, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.1

bb.as:                                            ; preds = %._crit_edge.i.1
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  store ptr %i.gu, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.1

_ZN5scene16CXMeshFileLoader7readIntEv.exit.1:     ; preds = %bb.as, %._crit_edge.i.1, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1
  %.pre-phi525 = phi i64 [ %i.er, %bb.as ], [ %i.er, %._crit_edge.i.1 ], [ %.pre524, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1 ] ; 3 uses
  %i.gv = phi ptr [ %i.gu, %bb.as ], [ %i.gq, %._crit_edge.i.1 ], [ %i.gi, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1 ] ; 9 uses
  %i.gw = phi ptr [ %i.en, %bb.as ], [ %i.en, %._crit_edge.i.1 ], [ %.pre515, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1 ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.gt, %bb.as ], [ 0, %._crit_edge.i.1 ], [ %i.gh, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.1 ]
  %i.gx = add i32 %.050389, 2
  %i.gy = zext i32 %i.ek to i64                   ; 2 uses
  %i.gz = icmp ugt i64 %.pre-phi525, %i.gy
  br i1 %i.gz, label %_ZN4core5arrayIjEixEj.exit.1, label %bb.ag

_ZN4core5arrayIjEixEj.exit.1:                     ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit.1
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gy
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !137
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.he = load ptr, ptr %i.br, align 8, !tbaa !143 ; 2 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = sdiv exact i64 %i.hh, 40
  %i.hj = icmp ugt i64 %i.hi, %i.hc
  br i1 %i.hj, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.1, label %bb.ah

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.1:    ; preds = %_ZN4core5arrayIjEixEj.exit.1
  %i.hk = zext i32 %.0.i.1 to i64                 ; 2 uses
  %i.hl = icmp ugt i64 %i.bw, %i.hk
  br i1 %i.hl, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1, label %bb.ai

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1:    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.1
  %i.hm = getelementptr inbounds nuw [40 x i8], ptr %i.he, i64 %i.hc ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2649, i64 %i.hk ; 2 uses
  %i.hp = load <2 x float>, ptr %i.ho, align 4, !tbaa !90
  store <2 x float> %i.hp, ptr %i.hn, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !182
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  store float %i.hr, ptr %i.hs, align 4, !tbaa !182
  %i.ht = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ay, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1
  %i.hv = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %i.hw = icmp ult ptr %i.gv, %i.hv
  br i1 %i.hw, label %.lr.ph.i.i.2, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2

.lr.ph.i.i.2:                                     ; preds = %.preheader.i.i.2
  %.promoted7.i.i.2 = load i32, ptr %i.bp, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, %.lr.ph.i.i.2
  %i.hx = phi i32 [ %.promoted7.i.i.2, %.lr.ph.i.i.2 ], [ %i.ij, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ] ; 3 uses
  %i.hy = phi ptr [ %i.gv, %.lr.ph.i.i.2 ], [ %i.ik, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ] ; 5 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !27  ; 3 uses
  %.off.i.i.2 = add i8 %i.hz, -45
  %switch.i.i.2 = icmp ult i8 %.off.i.i.2, 2
  %10 = add i8 %i.hz, -48
  %i.ia = icmp ult i8 %10, 10
  %or.cond.i.i.2 = or i1 %switch.i.i.2, %i.ia
  br i1 %or.cond.i.i.2, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2, label %bb.au

bb.au:                                            ; preds = %bb.at
  switch i8 %i.hz, label %.thread.i.i.2 [
    i8 47, label %bb.av
    i8 35, label %.lr.ph.i.i.i.2.preheader
  ]

bb.av:                                            ; preds = %bb.au
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !27
  %i.id = icmp eq i8 %i.ic, 47
  br i1 %i.id, label %.lr.ph.i.i.i.2.preheader, label %.thread.i.i.2

.lr.ph.i.i.i.2.preheader:                         ; preds = %bb.av, %bb.au
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.2.preheader, %bb.ax
  %i.ie = phi ptr [ %i.ig, %bb.ax ], [ %i.hy, %.lr.ph.i.i.i.2.preheader ] ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 5 uses
  store ptr %i.ig, ptr %i.bn, align 8, !tbaa !168
  switch i8 %i.if, label %bb.ax [
    i8 10, label %bb.aw
    i8 13, label %bb.aw
  ]

bb.aw:                                            ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.2
  %i.ih = add i32 %i.hx, 1                        ; 2 uses
  store i32 %i.ih, ptr %i.bp, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2

bb.ax:                                            ; preds = %.lr.ph.i.i.i.2
  %exitcond.not.i.i.i.2 = icmp eq ptr %i.ig, %i.hv
  br i1 %exitcond.not.i.i.i.2, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !3

.thread.i.i.2:                                    ; preds = %bb.av, %bb.au
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  store ptr %i.ii, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2: ; preds = %bb.ax, %.thread.i.i.2, %bb.aw
  %i.ij = phi i32 [ %i.hx, %.thread.i.i.2 ], [ %i.ih, %bb.aw ], [ %i.hx, %bb.ax ]
  %i.ik = phi ptr [ %i.ii, %.thread.i.i.2 ], [ %i.ig, %bb.aw ], [ %i.ig, %bb.ax ] ; 3 uses
  %i.il = icmp ult ptr %i.ik, %i.hv
  br i1 %i.il, label %bb.at, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2: ; preds = %bb.at, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, %.preheader.i.i.2
  %i.im = phi ptr [ %i.gv, %.preheader.i.i.2 ], [ %i.ik, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ], [ %i.hy, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !177
  %i.in = call i64 @__isoc23_strtoul(ptr noundef %i.im, ptr noundef nonnull %i.b, i32 noundef 10) #28
  %i.io = trunc i64 %i.in to i32
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !177
  store ptr %i.ip, ptr %i.bn, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.pre517 = load ptr, ptr %i.au, align 8, !tbaa !135
  %.pre518 = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %.pre526 = ptrtoint ptr %.pre517 to i64
  %.pre528 = ptrtoint ptr %.pre518 to i64
  %.pre530 = sub i64 %.pre526, %.pre528
  %.pre532 = ashr exact i64 %.pre530, 2
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

bb.ay:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1
  %i.iq = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.iq, 0
  %i.ir = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i.2, label %bb.az, label %._crit_edge.i.2

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.2 = icmp ult ptr %i.gv, %i.ir
  br i1 %.not.i.i.2, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, label %._crit_edge.i.2

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2: ; preds = %bb.az
  %i.is = load i16, ptr %i.gv, align 2, !tbaa !145
  %i.it = getelementptr inbounds nuw i8, ptr %i.gv, i64 2 ; 5 uses
  store ptr %i.it, ptr %i.bn, align 8, !tbaa !168
  %i.iu = icmp eq i16 %i.is, 6
  br i1 %i.iu, label %bb.ba, label %._crit_edge.i.2

bb.ba:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2
  %.not.i3.i.2 = icmp ult ptr %i.it, %i.ir
  br i1 %.not.i3.i.2, label %bb.bb, label %._crit_edge.i.2

bb.bb:                                            ; preds = %bb.ba
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !137
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gv, i64 6 ; 2 uses
  store ptr %i.iw, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %bb.bb, %bb.ba, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, %bb.az, %bb.ay
  %i.ix = phi ptr [ %i.gv, %bb.ay ], [ %i.it, %bb.ba ], [ %i.it, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.iw, %bb.bb ], [ %i.gv, %bb.az ] ; 3 uses
  %i.iy = phi i32 [ %i.iq, %bb.ay ], [ 0, %bb.ba ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.iv, %bb.bb ], [ 1, %bb.az ]
  %i.iz = add i32 %i.iy, -1
  store i32 %i.iz, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i.2 = icmp ult ptr %i.ix, %i.ir
  br i1 %.not.i5.i.2, label %bb.bc, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

bb.bc:                                            ; preds = %._crit_edge.i.2
  %i.ja = load i32, ptr %i.ix, align 4, !tbaa !137
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store ptr %i.jb, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

_ZN5scene16CXMeshFileLoader7readIntEv.exit.2:     ; preds = %bb.bc, %._crit_edge.i.2, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2
  %.pre-phi533 = phi i64 [ %.pre-phi525, %bb.bc ], [ %.pre-phi525, %._crit_edge.i.2 ], [ %.pre532, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.jc = phi ptr [ %i.gw, %bb.bc ], [ %i.gw, %._crit_edge.i.2 ], [ %.pre518, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %.0.i.2 = phi i32 [ %i.ja, %bb.bc ], [ 0, %._crit_edge.i.2 ], [ %i.io, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.jd = add i32 %.050389, 3
  %i.je = zext i32 %i.gx to i64                   ; 2 uses
  %i.jf = icmp ugt i64 %.pre-phi533, %i.je
  br i1 %i.jf, label %_ZN4core5arrayIjEixEj.exit.2, label %bb.ag

_ZN4core5arrayIjEixEj.exit.2:                     ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.je
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !137
  %i.ji = zext i32 %i.jh to i64                   ; 2 uses
  %i.jj = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.jk = load ptr, ptr %i.br, align 8, !tbaa !143 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = sdiv exact i64 %i.jn, 40
  %i.jp = icmp ugt i64 %i.jo, %i.ji
  br i1 %i.jp, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2, label %bb.ah

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2:    ; preds = %_ZN4core5arrayIjEixEj.exit.2
  %i.jq = zext i32 %.0.i.2 to i64                 ; 2 uses
  %i.jr = icmp ugt i64 %i.bw, %i.jq
  br i1 %i.jr, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2, label %bb.ai

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2:    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2
  %i.js = getelementptr inbounds nuw [40 x i8], ptr %i.jk, i64 %i.ji ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  %i.ju = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2649, i64 %i.jq ; 2 uses
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !90
  store <2 x float> %i.jv, ptr %i.jt, align 4, !tbaa !90
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !182
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 20
  store float %i.jx, ptr %i.jy, align 4, !tbaa !182
  br label %.loopexit

bb.bd:                                            ; preds = %bb.v
  %i.jz = zext i32 %i.by to i64                   ; 5 uses
  %i.ka = ptrtoint ptr %.sroa.13.0387 to i64      ; 2 uses
  %i.kb = ptrtoint ptr %.sroa.0.0386 to i64       ; 2 uses
  %i.kc = sub i64 %i.ka, %i.kb                    ; 4 uses
  %i.kd = ashr exact i64 %i.kc, 2                 ; 6 uses
  %i.ke = icmp ult i64 %i.kd, %i.jz
  br i1 %i.ke, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.kf = sub nuw nsw i64 %i.jz, %i.kd            ; 5 uses
  %i.kg = ptrtoint ptr %.sroa.22.0388 to i64      ; 2 uses
  %i.kh = sub i64 %i.kg, %i.ka
  %i.ki = ashr exact i64 %i.kh, 2                 ; 2 uses
  %i.kj = xor i64 %i.kd, 2305843009213693951
  %i.kk = icmp ule i64 %i.ki, %i.kj
  call void @llvm.assume(i1 %i.kk)
  %.not28.i169 = icmp ult i64 %i.ki, %i.kf
  br i1 %.not28.i169, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.sroa.13.0387, align 4, !tbaa !137
  %i.kl = getelementptr i8, ptr %.sroa.13.0387, i64 4 ; 3 uses
  %i.km = add nsw i64 %i.kf, -1                   ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %_ZN4core5arrayIjE8set_usedEj.exit102, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i171 = shl nuw nsw i64 %i.km, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.kl, i8 0, i64 %.idx.i.i.i.i.i.i171, i1 false), !tbaa !137
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i171
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174: ; preds = %bb.be
  %.sroa.speculated.i.i175 = call i64 @llvm.umax.i64(i64 %i.kd, i64 %i.kf)
  %i.kp = add nuw nsw i64 %.sroa.speculated.i.i175, %i.kd ; 2 uses
  %i.kq = shl nuw nsw i64 %i.kp, 2
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #30
          to label %.noexc183 unwind label %.loopexit239 ; 4 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kc ; 3 uses
  store i32 0, ptr %i.ks, align 4, !tbaa !137
  %i.kt = add nsw i64 %i.kf, -1                   ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176: ; preds = %.noexc183
  %i.kv = getelementptr i8, ptr %i.ks, i64 4
  %.idx.i.i.i.i.i31.i177 = shl nuw nsw i64 %i.kt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.kv, i8 0, i64 %.idx.i.i.i.i.i31.i177, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176, %.noexc183
  %i.kw = icmp sgt i64 %i.kc, 0
  br i1 %i.kw, label %bb.bg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

bb.bg:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kr, ptr align 4 %.sroa.0.0386, i64 %i.kc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179: ; preds = %bb.bg, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  %.not.i35.i180 = icmp eq ptr %.sroa.0.0386, null
  br i1 %.not.i35.i180, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.kx = sub i64 %i.kg, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0386, i64 noundef %i.kx) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181: ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.kf
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.kp
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bi:                                            ; preds = %bb.bd
  %i.la = icmp ugt i64 %i.kd, %i.jz
  br i1 %i.la, label %bb.bj, label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bj:                                            ; preds = %bb.bi
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0386, i64 %i.jz ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.sroa.13.0387, %i.lb
  %spec.select = select i1 %.not.i.i.i99, ptr %.sroa.13.0387, ptr %i.lb
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZN4core5arrayIjE8set_usedEj.exit102:             ; preds = %bb.bj, %bb.bf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, %bb.bi
  %.sroa.0.6 = phi ptr [ %.sroa.0.0386, %bb.bi ], [ %.sroa.0.0386, %bb.bj ], [ %.sroa.0.0386, %bb.bf ], [ %.sroa.0.0386, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.kr, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 9 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0387, %bb.bi ], [ %spec.select, %bb.bj ], [ %i.kl, %bb.bf ], [ %i.ko, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.ky, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 5 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.0388, %bb.bi ], [ %.sroa.22.0388, %bb.bj ], [ %.sroa.22.0388, %bb.bf ], [ %.sroa.22.0388, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.kz, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 2 uses
  %.not395 = icmp eq i32 %i.by, 0
  br i1 %.not395, label %.lr.ph311, label %.lr.ph308

.lr.ph308:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102
  %i.lc = ptrtoint ptr %.sroa.13.2 to i64
  %i.ld = ptrtoint ptr %.sroa.0.6 to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 2
  br label %bb.bk

.preheader237:                                    ; preds = %_ZN4core5arrayIjEixEj.exit123
  %.not396 = icmp eq i32 %i.bz, 0
  br i1 %.not396, label %.loopexit, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102, %.preheader237
  %i.lg = load ptr, ptr %i.au, align 8, !tbaa !135
  %i.lh = load ptr, ptr %i.at, align 8, !tbaa !138 ; 5 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 2                 ; 4 uses
  %i.lm = ptrtoint ptr %.sroa.13.2 to i64
  %i.ln = ptrtoint ptr %.sroa.0.6 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = ashr exact i64 %i.lo, 2                 ; 2 uses
  %.not235 = icmp eq ptr %.sroa.13.2, %.sroa.0.6
  %.not235.fr = freeze i1 %.not235
  br i1 %.not235.fr, label %.lr.ph311.split.us, label %.lr.ph311.split.preheader

.lr.ph311.split.preheader:                        ; preds = %.lr.ph311
  %i.lq = call i64 @llvm.usub.sat.i64(i64 %i.lp, i64 1)
  %wide.trip.count506 = zext i32 %i.bz to i64
  br label %.lr.ph311.split

.lr.ph311.split.us:                               ; preds = %.lr.ph311
  %i.lr = zext i32 %.050389 to i64                ; 2 uses
  %i.ls = icmp ugt i64 %i.ll, %i.lr
  br i1 %i.ls, label %_ZN4core5arrayIjEixEj.exit124.us, label %.split.us

_ZN4core5arrayIjEixEj.exit124.us:                 ; preds = %.lr.ph311.split.us
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lr
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !137
  %i.lv = zext i32 %i.lu to i64
  %i.lw = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.lx = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = sdiv exact i64 %i.ma, 40
  %i.mc = icmp ugt i64 %i.mb, %i.lv
  br i1 %i.mc, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us, label %.split313.us

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us: ; preds = %_ZN4core5arrayIjEixEj.exit124.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bk:                                            ; preds = %.lr.ph308, %_ZN4core5arrayIjEixEj.exit123
  %indvars.iv496 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next497, %_ZN4core5arrayIjEixEj.exit123 ] ; 3 uses
  %i.md = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.bl, label %.preheader.i.i103

bb.bl:                                            ; preds = %bb.bk
  %i.mf = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i116 = icmp eq i32 %i.mf, 0
  %i.mg = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 6 uses
  %i.mh = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i116, label %bb.bm, label %._crit_edge.i117

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i119 = icmp ult ptr %i.mg, %i.mh
  br i1 %.not.i.i119, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, label %._crit_edge.i117

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120: ; preds = %bb.bm
  %i.mi = load i16, ptr %i.mg, align 2, !tbaa !145
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 2 ; 5 uses
  store ptr %i.mj, ptr %i.bn, align 8, !tbaa !168
  %i.mk = icmp eq i16 %i.mi, 6
  br i1 %i.mk, label %bb.bn, label %._crit_edge.i117

bb.bn:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120
  %.not.i3.i121 = icmp ult ptr %i.mj, %i.mh
  br i1 %.not.i3.i121, label %bb.bo, label %._crit_edge.i117

bb.bo:                                            ; preds = %bb.bn
  %i.ml = load i32, ptr %i.mj, align 4, !tbaa !137
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 6 ; 2 uses
  store ptr %i.mm, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i117

._crit_edge.i117:                                 ; preds = %bb.bo, %bb.bn, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, %bb.bm, %bb.bl
  %i.mn = phi ptr [ %i.mg, %bb.bl ], [ %i.mj, %bb.bn ], [ %i.mj, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.mm, %bb.bo ], [ %i.mg, %bb.bm ] ; 3 uses
  %i.mo = phi i32 [ %i.mf, %bb.bl ], [ 0, %bb.bn ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.ml, %bb.bo ], [ 1, %bb.bm ]
  %i.mp = add i32 %i.mo, -1
  store i32 %i.mp, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i118 = icmp ult ptr %i.mn, %i.mh
  br i1 %.not.i5.i118, label %bb.bp, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

bb.bp:                                            ; preds = %._crit_edge.i117
  %i.mq = load i32, ptr %i.mn, align 4, !tbaa !137
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store ptr %i.mr, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

.preheader.i.i103:                                ; preds = %bb.bk
  %i.ms = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i104 = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 3 uses
  %i.mt = icmp ult ptr %.promoted.i.i104, %i.ms
  br i1 %i.mt, label %.lr.ph.i.i107, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105

.lr.ph.i.i107:                                    ; preds = %.preheader.i.i103
  %.promoted7.i.i108 = load i32, ptr %i.bp, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, %.lr.ph.i.i107
  %i.mu = phi i32 [ %.promoted7.i.i108, %.lr.ph.i.i107 ], [ %i.ng, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 3 uses
  %i.mv = phi ptr [ %.promoted.i.i104, %.lr.ph.i.i107 ], [ %i.nh, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 5 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !27  ; 3 uses
  %.off.i.i109 = add i8 %i.mw, -45
  %switch.i.i110 = icmp ult i8 %.off.i.i109, 2
  %11 = add i8 %i.mw, -48
  %i.mx = icmp ult i8 %11, 10
  %or.cond.i.i111 = or i1 %switch.i.i110, %i.mx
  br i1 %or.cond.i.i111, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.mw, label %.thread.i.i115 [
    i8 47, label %bb.bs
    i8 35, label %.lr.ph.i.i.i112.preheader
  ]

bb.bs:                                            ; preds = %bb.br
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !27
  %i.na = icmp eq i8 %i.mz, 47
  br i1 %i.na, label %.lr.ph.i.i.i112.preheader, label %.thread.i.i115

.lr.ph.i.i.i112.preheader:                        ; preds = %bb.bs, %bb.br
  br label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %.lr.ph.i.i.i112.preheader, %bb.bu
  %i.nb = phi ptr [ %i.nd, %bb.bu ], [ %i.mv, %.lr.ph.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 1 ; 5 uses
  store ptr %i.nd, ptr %i.bn, align 8, !tbaa !168
  switch i8 %i.nc, label %bb.bu [
    i8 10, label %bb.bt
    i8 13, label %bb.bt
  ]

bb.bt:                                            ; preds = %.lr.ph.i.i.i112, %.lr.ph.i.i.i112
  %i.ne = add i32 %i.mu, 1                        ; 2 uses
  store i32 %i.ne, ptr %i.bp, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113

bb.bu:                                            ; preds = %.lr.ph.i.i.i112
  %exitcond.not.i.i.i114 = icmp eq ptr %i.nd, %i.ms
  br i1 %exitcond.not.i.i.i114, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, label %.lr.ph.i.i.i112, !llvm.loop !3

.thread.i.i115:                                   ; preds = %bb.bs, %bb.br
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 1 ; 2 uses
  store ptr %i.nf, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113: ; preds = %bb.bu, %.thread.i.i115, %bb.bt
  %i.ng = phi i32 [ %i.mu, %.thread.i.i115 ], [ %i.ne, %bb.bt ], [ %i.mu, %bb.bu ]
  %i.nh = phi ptr [ %i.nf, %.thread.i.i115 ], [ %i.nd, %bb.bt ], [ %i.nd, %bb.bu ] ; 3 uses
  %i.ni = icmp ult ptr %i.nh, %i.ms
  br i1 %i.ni, label %bb.bq, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, %bb.bq, %.preheader.i.i103
  %i.nj = phi ptr [ %.promoted.i.i104, %.preheader.i.i103 ], [ %i.nh, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ], [ %i.mv, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.nk = call i64 @__isoc23_strtoul(ptr noundef %i.nj, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.nm, ptr %i.bn, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

_ZN5scene16CXMeshFileLoader7readIntEv.exit122:    ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, %bb.bp, %._crit_edge.i117
  %.0.i106 = phi i32 [ %i.nl, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105 ], [ %i.mq, %bb.bp ], [ 0, %._crit_edge.i117 ]
  %exitcond499.not = icmp eq i64 %indvars.iv496, %i.lf
  br i1 %exitcond499.not, label %bb.bv, label %_ZN4core5arrayIjEixEj.exit123

bb.bv:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit122
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit123:                    ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit122
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.6, i64 %indvars.iv496
  store i32 %.0.i106, ptr %i.nn, align 4, !tbaa !137
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next497, %i.jz
  br i1 %exitcond501.not, label %.preheader237, label %bb.bk, !llvm.loop !311

.loopexit239:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp:                               ; preds = %bb.r, %.critedge, %bb.cg, %bb.cl, %bb.ck
  %.sroa.0.0305 = phi ptr [ %.sroa.0.0386, %bb.r ], [ %.sroa.0.0.lcssa, %.critedge ], [ %.sroa.0.0.lcssa, %bb.cg ], [ %.sroa.0.0.lcssa, %bb.cl ], [ %.sroa.0.0.lcssa, %bb.ck ]
  %.sroa.22.0282 = phi ptr [ %.sroa.22.0388, %bb.r ], [ %.sroa.22.0.lcssa, %.critedge ], [ %.sroa.22.0.lcssa, %bb.cg ], [ %.sroa.22.0.lcssa, %bb.cl ], [ %.sroa.22.0.lcssa, %bb.ck ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph311.split:                                  ; preds = %.lr.ph311.split.preheader, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135
  %indvars.iv502 = phi i64 [ 0, %.lr.ph311.split.preheader ], [ %indvars.iv.next503, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 3 uses
  %.2309 = phi i32 [ %.050389, %.lr.ph311.split.preheader ], [ %i.pd, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 4 uses
  %i.no = add i32 %.2309, 1
  %i.np = zext i32 %.2309 to i64                  ; 2 uses
  %i.nq = icmp ugt i64 %i.ll, %i.np
  br i1 %i.nq, label %_ZN4core5arrayIjEixEj.exit124, label %.split.us

.split.us:                                        ; preds = %.lr.ph311.split, %.lr.ph311.split.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit124:                    ; preds = %.lr.ph311.split
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.np
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !137
  %i.nt = zext i32 %i.ns to i64                   ; 2 uses
  %i.nu = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.nv = load ptr, ptr %i.br, align 8, !tbaa !143 ; 4 uses
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = sdiv exact i64 %i.ny, 40                ; 3 uses
  %i.oa = icmp ugt i64 %i.nz, %i.nt
  br i1 %i.oa, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125, label %.split313.us

.split313.us:                                     ; preds = %_ZN4core5arrayIjEixEj.exit124, %_ZN4core5arrayIjEixEj.exit124.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125:   ; preds = %_ZN4core5arrayIjEixEj.exit124
  %i.ob = load i32, ptr %.sroa.0.6, align 4, !tbaa !137
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = icmp ugt i64 %i.bw, %i.oc
  br i1 %i.od, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127, label %bb.bw

bb.bw:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127:     ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125
  %i.oe = getelementptr inbounds nuw [40 x i8], ptr %i.nv, i64 %i.nt ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2649, i64 %i.oc ; 2 uses
  %i.oh = load <2 x float>, ptr %i.og, align 4, !tbaa !90
  store <2 x float> %i.oh, ptr %i.of, align 4, !tbaa !90
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !182
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 20
  store float %i.oj, ptr %i.ok, align 4, !tbaa !182
  %i.ol = add i32 %.2309, 2
  %i.om = zext i32 %i.no to i64                   ; 2 uses
  %i.on = icmp ugt i64 %i.ll, %i.om
  br i1 %i.on, label %_ZN4core5arrayIjEixEj.exit128, label %bb.bx

bb.bx:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit128:                    ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.om
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !137
  %i.oq = zext i32 %i.op to i64                   ; 2 uses
  %i.or = icmp ugt i64 %i.nz, %i.oq
  br i1 %i.or, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129, label %bb.by

bb.by:                                            ; preds = %_ZN4core5arrayIjEixEj.exit128
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129:   ; preds = %_ZN4core5arrayIjEixEj.exit128
  %i.os = getelementptr inbounds nuw [40 x i8], ptr %i.nv, i64 %i.oq ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 3 uses
  %exitcond505.not = icmp eq i64 %indvars.iv502, %i.lq
  br i1 %exitcond505.not, label %bb.bz, label %_ZN4core5arrayIjEixEj.exit130

bb.bz:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit130:                    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.6, i64 %indvars.iv.next503
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !137
  %i.ow = zext i32 %i.ov to i64                   ; 2 uses
  %i.ox = icmp ugt i64 %i.bw, %i.ow
  br i1 %i.ox, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131, label %bb.ca

bb.ca:                                            ; preds = %_ZN4core5arrayIjEixEj.exit130
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131:     ; preds = %_ZN4core5arrayIjEixEj.exit130
  %i.oy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2649, i64 %i.ow ; 2 uses
  %i.oz = load <2 x float>, ptr %i.oy, align 4, !tbaa !90
  store <2 x float> %i.oz, ptr %i.ot, align 4, !tbaa !90
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !182
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 20
  store float %i.pb, ptr %i.pc, align 4, !tbaa !182
  %i.pd = add i32 %.2309, 3                       ; 2 uses
  %i.pe = zext i32 %i.ol to i64                   ; 2 uses
  %i.pf = icmp ugt i64 %i.ll, %i.pe
  br i1 %i.pf, label %_ZN4core5arrayIjEixEj.exit132, label %bb.cb

bb.cb:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit132:                    ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.pe
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !137
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = icmp ugt i64 %i.nz, %i.pi
  br i1 %i.pj, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit133, label %bb.cc
end_hunk_2
begin_hunk_3_@_ZN5scene16CXMeshFileLoader20getNextTokenAsStringERN4core6stringIcEE:bb.a
    i8 32, label %bb.e
    i8 47, label %bb.f
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.d
  %i.x = phi i32 [ %i.t, %.lr.ph.i ], [ %i.t, %.lr.ph.i ], [ %i.t, %.lr.ph.i ], [ %i.t, %.lr.ph.i ], [ %i.t, %.lr.ph.i ], [ %i.w, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  store ptr %i.y, ptr %i.o, align 8, !tbaa !168
  %i.z = icmp ult ptr %i.y, %i.q
  br i1 %i.z, label %.lr.ph.i.backedge, label %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit

.lr.ph.i.backedge:                                ; preds = %bb.e, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i
  %.be = phi i32 [ %i.x, %bb.e ], [ %i.ah, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ]
  %.be77 = phi ptr [ %i.y, %bb.e ], [ %i.af, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ]
  br label %.lr.ph.i, !llvm.loop !4

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %.lr.ph.i.i.preheader, label %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i, %bb.f
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.h
  %i.ad = phi ptr [ %i.af, %bb.h ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 6 uses
  store ptr %i.af, ptr %i.o, align 8, !tbaa !168
  switch i8 %i.ae, label %bb.h [
    i8 10, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ag = add i32 %i.t, 1                         ; 2 uses
  store i32 %i.ag, ptr %i.s, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.af, %i.q
  br i1 %exitcond.not.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = phi i32 [ %i.ag, %bb.g ], [ %i.t, %bb.h ]
  %i.ai = icmp ult ptr %i.af, %i.q
  br i1 %i.ai, label %.lr.ph.i.backedge, label %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit

_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit: ; preds = %bb.f, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.lr.ph.i, %bb.e, %.preheader.i
  %i.aj = phi ptr [ %.promoted10.i, %.preheader.i ], [ %i.u, %bb.f ], [ %i.af, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ], [ %i.y, %bb.e ], [ %i.u, %.lr.ph.i ] ; 5 uses
  %.not = icmp ult ptr %i.aj, %i.q
  br i1 %.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %.not7 = icmp eq i8 %i.ak, 34
  br i1 %.not7, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.i
  %storemerge22 = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 5 uses
  store ptr %storemerge22, ptr %i.o, align 8, !tbaa !168
  %i.al = icmp ult ptr %storemerge22, %i.q
  br i1 %i.al, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i8, ptr %storemerge22, align 1, !tbaa !27 ; 2 uses
  %.not868 = icmp eq i8 %i.an, 34
  br i1 %.not868, label %.critedge, label %.lr.ph69

bb.j:                                             ; preds = %.lr.ph69
  %i.ao = load i8, ptr %storemerge, align 1, !tbaa !27 ; 2 uses
  %.not8 = icmp eq i8 %i.ao, 34
  br i1 %.not8, label %.critedge, label %.lr.ph69, !llvm.loop !327

.lr.ph69:                                         ; preds = %.lr.ph, %bb.j
  %i.ap = phi i8 [ %i.ao, %bb.j ], [ %i.an, %.lr.ph ]
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aq, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.ap) ; 0 uses
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !168 ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 5 uses
  store ptr %storemerge, ptr %i.o, align 8, !tbaa !168
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.au = icmp ult ptr %storemerge, %i.at
  br i1 %i.au, label %bb.j, label %..critedge.loopexit_crit_edge, !llvm.loop !327

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph69
  br label %.critedge, !llvm.loop !327

.critedge:                                        ; preds = %bb.j, %.lr.ph, %..critedge.loopexit_crit_edge, %.preheader
  %.pn.lcssa = phi ptr [ %i.aj, %.preheader ], [ %i.aj, %.lr.ph ], [ %i.as, %..critedge.loopexit_crit_edge ], [ %i.as, %bb.j ] ; 2 uses
  %storemerge.lcssa = phi ptr [ %storemerge22, %.preheader ], [ %storemerge22, %.lr.ph ], [ %storemerge, %..critedge.loopexit_crit_edge ], [ %storemerge, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %.not9 = icmp eq i8 %i.aw, 59
  br i1 %.not9, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %storemerge.lcssa, align 1, !tbaa !27
  %.not10 = icmp eq i8 %i.ax, 34
  br i1 %.not10, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !168
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.k, %bb.i, %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit, %bb.l, %_ZN4core6stringIcED2Ev.exit
  %.0 = phi i1 [ true, %_ZN4core6stringIcED2Ev.exit ], [ true, %bb.l ], [ false, %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit ], [ false, %bb.i ], [ false, %bb.k ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i8, ptr %i.b, align 8, !tbaa !165, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 2 uses
  %.not.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit:  ; preds = %bb.c
  %i.k = load i16, ptr %i.h, align 2, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !168
  %i.m = icmp eq i16 %i.k, 7
  br i1 %i.m, label %bb.d, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.d:                                             ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit
  %.not.i5 = icmp ult ptr %i.l, %i.j
  br i1 %.not.i5, label %bb.e, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store ptr %i.o, ptr %i.g, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit: ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, %bb.d, %bb.e, %bb.c, %bb.b
  %i.p = phi i32 [ %i.f, %bb.b ], [ 0, %bb.d ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit ], [ %i.n, %bb.e ], [ 1, %bb.c ]
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.s = load i8, ptr %i.r, align 1, !tbaa !167
  %i.t = icmp eq i8 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168  ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit
  %i.w = load double, ptr %i.v, align 8, !tbaa !329
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !168
  br label %bb.m

bb.g:                                             ; preds = %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit
  %i.z = load float, ptr %i.v, align 4, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !168
  br label %bb.m

.preheader.i:                                     ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 3 uses
  %.promoted.i = load ptr, ptr %i.ab, align 8, !tbaa !168 ; 3 uses
  %i.ae = icmp ult ptr %.promoted.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.promoted7.i = load i32, ptr %i.af, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.lr.ph.i
  %i.ag = phi i32 [ %.promoted7.i, %.lr.ph.i ], [ %i.as, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 3 uses
  %i.ah = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.at, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27  ; 3 uses
  %.off.i = add i8 %i.ai, -45
  %switch.i = icmp ult i8 %.off.i, 2
  %1 = add i8 %i.ai, -48
  %i.aj = icmp ult i8 %1, 10
  %or.cond.i = or i1 %switch.i, %i.aj
  br i1 %or.cond.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.ai, label %.thread.i [
    i8 47, label %bb.j
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %.lr.ph.i.i.preheader, label %.thread.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j, %bb.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.l
  %i.an = phi ptr [ %i.ap, %bb.l ], [ %i.ah, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 5 uses
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !168
  switch i8 %i.ao, label %bb.l [
    i8 10, label %bb.k
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.aq = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.af, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.ap, %i.ad
  br i1 %exitcond.not.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.ab, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i: ; preds = %bb.l, %.thread.i, %bb.k
  %i.as = phi i32 [ %i.ag, %.thread.i ], [ %i.aq, %bb.k ], [ %i.ag, %bb.l ]
  %i.at = phi ptr [ %i.ar, %.thread.i ], [ %i.ap, %bb.k ], [ %i.ap, %bb.l ] ; 3 uses
  %i.au = icmp ult ptr %i.at, %i.ad
  br i1 %i.au, label %bb.h, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit: ; preds = %bb.h, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.preheader.i
  %i.av = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.ah, %bb.h ], [ %i.at, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.aw = call double @strtod(ptr noundef %i.av, ptr noundef nonnull %i.a) #28
  %i.ax = fptrunc double %i.aw to float
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, %bb.g, %bb.f
  %.0 = phi float [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.ax, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader11readVector2ERN4core8vector2dIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  store float %i.a, ptr %1, align 4, !tbaa !186
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.b, ptr %i.c, align 4, !tbaa !187
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader8readRGBAERN5video6SColorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 5 uses
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.d = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.e = insertelement <4 x float> poison, float %i.a, i64 0
  %i.f = insertelement <4 x float> %i.e, float %i.b, i64 1
  %i.g = insertelement <4 x float> %i.f, float %i.c, i64 2
  %i.h = insertelement <4 x float> %i.g, float %i.d, i64 3
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.j)
  %i.l = fptosi <4 x float> %i.k to <4 x i32>
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.n = trunc <4 x i32> %i.m to <4 x i8>
  store <4 x i8> %i.n, ptr %1, align 4, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load i8, ptr %i.o, align 8, !tbaa !165, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %sub_0.i

sub_0.i:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.r = load ptr, ptr %2, align 8, !tbaa !52     ; 4 uses
  %i.s = load i8, ptr %i.r, align 1
  %.not.i = icmp eq i8 %i.s, 59
  br i1 %.not.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %.not5.i.i = phi i1 [ false, %sub_0.i ], [ %i.v, %sub_1.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.r, %i.w
  br i1 %i.x, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !27
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.z) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not5.i.i, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit: ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit.i, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZN4core6stringIcED2Ev.exit.i ]
  ret i1 %.0.i
}

declare void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader24parseDataObjectAnimationEv(ptr noundef nonnull align 8 dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.core::string", align 8      ; 5 uses
  %2 = alloca %"class.core::string", align 8      ; 9 uses
  %3 = alloca %"struct.scene::SkinnedMesh::SJoint", align 8 ; 34 uses
  %4 = alloca %"class.core::string", align 8      ; 11 uses
  %5 = alloca %"class.core::string", align 8      ; 13 uses
  %6 = alloca %"class.core::string", align 8      ; 8 uses
  %7 = alloca %"class.core::string", align 8      ; 8 uses
  %8 = alloca %"class.core::string", align 8      ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20readHeadOfDataObjectEPN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
  br i1 %i.c, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.83, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.l, align 8, !tbaa !48
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4core6stringIcED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZN4core6stringIcED2Ev.exit33
end_hunk_3
begin_hunk_4_@_ZN4core6stringIcEC2IcEEPKT_j:bb.a
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27
  %i.p = load ptr, ptr %0, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next
  store i8 %i.o, ptr %i.q, align 1, !tbaa !27
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  %i.t = load ptr, ptr %0, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.1
  store i8 %i.s, ptr %i.u, align 1, !tbaa !27
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = load ptr, ptr %0, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.2
  store i8 %i.w, ptr %i.y, align 1, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, !llvm.loop !348

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader18
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader18 ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil ], [ %indvars.iv.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %i.ab = load ptr, ptr %0, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.epil
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil, !llvm.loop !349

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4core6stringIcEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN4core6stringIcEaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4core6stringIcEaSERKS1_.exit unwind label %bb.c

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !27
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !165, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !164  ; 4 uses
  %.promoted10 = load ptr, ptr %i.d, align 8, !tbaa !168 ; 2 uses
  %i.g = icmp ult ptr %.promoted10, %i.f
  br i1 %i.g, label %.lr.ph.lr.ph, label %.critedge

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %.promoted = load i32, ptr %i.h, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.i = phi i32 [ %.promoted, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ] ; 8 uses
  %i.j = phi ptr [ %.promoted10, %.lr.ph.lr.ph ], [ %.be42, %.lr.ph.backedge ] ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !27
  switch i8 %i.k, label %.critedge [
    i8 10, label %bb.b
    i8 9, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
    i8 47, label %bb.d
    i8 35, label %.lr.ph.i.preheader
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.l, ptr %i.h, align 4, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.b
  %i.m = phi i32 [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.l, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !168
  %i.o = icmp ult ptr %i.n, %i.f
  br i1 %i.o, label %.lr.ph.backedge, label %.critedge

.lr.ph.backedge:                                  ; preds = %bb.c, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit
  %.be = phi i32 [ %i.m, %bb.c ], [ %i.w, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit ]
  %.be42 = phi ptr [ %i.n, %bb.c ], [ %i.u, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit ]
  br label %.lr.ph, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %bb.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %i.s = phi ptr [ %i.u, %bb.f ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 5 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !168
  switch i8 %i.t, label %bb.f [
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.v = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

bb.f:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq ptr %i.u, %i.f
  br i1 %exitcond.not.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, label %.lr.ph.i, !llvm.loop !3

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit: ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ %i.i, %bb.f ]
  %i.x = icmp ult ptr %i.u, %i.f
  br i1 %i.x, label %.lr.ph.backedge, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, %.lr.ph, %bb.c, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !165, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !164  ; 3 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !168 ; 2 uses
  %i.g = icmp ult ptr %.promoted, %i.f
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.promoted7 = load i32, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit
  %i.i = phi i32 [ %.promoted7, %.lr.ph ], [ %i.u, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.v, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit ] ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !27    ; 3 uses
  %.off = add i8 %i.k, -45
  %switch = icmp ult i8 %.off, 2
  %1 = add i8 %i.k, -48
  %i.l = icmp ult i8 %1, 10
  %or.cond = or i1 %switch, %i.l
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.k, label %.thread [
    i8 47, label %bb.d
    i8 35, label %.lr.ph.i.preheader
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %.lr.ph.i.preheader, label %.thread

.lr.ph.i.preheader:                               ; preds = %bb.c, %bb.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %i.p = phi ptr [ %i.r, %bb.f ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 5 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !168
  switch i8 %i.q, label %bb.f [
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.s = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.s, ptr %i.h, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

bb.f:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq ptr %i.r, %i.f
  br i1 %exitcond.not.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, label %.lr.ph.i, !llvm.loop !3

.thread:                                          ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit: ; preds = %bb.f, %bb.e, %.thread
  %i.u = phi i32 [ %i.i, %.thread ], [ %i.s, %bb.e ], [ %i.i, %bb.f ]
  %i.v = phi ptr [ %i.t, %.thread ], [ %i.r, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.f
  br i1 %i.w, label %bb.b, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader7readRGBERN5video6SColorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 5 uses
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.d = fmul float %i.a, 2.550000e+02
  %i.e = fadd float %i.d, 5.000000e-01
  %i.f = tail call noundef float @llvm.floor.f32(float %i.e)
  %i.g = fptosi float %i.f to i32
  %i.h = fmul float %i.b, 2.550000e+02
  %i.i = fadd float %i.h, 5.000000e-01
  %i.j = tail call noundef float @llvm.floor.f32(float %i.i)
  %i.k = fptosi float %i.j to i32
  %i.l = fmul float %i.c, 2.550000e+02
  %i.m = fadd float %i.l, 5.000000e-01
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i32
  %i.p = shl i32 %i.g, 16
  %i.q = shl i32 %i.k, 8
  %i.r = and i32 %i.q, 65280
  %i.s = or disjoint i32 %i.r, %i.p
  %i.t = and i32 %i.o, 255
  %i.u = or disjoint i32 %i.s, %i.t
  %i.v = or i32 %i.u, -16777216
  store i32 %i.v, ptr %1, align 4, !tbaa !137
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load i8, ptr %i.w, align 8, !tbaa !165, !range !78, !noundef !79
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %sub_0.i

sub_0.i:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.z = load ptr, ptr %2, align 8, !tbaa !52     ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1
  %.not.i = icmp eq i8 %i.aa, 59
  br i1 %.not.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %.not5.i.i = phi i1 [ false, %sub_0.i ], [ %i.ad, %sub_1.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.z, %i.ae
  br i1 %i.af, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ah) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not5.i.i, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !168
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit: ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit.i, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZN4core6stringIcED2Ev.exit.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshLoaderD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshLoaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshLoaderD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshLoaderD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene16CXMeshFileLoaderD1Ev(ptr noundef nonnull align 8 dereferenceable(162) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 32) (i8, ptr @_ZTVN5scene16CXMeshFileLoaderE, i64 24), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene16CXMeshFileLoaderE, i64 80), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29
  br label %_ZN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEED2Ev.exit.i

_ZN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !27
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %_ZN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i2.i, label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_4
