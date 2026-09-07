Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader19parseDataObjectMeshERNS0_6SXMeshE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289: ; preds = %.critedge
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #29
  br label %_ZN4core6stringIcED2Ev.exit291

_ZN4core6stringIcED2Ev.exit291:                   ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.du, align 8, !tbaa !48
  br label %.loopexit457

.loopexit460:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit462 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.loopexit.split-lp461:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.ag:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4core6stringIcED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !27
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #29
  br label %_ZN4core6stringIcED2Ev.exit294

_ZN4core6stringIcED2Ev.exit294:                   ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.gl

bb.ah:                                            ; preds = %bb.ad
  %i.eb = zext i32 %i.dl to i64                   ; 5 uses
  %i.ec = ptrtoint ptr %.sroa.13.0550 to i64      ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0.0549 to i64       ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 6 uses
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.eh = sub nuw nsw i64 %i.eb, %i.ef            ; 5 uses
  %i.ei = ptrtoint ptr %.sroa.22.0551 to i64      ; 2 uses
  %i.ej = sub i64 %i.ei, %i.ec
  %i.ek = ashr exact i64 %i.ej, 2                 ; 2 uses
  %i.el = xor i64 %i.ef, 2305843009213693951
  %i.em = icmp ule i64 %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %.not28.i = icmp ult i64 %i.ek, %i.eh
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.sroa.13.0550, align 4, !tbaa !137
  %i.en = getelementptr i8, ptr %.sroa.13.0550, i64 4 ; 3 uses
  %i.eo = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZN4core5arrayIjE8set_usedEj.exit298, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.aj
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.eo, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !137
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i.i.i.i.i.i
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ai
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eh)
  %i.er = add nuw nsw i64 %.sroa.speculated.i.i, %i.ef ; 2 uses
  %i.es = shl nuw nsw i64 %i.er, 2
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #30
          to label %.noexc419 unwind label %.loopexit460 ; 4 uses

.noexc419:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ee ; 3 uses
  store i32 0, ptr %i.eu, align 4, !tbaa !137
  %i.ev = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc419
  %i.ex = getelementptr i8, ptr %i.eu, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ev, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ex, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc419
  %i.ey = icmp sgt i64 %i.ee, 0
  br i1 %i.ey, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.ak:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.et, ptr align 4 %.sroa.0.0549, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.ak, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0.0549, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ez = sub i64 %i.ei, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0549, i64 noundef %i.ez) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.eh
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.er
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.am:                                            ; preds = %bb.ah
  %i.fc = icmp ugt i64 %i.ef, %i.eb
  br i1 %i.fc, label %bb.an, label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0549, i64 %i.eb ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %.sroa.13.0550, %i.fd
  %spec.select = select i1 %.not.i.i.i295, ptr %.sroa.13.0550, ptr %i.fd
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZN4core5arrayIjE8set_usedEj.exit298:             ; preds = %bb.an, %bb.am, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.aj
  %.sroa.0.3 = phi ptr [ %.sroa.0.0549, %bb.am ], [ %.sroa.0.0549, %bb.an ], [ %.sroa.0.0549, %bb.aj ], [ %.sroa.0.0549, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.et, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 8 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0550, %bb.am ], [ %spec.select, %bb.an ], [ %i.en, %bb.aj ], [ %i.eq, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fa, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0551, %bb.am ], [ %.sroa.22.0551, %bb.an ], [ %.sroa.22.0551, %bb.aj ], [ %.sroa.22.0551, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fb, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 2 uses
  %i.fe = add i32 %i.dl, -2                       ; 2 uses
  %i.ff = load ptr, ptr %i.bz, align 8, !tbaa !135 ; 2 uses
  %i.fg = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 2 uses
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
  store ptr %i.fu, ptr %i.bz, align 8, !tbaa !135
  br label %_ZN4core5arrayIjE8set_usedEj.exit302

_ZN4core5arrayIjE8set_usedEj.exit302:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300, %bb.aq, %bb.ap, %bb.ao
  %i.fv = load ptr, ptr %i.cm, align 8, !tbaa !159
  %i.fw = load ptr, ptr %i.ck, align 8, !tbaa !158 ; 2 uses
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
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !145
  %i.gf = ptrtoint ptr %.sroa.13.2 to i64
  %i.gg = ptrtoint ptr %.sroa.0.3 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2                 ; 3 uses
  br label %bb.at

.lr.ph547:                                        ; preds = %_ZN4core5arrayIjEixEj.exit
  %.not446 = icmp eq ptr %.sroa.13.2, %.sroa.0.3
  br i1 %.not446, label %bb.bf, label %.lr.ph547.split

.lr.ph547.split:                                  ; preds = %.lr.ph547
  %i.gj = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.gk = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 4 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2                 ; 3 uses
  %i.gp = call i64 @llvm.usub.sat.i64(i64 %i.gi, i64 1)
  %wide.trip.count664 = zext i32 %i.fe to i64
  br label %_ZN4core5arrayIjEixEj.exit303

bb.as:                                            ; preds = %bb.ao
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.at:                                            ; preds = %_ZN4core5arrayItEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %indvars.iv654 = phi i64 [ 0, %_ZN4core5arrayItEixEj.exit ], [ %indvars.iv.next655, %_ZN4core5arrayIjEixEj.exit ] ; 3 uses
  %i.gr = load i8, ptr %i.cx, align 8, !tbaa !165, !range !78, !noundef !79
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.au, label %.preheader.i.i

bb.au:                                            ; preds = %bb.at
  %i.gt = load i32, ptr %i.db, align 8, !tbaa !166 ; 2 uses
  %.not.i = icmp eq i32 %i.gt, 0
  %i.gu = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 6 uses
  %i.gv = load ptr, ptr %i.cz, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i, label %bb.av, label %._crit_edge.i

bb.av:                                            ; preds = %bb.au
  %.not.i.i = icmp ult ptr %i.gu, %i.gv
  br i1 %.not.i.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, label %._crit_edge.i

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i: ; preds = %bb.av
  %i.gw = load i16, ptr %i.gu, align 2, !tbaa !145
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 2 ; 5 uses
  store ptr %i.gx, ptr %i.cy, align 8, !tbaa !168
  %i.gy = icmp eq i16 %i.gw, 6
  br i1 %i.gy, label %bb.aw, label %._crit_edge.i

bb.aw:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i
  %.not.i3.i = icmp ult ptr %i.gx, %i.gv
  br i1 %.not.i3.i, label %bb.ax, label %._crit_edge.i

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !137
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 6 ; 2 uses
  store ptr %i.ha, ptr %i.cy, align 8, !tbaa !168
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ax, %bb.aw, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, %bb.av, %bb.au
  %i.hb = phi ptr [ %i.gu, %bb.au ], [ %i.gx, %bb.aw ], [ %i.gx, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.ha, %bb.ax ], [ %i.gu, %bb.av ] ; 3 uses
  %i.hc = phi i32 [ %i.gt, %bb.au ], [ 0, %bb.aw ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gz, %bb.ax ], [ 1, %bb.av ]
  %i.hd = add i32 %i.hc, -1
  store i32 %i.hd, ptr %i.db, align 8, !tbaa !166
  %.not.i5.i = icmp ult ptr %i.hb, %i.gv
  br i1 %.not.i5.i, label %bb.ay, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

bb.ay:                                            ; preds = %._crit_edge.i
  %i.he = load i32, ptr %i.hb, align 4, !tbaa !137
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store ptr %i.hf, ptr %i.cy, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

.preheader.i.i:                                   ; preds = %bb.at
  %i.hg = load ptr, ptr %i.cz, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 3 uses
  %i.hh = icmp ult ptr %.promoted.i.i, %i.hg
  br i1 %i.hh, label %.lr.ph.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted7.i.i = load i32, ptr %i.da, align 4
  br label %bb.az

bb.az:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %.lr.ph.i.i
  %i.hi = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.hw, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 3 uses
  %i.hj = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hx, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 5 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !27  ; 3 uses
  %i.hl = sext i8 %i.hk to i32
  %.off.i.i = add i8 %i.hk, -45
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %i.hm = add nsw i32 %i.hl, -48
  %i.hn = icmp ult i32 %i.hm, 10
  %or.cond.i.i = select i1 %switch.i.i, i1 true, i1 %i.hn
  br i1 %or.cond.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  switch i8 %i.hk, label %.thread.i.i [
    i8 47, label %bb.bb
    i8 35, label %.lr.ph.i.i.i.preheader
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !27
  %i.hq = icmp eq i8 %i.hp, 47
  br i1 %i.hq, label %.lr.ph.i.i.i.preheader, label %.thread.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bb, %bb.ba
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.bd
  %i.hr = phi ptr [ %i.ht, %bb.bd ], [ %i.hj, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !27
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 5 uses
  store ptr %i.ht, ptr %i.cy, align 8, !tbaa !168
  switch i8 %i.hs, label %bb.bd [
    i8 10, label %bb.bc
    i8 13, label %bb.bc
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.hu = add i32 %i.hi, 1                        ; 2 uses
  store i32 %i.hu, ptr %i.da, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq ptr %i.ht, %i.hg
  br i1 %exitcond.not.i.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.thread.i.i:                                      ; preds = %bb.bb, %bb.ba
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  store ptr %i.hv, ptr %i.cy, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i: ; preds = %bb.bd, %.thread.i.i, %bb.bc
  %i.hw = phi i32 [ %i.hi, %.thread.i.i ], [ %i.hu, %bb.bc ], [ %i.hi, %bb.bd ]
  %i.hx = phi ptr [ %i.hv, %.thread.i.i ], [ %i.ht, %bb.bc ], [ %i.ht, %bb.bd ] ; 3 uses
  %i.hy = icmp ult ptr %i.hx, %i.hg
  br i1 %i.hy, label %bb.az, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i: ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %bb.az, %.preheader.i.i
  %i.hz = phi ptr [ %.promoted.i.i, %.preheader.i.i ], [ %i.hx, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ], [ %i.hj, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.ia = call i64 @__isoc23_strtoul(ptr noundef %i.hz, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.ic, ptr %i.cy, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

_ZN5scene16CXMeshFileLoader7readIntEv.exit:       ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i, %bb.ay, %._crit_edge.i
  %.0.i = phi i32 [ %i.ib, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i ], [ %i.he, %bb.ay ], [ 0, %._crit_edge.i ]
  %exitcond657.not = icmp eq i64 %indvars.iv654, %i.gi
  br i1 %exitcond657.not, label %bb.be, label %_ZN4core5arrayIjEixEj.exit

bb.be:                                            ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv654
  store i32 %.0.i, ptr %i.id, align 4, !tbaa !137
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next655, %i.eb
  br i1 %exitcond659.not, label %.lr.ph547, label %bb.at, !llvm.loop !285

_ZN4core5arrayIjEixEj.exit303:                    ; preds = %.lr.ph547.split, %_ZN4core5arrayIjEixEj.exit308
  %indvars.iv660 = phi i64 [ 0, %.lr.ph547.split ], [ %indvars.iv.next661, %_ZN4core5arrayIjEixEj.exit308 ] ; 3 uses
  %.1195545 = phi i32 [ %.0194552, %.lr.ph547.split ], [ %i.it, %_ZN4core5arrayIjEixEj.exit308 ] ; 4 uses
  %i.ie = add i32 %.1195545, 1
  %i.if = zext i32 %.1195545 to i64               ; 2 uses
  %i.ig = icmp ugt i64 %i.go, %i.if
  br i1 %i.ig, label %_ZN4core5arrayIjEixEj.exit304, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph547
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bg:                                            ; preds = %_ZN4core5arrayIjEixEj.exit303
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit304:                    ; preds = %_ZN4core5arrayIjEixEj.exit303
  %i.ih = load i32, ptr %.sroa.0.3, align 4, !tbaa !137
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.if
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !137
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 3 uses
  %exitcond663.not = icmp eq i64 %indvars.iv660, %i.gp
  br i1 %exitcond663.not, label %bb.bh, label %_ZN4core5arrayIjEixEj.exit305

bb.bh:                                            ; preds = %_ZN4core5arrayIjEixEj.exit304
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit305:                    ; preds = %_ZN4core5arrayIjEixEj.exit304
  %i.ij = add i32 %.1195545, 2
  %i.ik = zext i32 %i.ie to i64                   ; 2 uses
  %i.il = icmp ugt i64 %i.go, %i.ik
  br i1 %i.il, label %_ZN4core5arrayIjEixEj.exit306, label %bb.bi

bb.bi:                                            ; preds = %_ZN4core5arrayIjEixEj.exit305
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit306:                    ; preds = %_ZN4core5arrayIjEixEj.exit305
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv.next661
  %i.in = load i32, ptr %i.im, align 4, !tbaa !137
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ik
  store i32 %i.in, ptr %i.io, align 4, !tbaa !137
  %i.ip = add nuw nsw i64 %indvars.iv660, 2       ; 2 uses
  %i.iq = icmp ugt i64 %i.gi, %i.ip
  br i1 %i.iq, label %_ZN4core5arrayIjEixEj.exit307, label %bb.bj

bb.bj:                                            ; preds = %_ZN4core5arrayIjEixEj.exit306
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

end_hunk_0
