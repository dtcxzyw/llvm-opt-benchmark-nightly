inline.NumInlined: 2642
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader19parseDataObjectMeshERNS0_6SXMeshE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289: ; preds = %.critedge
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !17
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #29
  br label %_ZN4core6stringIcED2Ev.exit291

_ZN4core6stringIcED2Ev.exit291:                   ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.du, align 8, !tbaa !18
  br label %.loopexit456

.loopexit459:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit461 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.loopexit.split-lp460:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.ag:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4core6stringIcED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #29
  br label %_ZN4core6stringIcED2Ev.exit294

_ZN4core6stringIcED2Ev.exit294:                   ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.gl

bb.ah:                                            ; preds = %bb.ad
  %i.eb = zext i32 %i.dl to i64                   ; 5 uses
  %i.ec = ptrtoint ptr %.sroa.13.0549 to i64      ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0.0548 to i64       ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 6 uses
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.eh = sub nuw nsw i64 %i.eb, %i.ef            ; 5 uses
  %i.ei = ptrtoint ptr %.sroa.22.0550 to i64      ; 2 uses
  %i.ej = sub i64 %i.ei, %i.ec
  %i.ek = ashr exact i64 %i.ej, 2                 ; 2 uses
  %i.el = xor i64 %i.ef, 2305843009213693951
  %i.em = icmp ule i64 %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %.not28.i = icmp ult i64 %i.ek, %i.eh
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.sroa.13.0549, align 4, !tbaa !143
  %i.en = getelementptr i8, ptr %.sroa.13.0549, i64 4 ; 3 uses
  %i.eo = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZN4core5arrayIjE8set_usedEj.exit298, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.aj
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.eo, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !143
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i.i.i.i.i.i
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ai
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eh)
  %i.er = add nuw nsw i64 %.sroa.speculated.i.i, %i.ef ; 2 uses
  %i.es = shl nuw nsw i64 %i.er, 2
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #30
          to label %.noexc419 unwind label %.loopexit459 ; 4 uses

.noexc419:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ee ; 3 uses
  store i32 0, ptr %i.eu, align 4, !tbaa !143
  %i.ev = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc419
  %i.ex = getelementptr i8, ptr %i.eu, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ev, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ex, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !143
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc419
  %i.ey = icmp sgt i64 %i.ee, 0
  br i1 %i.ey, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.ak:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.et, ptr align 4 %.sroa.0.0548, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.ak, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0.0548, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ez = sub i64 %i.ei, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0548, i64 noundef %i.ez) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.eh
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.er
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.am:                                            ; preds = %bb.ah
  %i.fc = icmp ugt i64 %i.ef, %i.eb
  br i1 %i.fc, label %bb.an, label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0548, i64 %i.eb ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %.sroa.13.0549, %i.fd
  %spec.select = select i1 %.not.i.i.i295, ptr %.sroa.13.0549, ptr %i.fd
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZN4core5arrayIjE8set_usedEj.exit298:             ; preds = %bb.an, %bb.am, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.aj
  %.sroa.0.3 = phi ptr [ %.sroa.0.0548, %bb.am ], [ %.sroa.0.0548, %bb.an ], [ %.sroa.0.0548, %bb.aj ], [ %.sroa.0.0548, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.et, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 8 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0549, %bb.am ], [ %spec.select, %bb.an ], [ %i.en, %bb.aj ], [ %i.eq, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fa, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0550, %bb.am ], [ %.sroa.22.0550, %bb.an ], [ %.sroa.22.0550, %bb.aj ], [ %.sroa.22.0550, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fb, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 2 uses
  %i.fe = add i32 %i.dl, -2                       ; 2 uses
  %i.ff = load ptr, ptr %i.bz, align 8, !tbaa !141 ; 2 uses
  %i.fg = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 2
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = mul i32 %i.dl, 3
  %i.fn = add i32 %i.fm, -9
  %i.fo = add i32 %i.fn, %i.fl
  %i.fp = zext i32 %i.fo to i64                   ; 4 uses
  %i.fq = ashr exact i64 %i.fj, 2                 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  br i1 %i.fr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.fs = sub nuw nsw i64 %i.fp, %i.fq
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i64 noundef %i.fs)
          to label %_ZN4core5arrayIjE8set_usedEj.exit302 unwind label %bb.as

bb.ap:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.ft = icmp ugt i64 %i.fq, %i.fp
  br i1 %i.ft, label %bb.aq, label %_ZN4core5arrayIjE8set_usedEj.exit302

bb.aq:                                            ; preds = %bb.ap
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fp ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.ff, %i.fu
  br i1 %.not.i.i.i299, label %_ZN4core5arrayIjE8set_usedEj.exit302, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300:   ; preds = %bb.aq
  store ptr %i.fu, ptr %i.bz, align 8, !tbaa !141
  br label %_ZN4core5arrayIjE8set_usedEj.exit302

_ZN4core5arrayIjE8set_usedEj.exit302:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300, %bb.aq, %bb.ap, %bb.ao
  %i.fv = load ptr, ptr %i.cm, align 8, !tbaa !222
  %i.fw = load ptr, ptr %i.ck, align 8, !tbaa !221 ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 1
  %i.gb = icmp ugt i64 %i.ga, %indvars.iv666
  br i1 %i.gb, label %_ZN4core5arrayItEixEj.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit:                       ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  %i.gc = trunc i32 %i.fe to i16
  %i.gd = mul i16 %i.gc, 3
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv666
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !155
  %i.gf = ptrtoint ptr %.sroa.13.2 to i64
  %i.gg = ptrtoint ptr %.sroa.0.3 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2                 ; 3 uses
  br label %bb.at

.lr.ph546:                                        ; preds = %_ZN4core5arrayIjEixEj.exit
  %.not445 = icmp eq ptr %.sroa.13.2, %.sroa.0.3
  br i1 %.not445, label %bb.bf, label %.lr.ph546.split

.lr.ph546.split:                                  ; preds = %.lr.ph546
  %i.gj = load ptr, ptr %i.bz, align 8, !tbaa !141
  %i.gk = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 4 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2                 ; 3 uses
  %wide.trip.count664 = zext i32 %i.fe to i64
  br label %_ZN4core5arrayIjEixEj.exit303

bb.as:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.at:                                            ; preds = %_ZN4core5arrayItEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %indvars.iv653 = phi i64 [ 0, %_ZN4core5arrayItEixEj.exit ], [ %indvars.iv.next654, %_ZN4core5arrayIjEixEj.exit ] ; 3 uses
  %i.gq = load i8, ptr %i.cx, align 8, !tbaa !238, !range !83, !noundef !84
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.au, label %.preheader.i.i

bb.au:                                            ; preds = %bb.at
  %i.gs = load i32, ptr %i.db, align 8, !tbaa !239 ; 2 uses
  %.not.i = icmp eq i32 %i.gs, 0
  %i.gt = load ptr, ptr %i.cy, align 8, !tbaa !241 ; 6 uses
  %i.gu = load ptr, ptr %i.cz, align 8, !tbaa !235 ; 3 uses
  br i1 %.not.i, label %bb.av, label %._crit_edge.i

bb.av:                                            ; preds = %bb.au
  %.not.i.i = icmp ult ptr %i.gt, %i.gu
  br i1 %.not.i.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, label %._crit_edge.i

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i: ; preds = %bb.av
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !155
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 5 uses
  store ptr %i.gw, ptr %i.cy, align 8, !tbaa !241
  %i.gx = icmp eq i16 %i.gv, 6
  br i1 %i.gx, label %bb.aw, label %._crit_edge.i

bb.aw:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i
  %.not.i3.i = icmp ult ptr %i.gw, %i.gu
  br i1 %.not.i3.i, label %bb.ax, label %._crit_edge.i

bb.ax:                                            ; preds = %bb.aw
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !143
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 6 ; 2 uses
  store ptr %i.gz, ptr %i.cy, align 8, !tbaa !241
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ax, %bb.aw, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, %bb.av, %bb.au
  %i.ha = phi ptr [ %i.gt, %bb.au ], [ %i.gw, %bb.aw ], [ %i.gw, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gz, %bb.ax ], [ %i.gt, %bb.av ] ; 3 uses
  %i.hb = phi i32 [ %i.gs, %bb.au ], [ 0, %bb.aw ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gy, %bb.ax ], [ 1, %bb.av ]
  %i.hc = add i32 %i.hb, -1
  store i32 %i.hc, ptr %i.db, align 8, !tbaa !239
  %.not.i5.i = icmp ult ptr %i.ha, %i.gu
  br i1 %.not.i5.i, label %bb.ay, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

bb.ay:                                            ; preds = %._crit_edge.i
  %i.hd = load i32, ptr %i.ha, align 4, !tbaa !143
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store ptr %i.he, ptr %i.cy, align 8, !tbaa !241
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

.preheader.i.i:                                   ; preds = %bb.at
  %i.hf = load ptr, ptr %i.cz, align 8, !tbaa !235 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.cy, align 8, !tbaa !241 ; 3 uses
  %i.hg = icmp ult ptr %.promoted.i.i, %i.hf
  br i1 %i.hg, label %.lr.ph.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted7.i.i = load i32, ptr %i.da, align 4
  br label %bb.az

bb.az:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %.lr.ph.i.i
  %i.hh = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.hv, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 3 uses
  %i.hi = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hw, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 5 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !17  ; 3 uses
  %i.hk = sext i8 %i.hj to i32
  %.off.i.i = add i8 %i.hj, -45
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %i.hl = add nsw i32 %i.hk, -48
  %i.hm = icmp ult i32 %i.hl, 10
  %or.cond.i.i = select i1 %switch.i.i, i1 true, i1 %i.hm
  br i1 %or.cond.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  switch i8 %i.hj, label %.thread.i.i [
    i8 47, label %bb.bb
    i8 35, label %.lr.ph.i.i.i.preheader
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !17
  %i.hp = icmp eq i8 %i.ho, 47
  br i1 %i.hp, label %.lr.ph.i.i.i.preheader, label %.thread.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bb, %bb.ba
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.bd
  %i.hq = phi ptr [ %i.hs, %bb.bd ], [ %i.hi, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 5 uses
  store ptr %i.hs, ptr %i.cy, align 8, !tbaa !241
  switch i8 %i.hr, label %bb.bd [
    i8 10, label %bb.bc
    i8 13, label %bb.bc
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ht = add i32 %i.hh, 1                        ; 2 uses
  store i32 %i.ht, ptr %i.da, align 4, !tbaa !234
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq ptr %i.hs, %i.hf
  br i1 %exitcond.not.i.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !242

.thread.i.i:                                      ; preds = %bb.bb, %bb.ba
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 1 ; 2 uses
  store ptr %i.hu, ptr %i.cy, align 8, !tbaa !241
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i: ; preds = %bb.bd, %.thread.i.i, %bb.bc
  %i.hv = phi i32 [ %i.hh, %.thread.i.i ], [ %i.ht, %bb.bc ], [ %i.hh, %bb.bd ]
  %i.hw = phi ptr [ %i.hu, %.thread.i.i ], [ %i.hs, %bb.bc ], [ %i.hs, %bb.bd ] ; 3 uses
  %i.hx = icmp ult ptr %i.hw, %i.hf
  br i1 %i.hx, label %bb.az, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, !llvm.loop !262

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %bb.az, %.preheader.i.i
  %i.hy = phi ptr [ %.promoted.i.i, %.preheader.i.i ], [ %i.hw, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ], [ %i.hi, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !254
  %i.hz = call i64 @__isoc23_strtoul(ptr noundef %i.hy, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !254
  store ptr %i.ib, ptr %i.cy, align 8, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

_ZN5scene16CXMeshFileLoader7readIntEv.exit:       ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, %bb.ay, %._crit_edge.i
  %.0.i = phi i32 [ %i.ia, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i ], [ %i.hd, %bb.ay ], [ 0, %._crit_edge.i ]
  %exitcond656.not = icmp eq i64 %indvars.iv653, %i.gi
  br i1 %exitcond656.not, label %bb.be, label %_ZN4core5arrayIjEixEj.exit

bb.be:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv653
  store i32 %.0.i, ptr %i.ic, align 4, !tbaa !143
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next654, %i.eb
  br i1 %exitcond658.not, label %.lr.ph546, label %bb.at, !llvm.loop !263

_ZN4core5arrayIjEixEj.exit303:                    ; preds = %.lr.ph546.split, %_ZN4core5arrayIjEixEj.exit308
  %indvars.iv659 = phi i64 [ 0, %.lr.ph546.split ], [ %indvars.iv.next660, %_ZN4core5arrayIjEixEj.exit308 ] ; 2 uses
  %.1195544 = phi i32 [ %.0194551, %.lr.ph546.split ], [ %i.is, %_ZN4core5arrayIjEixEj.exit308 ] ; 4 uses
  %i.id = add i32 %.1195544, 1
  %i.ie = zext i32 %.1195544 to i64               ; 2 uses
  %i.if = icmp ugt i64 %i.go, %i.ie
  br i1 %i.if, label %_ZN4core5arrayIjEixEj.exit304, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph546
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bg:                                            ; preds = %_ZN4core5arrayIjEixEj.exit303
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit304:                    ; preds = %_ZN4core5arrayIjEixEj.exit303
  %i.ig = load i32, ptr %.sroa.0.3, align 4, !tbaa !143
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ie
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !143
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 4 uses
  %15 = icmp ugt i64 %i.gi, %indvars.iv.next660
  br i1 %15, label %_ZN4core5arrayIjEixEj.exit305, label %bb.bh

bb.bh:                                            ; preds = %_ZN4core5arrayIjEixEj.exit304
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit305:                    ; preds = %_ZN4core5arrayIjEixEj.exit304
  %i.ii = add i32 %.1195544, 2
  %i.ij = zext i32 %i.id to i64                   ; 2 uses
  %i.ik = icmp ugt i64 %i.go, %i.ij
  br i1 %i.ik, label %_ZN4core5arrayIjEixEj.exit306, label %bb.bi

bb.bi:                                            ; preds = %_ZN4core5arrayIjEixEj.exit305
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit306:                    ; preds = %_ZN4core5arrayIjEixEj.exit305
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv.next660
  %i.im = load i32, ptr %i.il, align 4, !tbaa !143
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ij
  store i32 %i.im, ptr %i.in, align 4, !tbaa !143
  %i.io = add nuw nsw i64 %indvars.iv659, 2       ; 2 uses
  %i.ip = icmp ugt i64 %i.gi, %i.io
  br i1 %i.ip, label %_ZN4core5arrayIjEixEj.exit307, label %bb.bj

bb.bj:                                            ; preds = %_ZN4core5arrayIjEixEj.exit306
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit307:                    ; preds = %_ZN4core5arrayIjEixEj.exit306
  %i.iq = zext i32 %i.ii to i64                   ; 2 uses
  %i.ir = icmp ugt i64 %i.go, %i.iq
  br i1 %i.ir, label %_ZN4core5arrayIjEixEj.exit308, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5arrayIjEixEj.exit307
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit308:                    ; preds = %_ZN4core5arrayIjEixEj.exit307
  %i.is = add i32 %.1195544, 3                    ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.io
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !143
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.iq
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !143
  %exitcond665.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count664
  br i1 %exitcond665.not, label %.loopexit458, label %_ZN4core5arrayIjEixEj.exit303, !llvm.loop !264

bb.bl:                                            ; preds = %bb.ac
  %i.iw = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.ix = zext i32 %.0194551 to i64               ; 2 uses
  %i.iy = load ptr, ptr %i.bz, align 8, !tbaa !141
  %i.iz = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 2
  %i.je = icmp ugt i64 %i.jd, %i.ix
  br i1 %i.je, label %_ZN4core5arrayIjEixEj.exit309, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit309:                    ; preds = %bb.bl
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ix
  store i32 %i.iw, ptr %i.jf, align 4, !tbaa !143
  %i.jg = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.jh = add i32 %.0194551, 1
  %i.ji = zext i32 %i.jh to i64                   ; 2 uses
  %i.jj = load ptr, ptr %i.bz, align 8, !tbaa !141
  %i.jk = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = ashr exact i64 %i.jn, 2
  %i.jp = icmp ugt i64 %i.jo, %i.ji
  br i1 %i.jp, label %_ZN4core5arrayIjEixEj.exit310, label %bb.bn

bb.bn:                                            ; preds = %_ZN4core5arrayIjEixEj.exit309
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit310:                    ; preds = %_ZN4core5arrayIjEixEj.exit309
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ji
  store i32 %i.jg, ptr %i.jq, align 4, !tbaa !143
  %i.jr = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.js = add i32 %.0194551, 2
  %i.jt = add i32 %.0194551, 3
  %i.ju = zext i32 %i.js to i64                   ; 2 uses
  %i.jv = load ptr, ptr %i.bz, align 8, !tbaa !141
  %i.jw = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = ashr exact i64 %i.jz, 2
  %i.kb = icmp ugt i64 %i.ka, %i.ju
  br i1 %i.kb, label %_ZN4core5arrayIjEixEj.exit311, label %bb.bo

bb.bo:                                            ; preds = %_ZN4core5arrayIjEixEj.exit310
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit311:                    ; preds = %_ZN4core5arrayIjEixEj.exit310
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.ju
  store i32 %i.jr, ptr %i.kc, align 4, !tbaa !143
  %i.kd = load ptr, ptr %i.cm, align 8, !tbaa !222
  %i.ke = load ptr, ptr %i.ck, align 8, !tbaa !221 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 1
  %i.kj = icmp ugt i64 %i.ki, %indvars.iv666
  br i1 %i.kj, label %_ZN4core5arrayItEixEj.exit312, label %bb.bp

bb.bp:                                            ; preds = %_ZN4core5arrayIjEixEj.exit311
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit312:                    ; preds = %_ZN4core5arrayIjEixEj.exit311
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %indvars.iv666
  store i16 3, ptr %i.kk, align 2, !tbaa !155
  br label %.loopexit458

.loopexit458:                                     ; preds = %_ZN4core5arrayIjEixEj.exit308, %_ZN4core5arrayItEixEj.exit312
  %.sroa.0.1 = phi ptr [ %.sroa.0.0548, %_ZN4core5arrayItEixEj.exit312 ], [ %.sroa.0.3, %_ZN4core5arrayIjEixEj.exit308 ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0549, %_ZN4core5arrayItEixEj.exit312 ], [ %.sroa.13.2, %_ZN4core5arrayIjEixEj.exit308 ]
  %.sroa.22.1 = phi ptr [ %.sroa.22.0550, %_ZN4core5arrayItEixEj.exit312 ], [ %.sroa.22.3, %_ZN4core5arrayIjEixEj.exit308 ] ; 2 uses
  %.3 = phi i32 [ %i.jt, %_ZN4core5arrayItEixEj.exit312 ], [ %i.is, %_ZN4core5arrayIjEixEj.exit308 ]
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next667, %i.cl
  br i1 %exitcond670.not, label %.critedge269.preheader, label %bb.ac, !llvm.loop !265

.critedge269:                                     ; preds = %_ZN4core5arrayIjEixEj.exit313
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count675
  br i1 %exitcond676.not, label %.critedge271, label %bb.br, !llvm.loop !266

bb.bq:                                            ; preds = %bb.bt
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.br:                                            ; preds = %.lr.ph558, %.critedge269
  %indvars.iv671 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next672, %.critedge269 ] ; 3 uses
  %exitcond674.not = icmp eq i64 %indvars.iv671, %i.dj
  br i1 %exitcond674.not, label %bb.bs, label %_ZN4core5arrayIjEixEj.exit313

bb.bs:                                            ; preds = %bb.br
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit313:                    ; preds = %bb.br
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv671
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !143
  %i.ko = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.kp = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 40
  %i.ku = trunc i64 %i.kt to i32
  %.not245 = icmp ult i32 %i.kn, %i.ku
  br i1 %.not245, label %.critedge269, label %bb.bt

bb.bt:                                            ; preds = %_ZN4core5arrayIjEixEj.exit313
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.36, i32 noundef 2)
          to label %bb.bu unwind label %bb.bq

bb.bu:                                            ; preds = %bb.bt
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.kv, align 8, !tbaa !18
  br label %.loopexit456

.critedge271:                                     ; preds = %.critedge269, %.critedge269.preheader
  %i.kw = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %.critedge271
  br i1 %i.kw, label %.preheader812, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.37, i32 noundef 2)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.ky)
  %i.kz = load ptr, ptr %6, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.kz, i32 noundef 2)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.la = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZN4core6stringIcED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314: ; preds = %bb.by
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN5scene16CXMeshFileLoader26parseDataObjectMeshNormalsERNS0_6SXMeshE:bb.a

bb.ay:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1
  %i.iw = load i32, ptr %i.bq, align 8, !tbaa !239 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.iw, 0
  %i.ix = load ptr, ptr %i.bo, align 8, !tbaa !235 ; 3 uses
  br i1 %.not.i.2, label %bb.az, label %._crit_edge.i.2

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.2 = icmp ult ptr %i.gz, %i.ix
  br i1 %.not.i.i.2, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, label %._crit_edge.i.2

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2: ; preds = %bb.az
  %i.iy = load i16, ptr %i.gz, align 2, !tbaa !155
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 5 uses
  store ptr %i.iz, ptr %i.bn, align 8, !tbaa !241
  %i.ja = icmp eq i16 %i.iy, 6
  br i1 %i.ja, label %bb.ba, label %._crit_edge.i.2

bb.ba:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2
  %.not.i3.i.2 = icmp ult ptr %i.iz, %i.ix
  br i1 %.not.i3.i.2, label %bb.bb, label %._crit_edge.i.2

bb.bb:                                            ; preds = %bb.ba
  %i.jb = load i32, ptr %i.iz, align 4, !tbaa !143
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gz, i64 6 ; 2 uses
  store ptr %i.jc, ptr %i.bn, align 8, !tbaa !241
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %bb.bb, %bb.ba, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, %bb.az, %bb.ay
  %i.jd = phi ptr [ %i.gz, %bb.ay ], [ %i.iz, %bb.ba ], [ %i.iz, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.jc, %bb.bb ], [ %i.gz, %bb.az ] ; 3 uses
  %i.je = phi i32 [ %i.iw, %bb.ay ], [ 0, %bb.ba ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.jb, %bb.bb ], [ 1, %bb.az ]
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr %i.bq, align 8, !tbaa !239
  %.not.i5.i.2 = icmp ult ptr %i.jd, %i.ix
  br i1 %.not.i5.i.2, label %bb.bc, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

bb.bc:                                            ; preds = %._crit_edge.i.2
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !143
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store ptr %i.jh, ptr %i.bn, align 8, !tbaa !241
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

_ZN5scene16CXMeshFileLoader7readIntEv.exit.2:     ; preds = %bb.bc, %._crit_edge.i.2, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2
  %.pre-phi550 = phi i64 [ %.pre-phi542, %bb.bc ], [ %.pre-phi542, %._crit_edge.i.2 ], [ %.pre549, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.ji = phi ptr [ %i.ha, %bb.bc ], [ %i.ha, %._crit_edge.i.2 ], [ %.pre535, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %.0.i.2 = phi i32 [ %i.jg, %bb.bc ], [ 0, %._crit_edge.i.2 ], [ %i.iu, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.jj = add i32 %.050406, 3
  %i.jk = zext i32 %i.hb to i64                   ; 2 uses
  %i.jl = icmp ugt i64 %.pre-phi550, %i.jk
  br i1 %i.jl, label %_ZN4core5arrayIjEixEj.exit.2, label %bb.ag

_ZN4core5arrayIjEixEj.exit.2:                     ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jk
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !143
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = load ptr, ptr %i.bs, align 8, !tbaa !152
  %i.jq = load ptr, ptr %i.br, align 8, !tbaa !153 ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = sdiv exact i64 %i.jt, 40
  %i.jv = icmp ugt i64 %i.ju, %i.jo
  br i1 %i.jv, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2, label %bb.ah

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2:    ; preds = %_ZN4core5arrayIjEixEj.exit.2
  %i.jw = zext i32 %.0.i.2 to i64                 ; 2 uses
  %i.jx = icmp ugt i64 %i.bw, %i.jw
  br i1 %i.jx, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2, label %bb.ai

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2:    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2
  %i.jy = getelementptr inbounds nuw [40 x i8], ptr %i.jq, i64 %i.jo ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0206.2665, i64 %i.jw ; 2 uses
  %i.kb = load <2 x float>, ptr %i.ka, align 4, !tbaa !95
  store <2 x float> %i.kb, ptr %i.jz, align 4, !tbaa !95
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !260
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store float %i.kd, ptr %i.ke, align 4, !tbaa !260
  br label %.loopexit

bb.bd:                                            ; preds = %bb.v
  %i.kf = zext i32 %i.by to i64                   ; 5 uses
  %i.kg = ptrtoint ptr %.sroa.13.0404 to i64      ; 2 uses
  %i.kh = ptrtoint ptr %.sroa.0.0403 to i64       ; 2 uses
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = ashr exact i64 %i.ki, 2                 ; 6 uses
  %i.kk = icmp ult i64 %i.kj, %i.kf
  br i1 %i.kk, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.kl = sub nuw nsw i64 %i.kf, %i.kj            ; 5 uses
  %i.km = ptrtoint ptr %.sroa.22.0405 to i64      ; 2 uses
  %i.kn = sub i64 %i.km, %i.kg
  %i.ko = ashr exact i64 %i.kn, 2                 ; 2 uses
  %i.kp = xor i64 %i.kj, 2305843009213693951
  %i.kq = icmp ule i64 %i.ko, %i.kp
  call void @llvm.assume(i1 %i.kq)
  %.not28.i169 = icmp ult i64 %i.ko, %i.kl
  br i1 %.not28.i169, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.sroa.13.0404, align 4, !tbaa !143
  %i.kr = getelementptr i8, ptr %.sroa.13.0404, i64 4 ; 3 uses
  %i.ks = add nsw i64 %i.kl, -1                   ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %_ZN4core5arrayIjE8set_usedEj.exit102, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i171 = shl nuw nsw i64 %i.ks, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 %.idx.i.i.i.i.i.i171, i1 false), !tbaa !143
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i.i.i.i.i.i171
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174: ; preds = %bb.be
  %.sroa.speculated.i.i175 = call i64 @llvm.umax.i64(i64 %i.kj, i64 %i.kl)
  %i.kv = add nuw nsw i64 %.sroa.speculated.i.i175, %i.kj ; 2 uses
  %i.kw = shl nuw nsw i64 %i.kv, 2
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #30
          to label %.noexc183 unwind label %.loopexit258 ; 4 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ki ; 3 uses
  store i32 0, ptr %i.ky, align 4, !tbaa !143
  %i.kz = add nsw i64 %i.kl, -1                   ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176: ; preds = %.noexc183
  %i.lb = getelementptr i8, ptr %i.ky, i64 4
  %.idx.i.i.i.i.i31.i177 = shl nuw nsw i64 %i.kz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.lb, i8 0, i64 %.idx.i.i.i.i.i31.i177, i1 false), !tbaa !143
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176, %.noexc183
  %i.lc = icmp sgt i64 %i.ki, 0
  br i1 %i.lc, label %bb.bg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

bb.bg:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kx, ptr align 4 %.sroa.0.0403, i64 %i.ki, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179: ; preds = %bb.bg, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  %.not.i35.i180 = icmp eq ptr %.sroa.0.0403, null
  br i1 %.not.i35.i180, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.ld = sub i64 %i.km, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0403, i64 noundef %i.ld) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181: ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kl
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kv
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bi:                                            ; preds = %bb.bd
  %i.lg = icmp ugt i64 %i.kj, %i.kf
  br i1 %i.lg, label %bb.bj, label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bj:                                            ; preds = %bb.bi
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0403, i64 %i.kf ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.sroa.13.0404, %i.lh
  %spec.select = select i1 %.not.i.i.i99, ptr %.sroa.13.0404, ptr %i.lh
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZN4core5arrayIjE8set_usedEj.exit102:             ; preds = %bb.bj, %bb.bf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, %bb.bi
  %.sroa.0.5 = phi ptr [ %.sroa.0.0403, %bb.bi ], [ %.sroa.0.0403, %bb.bj ], [ %.sroa.0.0403, %bb.bf ], [ %.sroa.0.0403, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.kx, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 9 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0404, %bb.bi ], [ %spec.select, %bb.bj ], [ %i.kr, %bb.bf ], [ %i.ku, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.le, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 5 uses
  %.sroa.22.5 = phi ptr [ %.sroa.22.0405, %bb.bi ], [ %.sroa.22.0405, %bb.bj ], [ %.sroa.22.0405, %bb.bf ], [ %.sroa.22.0405, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.lf, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 2 uses
  %.not412 = icmp eq i32 %i.by, 0
  br i1 %.not412, label %.lr.ph328, label %.lr.ph325

.lr.ph325:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102
  %i.li = ptrtoint ptr %.sroa.13.2 to i64
  %i.lj = ptrtoint ptr %.sroa.0.5 to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 2
  br label %bb.bk

.preheader256:                                    ; preds = %_ZN4core5arrayIjEixEj.exit123
  %.not413 = icmp eq i32 %i.bz, 0
  br i1 %.not413, label %.loopexit, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102, %.preheader256
  %i.lm = load ptr, ptr %i.au, align 8, !tbaa !141
  %i.ln = load ptr, ptr %i.at, align 8, !tbaa !144 ; 5 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 2                 ; 4 uses
  %i.ls = ptrtoint ptr %.sroa.13.2 to i64
  %i.lt = ptrtoint ptr %.sroa.0.5 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = ashr exact i64 %i.lu, 2                 ; 2 uses
  %.not254 = icmp eq ptr %.sroa.13.2, %.sroa.0.5
  %.not254.fr = freeze i1 %.not254
  br i1 %.not254.fr, label %.lr.ph328.split.us, label %.lr.ph328.split.preheader

.lr.ph328.split.preheader:                        ; preds = %.lr.ph328
  %wide.trip.count523 = zext i32 %i.bz to i64
  br label %.lr.ph328.split

.lr.ph328.split.us:                               ; preds = %.lr.ph328
  %i.lw = zext i32 %.050406 to i64                ; 2 uses
  %i.lx = icmp ugt i64 %i.lr, %i.lw
  br i1 %i.lx, label %_ZN4core5arrayIjEixEj.exit124.us, label %.split.us

_ZN4core5arrayIjEixEj.exit124.us:                 ; preds = %.lr.ph328.split.us
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lw
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !143
  %i.ma = zext i32 %i.lz to i64
  %i.mb = load ptr, ptr %i.bs, align 8, !tbaa !152
  %i.mc = load ptr, ptr %i.br, align 8, !tbaa !153
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = sdiv exact i64 %i.mf, 40
  %i.mh = icmp ugt i64 %i.mg, %i.ma
  br i1 %i.mh, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us, label %.split330.us

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us: ; preds = %_ZN4core5arrayIjEixEj.exit124.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bk:                                            ; preds = %.lr.ph325, %_ZN4core5arrayIjEixEj.exit123
  %indvars.iv513 = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next514, %_ZN4core5arrayIjEixEj.exit123 ] ; 3 uses
  %i.mi = load i8, ptr %i.bm, align 8, !tbaa !238, !range !83, !noundef !84
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.bl, label %.preheader.i.i103

bb.bl:                                            ; preds = %bb.bk
  %i.mk = load i32, ptr %i.bq, align 8, !tbaa !239 ; 2 uses
  %.not.i116 = icmp eq i32 %i.mk, 0
  %i.ml = load ptr, ptr %i.bn, align 8, !tbaa !241 ; 6 uses
  %i.mm = load ptr, ptr %i.bo, align 8, !tbaa !235 ; 3 uses
  br i1 %.not.i116, label %bb.bm, label %._crit_edge.i117

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i119 = icmp ult ptr %i.ml, %i.mm
  br i1 %.not.i.i119, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, label %._crit_edge.i117

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120: ; preds = %bb.bm
  %i.mn = load i16, ptr %i.ml, align 2, !tbaa !155
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 2 ; 5 uses
  store ptr %i.mo, ptr %i.bn, align 8, !tbaa !241
  %i.mp = icmp eq i16 %i.mn, 6
  br i1 %i.mp, label %bb.bn, label %._crit_edge.i117

bb.bn:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120
  %.not.i3.i121 = icmp ult ptr %i.mo, %i.mm
  br i1 %.not.i3.i121, label %bb.bo, label %._crit_edge.i117

bb.bo:                                            ; preds = %bb.bn
  %i.mq = load i32, ptr %i.mo, align 4, !tbaa !143
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 6 ; 2 uses
  store ptr %i.mr, ptr %i.bn, align 8, !tbaa !241
  br label %._crit_edge.i117

._crit_edge.i117:                                 ; preds = %bb.bo, %bb.bn, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, %bb.bm, %bb.bl
  %i.ms = phi ptr [ %i.ml, %bb.bl ], [ %i.mo, %bb.bn ], [ %i.mo, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.mr, %bb.bo ], [ %i.ml, %bb.bm ] ; 3 uses
  %i.mt = phi i32 [ %i.mk, %bb.bl ], [ 0, %bb.bn ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.mq, %bb.bo ], [ 1, %bb.bm ]
  %i.mu = add i32 %i.mt, -1
  store i32 %i.mu, ptr %i.bq, align 8, !tbaa !239
  %.not.i5.i118 = icmp ult ptr %i.ms, %i.mm
  br i1 %.not.i5.i118, label %bb.bp, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

bb.bp:                                            ; preds = %._crit_edge.i117
  %i.mv = load i32, ptr %i.ms, align 4, !tbaa !143
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store ptr %i.mw, ptr %i.bn, align 8, !tbaa !241
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

.preheader.i.i103:                                ; preds = %bb.bk
  %i.mx = load ptr, ptr %i.bo, align 8, !tbaa !235 ; 3 uses
  %.promoted.i.i104 = load ptr, ptr %i.bn, align 8, !tbaa !241 ; 3 uses
  %i.my = icmp ult ptr %.promoted.i.i104, %i.mx
  br i1 %i.my, label %.lr.ph.i.i107, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105

.lr.ph.i.i107:                                    ; preds = %.preheader.i.i103
  %.promoted7.i.i108 = load i32, ptr %i.bp, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, %.lr.ph.i.i107
  %i.mz = phi i32 [ %.promoted7.i.i108, %.lr.ph.i.i107 ], [ %i.nn, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 3 uses
  %i.na = phi ptr [ %.promoted.i.i104, %.lr.ph.i.i107 ], [ %i.no, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 5 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !17  ; 3 uses
  %i.nc = sext i8 %i.nb to i32
  %.off.i.i109 = add i8 %i.nb, -45
  %switch.i.i110 = icmp ult i8 %.off.i.i109, 2
  %i.nd = add nsw i32 %i.nc, -48
  %i.ne = icmp ult i32 %i.nd, 10
  %or.cond.i.i111 = select i1 %switch.i.i110, i1 true, i1 %i.ne
  br i1 %or.cond.i.i111, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.nb, label %.thread.i.i115 [
    i8 47, label %bb.bs
    i8 35, label %.lr.ph.i.i.i112.preheader
  ]

bb.bs:                                            ; preds = %bb.br
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !17
  %i.nh = icmp eq i8 %i.ng, 47
  br i1 %i.nh, label %.lr.ph.i.i.i112.preheader, label %.thread.i.i115

.lr.ph.i.i.i112.preheader:                        ; preds = %bb.bs, %bb.br
  br label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %.lr.ph.i.i.i112.preheader, %bb.bu
  %i.ni = phi ptr [ %i.nk, %bb.bu ], [ %i.na, %.lr.ph.i.i.i112.preheader ] ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !17
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 1 ; 5 uses
  store ptr %i.nk, ptr %i.bn, align 8, !tbaa !241
  switch i8 %i.nj, label %bb.bu [
    i8 10, label %bb.bt
    i8 13, label %bb.bt
  ]

bb.bt:                                            ; preds = %.lr.ph.i.i.i112, %.lr.ph.i.i.i112
  %i.nl = add i32 %i.mz, 1                        ; 2 uses
  store i32 %i.nl, ptr %i.bp, align 4, !tbaa !234
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113

bb.bu:                                            ; preds = %.lr.ph.i.i.i112
  %exitcond.not.i.i.i114 = icmp eq ptr %i.nk, %i.mx
  br i1 %exitcond.not.i.i.i114, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, label %.lr.ph.i.i.i112, !llvm.loop !242

.thread.i.i115:                                   ; preds = %bb.bs, %bb.br
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 2 uses
  store ptr %i.nm, ptr %i.bn, align 8, !tbaa !241
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113: ; preds = %bb.bu, %.thread.i.i115, %bb.bt
  %i.nn = phi i32 [ %i.mz, %.thread.i.i115 ], [ %i.nl, %bb.bt ], [ %i.mz, %bb.bu ]
  %i.no = phi ptr [ %i.nm, %.thread.i.i115 ], [ %i.nk, %bb.bt ], [ %i.nk, %bb.bu ] ; 3 uses
  %i.np = icmp ult ptr %i.no, %i.mx
  br i1 %i.np, label %bb.bq, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, !llvm.loop !262

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, %bb.bq, %.preheader.i.i103
  %i.nq = phi ptr [ %.promoted.i.i104, %.preheader.i.i103 ], [ %i.no, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ], [ %i.na, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !254
  %i.nr = call i64 @__isoc23_strtoul(ptr noundef %i.nq, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !254
  store ptr %i.nt, ptr %i.bn, align 8, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

_ZN5scene16CXMeshFileLoader7readIntEv.exit122:    ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, %bb.bp, %._crit_edge.i117
  %.0.i106 = phi i32 [ %i.ns, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105 ], [ %i.mv, %bb.bp ], [ 0, %._crit_edge.i117 ]
  %exitcond516.not = icmp eq i64 %indvars.iv513, %i.ll
  br i1 %exitcond516.not, label %bb.bv, label %_ZN4core5arrayIjEixEj.exit123

bb.bv:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit122
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit123:                    ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit122
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %indvars.iv513
  store i32 %.0.i106, ptr %i.nu, align 4, !tbaa !143
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next514, %i.kf
  br i1 %exitcond518.not, label %.preheader256, label %bb.bk, !llvm.loop !295

.lr.ph328.split:                                  ; preds = %.lr.ph328.split.preheader, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135
  %indvars.iv519 = phi i64 [ 0, %.lr.ph328.split.preheader ], [ %indvars.iv.next520, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 2 uses
  %.2326 = phi i32 [ %.050406, %.lr.ph328.split.preheader ], [ %i.pk, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 4 uses
  %i.nv = add i32 %.2326, 1
  %i.nw = zext i32 %.2326 to i64                  ; 2 uses
  %i.nx = icmp ugt i64 %i.lr, %i.nw
  br i1 %i.nx, label %_ZN4core5arrayIjEixEj.exit124, label %.split.us

.split.us:                                        ; preds = %.lr.ph328.split, %.lr.ph328.split.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit124:                    ; preds = %.lr.ph328.split
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.nw
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !143
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %i.ob = load ptr, ptr %i.bs, align 8, !tbaa !152
  %i.oc = load ptr, ptr %i.br, align 8, !tbaa !153 ; 4 uses
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = sdiv exact i64 %i.of, 40                ; 3 uses
  %i.oh = icmp ugt i64 %i.og, %i.oa
  br i1 %i.oh, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125, label %.split330.us

.split330.us:                                     ; preds = %_ZN4core5arrayIjEixEj.exit124, %_ZN4core5arrayIjEixEj.exit124.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125:   ; preds = %_ZN4core5arrayIjEixEj.exit124
  %i.oi = load i32, ptr %.sroa.0.5, align 4, !tbaa !143
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %i.ok = icmp ugt i64 %i.bw, %i.oj
  br i1 %i.ok, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127, label %bb.bw

bb.bw:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127:     ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125
  %i.ol = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %i.oa ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0206.2665, i64 %i.oj ; 2 uses
  %i.oo = load <2 x float>, ptr %i.on, align 4, !tbaa !95
  store <2 x float> %i.oo, ptr %i.om, align 4, !tbaa !95
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.oq = load float, ptr %i.op, align 4, !tbaa !260
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  store float %i.oq, ptr %i.or, align 4, !tbaa !260
  %i.os = add i32 %.2326, 2
  %i.ot = zext i32 %i.nv to i64                   ; 2 uses
  %i.ou = icmp ugt i64 %i.lr, %i.ot
  br i1 %i.ou, label %_ZN4core5arrayIjEixEj.exit128, label %bb.bx

bb.bx:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit128:                    ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit127
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.ot
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !143
  %i.ox = zext i32 %i.ow to i64                   ; 2 uses
  %i.oy = icmp ugt i64 %i.og, %i.ox
  br i1 %i.oy, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129, label %bb.by

bb.by:                                            ; preds = %_ZN4core5arrayIjEixEj.exit128
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129:   ; preds = %_ZN4core5arrayIjEixEj.exit128
  %i.oz = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %i.ox ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 4 uses
  %8 = icmp ugt i64 %i.lv, %indvars.iv.next520
  br i1 %8, label %_ZN4core5arrayIjEixEj.exit130, label %bb.bz

bb.bz:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit130:                    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit129
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %indvars.iv.next520
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !143
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = icmp ugt i64 %i.bw, %i.pd
  br i1 %i.pe, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131, label %bb.ca

bb.ca:                                            ; preds = %_ZN4core5arrayIjEixEj.exit130
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131:     ; preds = %_ZN4core5arrayIjEixEj.exit130
  %i.pf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0206.2665, i64 %i.pd ; 2 uses
  %i.pg = load <2 x float>, ptr %i.pf, align 4, !tbaa !95
  store <2 x float> %i.pg, ptr %i.pa, align 4, !tbaa !95
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !260
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 20
  store float %i.pi, ptr %i.pj, align 4, !tbaa !260
  %i.pk = add i32 %.2326, 3                       ; 2 uses
  %i.pl = zext i32 %i.os to i64                   ; 2 uses
  %i.pm = icmp ugt i64 %i.lr, %i.pl
  br i1 %i.pm, label %_ZN4core5arrayIjEixEj.exit132, label %bb.cb

bb.cb:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit132:                    ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit131
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.pl
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !143
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = icmp ugt i64 %i.og, %i.pp
  br i1 %i.pq, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit133, label %bb.cc

bb.cc:                                            ; preds = %_ZN4core5arrayIjEixEj.exit132
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit133:   ; preds = %_ZN4core5arrayIjEixEj.exit132
  %i.pr = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %i.pp ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %i.pt = add nuw i64 %indvars.iv519, 2
  %i.pu = and i64 %i.pt, 4294967295               ; 2 uses
  %i.pv = icmp ugt i64 %i.lv, %i.pu
  br i1 %i.pv, label %_ZN4core5arrayIjEixEj.exit134, label %bb.cd

bb.cd:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit133
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit134:                    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit133
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %i.pu
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !143
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = icmp ugt i64 %i.bw, %i.py
  br i1 %i.pz, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135, label %bb.ce

bb.ce:                                            ; preds = %_ZN4core5arrayIjEixEj.exit134
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135:     ; preds = %_ZN4core5arrayIjEixEj.exit134
  %i.qa = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0206.2665, i64 %i.py ; 2 uses
  %i.qb = load <2 x float>, ptr %i.qa, align 4, !tbaa !95
  store <2 x float> %i.qb, ptr %i.ps, align 4, !tbaa !95
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !260
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pr, i64 20
  store float %i.qd, ptr %i.qe, align 4, !tbaa !260
  %exitcond524.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count523
  br i1 %exitcond524.not, label %.loopexit, label %.lr.ph328.split, !llvm.loop !296

.loopexit:                                        ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2, %.preheader256
  %.sroa.0.1 = phi ptr [ %.sroa.0.5, %.preheader256 ], [ %.sroa.0.0403, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2 ], [ %.sroa.0.5, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.2, %.preheader256 ], [ %.sroa.13.0404, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2 ], [ %.sroa.13.2, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ]
  %.sroa.22.1 = phi ptr [ %.sroa.22.5, %.preheader256 ], [ %.sroa.22.0405, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2 ], [ %.sroa.22.5, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ] ; 2 uses
  %.4 = phi i32 [ %.050406, %.preheader256 ], [ %i.jj, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2 ], [ %i.pk, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit135 ]
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count529
  br i1 %exitcond530.not, label %.critedge, label %bb.p, !llvm.loop !297

.critedge:                                        ; preds = %.loopexit, %_ZN4core5arrayIjE8set_usedEj.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZN4core5arrayIjE8set_usedEj.exit ], [ %.sroa.0.1, %.loopexit ] ; 5 uses
  %.sroa.22.0.lcssa = phi ptr [ null, %_ZN4core5arrayIjE8set_usedEj.exit ], [ %.sroa.22.1, %.loopexit ] ; 5 uses
  %i.qf = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %.critedge
  br i1 %i.qf, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.64, i32 noundef 2)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.qh)
  %i.qi = load ptr, ptr %6, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.qi, i32 noundef 2)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.qj = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %_ZN4core6stringIcED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.ci
  %i.qm = load i64, ptr %i.qk, align 8, !tbaa !17
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qn) #29
  br label %_ZN4core6stringIcED2Ev.exit138

_ZN4core6stringIcED2Ev.exit138:                   ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cl, %bb.cm, %bb.cg, %.critedge
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ck:                                            ; preds = %bb.ch
  %i.qp = landingpad { ptr, i32 }
          cleanup
  %i.qq = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZN4core6stringIcED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.ck
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !17
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qu) #29
  br label %_ZN4core6stringIcED2Ev.exit141

_ZN4core6stringIcED2Ev.exit141:                   ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cu

bb.cl:                                            ; preds = %_ZN4core6stringIcED2Ev.exit138, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %.noexc143 unwind label %bb.cj

.noexc143:                                        ; preds = %bb.cl
  %i.qv = load ptr, ptr %2, align 8, !tbaa !42    ; 4 uses
  %i.qw = load i8, ptr %i.qv, align 1
  %.not.i142 = icmp eq i8 %i.qw, 125
  br i1 %.not.i142, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %.noexc143
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = icmp eq i8 %i.qy, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %.noexc143
  %.not5.i.i = phi i1 [ false, %.noexc143 ], [ %i.qz, %sub_1.i ]
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qv, %i.ra
  br i1 %i.rb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !17
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.rd) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not5.i.i, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.65, i32 noundef 2)
          to label %bb.cn unwind label %bb.cj

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.rf)
  %i.rg = load ptr, ptr %7, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.rg, i32 noundef 2)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rh = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZN4core6stringIcED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5video9SMaterialESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvT_S9_St20forward_iterator_tag:bb.a
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #32
  unreachable

_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef nonnull %i.g, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread ], [ %i.k, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i, !prof !389

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 144115188075855871
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 7
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 128
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !366

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %i.e, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #28 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = shl i64 %1, 7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !16, i64 8, !6, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !30, i64 104}
!19 = !{!"_ZTSN5scene16CXMeshFileLoaderE", !20, i64 0, !21, i64 8, !12, i64 40, !12, i64 48, !12, i64 56, !5, i64 64, !5, i64 68, !29, i64 72, !30, i64 104, !31, i64 112, !32, i64 120, !5, i64 152, !5, i64 156, !30, i64 160, !6, i64 161}
!20 = !{!"_ZTSN5scene11IMeshLoaderE"}
!21 = !{!"_ZTSN5scene18SkinnedMeshBuilderE", !22, i64 0, !24, i64 8}
!22 = !{!"_ZTS7irr_ptrIN5scene11SkinnedMeshEE", !23, i64 0}
!23 = !{!"p1 _ZTSN5scene11SkinnedMeshE", !13, i64 0}
!24 = !{!"_ZTSSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN5scene18SkinnedMeshBuilder6WeightE", !13, i64 0}
!29 = !{!"_ZTSN4core6stringIcEE", !15, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"p1 _ZTSN5scene11SkinnedMesh6SJointE", !13, i64 0}
!32 = !{!"_ZTSN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEEE", !33, i64 0, !30, i64 24}
!33 = !{!"_ZTSSt6vectorIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p2 _ZTSN5scene16CXMeshFileLoader6SXMeshE", !38, i64 0}
!38 = !{!"any p2 pointer", !13, i64 0}
!39 = !{!32, !30, i64 24}
!40 = !{!41, !5, i64 8}
!41 = !{!"_ZTS17IReferenceCounted", !5, i64 8}
!42 = !{!15, !12, i64 0}
!43 = !{!44, !65, i64 140}
!44 = !{!"_ZTSN5scene11SkinnedMeshE", !45, i64 0, !47, i64 8, !48, i64 16, !53, i64 40, !58, i64 64, !63, i64 88, !63, i64 112, !65, i64 136, !65, i64 140, !30, i64 144, !30, i64 145, !30, i64 146, !30, i64 147, !66, i64 148}
!45 = !{!"_ZTSN5scene13IAnimatedMeshE", !46, i64 0}
!46 = !{!"_ZTSN5scene5IMeshE"}
!47 = !{!"p1 _ZTSSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE", !13, i64 0}
!48 = !{!"_ZTSSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p2 _ZTSN5scene15SSkinMeshBufferE", !38, i64 0}
!53 = !{!"_ZTSSt6vectorIjSaIjEE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 int", !13, i64 0}
!58 = !{!"_ZTSSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE", !59, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE12_Vector_implE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p2 _ZTSN5scene11SkinnedMesh6SJointE", !38, i64 0}
!63 = !{!"_ZTSN4core8aabbox3dIfEE", !64, i64 0, !64, i64 12}
!64 = !{!"_ZTSN4core8vector3dIfEE", !65, i64 0, !65, i64 4, !65, i64 8}
!65 = !{!"float", !6, i64 0}
!66 = !{!"_ZTSN5scene11SkinnedMesh12SourceFormatE", !6, i64 0}
!67 = !{!44, !66, i64 148}
!68 = !{!44, !47, i64 8}
!69 = !{!22, !23, i64 0}
!70 = distinct !{null, null, null, null}
!71 = !{!27, !28, i64 0}
!72 = !{!27, !28, i64 16}
!73 = !{!19, !31, i64 112}
!74 = !{!19, !12, i64 40}
!75 = !{!36, !37, i64 8}
!76 = !{!36, !37, i64 0}
!77 = !{!36, !37, i64 16}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSN5scene16CXMeshFileLoader6SXMeshE", !13, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = distinct !{!82, !81}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!86, !87, i64 8}
!86 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSN5video9SMaterialE", !13, i64 0}
!88 = !{!86, !87, i64 0}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSN5video14SMaterialLayerE", !91, i64 0, !6, i64 8, !6, i64 8, !6, i64 9, !92, i64 10, !93, i64 11, !6, i64 12, !6, i64 13, !94, i64 16}
!91 = !{!"p1 _ZTSN5video8ITextureE", !13, i64 0}
!92 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !6, i64 0}
!93 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !6, i64 0}
!94 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !13, i64 0}
!95 = !{!65, !65, i64 0}
!96 = !{!86, !87, i64 16}
!97 = !{!98, !30, i64 24}
!98 = !{!"_ZTSN4core5arrayIN5video9SMaterialEEE", !99, i64 0, !30, i64 24}
!99 = !{!"_ZTSSt6vectorIN5video9SMaterialESaIS1_EE", !100, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIN5video9SMaterialESaIS1_EE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE12_Vector_implE", !86, i64 0}
!102 = !{!90, !94, i64 16}
!103 = !{!51, !52, i64 16}
!104 = !{!51, !52, i64 0}
!105 = !{!51, !52, i64 8}
!106 = distinct !{null}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN5scene15SSkinMeshBufferE", !13, i64 0}
!109 = !{!110, !30, i64 24}
!110 = !{!"_ZTSN4core5arrayIPN5scene15SSkinMeshBufferEEE", !48, i64 0, !30, i64 24}
!111 = !{!52, !52, i64 0}
!112 = !{!113, !30, i64 300}
!113 = !{!"_ZTSN5scene16CXMeshFileLoader6SXMeshE", !29, i64 0, !5, i64 32, !5, i64 36, !5, i64 40, !114, i64 48, !110, i64 80, !120, i64 112, !126, i64 144, !132, i64 176, !132, i64 208, !98, i64 240, !133, i64 272, !5, i64 296, !30, i64 300, !30, i64 301}
!114 = !{!"_ZTSN4core5arrayItEE", !115, i64 0, !30, i64 24}
!115 = !{!"_ZTSSt6vectorItSaItEE", !116, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseItSaItEE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 short", !13, i64 0}
!120 = !{!"_ZTSN4core5arrayIN5video9S3DVertexEEE", !121, i64 0, !30, i64 24}
!121 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p1 _ZTSN5video9S3DVertexE", !13, i64 0}
!126 = !{!"_ZTSN4core5arrayINS_8vector2dIfEEEE", !127, i64 0, !30, i64 24}
!127 = !{!"_ZTSSt6vectorIN4core8vector2dIfEESaIS2_EE", !128, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE", !129, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE12_Vector_implE", !130, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!131 = !{!"p1 _ZTSN4core8vector2dIfEE", !13, i64 0}
!132 = !{!"_ZTSN4core5arrayIjEE", !53, i64 0, !30, i64 24}
!133 = !{!"_ZTSSt6vectorIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE", !134, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE", !135, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE12_Vector_implE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!137 = !{!"p1 _ZTSN5scene16CXMeshFileLoader6SXMesh6WeightE", !13, i64 0}
!138 = !{!113, !5, i64 296}
!139 = !{!61, !62, i64 0}
!140 = !{!31, !31, i64 0}
!141 = !{!56, !57, i64 8}
!142 = !{!56, !57, i64 16}
!143 = !{!5, !5, i64 0}
!144 = !{!56, !57, i64 0}
!145 = distinct !{!145, !81}
!146 = distinct !{!146, !81, !147, !148}
!147 = !{!"llvm.loop.isvectorized", i32 1}
!148 = !{!"llvm.loop.unroll.runtime.disable"}
!149 = distinct !{!149, !81, !148, !147}
!150 = !{!113, !30, i64 301}
!151 = distinct !{!151, !81}
!152 = !{!124, !125, i64 8}
!153 = !{!124, !125, i64 0}
!154 = distinct !{!154, !81}
!155 = !{!156, !156, i64 0}
end_hunk_2
