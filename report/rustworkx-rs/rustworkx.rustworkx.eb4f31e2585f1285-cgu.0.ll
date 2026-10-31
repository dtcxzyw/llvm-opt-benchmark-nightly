Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEB6_:bb.a
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.do, %bb.ac ], [ %i.db, %bb.ab ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i.i, %i.dd
  %i.df = and i64 %i.de, %.sroa.6.0.i
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.di, align 4, !noalias !34134, !noundef !56
  %i.dj = icmp eq i32 %.val2.i.i.i.i, %.sroa.4405.8.extract.trunc
  br i1 %i.dj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.ac, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4405.12.extract.shift407 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4405.12.extract.shift407, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34135, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34135, !noundef !56
  %i.dv = xor i64 %.sroa.4405.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34136 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34137, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4405.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34135, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1159, %._crit_edge.i.i.i ], [ @1160, %._crit_edge.i.i29.i ], [ @1159, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1161) #61
          to label %.noexc110 unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i202, %.val5.i203        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i199, i64 %.val4.i200) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select745 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5325.0 = phi i64 [ %.sroa.5325.1708, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0324.0 = phi i64 [ %.sroa.0324.1709, %bb.ao ], [ %spec.select745, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0324.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5325.0, %i.fk
  %i.fq = add i64 %.sroa.5325.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5325.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5325.0, 0
  %or.cond747 = or i1 %i.fu, %.not65
  br i1 %or.cond747, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703
  %.sroa.0.0.i118710 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.ft, %bb.an ]
  %.sroa.0324.1709 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ 2, %bb.an ]
  %.sroa.5325.1708 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118710, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %5
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not608 = icmp eq i64 %i.r, 0
  br i1 %.not608, label %.loopexit470, label %.lr.ph605

.lr.ph605:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0258.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.fy)
  %i.fz = shl i64 %umin, 3                        ; 2 uses
  %6 = shl i64 %.val5.i203, 3
  %7 = mul i64 %.val5.i203, %i.fy
  %8 = shl i64 %7, 3                              ; 2 uses
  %i.ga = getelementptr i8, ptr %i.cg, i64 %8
  %scevgep.a = getelementptr i8, ptr %i.ga, i64 %i.fz
  %scevgep56 = getelementptr i8, ptr %scevgep.a, i64 8 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.cg, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = getelementptr i8, ptr %i.cg, i64 %8
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = add i64 %i.r, -1
  %i.gg = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.gf)
  %i.gh = add i64 %i.gg, 1                        ; 3 uses
  %min.iters.check54 = icmp ugt i64 %i.gh, 8
  %ident.check.not = icmp eq i64 %.val6.i202, 1
  %or.cond71 = select i1 %min.iters.check54, i1 %ident.check.not, i1 false
  %i.gi = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gk = insertelement <2 x ptr> poison, ptr %scevgep56, i64 0
  %i.gl = shufflevector <2 x ptr> %i.gk, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i203, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound050 = icmp ult ptr %i.cg, %scevgep56
  %invariant.op = or i1 %bound050, %stride.check
  %i.gm = and i64 %i.gh, 3                        ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = select i1 %i.gn, i64 4, i64 %i.gm
  %n.vec56 = sub i64 %i.gh, %i.go                 ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0258.0, null
  %.not607 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader471, label %.preheader474

.preheader474:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader474
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10349.56..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gr = tail call i64 @llvm.umin.i64(i64 %.val3.i199, i64 %i.r) ; 2 uses
  %i.gs = icmp eq i64 %i.gr, -1
  %i.gt = zext i1 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gw = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.gx = shufflevector <2 x i64> %i.gw, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader471:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader471
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ha = icmp eq i64 %.val3.i199, -1
  %i.hb = zext i1 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph543, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0542 = phi i64 [ 0, %.lr.ph543 ], [ %i.he, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.he = add nuw i64 %.sroa.061.0542, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0542, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0542, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit470:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit469.split.us, %.preheader474, %.preheader471, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0258.0, ptr %.sroa.4385.0..sroa_idx, align 8
  %.sroa.5386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5386.0..sroa_idx, align 8
  %.sroa.6387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6387.0..sroa_idx, align 8
  %.sroa.7388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7388.0..sroa_idx, align 8
  %.sroa.8389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8389.0..sroa_idx, align 8
  %.sroa.9390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9390.0..sroa_idx, align 8
  %.sroa.10391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10391.0..sroa_idx, align 8
  %.sroa.11392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11392.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i192, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit470
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hf = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hf, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34138)
  call void @llvm.experimental.noalias.scope.decl(metadata !34139)
  call void @llvm.experimental.noalias.scope.decl(metadata !34140)
  %i.hh = load i64, ptr %i.hc, align 8, !alias.scope !34141, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !alias.scope !34141
  %i.hi = load ptr, ptr %i.i, align 8, !alias.scope !34141, !nonnull !56, !noundef !56
  %i.hj = shl nuw i64 %i.hh, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hi, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34141
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34142
  store ptr %i.i, ptr %i.gy, align 8, !noalias !34142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34143
  store i64 0, ptr %i.d, align 8, !noalias !34144
  store i64 %.val3.i199, ptr %.sroa.5367.0..sroa_idx368, align 8, !noalias !34144
  store i64 %.val5.i203, ptr %.sroa.6370.0..sroa_idx371, align 8, !noalias !34144
  store i64 %.val4.i200, ptr %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 %.val6.i202, ptr %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store ptr %i.cg, ptr %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 1, ptr %i.gz, align 8, !noalias !34143
  %i.hk = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.hb)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %.val3.i199, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34145)
  call void @llvm.experimental.noalias.scope.decl(metadata !34146)
  call void @llvm.experimental.noalias.scope.decl(metadata !34147)
  %i.hl = load i64, ptr %i.hc, align 8, !alias.scope !34148, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !alias.scope !34148
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34148, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34148
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond653.not = icmp eq i64 %i.he, %i.r
  br i1 %exitcond653.not, label %.loopexit470, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body195
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.hp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.hp = add nuw i64 %.sroa.059.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0540, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0540, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34149)
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %i.hr = load i64, ptr %i.gu, align 8, !alias.scope !34152, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !alias.scope !34152
  %i.hs = load ptr, ptr %i.m, align 8, !alias.scope !34152, !nonnull !56, !noundef !56
  %i.ht = shl nuw i64 %i.hr, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hs, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34152
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34153
  store ptr %i.m, ptr %i.gp, align 8, !noalias !34153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34154
  store i64 0, ptr %i.gq, align 8, !noalias !34155
  store <2 x i64> %i.gx, ptr %.sroa.10349.56..sroa_idx350, align 8, !noalias !34155
  store i64 %i.r, ptr %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 %.sroa.25.0, ptr %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store ptr %.sroa.14.0, ptr %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 0, ptr %i.b, align 8, !noalias !34156
  store i64 %.val3.i199, ptr %.sroa.5341.0..sroa_idx342, align 8, !noalias !34156
  store i64 %.val5.i203, ptr %.sroa.6344.0..sroa_idx345, align 8, !noalias !34156
  store i64 %.val4.i200, ptr %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 %.val6.i202, ptr %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store ptr %i.cg, ptr %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34157
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34158
  %i.hu = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.gt)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_(i64 noundef %i.gr, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34159)
  call void @llvm.experimental.noalias.scope.decl(metadata !34160)
  call void @llvm.experimental.noalias.scope.decl(metadata !34161)
  %i.hv = load i64, ptr %i.gu, align 8, !alias.scope !34162, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !alias.scope !34162
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34162, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34162
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond652.not = icmp eq i64 %i.hp, %i.r
  br i1 %exitcond652.not, label %.loopexit470, label %bb.az

bb.be:                                            ; preds = %.lr.ph605, %.loopexit469.split.us
  %.sroa.053.0604 = phi i64 [ 0, %.lr.ph605 ], [ %i.hy, %.loopexit469.split.us ] ; 8 uses
  %9 = mul i64 %6, %.sroa.053.0604                ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.gc, i64 %9
  %scevgep44 = getelementptr i8, ptr %i.cg, i64 %9
  %10 = shl i64 %.sroa.053.0604, 3                ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.ge, i64 %10
  %scevgep46 = getelementptr i8, ptr %i.cg, i64 %10
  %i.hy = add nuw i64 %.sroa.053.0604, 1          ; 2 uses
  %i.hz = mul i64 %.val6.i202, %.sroa.053.0604
  %i.ia = getelementptr [8 x i8], ptr %i.cg, i64 %i.hz ; 2 uses
  %i.ib = mul i64 %.sroa.053.0604, %.val5.i203    ; 5 uses
  %i.ic = mul i64 %.sroa.053.0604, %.sroa.25.0
  %i.id = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ic
  %exitcond666.not = icmp eq i64 %.sroa.053.0604, %.val4.i200
  br i1 %exitcond666.not, label %.split553.us.invoke, label %.split557

.split557:                                        ; preds = %bb.be
  %i.ie = icmp ult i64 %.sroa.053.0604, %.val3.i199
  %.fr = freeze i1 %i.ie
  br i1 %.fr, label %.split557.split.us, label %.split553.us.invoke

.split557.split.us:                               ; preds = %.split557
  br i1 %.not67, label %.split557.split.us.split.us.preheader, label %.split557.split.us.split

.split557.split.us.split.us.preheader:            ; preds = %.split557.split.us
  %i.if = insertelement <2 x ptr> poison, ptr %scevgep45, i64 0
  %i.ig = insertelement <2 x ptr> %i.if, ptr %scevgep43, i64 1
  %i.ih = icmp ult <2 x ptr> %i.gj, %i.ig
  %i.ii = insertelement <2 x ptr> poison, ptr %scevgep46, i64 0
  %i.ij = insertelement <2 x ptr> %i.ii, ptr %scevgep44, i64 1
  %i.ik = icmp ult <2 x ptr> %i.ij, %i.gl
  %i.il = and <2 x i1> %i.ih, %i.ik
  %i.im = bitcast <2 x i1> %i.il to i2
  %i.in = icmp ne i2 %i.im, 0
  %op.rdx72.reass = or i1 %i.in, %invariant.op
  br label %.split557.split.us.split.us

.split557.split.us.split.us:                      ; preds = %.split557.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0556.us.us = phi i64 [ %i.io, %.loopexit.us.us ], [ 0, %.split557.split.us.split.us.preheader ] ; 4 uses
  %i.io = add nuw i64 %.sroa.055.0556.us.us, 1    ; 2 uses
  %i.ip = mul i64 %.sroa.055.0556.us.us, %.val5.i203 ; 5 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ia, i64 %i.ip ; 3 uses
  %invariant.gep545.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.ip ; 5 uses
  %exitcond664.not = icmp eq i64 %.sroa.055.0556.us.us, %.val3.i199
  br i1 %exitcond664.not, label %.split553.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split557.split.us.split.us
  %i.ir = icmp ult i64 %.sroa.055.0556.us.us, %.val3.i199
  %.fr554.us.us = freeze i1 %i.ir
  br i1 %.fr554.us.us, label %.split.split.split.us560.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us560.us.preheader:            ; preds = %.split.us.us
  %or.cond71.not = xor i1 %or.cond71, true
  %brmerge = select i1 %or.cond71.not, i1 true, i1 %op.rdx72.reass
  br i1 %brmerge, label %.split.split.split.us560.us.preheader73, label %vector.ph55

.split.split.split.us560.us.preheader73:          ; preds = %.split.split.split.us560.us.preheader, %pred.store.continue67
  %.sroa.057.0544.us555.us.us.ph = phi i64 [ %n.vec56, %pred.store.continue67 ], [ 0, %.split.split.split.us560.us.preheader ]
  br label %.split.split.split.us560.us

vector.ph55:                                      ; preds = %.split.split.split.us560.us.preheader
  %i.is = load double, ptr %i.iq, align 8, !alias.scope !34163
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.is, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %pred.store.continue67, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next68, %pred.store.continue67 ] ; 6 uses
  %i.it = getelementptr [8 x i8], ptr %i.cg, i64 %index58 ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.it, i64 %i.ib ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %wide.load = load <2 x double>, ptr %i.iu, align 8, !alias.scope !34164
  %wide.load59 = load <2 x double>, ptr %i.iv, align 8, !alias.scope !34164
  %i.iw = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.ix = fadd <2 x double> %broadcast.splat, %wide.load59 ; 3 uses
  %i.iy = getelementptr [8 x i8], ptr %i.it, i64 %i.ip ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  %wide.load60 = load <2 x double>, ptr %i.iy, align 8, !alias.scope !34165
  %wide.load61 = load <2 x double>, ptr %i.iz, align 8, !alias.scope !34165
  %i.ja = fcmp olt <2 x double> %i.iw, %wide.load60 ; 2 uses
  %i.jb = fcmp olt <2 x double> %i.ix, %wide.load61 ; 2 uses
  %i.jc = extractelement <2 x i1> %i.ja, i64 0
  br i1 %i.jc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body57
  %i.jd = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.je = extractelement <2 x double> %i.iw, i64 0
  store double %i.je, ptr %i.jd, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body57
  %i.jf = extractelement <2 x i1> %i.ja, i64 1
  br i1 %i.jf, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue
  %i.jg = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  %i.ji = extractelement <2 x double> %i.iw, i64 1
  store double %i.ji, ptr %i.jh, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue
  %i.jj = extractelement <2 x i1> %i.jb, i64 0
  br i1 %i.jj, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.jk = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %i.jm = extractelement <2 x double> %i.ix, i64 0
  store double %i.jm, ptr %i.jl, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.jn = extractelement <2 x i1> %i.jb, i64 1
  br i1 %i.jn, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.jo = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jp = getelementptr i8, ptr %i.jo, i64 24
  %i.jq = extractelement <2 x double> %i.ix, i64 1
  store double %i.jq, ptr %i.jp, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %index.next68 = add nuw i64 %index58, 4         ; 2 uses
  %i.jr = icmp eq i64 %index.next68, %n.vec56
  br i1 %i.jr, label %.split.split.split.us560.us.preheader73, label %vector.body57, !llvm.loop !34096

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.js = load double, ptr %i.iq, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0544.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jt, %bb.bh ] ; 3 uses
  %i.jt = add nuw i64 %.sroa.057.0544.us.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0544.us.us.us, %.val4.i200
  br i1 %exitcond660.not, label %.split553.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ju = mul i64 %.val6.i202, %.sroa.057.0544.us.us.us
  %i.jv = getelementptr [8 x i8], ptr %i.cg, i64 %i.ju ; 2 uses
  %i.jw = getelementptr [8 x i8], ptr %i.jv, i64 %i.ib
  %i.jx = load double, ptr %i.jw, align 8, !noundef !56
  %i.jy = fadd double %i.js, %i.jx
  %i.jz = getelementptr [8 x i8], ptr %i.jv, i64 %i.ip
  %i.ka = load double, ptr %i.jz, align 8, !noundef !56
  %i.kb = fcmp olt double %i.jy, %i.ka
  br i1 %i.kb, label %.split553.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond661.not = icmp eq i64 %i.jt, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us560.us:                      ; preds = %.split.split.split.us560.us.preheader73, %bb.bk
  %.sroa.057.0544.us555.us.us = phi i64 [ %i.kc, %bb.bk ], [ %.sroa.057.0544.us555.us.us.ph, %.split.split.split.us560.us.preheader73 ] ; 3 uses
  %i.kc = add nuw i64 %.sroa.057.0544.us555.us.us, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %.sroa.057.0544.us555.us.us, %.val4.i200
  br i1 %exitcond662.not, label %.split553.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us560.us
  %i.kd = load double, ptr %i.iq, align 8, !noundef !56
  %i.ke = mul i64 %.val6.i202, %.sroa.057.0544.us555.us.us ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr %i.cg, i64 %i.ke ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.ib
  %i.kh = load double, ptr %i.kg, align 8, !noundef !56
  %i.ki = fadd double %i.kd, %i.kh                ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %i.kf, i64 %i.ip
  %i.kk = load double, ptr %i.kj, align 8, !noundef !56
  %i.kl = fcmp olt double %i.ki, %i.kk
  br i1 %i.kl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep546.us.us.us = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %i.ke
  store double %i.ki, ptr %gep546.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond663.not = icmp eq i64 %i.kc, %i.r
  br i1 %exitcond663.not, label %.loopexit.us.us, label %.split.split.split.us560.us, !llvm.loop !34097

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond665.not = icmp eq i64 %i.io, %i.r
  br i1 %exitcond665.not, label %.loopexit469.split.us, label %.split557.split.us.split.us

.split557.split.us.split:                         ; preds = %.split557.split.us, %.loopexit.us
  %.sroa.055.0556.us = phi i64 [ %i.km, %.loopexit.us ], [ 0, %.split557.split.us ] ; 5 uses
  %i.km = add nuw i64 %.sroa.055.0556.us, 1       ; 2 uses
  %i.kn = mul i64 %.sroa.055.0556.us, %.val5.i203 ; 4 uses
  %i.ko = getelementptr [8 x i8], ptr %i.ia, i64 %i.kn ; 2 uses
  %invariant.gep545.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kn
  %i.kp = mul i64 %.sroa.055.0556.us, %i.r        ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.id, i64 %i.kp
  %invariant.gep547.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kp
  %exitcond658.not = icmp eq i64 %.sroa.055.0556.us, %.val3.i199
  br i1 %exitcond658.not, label %.split553.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split557.split.us.split
  %i.kr = icmp ult i64 %.sroa.055.0556.us, %.val3.i199
  %.fr554.us = freeze i1 %i.kr
  br i1 %.fr554.us, label %.split.split.split.us560, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ks = load double, ptr %i.ko, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0544.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kt, %bb.bn ] ; 3 uses
  %i.kt = add nuw i64 %.sroa.057.0544.us.us, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0544.us.us, %.val4.i200
  br i1 %exitcond654.not, label %.split553.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ku = mul i64 %.val6.i202, %.sroa.057.0544.us.us
  %i.kv = getelementptr [8 x i8], ptr %i.cg, i64 %i.ku ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.kv, i64 %i.ib
  %i.kx = load double, ptr %i.kw, align 8, !noundef !56
  %i.ky = fadd double %i.ks, %i.kx
  %i.kz = getelementptr [8 x i8], ptr %i.kv, i64 %i.kn
  %i.la = load double, ptr %i.kz, align 8, !noundef !56
  %i.lb = fcmp olt double %i.ky, %i.la
  br i1 %i.lb, label %.split553.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond655.not = icmp eq i64 %i.kt, %i.r
  br i1 %exitcond655.not, label %.loopexit.us, label %bb.bl

.split.split.split.us560:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0544.us562 = phi i64 [ %i.lc, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.lc = add nuw i64 %.sroa.057.0544.us562, 1    ; 2 uses
  %exitcond656.not = icmp eq i64 %.sroa.057.0544.us562, %.val4.i200
end_hunk_0
begin_hunk_1_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.do, %bb.ac ], [ %i.db, %bb.ab ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i.i, %i.dd
  %i.df = and i64 %i.de, %.sroa.6.0.i
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.di, align 4, !noalias !34348, !noundef !56
  %i.dj = icmp eq i32 %.val2.i.i.i.i, %.sroa.4403.8.extract.trunc
  br i1 %i.dj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.ac, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4403.12.extract.shift405 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4403.12.extract.shift405, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34349, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34349, !noundef !56
  %i.dv = xor i64 %.sroa.4403.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34350 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34351, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4403.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34349, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1159, %._crit_edge.i.i.i ], [ @1160, %._crit_edge.i.i29.i ], [ @1159, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1161) #61
          to label %.noexc110 unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i200, %.val5.i201        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i197, i64 %.val4.i198) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select743 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5323.0 = phi i64 [ %.sroa.5323.1706, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0322.0 = phi i64 [ %.sroa.0322.1707, %bb.ao ], [ %spec.select743, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0322.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5323.0, %i.fk
  %i.fq = add i64 %.sroa.5323.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5323.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5323.0, 0
  %or.cond745 = or i1 %i.fu, %.not65
  br i1 %or.cond745, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701
  %.sroa.0.0.i118708 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.ft, %bb.an ]
  %.sroa.0322.1707 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ 2, %bb.an ]
  %.sroa.5323.1706 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118708, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %6
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not606 = icmp eq i64 %i.r, 0
  br i1 %.not606, label %.loopexit468, label %.lr.ph603

.lr.ph603:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0256.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.fy)
  %i.fz = shl i64 %umin, 3                        ; 2 uses
  %7 = shl i64 %.val5.i201, 3
  %8 = mul i64 %.val5.i201, %i.fy
  %9 = shl i64 %8, 3                              ; 2 uses
  %i.ga = getelementptr i8, ptr %i.cg, i64 %9
  %scevgep.a = getelementptr i8, ptr %i.ga, i64 %i.fz
  %scevgep801 = getelementptr i8, ptr %scevgep.a, i64 8 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.cg, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = getelementptr i8, ptr %i.cg, i64 %9
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = add i64 %i.r, -1
  %i.gg = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.gf)
  %i.gh = add i64 %i.gg, 1                        ; 3 uses
  %min.iters.check799 = icmp ugt i64 %i.gh, 8
  %ident.check.not = icmp eq i64 %.val6.i200, 1
  %or.cond816 = select i1 %min.iters.check799, i1 %ident.check.not, i1 false
  %i.gi = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gk = insertelement <2 x ptr> poison, ptr %scevgep801, i64 0
  %i.gl = shufflevector <2 x ptr> %i.gk, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i201, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound0795 = icmp ult ptr %i.cg, %scevgep801
  %invariant.op = or i1 %bound0795, %stride.check
  %i.gm = and i64 %i.gh, 3                        ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = select i1 %i.gn, i64 4, i64 %i.gm
  %n.vec801 = sub i64 %i.gh, %i.go                ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0256.0, null
  %.not605 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader469, label %.preheader472

.preheader472:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph539

.lr.ph539:                                        ; preds = %.preheader472
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10347.56..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6342.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gr = tail call i64 @llvm.umin.i64(i64 %.val3.i197, i64 %i.r) ; 2 uses
  %i.gs = icmp eq i64 %i.gr, -1
  %i.gt = zext i1 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gw = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.gx = shufflevector <2 x i64> %i.gw, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader469:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader469
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6368.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ha = icmp eq i64 %.val3.i197, -1
  %i.hb = zext i1 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.he, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.he = add nuw i64 %.sroa.061.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0540, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0540, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit468:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit467.split.us, %.preheader472, %.preheader469, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0256.0, ptr %.sroa.4383.0..sroa_idx, align 8
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5384.0..sroa_idx, align 8
  %.sroa.6385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6385.0..sroa_idx, align 8
  %.sroa.7386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7386.0..sroa_idx, align 8
  %.sroa.8387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8387.0..sroa_idx, align 8
  %.sroa.9388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9388.0..sroa_idx, align 8
  %.sroa.10389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10389.0..sroa_idx, align 8
  %.sroa.11390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11390.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i190, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit468
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hf = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hf, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34352)
  call void @llvm.experimental.noalias.scope.decl(metadata !34353)
  call void @llvm.experimental.noalias.scope.decl(metadata !34354)
  %i.hh = load i64, ptr %i.hc, align 8, !alias.scope !34355, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !alias.scope !34355
  %i.hi = load ptr, ptr %i.i, align 8, !alias.scope !34355, !nonnull !56, !noundef !56
  %i.hj = shl nuw i64 %i.hh, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hi, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34355
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34356
  store ptr %i.i, ptr %i.gy, align 8, !noalias !34356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34357
  store i64 0, ptr %i.d, align 8, !noalias !34358
  store i64 %.val3.i197, ptr %.sroa.5365.0..sroa_idx366, align 8, !noalias !34358
  store i64 %.val5.i201, ptr %.sroa.6368.0..sroa_idx369, align 8, !noalias !34358
  store i64 %.val4.i198, ptr %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 %.val6.i200, ptr %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store ptr %i.cg, ptr %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 1, ptr %i.gz, align 8, !noalias !34357
  %i.hk = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.hb)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %.val3.i197, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34359)
  call void @llvm.experimental.noalias.scope.decl(metadata !34360)
  call void @llvm.experimental.noalias.scope.decl(metadata !34361)
  %i.hl = load i64, ptr %i.hc, align 8, !alias.scope !34362, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !alias.scope !34362
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34362, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34362
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond651.not = icmp eq i64 %i.he, %i.r
  br i1 %exitcond651.not, label %.loopexit468, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body193
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph539, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0538 = phi i64 [ 0, %.lr.ph539 ], [ %i.hp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.hp = add nuw i64 %.sroa.059.0538, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0538, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0538, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34363)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  %i.hr = load i64, ptr %i.gu, align 8, !alias.scope !34366, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !alias.scope !34366
  %i.hs = load ptr, ptr %i.m, align 8, !alias.scope !34366, !nonnull !56, !noundef !56
  %i.ht = shl nuw i64 %i.hr, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hs, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34366
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34367
  store ptr %i.m, ptr %i.gp, align 8, !noalias !34367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34368
  store i64 0, ptr %i.gq, align 8, !noalias !34369
  store <2 x i64> %i.gx, ptr %.sroa.10347.56..sroa_idx348, align 8, !noalias !34369
  store i64 %i.r, ptr %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 %.sroa.25.0, ptr %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store ptr %.sroa.14.0, ptr %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 0, ptr %i.b, align 8, !noalias !34370
  store i64 %.val3.i197, ptr %.sroa.5339.0..sroa_idx340, align 8, !noalias !34370
  store i64 %.val5.i201, ptr %.sroa.6342.0..sroa_idx343, align 8, !noalias !34370
  store i64 %.val4.i198, ptr %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 %.val6.i200, ptr %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store ptr %i.cg, ptr %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34371
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34372
  %i.hu = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.gt)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4H_(i64 noundef %i.gr, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34373)
  call void @llvm.experimental.noalias.scope.decl(metadata !34374)
  call void @llvm.experimental.noalias.scope.decl(metadata !34375)
  %i.hv = load i64, ptr %i.gu, align 8, !alias.scope !34376, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !alias.scope !34376
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34376, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34376
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond650.not = icmp eq i64 %i.hp, %i.r
  br i1 %exitcond650.not, label %.loopexit468, label %bb.az

bb.be:                                            ; preds = %.lr.ph603, %.loopexit467.split.us
  %.sroa.053.0602 = phi i64 [ 0, %.lr.ph603 ], [ %i.hy, %.loopexit467.split.us ] ; 8 uses
  %10 = mul i64 %7, %.sroa.053.0602               ; 2 uses
  %scevgep788 = getelementptr i8, ptr %i.gc, i64 %10
  %scevgep789 = getelementptr i8, ptr %i.cg, i64 %10
  %11 = shl i64 %.sroa.053.0602, 3                ; 2 uses
  %scevgep790 = getelementptr i8, ptr %i.ge, i64 %11
  %scevgep791 = getelementptr i8, ptr %i.cg, i64 %11
  %i.hy = add nuw i64 %.sroa.053.0602, 1          ; 2 uses
  %i.hz = mul i64 %.val6.i200, %.sroa.053.0602
  %i.ia = getelementptr [8 x i8], ptr %i.cg, i64 %i.hz ; 2 uses
  %i.ib = mul i64 %.sroa.053.0602, %.val5.i201    ; 5 uses
  %i.ic = mul i64 %.sroa.053.0602, %.sroa.25.0
  %i.id = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ic
  %exitcond664.not = icmp eq i64 %.sroa.053.0602, %.val4.i198
  br i1 %exitcond664.not, label %.split551.us.invoke, label %.split555

.split555:                                        ; preds = %bb.be
  %i.ie = icmp ult i64 %.sroa.053.0602, %.val3.i197
  %.fr = freeze i1 %i.ie
  br i1 %.fr, label %.split555.split.us, label %.split551.us.invoke

.split555.split.us:                               ; preds = %.split555
  br i1 %.not67, label %.split555.split.us.split.us.preheader, label %.split555.split.us.split

.split555.split.us.split.us.preheader:            ; preds = %.split555.split.us
  %i.if = insertelement <2 x ptr> poison, ptr %scevgep790, i64 0
  %i.ig = insertelement <2 x ptr> %i.if, ptr %scevgep788, i64 1
  %i.ih = icmp ult <2 x ptr> %i.gj, %i.ig
  %i.ii = insertelement <2 x ptr> poison, ptr %scevgep791, i64 0
  %i.ij = insertelement <2 x ptr> %i.ii, ptr %scevgep789, i64 1
  %i.ik = icmp ult <2 x ptr> %i.ij, %i.gl
  %i.il = and <2 x i1> %i.ih, %i.ik
  %i.im = bitcast <2 x i1> %i.il to i2
  %i.in = icmp ne i2 %i.im, 0
  %op.rdx817.reass = or i1 %i.in, %invariant.op
  br label %.split555.split.us.split.us

.split555.split.us.split.us:                      ; preds = %.split555.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0554.us.us = phi i64 [ %i.io, %.loopexit.us.us ], [ 0, %.split555.split.us.split.us.preheader ] ; 4 uses
  %i.io = add nuw i64 %.sroa.055.0554.us.us, 1    ; 2 uses
  %i.ip = mul i64 %.sroa.055.0554.us.us, %.val5.i201 ; 5 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ia, i64 %i.ip ; 3 uses
  %invariant.gep543.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.ip ; 5 uses
  %exitcond662.not = icmp eq i64 %.sroa.055.0554.us.us, %.val3.i197
  br i1 %exitcond662.not, label %.split551.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split555.split.us.split.us
  %i.ir = icmp ult i64 %.sroa.055.0554.us.us, %.val3.i197
  %.fr552.us.us = freeze i1 %i.ir
  br i1 %.fr552.us.us, label %.split.split.split.us558.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us558.us.preheader:            ; preds = %.split.us.us
  %or.cond816.not = xor i1 %or.cond816, true
  %brmerge = select i1 %or.cond816.not, i1 true, i1 %op.rdx817.reass
  br i1 %brmerge, label %.split.split.split.us558.us.preheader818, label %vector.ph800

.split.split.split.us558.us.preheader818:         ; preds = %.split.split.split.us558.us.preheader, %pred.store.continue812
  %.sroa.057.0542.us553.us.us.ph = phi i64 [ %n.vec801, %pred.store.continue812 ], [ 0, %.split.split.split.us558.us.preheader ]
  br label %.split.split.split.us558.us

vector.ph800:                                     ; preds = %.split.split.split.us558.us.preheader
  %i.is = load double, ptr %i.iq, align 8, !alias.scope !34377
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.is, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body802

vector.body802:                                   ; preds = %pred.store.continue812, %vector.ph800
  %index803 = phi i64 [ 0, %vector.ph800 ], [ %index.next813, %pred.store.continue812 ] ; 6 uses
  %i.it = getelementptr [8 x i8], ptr %i.cg, i64 %index803 ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.it, i64 %i.ib ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %wide.load = load <2 x double>, ptr %i.iu, align 8, !alias.scope !34378
  %wide.load804 = load <2 x double>, ptr %i.iv, align 8, !alias.scope !34378
  %i.iw = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.ix = fadd <2 x double> %broadcast.splat, %wide.load804 ; 3 uses
  %i.iy = getelementptr [8 x i8], ptr %i.it, i64 %i.ip ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  %wide.load805 = load <2 x double>, ptr %i.iy, align 8, !alias.scope !34379
  %wide.load806 = load <2 x double>, ptr %i.iz, align 8, !alias.scope !34379
  %i.ja = fcmp olt <2 x double> %i.iw, %wide.load805 ; 2 uses
  %i.jb = fcmp olt <2 x double> %i.ix, %wide.load806 ; 2 uses
  %i.jc = extractelement <2 x i1> %i.ja, i64 0
  br i1 %i.jc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body802
  %i.jd = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.je = extractelement <2 x double> %i.iw, i64 0
  store double %i.je, ptr %i.jd, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body802
  %i.jf = extractelement <2 x i1> %i.ja, i64 1
  br i1 %i.jf, label %pred.store.if807, label %pred.store.continue808

pred.store.if807:                                 ; preds = %pred.store.continue
  %i.jg = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  %i.ji = extractelement <2 x double> %i.iw, i64 1
  store double %i.ji, ptr %i.jh, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue808

pred.store.continue808:                           ; preds = %pred.store.if807, %pred.store.continue
  %i.jj = extractelement <2 x i1> %i.jb, i64 0
  br i1 %i.jj, label %pred.store.if809, label %pred.store.continue810

pred.store.if809:                                 ; preds = %pred.store.continue808
  %i.jk = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %i.jm = extractelement <2 x double> %i.ix, i64 0
  store double %i.jm, ptr %i.jl, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue810

pred.store.continue810:                           ; preds = %pred.store.if809, %pred.store.continue808
  %i.jn = extractelement <2 x i1> %i.jb, i64 1
  br i1 %i.jn, label %pred.store.if811, label %pred.store.continue812

pred.store.if811:                                 ; preds = %pred.store.continue810
  %i.jo = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jp = getelementptr i8, ptr %i.jo, i64 24
  %i.jq = extractelement <2 x double> %i.ix, i64 1
  store double %i.jq, ptr %i.jp, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue812

pred.store.continue812:                           ; preds = %pred.store.if811, %pred.store.continue810
  %index.next813 = add nuw i64 %index803, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next813, %n.vec801
  br i1 %i.jr, label %.split.split.split.us558.us.preheader818, label %vector.body802, !llvm.loop !34310

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.js = load double, ptr %i.iq, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0542.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jt, %bb.bh ] ; 3 uses
  %i.jt = add nuw i64 %.sroa.057.0542.us.us.us, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %.sroa.057.0542.us.us.us, %.val4.i198
  br i1 %exitcond658.not, label %.split551.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ju = mul i64 %.val6.i200, %.sroa.057.0542.us.us.us
  %i.jv = getelementptr [8 x i8], ptr %i.cg, i64 %i.ju ; 2 uses
  %i.jw = getelementptr [8 x i8], ptr %i.jv, i64 %i.ib
  %i.jx = load double, ptr %i.jw, align 8, !noundef !56
  %i.jy = fadd double %i.js, %i.jx
  %i.jz = getelementptr [8 x i8], ptr %i.jv, i64 %i.ip
  %i.ka = load double, ptr %i.jz, align 8, !noundef !56
  %i.kb = fcmp olt double %i.jy, %i.ka
  br i1 %i.kb, label %.split551.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond659.not = icmp eq i64 %i.jt, %i.r
  br i1 %exitcond659.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us558.us:                      ; preds = %.split.split.split.us558.us.preheader818, %bb.bk
  %.sroa.057.0542.us553.us.us = phi i64 [ %i.kc, %bb.bk ], [ %.sroa.057.0542.us553.us.us.ph, %.split.split.split.us558.us.preheader818 ] ; 3 uses
  %i.kc = add nuw i64 %.sroa.057.0542.us553.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0542.us553.us.us, %.val4.i198
  br i1 %exitcond660.not, label %.split551.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us558.us
  %i.kd = load double, ptr %i.iq, align 8, !noundef !56
  %i.ke = mul i64 %.val6.i200, %.sroa.057.0542.us553.us.us ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr %i.cg, i64 %i.ke ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.ib
  %i.kh = load double, ptr %i.kg, align 8, !noundef !56
  %i.ki = fadd double %i.kd, %i.kh                ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %i.kf, i64 %i.ip
  %i.kk = load double, ptr %i.kj, align 8, !noundef !56
  %i.kl = fcmp olt double %i.ki, %i.kk
  br i1 %i.kl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep544.us.us.us = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %i.ke
  store double %i.ki, ptr %gep544.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond661.not = icmp eq i64 %i.kc, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %.split.split.split.us558.us, !llvm.loop !34311

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond663.not = icmp eq i64 %i.io, %i.r
  br i1 %exitcond663.not, label %.loopexit467.split.us, label %.split555.split.us.split.us

.split555.split.us.split:                         ; preds = %.split555.split.us, %.loopexit.us
  %.sroa.055.0554.us = phi i64 [ %i.km, %.loopexit.us ], [ 0, %.split555.split.us ] ; 5 uses
  %i.km = add nuw i64 %.sroa.055.0554.us, 1       ; 2 uses
  %i.kn = mul i64 %.sroa.055.0554.us, %.val5.i201 ; 4 uses
  %i.ko = getelementptr [8 x i8], ptr %i.ia, i64 %i.kn ; 2 uses
  %invariant.gep543.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kn
  %i.kp = mul i64 %.sroa.055.0554.us, %i.r        ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.id, i64 %i.kp
  %invariant.gep545.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kp
  %exitcond656.not = icmp eq i64 %.sroa.055.0554.us, %.val3.i197
  br i1 %exitcond656.not, label %.split551.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split555.split.us.split
  %i.kr = icmp ult i64 %.sroa.055.0554.us, %.val3.i197
  %.fr552.us = freeze i1 %i.kr
  br i1 %.fr552.us, label %.split.split.split.us558, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ks = load double, ptr %i.ko, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0542.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kt, %bb.bn ] ; 3 uses
  %i.kt = add nuw i64 %.sroa.057.0542.us.us, 1    ; 2 uses
  %exitcond652.not = icmp eq i64 %.sroa.057.0542.us.us, %.val4.i198
  br i1 %exitcond652.not, label %.split551.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ku = mul i64 %.val6.i200, %.sroa.057.0542.us.us
  %i.kv = getelementptr [8 x i8], ptr %i.cg, i64 %i.ku ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.kv, i64 %i.ib
  %i.kx = load double, ptr %i.kw, align 8, !noundef !56
  %i.ky = fadd double %i.ks, %i.kx
  %i.kz = getelementptr [8 x i8], ptr %i.kv, i64 %i.kn
  %i.la = load double, ptr %i.kz, align 8, !noundef !56
  %i.lb = fcmp olt double %i.ky, %i.la
  br i1 %i.lb, label %.split551.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond653.not = icmp eq i64 %i.kt, %i.r
  br i1 %exitcond653.not, label %.loopexit.us, label %bb.bl

.split.split.split.us558:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0542.us560 = phi i64 [ %i.lc, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.lc = add nuw i64 %.sroa.057.0542.us560, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0542.us560, %.val4.i198
end_hunk_1
begin_hunk_2_@_RINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.0328.0)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294 unwind label %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dq
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0328.0) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294

bb.dt:                                            ; preds = %.thread409, %bb.dc
  %i.ob = phi { ptr, i32 } [ %i.ly, %.thread409 ], [ %i.lz, %bb.dc ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr %.sroa.0328.0) #63
          to label %.loopexit.split-lp424 unwind label %bb.af

bb.du:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !34877)
  call void @llvm.experimental.noalias.scope.decl(metadata !34878)
  call void @llvm.experimental.noalias.scope.decl(metadata !34879)
  %.val1.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !34880, !noundef !56 ; 4 uses
  %i.oc = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.oc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295: ; preds = %bb.du
  %.val.i.i.i296 = load ptr, ptr %i.fs, align 8, !alias.scope !34880, !nonnull !56, !noundef !56
  %i.od = shl i64 %.val1.i.i.i, 3
  %i.oe = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.oe)
  %i.of = and i64 %i.od, -16                      ; 2 uses
  %i.og = add i64 %i.of, 16                       ; 2 uses
  %i.oh = add nsw i64 %.val1.i.i.i, 17
  %i.oi = add i64 %i.oh, %i.og                    ; 3 uses
  %i.oj = icmp uge i64 %i.oi, %i.og
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp ult i64 %i.oi, 9223372036854775793
  call void @llvm.assume(i1 %i.ok)
  %i.ol = sub nuw nsw i64 -16, %i.of
  %i.om = getelementptr inbounds i8, ptr %.val.i.i.i296, i64 %i.ol
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef %i.oi, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !34880
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295, %bb.du
  %.val2.i.i.i297 = load i64, ptr %i.ab, align 8, !alias.scope !34880 ; 2 uses
  %i.on = icmp eq i64 %.val2.i.i.i297, 0
  br i1 %i.on, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val3.i.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !34880, !nonnull !56, !noundef !56
  %i.oo = shl nuw i64 %.val2.i.i.i297, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.oo, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34880
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ad

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ae, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.op = icmp eq ptr %4, null
  br i1 %i.op, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit
  %i.oq = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i298 = load i64, ptr %i.oq, align 8, !noundef !56
  %i.or = icmp sgt i64 %.val.i.i.i.i.i298, 0
  br i1 %i.or, label %bb.dx, label %bb.dw, !prof !109

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300 unwind label %bb.bb

bb.dx:                                            ; preds = %bb.dv
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300: ; preds = %bb.dx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, %bb.dw
  %i.os = icmp eq ptr %3, null
  br i1 %i.os, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300
  %i.ot = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i301 = load i64, ptr %i.ot, align 8, !noundef !56
  %i.ou = icmp sgt i64 %.val.i.i.i.i.i301, 0
  br i1 %i.ou, label %bb.ea, label %bb.dz, !prof !109

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303 unwind label %bb.bh

bb.ea:                                            ; preds = %bb.dy
  call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303: ; preds = %bb.ea, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300, %bb.dz
  %i.ov = load i64, ptr %1, align 8, !range !57, !alias.scope !34881, !noundef !56
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305, label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ox)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = trunc nuw i8 %.sroa.077.4 to i1
  br i1 %i.oz, label %bb.ef, label %bb.ee

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303, %bb.eb
  %i.pa = trunc nuw i8 %.sroa.077.4 to i1
  br i1 %i.pa, label %bb.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit252

bb.ed:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pb)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit252

bb.ee:                                            ; preds = %bb.ej, %bb.eh, %bb.ef, %bb.ec
  %.pn205 = phi { ptr, i32 } [ %i.oy, %bb.ef ], [ %i.oy, %bb.ec ], [ %.pn203, %bb.ej ], [ %.pn203, %bb.eh ]
  resume { ptr, i32 } %.pn205

bb.ef:                                            ; preds = %bb.ec
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pc) #63
          to label %bb.ee unwind label %bb.af

bb.eg:                                            ; preds = %bb.ap, %.loopexit.split-lp424
  %.pn195.ph = phi { ptr, i32 } [ %.pn193, %.loopexit.split-lp424 ], [ %i.gb, %bb.ap ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ab) #63
  br label %.body

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bf, %bb.bg
  br i1 %.sroa.082.8, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.ei, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit
  %i.pd = trunc nuw i8 %.sroa.077.7 to i1
  br i1 %i.pd, label %bb.ej, label %bb.ee

bb.ei:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #63
          to label %bb.eh unwind label %bb.af

bb.ej:                                            ; preds = %bb.eh
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pe) #63
          to label %bb.ee unwind label %bb.af
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate10ptr_rotateNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 noundef range(i64 -2305843009213693951, 2305843009213693952) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -2305843009213693951, 2305843009213693952) %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %0)
  %i.d = icmp ult i64 %., 65
  br i1 %i.d, label %bb.d, label %bb.c

_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i, %bb.r, %bb.m, %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %2, %0
  %i.f = icmp ult i64 %i.e, 24
  br i1 %i.f, label %bb.i, label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %2, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = sub nsw i64 0, %0
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i64 %0, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 4 %i.i, i64 %i.k, i1 false)
  %i.l = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %1, i64 %i.l, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 8 %i.a, i64 %i.k, i1 false)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %2, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 4 %1, i64 %i.m, i1 false)
  %i.n = shl nuw nsw i64 %0, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.i, i64 %i.n, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 8 %i.a, i64 %i.m, i1 false)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

.preheader:                                       ; preds = %bb.c, %.loopexit.i
  %.sroa.016.0.i = phi i64 [ %.sroa.016.2.i, %.loopexit.i ], [ %2, %bb.c ] ; 22 uses
  %.sroa.010.0.i = phi ptr [ %.sroa.010.2.i, %.loopexit.i ], [ %1, %bb.c ] ; 11 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %.loopexit.i ], [ %0, %bb.c ] ; 24 uses
  %.not.i2 = icmp ult i64 %.sroa.0.0.i, %.sroa.016.0.i
  br i1 %.not.i2, label %.preheader.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %.preheader
  %i.o = sub nsw i64 0, %.sroa.016.0.i            ; 3 uses
  %.not37.i = icmp eq i64 %.sroa.016.0.i, 0
  %i.p = shl nuw nsw i64 %.sroa.016.0.i, 2
  %i.q = lshr i64 %.sroa.016.0.i, 1               ; 6 uses
  %i.r = and i64 %.sroa.016.0.i, 1
  %.not4.i45.i = icmp eq i64 %i.r, 0              ; 2 uses
  %i.s = and i64 %i.p, 9223372036854775800        ; 5 uses
  br i1 %.not37.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i, label %.preheader57.split.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i: ; preds = %.preheader57.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i

.preheader57.split.i:                             ; preds = %.preheader57.i
  %.not.i38.i = icmp eq i64 %i.q, 0
  br i1 %.not.i38.i, label %.preheader57.split.split.us.i, label %.preheader.i39.preheader.i.preheader

.preheader.i39.preheader.i.preheader:             ; preds = %.preheader57.split.i
  %i.t = shl i64 %i.q, 3                          ; 2 uses
  %3 = mul i64 %.sroa.016.0.i, -4
  %i.u = shl i64 %.sroa.016.0.i, 2
  %i.v = sub i64 %i.t, %i.u
  %min.iters.check105 = icmp ult i64 %.sroa.016.0.i, 8
  %i.w = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.v
  %i.x = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.t
  %n.vec107 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %cmp.n116 = icmp eq i64 %i.q, %n.vec107
  %i.y = and i64 %.sroa.016.0.i, 2
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br label %.preheader.i39.preheader.i

.preheader57.split.split.us.i:                    ; preds = %.preheader57.split.i
  br i1 %.not4.i45.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i: ; preds = %.preheader57.split.split.us.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 %i.s
  %.sroa.02.0.copyload.i.i6.i47.us.pre.i = load i32, ptr %.phi.trans.insert.i, align 1, !alias.scope !34910
  br label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i: ; preds = %.preheader57.split.split.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i
  %.sroa.010.3.us63.us.i = phi ptr [ %i.z, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.010.0.i, %.preheader57.split.split.us.i ]
  %.sroa.0.2.us64.us.i = phi i64 [ %i.aa, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.0.0.i, %.preheader57.split.split.us.i ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.3.us63.us.i, i64 %i.o ; 2 uses
  %i.aa = sub nuw nsw i64 %.sroa.0.2.us64.us.i, %.sroa.016.0.i ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.016.0.i
  br i1 %i.ab, label %.loopexit.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i: ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i
  %.sroa.010.3.us63.i = phi ptr [ %i.ac, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.010.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i ] ; 2 uses
  %.sroa.0.2.us64.i = phi i64 [ %i.af, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.0.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.us63.i, i64 %i.o ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us63.i, i64 %i.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34910)
  %.sroa.0.0.copyload.i.i5.i46.us.i = load i32, ptr %i.ad, align 1, !alias.scope !34911
  store i32 %.sroa.02.0.copyload.i.i6.i47.us.pre.i, ptr %i.ad, align 1, !alias.scope !34911
  store i32 %.sroa.0.0.copyload.i.i5.i46.us.i, ptr %i.ae, align 1, !alias.scope !34910
  %i.af = sub i64 %.sroa.0.2.us64.i, %.sroa.016.0.i ; 3 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.016.0.i
  br i1 %i.ag, label %.loopexit.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i

.preheader.i:                                     ; preds = %.preheader
  %.not36.i = icmp eq i64 %.sroa.0.0.i, 0
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i, 2
  %i.ai = sub nsw i64 0, %.sroa.0.0.i             ; 2 uses
  %i.aj = lshr i64 %.sroa.0.0.i, 1                ; 6 uses
  %i.ak = and i64 %.sroa.0.0.i, 1
  %.not4.i.i = icmp eq i64 %i.ak, 0               ; 2 uses
  %i.al = and i64 %i.ah, 9223372036854775800      ; 4 uses
  br i1 %.not36.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %.preheader.split.i.preheader.split.us, label %.preheader.split.i.preheader73

.preheader.split.i.preheader73:                   ; preds = %.preheader.split.i.preheader
  %i.am = shl i64 %i.aj, 3                        ; 2 uses
  %i.an = shl i64 %.sroa.0.0.i, 2                 ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %min.iters.check = icmp ult i64 %.sroa.0.0.i, 8
  %i.ap = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.am
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  %i.ar = and i64 %.sroa.0.0.i, 2
  %lcmp.mod138.not = icmp eq i64 %i.ar, 0
  br label %.preheader.split.i

.preheader.split.i.preheader.split.us:            ; preds = %.preheader.split.i.preheader
  br i1 %.not4.i.i, label %.preheader.split.i.us.us, label %.preheader.split.i.us

.preheader.split.i.us.us:                         ; preds = %.preheader.split.i.preheader.split.us, %.preheader.split.i.us.us
  %.sroa.016.1.i.us.us = phi i64 [ %i.at, %.preheader.split.i.us.us ], [ %.sroa.016.0.i, %.preheader.split.i.preheader.split.us ]
  %.sroa.010.1.i.us.us = phi ptr [ %i.as, %.preheader.split.i.us.us ], [ %.sroa.010.0.i, %.preheader.split.i.preheader.split.us ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us.us, i64 %.sroa.0.0.i ; 2 uses
  %i.at = sub nuw nsw i64 %.sroa.016.1.i.us.us, %.sroa.0.0.i ; 3 uses
  %i.au = icmp ult i64 %i.at, %.sroa.0.0.i
  br i1 %i.au, label %.loopexit.i, label %.preheader.split.i.us.us

.preheader.split.i.us:                            ; preds = %.preheader.split.i.preheader.split.us, %.preheader.split.i.us
  %.sroa.016.1.i.us = phi i64 [ %i.az, %.preheader.split.i.us ], [ %.sroa.016.0.i, %.preheader.split.i.preheader.split.us ]
  %.sroa.010.1.i.us = phi ptr [ %i.ay, %.preheader.split.i.us ], [ %.sroa.010.0.i, %.preheader.split.i.preheader.split.us ] ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i.us, i64 %i.ai
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.us, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34913)
  %.sroa.0.0.copyload.i.i5.i.i.us = load i32, ptr %i.aw, align 1, !alias.scope !34912
  %.sroa.02.0.copyload.i.i6.i.i.us = load i32, ptr %i.ax, align 1, !alias.scope !34913
  store i32 %.sroa.02.0.copyload.i.i6.i.i.us, ptr %i.aw, align 1, !alias.scope !34912
  store i32 %.sroa.0.0.copyload.i.i5.i.i.us, ptr %i.ax, align 1, !alias.scope !34913
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us, i64 %.sroa.0.0.i ; 2 uses
  %i.az = sub i64 %.sroa.016.1.i.us, %.sroa.0.0.i ; 3 uses
  %i.ba = icmp ult i64 %i.az, %.sroa.0.0.i
  br i1 %i.ba, label %.loopexit.i, label %.preheader.split.i.us

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i: ; preds = %.preheader.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader73, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %indvar = phi i64 [ 0, %.preheader.split.i.preheader73 ], [ %indvar.next, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ] ; 2 uses
  %.sroa.016.1.i = phi i64 [ %.sroa.016.0.i, %.preheader.split.i.preheader73 ], [ %i.bv, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %.preheader.split.i.preheader73 ], [ %i.bu, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ] ; 8 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i, i64 %i.ai ; 6 uses
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.split.i
  %i.bc = mul i64 %indvar, %i.an                  ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.ap, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.bc
  %bound0 = icmp ult ptr %i.bb, %scevgep
  %bound1 = icmp ult ptr %.sroa.010.1.i, %scevgep92
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34915)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bd, align 1, !alias.scope !34916, !noalias !34917
  %wide.load93 = load <2 x i64>, ptr %i.bf, align 1, !alias.scope !34916, !noalias !34917
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.be, align 1, !alias.scope !34918
  %wide.load95 = load <2 x i64>, ptr %i.bg, align 1, !alias.scope !34918
  store <2 x i64> %wide.load94, ptr %i.bd, align 1, !alias.scope !34916, !noalias !34917
  store <2 x i64> %wide.load95, ptr %i.bf, align 1, !alias.scope !34916, !noalias !34917
  store <2 x i64> %wide.load, ptr %i.be, align 1, !alias.scope !34918
  store <2 x i64> %wide.load93, ptr %i.bg, align 1, !alias.scope !34918
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !34894

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %.preheader.split.i, %middle.block
  %.sroa.01.03.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.split.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg139 = or disjoint i64 %.sroa.01.03.i.i.i.ph, 1
  br i1 %lcmp.mod138.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.bi = or disjoint i64 %.sroa.01.03.i.i.i.ph, 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.01.03.i.i.i.ph ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.01.03.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34915)
  %.sroa.0.0.copyload.i.i.i.i.prol = load i64, ptr %i.bj, align 1, !alias.scope !34914
  %.sroa.02.0.copyload.i.i.i.i.prol = load i64, ptr %i.bk, align 1, !alias.scope !34915
  store i64 %.sroa.02.0.copyload.i.i.i.i.prol, ptr %i.bj, align 1, !alias.scope !34914
  store i64 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %i.bk, align 1, !alias.scope !34915
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.01.03.i.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i.ph, %.preheader.i.i.preheader ], [ %i.bi, %.preheader.i.i.prol ]
  %i.bl = icmp eq i64 %i.aj, %.neg139
  br i1 %i.bl, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.01.03.i.i.i = phi i64 [ %i.bp, %.preheader.i.i ], [ %.sroa.01.03.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 4 uses
  %i.bm = add nuw nsw i64 %.sroa.01.03.i.i.i, 1   ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.01.03.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.01.03.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34915)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bn, align 1, !alias.scope !34914
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.bo, align 1, !alias.scope !34915
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.bn, align 1, !alias.scope !34914
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.bo, align 1, !alias.scope !34915
  %i.bp = add nuw nsw i64 %.sroa.01.03.i.i.i, 2   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bm ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %i.bm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34920)
  %.sroa.0.0.copyload.i.i.i.i.1 = load i64, ptr %i.bq, align 1, !alias.scope !34919
  %.sroa.02.0.copyload.i.i.i.i.1 = load i64, ptr %i.br, align 1, !alias.scope !34920
  store i64 %.sroa.02.0.copyload.i.i.i.i.1, ptr %i.bq, align 1, !alias.scope !34919
  store i64 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.br, align 1, !alias.scope !34920
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond.not.i.i.i.1, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i, !llvm.loop !34898

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit: ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  br i1 %.not4.i.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.al ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34913)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %i.bs, align 1, !alias.scope !34912
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.bt, align 1, !alias.scope !34913
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %i.bs, align 1, !alias.scope !34912
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.bt, align 1, !alias.scope !34913
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.g, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i, i64 %.sroa.0.0.i ; 2 uses
  %i.bv = sub i64 %.sroa.016.1.i, %.sroa.0.0.i    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %.sroa.0.0.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bw, label %.loopexit.i, label %.preheader.split.i

.loopexit.i:                                      ; preds = %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.preheader.split.i.us, %.preheader.split.i.us.us
  %.sroa.016.2.i = phi i64 [ %i.at, %.preheader.split.i.us.us ], [ %.sroa.016.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %i.az, %.preheader.split.i.us ], [ %.sroa.016.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %i.bv, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %.sroa.010.2.i = phi ptr [ %i.as, %.preheader.split.i.us.us ], [ %i.ac, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %i.ay, %.preheader.split.i.us ], [ %i.z, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %i.bu, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.bz, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %.preheader.split.i.us.us ], [ %i.af, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.0.0.i, %.preheader.split.i.us ], [ %i.aa, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.0.0.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.cs, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %i.bx = icmp eq i64 %.sroa.016.2.i, 0
  %i.by = icmp eq i64 %.sroa.0.1.i, 0
  %or.cond.i = or i1 %i.bx, %i.by
  br i1 %or.cond.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %.preheader

.preheader.i39.preheader.i:                       ; preds = %.preheader.i39.preheader.i.preheader, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i
  %indvar97 = phi i64 [ 0, %.preheader.i39.preheader.i.preheader ], [ %indvar.next98, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %.sroa.010.3.i = phi ptr [ %.sroa.010.0.i, %.preheader.i39.preheader.i.preheader ], [ %i.bz, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 7 uses
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i, %.preheader.i39.preheader.i.preheader ], [ %i.cs, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ]
  %i.bz = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.i, i64 %i.o ; 8 uses
  br i1 %min.iters.check105, label %.preheader.i39.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.preheader.i39.preheader.i
  %i.ca = mul i64 %indvar97, %3                   ; 2 uses
  %scevgep100 = getelementptr i8, ptr %i.w, i64 %i.ca
  %scevgep99 = getelementptr i8, ptr %i.x, i64 %i.ca
  %bound0101 = icmp ult ptr %i.bz, %scevgep99
  %bound1102 = icmp ult ptr %.sroa.010.3.i, %scevgep100
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.preheader.i39.i.preheader, label %vector.body108

vector.body108:                                   ; preds = %vector.memcheck96, %vector.body108
  %index109 = phi i64 [ %index.next114, %vector.body108 ], [ 0, %vector.memcheck96 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index109 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %index109 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34922)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load110 = load <2 x i64>, ptr %i.cb, align 1, !alias.scope !34923, !noalias !34924
  %wide.load111 = load <2 x i64>, ptr %i.cd, align 1, !alias.scope !34923, !noalias !34924
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load112 = load <2 x i64>, ptr %i.cc, align 1, !alias.scope !34925
  %wide.load113 = load <2 x i64>, ptr %i.ce, align 1, !alias.scope !34925
  store <2 x i64> %wide.load112, ptr %i.cb, align 1, !alias.scope !34923, !noalias !34924
  store <2 x i64> %wide.load113, ptr %i.cd, align 1, !alias.scope !34923, !noalias !34924
  store <2 x i64> %wide.load110, ptr %i.cc, align 1, !alias.scope !34925
  store <2 x i64> %wide.load111, ptr %i.ce, align 1, !alias.scope !34925
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.cf, label %middle.block115, label %vector.body108, !llvm.loop !34905

middle.block115:                                  ; preds = %vector.body108
  br i1 %cmp.n116, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i.preheader

.preheader.i39.i.preheader:                       ; preds = %vector.memcheck96, %.preheader.i39.preheader.i, %middle.block115
  %.sroa.01.03.i.i40.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %.preheader.i39.preheader.i ], [ %n.vec107, %middle.block115 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.03.i.i40.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i39.i.prol.loopexit, label %.preheader.i39.i.prol

.preheader.i39.i.prol:                            ; preds = %.preheader.i39.i.preheader
  %i.cg = or disjoint i64 %.sroa.01.03.i.i40.i.ph, 1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.01.03.i.i40.i.ph ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.01.03.i.i40.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34922)
  %.sroa.0.0.copyload.i.i.i41.i.prol = load i64, ptr %i.ch, align 1, !alias.scope !34921
  %.sroa.02.0.copyload.i.i.i42.i.prol = load i64, ptr %i.ci, align 1, !alias.scope !34922
  store i64 %.sroa.02.0.copyload.i.i.i42.i.prol, ptr %i.ch, align 1, !alias.scope !34921
  store i64 %.sroa.0.0.copyload.i.i.i41.i.prol, ptr %i.ci, align 1, !alias.scope !34922
  br label %.preheader.i39.i.prol.loopexit

.preheader.i39.i.prol.loopexit:                   ; preds = %.preheader.i39.i.prol, %.preheader.i39.i.preheader
  %.sroa.01.03.i.i40.i.unr = phi i64 [ %.sroa.01.03.i.i40.i.ph, %.preheader.i39.i.preheader ], [ %i.cg, %.preheader.i39.i.prol ]
  %i.cj = icmp eq i64 %i.q, %.neg
  br i1 %i.cj, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i

.preheader.i39.i:                                 ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i
  %.sroa.01.03.i.i40.i = phi i64 [ %i.cn, %.preheader.i39.i ], [ %.sroa.01.03.i.i40.i.unr, %.preheader.i39.i.prol.loopexit ] ; 4 uses
  %i.ck = add nuw nsw i64 %.sroa.01.03.i.i40.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.01.03.i.i40.i ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.01.03.i.i40.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34922)
  %.sroa.0.0.copyload.i.i.i41.i = load i64, ptr %i.cl, align 1, !alias.scope !34921
  %.sroa.02.0.copyload.i.i.i42.i = load i64, ptr %i.cm, align 1, !alias.scope !34922
  store i64 %.sroa.02.0.copyload.i.i.i42.i, ptr %i.cl, align 1, !alias.scope !34921
  store i64 %.sroa.0.0.copyload.i.i.i41.i, ptr %i.cm, align 1, !alias.scope !34922
  %i.cn = add nuw nsw i64 %.sroa.01.03.i.i40.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ck ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %i.ck ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34927)
  %.sroa.0.0.copyload.i.i.i41.i.1 = load i64, ptr %i.co, align 1, !alias.scope !34926
  %.sroa.02.0.copyload.i.i.i42.i.1 = load i64, ptr %i.cp, align 1, !alias.scope !34927
  store i64 %.sroa.02.0.copyload.i.i.i42.i.1, ptr %i.co, align 1, !alias.scope !34926
  store i64 %.sroa.0.0.copyload.i.i.i41.i.1, ptr %i.cp, align 1, !alias.scope !34927
  %exitcond.not.i.i43.i.1 = icmp eq i64 %i.cn, %i.q
  br i1 %exitcond.not.i.i43.i.1, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i, !llvm.loop !34909

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i: ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i, %middle.block115
  br i1 %.not4.i45.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i, label %bb.h

bb.h:                                             ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.s ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i, i64 %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34910)
  %.sroa.0.0.copyload.i.i5.i46.i = load i32, ptr %i.cq, align 1, !alias.scope !34911
  %.sroa.02.0.copyload.i.i6.i47.i = load i32, ptr %i.cr, align 1, !alias.scope !34910
  store i32 %.sroa.02.0.copyload.i.i6.i47.i, ptr %i.cq, align 1, !alias.scope !34911
  store i32 %.sroa.0.0.copyload.i.i5.i46.i, ptr %i.cr, align 1, !alias.scope !34910
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i: ; preds = %bb.h, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i
  %i.cs = sub i64 %.sroa.0.2.i, %.sroa.016.0.i    ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %.sroa.016.0.i
  %indvar.next98 = add i64 %indvar97, 1
  br i1 %i.ct, label %.loopexit.i, label %.preheader.i39.preheader.i

bb.i:                                             ; preds = %bb.c
  %i.cu = sub nsw i64 0, %0
  %i.cv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cu ; 5 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !56
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.i
  %.sroa.019.0.i.ph = phi i64 [ %spec.select.i, %bb.n ], [ %2, %bb.i ] ; 3 uses
  %.sroa.027.0.i.ph = phi i32 [ %i.cy, %bb.n ], [ %i.cw, %bb.i ]
  %.sroa.06.0.i.ph = phi i64 [ %i.da, %bb.n ], [ %2, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.k
  %.sroa.027.0.i = phi i32 [ %i.cy, %bb.k ], [ %.sroa.027.0.i.ph, %.outer ]
  %.sroa.06.0.i = phi i64 [ %i.cz, %bb.k ], [ %.sroa.06.0.i.ph, %.outer ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.06.0.i ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !56 ; 3 uses
  store i32 %.sroa.027.0.i, ptr %i.cx, align 4
  %.not.i3 = icmp ult i64 %.sroa.06.0.i, %0
  br i1 %.not.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = add i64 %.sroa.06.0.i, %2
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.da = sub nuw i64 %.sroa.06.0.i, %0           ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cy, ptr %i.cv, align 4
  %i.dc = icmp ugt i64 %.sroa.019.0.i.ph, 1
  br i1 %i.dc, label %.lr.ph.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.l
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %.sroa.019.0.i.ph)
  br label %.outer

.lr.ph.i:                                         ; preds = %bb.m, %bb.r
  %.sroa.021.036.i = phi i64 [ %i.dl, %bb.r ], [ 1, %bb.m ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.021.036.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !noundef !56
  %i.df = add i64 %.sroa.021.036.i, %2
  br label %bb.o

bb.o:                                             ; preds = %.backedge, %.lr.ph.i
  %.sroa.027.1.i = phi i32 [ %i.de, %.lr.ph.i ], [ %i.dh, %.backedge ]
  %.sroa.06.2.i = phi i64 [ %i.df, %.lr.ph.i ], [ %.sroa.06.2.i.be, %.backedge ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.06.2.i ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !56 ; 2 uses
  store i32 %.sroa.027.1.i, ptr %i.dg, align 4
  %.not34.i = icmp ult i64 %.sroa.06.2.i, %0
  br i1 %.not34.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = add i64 %.sroa.06.2.i, %2
  br label %.backedge

bb.q:                                             ; preds = %bb.o
  %i.dj = sub nuw i64 %.sroa.06.2.i, %0           ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %.sroa.021.036.i
  br i1 %i.dk, label %bb.r, label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.p
  %.sroa.06.2.i.be = phi i64 [ %i.dj, %bb.q ], [ %i.di, %bb.p ]
  br label %bb.o

bb.r:                                             ; preds = %bb.q
  store i32 %i.dh, ptr %i.dd, align 4
  %i.dl = add nuw i64 %.sroa.021.036.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %.sroa.019.0.i.ph
  br i1 %exitcond.not.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEB1U_EECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [72 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35025
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !35024, !noalias !35026, !nonnull !56, !noundef !56 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !35024, !noalias !35026, !noundef !56 ; 6 uses
  %.idx341 = shl nuw nsw i64 %.val1.i.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx341 ; 4 uses
  %.not.i.i.i.i329 = icmp eq i64 %.val1.i.i, 0
  %.sink345.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink345.sroa.gep385 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink345.sroa.gep387 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink345.sroa.gep388 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink345.sroa.gep390 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink345.sroa.gep391 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %.not.i.i.i.i329, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph331
end_hunk_2
begin_hunk_3_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerjEINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerIB1H_INtNtB6_6reduce14ReduceConsumerNCINvNtNtNtCs3sCKvcUjPpt_9hashbrown20external_trait_impls5rayon7helpers7collectINtB1J_3MapINtB1g_8IntoIterjENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7r_5types3any5PyAnyEB7m_NtB6m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB7r_3err5PyErrEs1_0EEs0_0NvMs5_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtBai_10LinkedListINtNtBam_3vec3VecTjTINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjIBbq_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEIBbK_jdBcw_EEEEE3newENCB38_s_0ENvMBbs_Bbp_3newNCB38_0EB4Q_EEB8Q_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !38947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !38947
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !38947 ; 7 uses
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !38947 ; 10 uses
  %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !38947 ; 9 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !noalias !38947 ; 4 uses
  %i.sv = icmp eq i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sv, label %bb.bu, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bt
  %.sroa.68.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !38947, !nonnull !56, !noundef !56
  %i.sw = shl i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 3
  %i.sx = icmp slt i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.sx)
  %i.sy = and i64 %i.sw, -16                      ; 2 uses
  %i.sz = add i64 %i.sy, 16                       ; 2 uses
  %i.ta = add nsw i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 17
  %i.tb = add i64 %i.ta, %i.sz                    ; 3 uses
  %i.tc = icmp uge i64 %i.tb, %i.sz
  call void @llvm.assume(i1 %i.tc)
  %i.td = icmp ult i64 %i.tb, 9223372036854775793
  call void @llvm.assume(i1 %i.td)
  %i.te = sub nuw nsw i64 -16, %i.sy
  %i.tf = getelementptr inbounds i8, ptr %.sroa.68.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.te
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef %i.tb, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39074
  br label %bb.bu

bb.bu:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  %i.tg = icmp ult i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 230584300921369396
  call void @llvm.assume(i1 %i.tg)
  %.idx31.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 40 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx31.i.i.i.i.i.i.i.i.i.i ; 6 uses
  store ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !38947
  store ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store ptr %i.th, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !noalias !38947
  %i.ti = ptrtoint ptr %i.th to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !39075
  %i.tj = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i.i.i.i, !noalias !39075 ; 2 uses

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bu
  %i.tk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !39075
  %i.tl = icmp eq i8 %i.tk, 2
  br i1 %i.tl, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, !prof !66

bb.bv:                                            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i.i.i.i, !noalias !39075

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39076)
  %i.tm = icmp eq i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.tm, label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !39076, !noalias !39075
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !39075
  store i64 %i.tj, ptr %i.bp, align 8, !alias.scope !39076, !noalias !39075
  br label %bb.ca

bb.bw:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !39077
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, i64 noundef range(i64 1, 0) %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc6.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.thread228.i.i.i.i.i.i.i.i.i.i, !noalias !39075

.thread.i.thread228.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bw
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i

.noexc6.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bw
  %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39078 ; 3 uses
  %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39078 ; 5 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !39079
  %i.to = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.idx31.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39079 ; 2 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.by, label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.by
  %i.tq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tr = icmp eq i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tr, label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  %i.ts = shl i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 3
  %i.tt = icmp slt i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.tt), !noalias !39080
  %i.tu = and i64 %i.ts, -16                      ; 2 uses
  %i.tv = add i64 %i.tu, 16                       ; 2 uses
  %i.tw = add nsw i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 17
  %i.tx = add i64 %i.tw, %i.tv                    ; 3 uses
  %i.ty = icmp uge i64 %i.tx, %i.tv
  call void @llvm.assume(i1 %i.ty), !noalias !39080
  %i.tz = icmp ult i64 %i.tx, 9223372036854775793
  call void @llvm.assume(i1 %i.tz), !noalias !39080
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i) ], !noalias !39080
  %i.ua = sub nuw nsw i64 -16, %i.tu
  %i.ub = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i, i64 %i.ua
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ub, i64 noundef %i.tx, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39078
  br label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx31.i.i.i.i.i.i.i.i.i.i) #61
          to label %bb.bz unwind label %bb.bx, !noalias !39078

bb.bz:                                            ; preds = %bb.by
  unreachable

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !39075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !39077
  store i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !39076, !noalias !39075
  store ptr %i.to, ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 %i.tj, ptr %i.bp, align 8, !alias.scope !39076, !noalias !39075
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39081, !noalias !39075
  %.pre.fr.i.i.i.i.i.i.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i.i.i.i.i.i.i
  %i.uc = icmp eq i64 %.pre.fr.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !39081)
  %i.ud = lshr i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.uc, i64 0, i64 %i.ud
  %i.ue = sub nuw nsw i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ue, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecjEE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.cb unwind label %bb.ck, !noalias !39082

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.tm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.cj
  %i.uf = phi ptr [ %i.ug, %bb.cj ], [ %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.cb ] ; 5 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40 ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uf, align 8, !noalias !39083 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.cd

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ug to i64
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci, %bb.cc
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uh, %bb.cc ], [ %i.vx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vx, %bb.ci ] ; 2 uses
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub nuw i64 %i.ti, %i.ui
  %i.uk = udiv exact i64 %i.uj, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !39084)
  %i.ul = icmp eq ptr %i.th, %i.ug
  br i1 %i.ul, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.un, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.um = getelementptr inbounds nuw [40 x i8], ptr %i.ug, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.un = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.um, align 8, !alias.scope !39084, !noalias !39085 ; 2 uses
  %i.uo = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.uo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = getelementptr i8, ptr %i.um, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.up, align 8, !alias.scope !39084, !noalias !39085, !nonnull !56, !noundef !56
  %i.uq = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39086
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ur = icmp eq i64 %i.un, %i.uk
  br i1 %i.ur, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.us = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.us, label %.body7.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ut = mul nuw i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ut, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39085
  br label %.body7.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.63.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %.sroa.63.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.63.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39083
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39087, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.8.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39087 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !39088
  %i.uu = icmp ult i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.uu)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.uv = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.uw = shl nuw i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.ce, !prof !62

bb.ce:                                            ; preds = %bb.cd
  %i.ux = icmp eq i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ux, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !39089
  %i.uy = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.uw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39089 ; 7 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.cf
  %i.va = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.vb = lshr exact i64 %i.va, 2
  %i.vc = add nuw nsw i64 %i.vb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.va, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.vd = shl i64 %i.va, 1
  %8 = getelementptr i8, ptr %i.uy, i64 %i.vd
  %scevgep1223 = getelementptr i8, ptr %8, i64 8
  %bound0 = icmp ult ptr %i.uy, %i.uv
  %bound1 = icmp ult ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %scevgep1223
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.vc, 9223372036854775804     ; 5 uses
  %i.ve = shl i64 %n.vec, 2
  %i.vf = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ve
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.vg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.vg ; 2 uses
  %i.vh = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !39090, !noalias !39091
  %wide.load1224 = load <2 x i32>, ptr %i.vh, align 4, !alias.scope !39090, !noalias !39091
  %i.vi = zext <2 x i32> %wide.load to <2 x i64>
  %i.vj = zext <2 x i32> %wide.load1224 to <2 x i64>
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %index ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  store <2 x i64> %i.vi, ptr %i.vk, align 8, !alias.scope !39092, !noalias !39093
  store <2 x i64> %i.vj, ptr %i.vl, align 8, !alias.scope !39092, !noalias !39093
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vm = icmp eq i64 %index.next, %n.vec
  br i1 %i.vm, label %middle.block, label %vector.body, !llvm.loop !38743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261: ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1262 = phi ptr [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.vf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.cf ], [ 0, %bb.cd ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.uw) #61
          to label %bb.ch unwind label %bb.ci, !noalias !39094

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vn = phi i64 [ %i.vt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261 ] ; 2 uses
  %i.vo = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph1262, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261 ] ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !noalias !39091, !noundef !56
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 4 ; 2 uses
  %i.vr = zext i32 %i.vp to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.vn
  store i64 %i.vr, ptr %i.vs, align 8, !noalias !39095
  %i.vt = add nuw nsw i64 %i.vn, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vq, %i.uv
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !38744

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.ce
  %i.vu = phi ptr [ inttoptr (i64 8 to ptr), %bb.ce ], [ %i.uy, %middle.block ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %n.vec, %middle.block ], [ %i.vt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vv, label %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vw = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.vw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39091
  br label %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vy = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vy, label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.vz = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39096
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wa = zext i32 %.sroa.63.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  store i64 %i.wa, ptr %i.o, align 8, !noalias !39088
  store i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  store ptr %i.vu, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !39097
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.wa, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !39098

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !39097 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39097 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !39097
  %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cj

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.wb = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39099
  br label %bb.cj

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ti, %bb.cj ]
  %.lcssa127.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ug, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.th, %bb.cj ]
  %.pre29.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %i.ti, %.pre.i.i.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.pre31.i.i.i.i.i.i.i.i.i.i.i.i = udiv exact i64 %.pre29.i.i.i.i.i.i.i.i.i.i.i.i, 40
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cb
  %.pre-phi32.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre31.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cb ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa127.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.cb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39100)
  %i.wc = icmp eq ptr %i.th, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.wc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.we, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wd = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.we = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wd, align 8, !alias.scope !39100, !noalias !39101 ; 2 uses
  %i.wf = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wg = getelementptr i8, ptr %i.wd, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.wg, align 8, !alias.scope !39100, !noalias !39101, !nonnull !56, !noundef !56
  %i.wh = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39102
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = icmp eq i64 %i.we, %.pre-phi32.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.wi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wj = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wj, label %bb.cl, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wk = mul nuw i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39101
  br label %bb.cl

bb.cj:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !39088
  %i.wl = icmp eq ptr %i.ug, %i.th
  br i1 %i.wl, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ca
  %i.wm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1V_EENCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtB1X_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5r_5types3any5PyAnyEB5m_NtB1Z_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB5r_3err5PyErrEs1_00EEB6Q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ad) #63, !noalias !39103
  br label %.body7.i.i.i.i.i.i.i.i.i.i.i

.body7.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ck, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body8.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wm, %bb.ck ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39104)
  call void @llvm.experimental.noalias.scope.decl(metadata !39105), !noalias !39106
  %.val1.i.i57.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39107, !noalias !39075, !noundef !56 ; 4 uses
  %i.wn = icmp eq i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i: ; preds = %.body7.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i59.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39107, !noalias !39075, !nonnull !56, !noundef !56
  %i.wo = shl i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 3
  %i.wp = icmp slt i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.wp), !noalias !39106
  %i.wq = and i64 %i.wo, -16                      ; 2 uses
  %i.wr = add i64 %i.wq, 16                       ; 2 uses
  %i.ws = add nsw i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 17
  %i.wt = add i64 %i.ws, %i.wr                    ; 3 uses
  %i.wu = icmp uge i64 %i.wt, %i.wr
  call void @llvm.assume(i1 %i.wu), !noalias !39106
  %i.wv = icmp ult i64 %i.wt, 9223372036854775793
  call void @llvm.assume(i1 %i.wv), !noalias !39106
  %i.ww = sub nuw nsw i64 -16, %i.wq
  %i.wx = getelementptr inbounds i8, ptr %.val.i.i59.i.i.i.i.i.i.i.i.i.i, i64 %i.ww
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wx, i64 noundef %i.wt, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i, %.body7.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39109), !noalias !39106
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39110, !noalias !39075, !nonnull !56, !noundef !56 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39110, !noalias !39075, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39111), !noalias !39106
  %i.wy = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wy, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wz = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xa = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wz, align 8, !alias.scope !39112, !noalias !39113 ; 2 uses
  %i.xb = icmp eq i64 %.val8.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i
  %i.xc = getelementptr i8, ptr %i.wz, i64 8
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage:bb.a
  %.cast.i.i.i.i.i.i87 = bitcast <16 x i1> %i.ms to i16 ; 2 uses
  %.not.i.i.i.i.i.i88 = icmp eq i16 %.cast.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i.i85, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEE9next_implKb0_EB2k_.exit.i.i.i.i.i80

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEE9next_implKb0_EB2k_.exit.i.i.i.i.i80: ; preds = %.lr.ph.i.i.i.i.i.i85, %bb.cy
  %.sroa.04.1.i.i.i.i.i81 = phi ptr [ %.sroa.04.07.i.i.i.i.i78, %bb.cy ], [ %i.mt, %.lr.ph.i.i.i.i.i.i85 ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i82 = phi ptr [ %.sroa.6.08.i.i.i.i.i77, %bb.cy ], [ %i.mu, %.lr.ph.i.i.i.i.i.i85 ]
  %.lcssa.i.i.i.i.i.i83 = phi i16 [ %.sroa.10.09.i.i.i.i.i76, %bb.cy ], [ %.cast.i.i.i.i.i.i87, %.lr.ph.i.i.i.i.i.i85 ] ; 3 uses
  %i.mv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i83, i1 true)
  %i.mw = zext nneg i16 %i.mv to i64
  %i.mx = sub nsw i64 0, %i.mw
  %i.my = getelementptr inbounds [56 x i8], ptr %.sroa.04.1.i.i.i.i.i81, i64 %i.mx
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -56
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB21_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.mz)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEE9next_implKb0_EB2k_.exit.i.i.i.i.i80
  %i.na = add i64 %.sroa.14.010.i.i.i.i.i75, -1   ; 2 uses
  %i.nb = add i16 %.lcssa.i.i.i.i.i.i83, -1
  %i.nc = and i16 %i.nb, %.lcssa.i.i.i.i.i.i83
  %i.nd = icmp eq i64 %i.na, 0
  br i1 %i.nd, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2z_.exit.i.i.i.i84, label %bb.cy

_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2z_.exit.i.i.i.i84: ; preds = %.noexc89
  %i.ne = mul i64 %i.w, 56
  %i.nf = icmp slt i64 %i.w, 329406144173384850
  tail call void @llvm.assume(i1 %i.nf)
  %i.ng = and i64 %i.ne, -16                      ; 2 uses
  %i.nh = add i64 %i.ng, 64                       ; 2 uses
  %i.ni = add nsw i64 %i.w, 17
  %i.nj = add i64 %i.ni, %i.nh                    ; 4 uses
  %i.nk = icmp uge i64 %i.nj, %i.nh
  %i.nl = icmp ult i64 %i.nj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.nk)
  tail call void @llvm.assume(i1 %i.nl)
  %i.nm = icmp eq i64 %i.nj, 0
  br i1 %i.nm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2F_.exit90, label %bb.cz

bb.cz:                                            ; preds = %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2z_.exit.i.i.i.i84
  %i.nn = sub i64 -64, %i.ng
  %i.no = getelementptr inbounds i8, ptr %i.u, i64 %i.nn
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.no, i64 noundef %i.nj, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !102691
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2F_.exit90

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2F_.exit90: ; preds = %bb.cz, %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEEB2z_.exit.i.i.i.i84, %bb.cw
  resume { ptr, i32 } %.pn23
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation41___pyfunction_digraph_maximum_bisimulation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2582, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef 1)
  %i.l = load i64, ptr %i.j, align 8, !range !57, !noundef !56
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %0, align 8
  br label %bb.q

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102788
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull %i.p), !inline_history !45
  %i.q = load ptr, ptr %i.d, align 8, !noalias !102788, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !102788, !nonnull !56, !noundef !56 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102788
  br i1 %.not.i.i.i, label %.noexc21, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.t, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s), !inline_history !45
  br label %.noexc20

.noexc21:                                         ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 3 uses
  %i.v = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.u), !inline_history !45
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc21
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w), !inline_history !45
  br label %.noexc20

.noexc20:                                         ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f), !inline_history !45
  %.sroa.012.0.copyload = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.copyload, ptr %i.y, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.q

.body:                                            ; preds = %bb.f, %_RNvXs6D_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_27RelationalCoarsestPartitionNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i.i.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %bb.n, %.body
  %eh.lpad-body64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.by, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.by, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i, %bb.n ]
  %i.z = atomicrmw add ptr %i.u, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body64

bb.e:                                             ; preds = %.noexc21
  call void @llvm.experimental.noalias.scope.decl(metadata !102789)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !102789, !noundef !56
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102790
  invoke fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulation(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ad)
          to label %.noexc25 unwind label %.body

.noexc25:                                         ; preds = %bb.f
  %i.ae = load i64, ptr %i.c, align 8, !range !55, !noalias !102790, !noundef !56 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i, label %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread, label %bb.g

bb.g:                                             ; preds = %.noexc25
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0.copyload.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !102790, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !102790 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102790
  %i.af = icmp ult i64 %.sroa.511.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %.idx.i = mul nuw nsw i64 %.sroa.511.0.copyload.i, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload.i, i64 %.idx.i ; 3 uses
  %.not15.i.i.i.i.i = icmp eq i64 %.sroa.511.0.copyload.i, 0
  br i1 %.not15.i.i.i.i.i, label %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47, label %.lr.ph.i.i.i.i.i

.body.i.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.au to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = udiv exact i64 %i.aj, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !102791), !noalias !102792
  %i.al = icmp eq ptr %i.ag, %i.au
  br i1 %i.al, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i12.i

.lr.ph.i.i.i.i12.i:                               ; preds = %.body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %.body.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !102791, !noalias !102793 ; 2 uses
  %i.ao = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i12.i
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !102791, !noalias !102793, !nonnull !56, !noundef !56
  %i.aq = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102794
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i12.i
  %i.ar = icmp eq i64 %i.an, %i.ak
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i12.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.body.i.i
  %i.as = icmp eq i64 %i.ae, 0
  br i1 %i.as, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.at = mul nuw i64 %i.ae, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102793
  br label %.body.thread

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %i.au, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i ], [ %.sroa.410.0.copyload.i, %bb.g ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !102795 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102795, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102795 ; 6 uses
  %i.au = getelementptr i8, ptr %.sroa.4.016.i.i.i.i.i, i64 24 ; 5 uses
  %i.av = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.av)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 2 ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ax = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.h, !prof !62

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.ay, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102796
  %i.az = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102796 ; 7 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.i
  %i.bb = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.be = shl i64 %i.bb, 1
  %5 = getelementptr i8, ptr %i.az, i64 %i.be
  %scevgep105 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.az, %i.aw
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i.i, %scevgep105
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 9223372036854775804     ; 5 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !102797, !noalias !102798
  %wide.load106 = load <2 x i32>, ptr %i.bi, align 4, !alias.scope !102797, !noalias !102798
  %i.bj = zext <2 x i32> %wide.load to <2 x i64>
  %i.bk = zext <2 x i32> %wide.load106 to <2 x i64>
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x i64> %i.bj, ptr %i.bl, align 8, !alias.scope !102799, !noalias !102800
  store <2 x i64> %i.bk, ptr %i.bm, align 8, !alias.scope !102799, !noalias !102800
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !102756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109:    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph110 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i.i, %vector.memcheck ], [ %.sroa.412.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.ax) #61
          to label %bb.k unwind label %bb.l, !noalias !102801

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %i.bp = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph110, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !102798, !noundef !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo
  store i64 %i.bs, ptr %i.bt, align 8, !noalias !102802
  %i.bu = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.aw
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !102757

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.h
  %i.bv = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.az, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %n.vec, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bw = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102798
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.bz, label %.body.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ca = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102803
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.cb = ptrtoint ptr %.sroa.4.016.i.i.i.i.i to i64
  %i.cc = ptrtoint ptr %.sroa.410.0.copyload.i to i64
  %i.cd = sub nuw i64 %i.cb, %i.cc
  %i.ce = udiv exact i64 %i.cd, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !102804), !noalias !102805
  %i.cf = icmp eq ptr %.sroa.4.016.i.i.i.i.i, %.sroa.410.0.copyload.i
  br i1 %i.cf, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.body.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.410.0.copyload.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !102806, !noalias !102807 ; 2 uses
  %i.ci = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cj = getelementptr i8, ptr %i.cg, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !102804, !noalias !102807, !nonnull !56, !noundef !56
  %i.ck = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102808
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockEBF_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cl = icmp eq i64 %i.ch, %i.ce
  br i1 %i.cl, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !102807
  store ptr %i.bv, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102807
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102807
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.ag
  br i1 %.not.i.i.i.i.i, label %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47, label %.lr.ph.i.i.i.i.i

_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread: ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102809
  br label %bb.p

_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i, %bb.g, %bb.e
  %.sink = phi i64 [ %i.ae, %bb.g ], [ 0, %bb.e ], [ %i.ae, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i ]
  %.sroa.410.0.copyload.i.sink = phi ptr [ %.sroa.410.0.copyload.i, %bb.g ], [ inttoptr (i64 8 to ptr), %bb.e ], [ %.sroa.410.0.copyload.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i ]
  %.sroa.511.0.copyload.i.sink = phi i64 [ 0, %bb.g ], [ 0, %bb.e ], [ %.sroa.511.0.copyload.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx9iterators19IndexPartitionBlockINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB3h_zENCNvNtB2o_12bisimulation28digraph_maximum_bisimulation0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B2o_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sink, ptr %i.g, align 8
  %.sroa.49.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.410.0.copyload.i.sink, ptr %.sroa.49.sroa.4.0..sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.511.0.copyload.i.sink, ptr %.sroa.49.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102811
  %i.cm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6F_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_27RelationalCoarsestPartitionNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !102812
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_RNvXs6D_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_27RelationalCoarsestPartitionNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i.i.i.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE15get_or_try_initB1p_.exit.i.i.i.i.i.i.i, !prof !66

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE15get_or_try_initB1p_.exit.i.i.i.i.i.i.i: ; preds = %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.n, !noalias !102811

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE15get_or_try_initB1p_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !57, !noalias !102811
  %i.co = trunc nuw i64 %.pre.i.i.i.i.i.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.co, label %bb.m, label %.noexc._crit_edge.i.i.i.i.i.i, !prof !73

.noexc._crit_edge.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !102811
  br label %_RNvXs6D_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_27RelationalCoarsestPartitionNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @979, i64 noundef 27) #61
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.n, !noalias !102811

.noexc2.i.i.i.i.i.i:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE15get_or_try_initB1p_.exit.i.i.i.i.i.i.i
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.g) #63, !noalias !102813
  br label %.body.thread

_RNvXs6D_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_27RelationalCoarsestPartitionNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i.i.i.i: ; preds = %.noexc._crit_edge.i.i.i.i.i.i, %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47
  %i.cq = phi ptr [ %.pre.i.i.i.i.i.i, %.noexc._crit_edge.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs6F_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_27RelationalCoarsestPartitionNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread47 ]
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !102811, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102811
  invoke fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef %i.cr)
          to label %.noexc30 unwind label %.body

.noexc30:                                         ; preds = %_RNvXs6D_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_27RelationalCoarsestPartitionNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i.i.i.i
  %i.cs = load i64, ptr %i.b, align 8, !range !57, !noalias !102810, !noundef !56
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !102810 ; 2 uses
  br i1 %i.ct, label %bb.o, label %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i

_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i: ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102810
  br label %bb.p

bb.o:                                             ; preds = %.noexc30
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102810
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31

bb.p:                                             ; preds = %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i, %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread
  %.sink1.i.sink.i.i7.i = phi ptr [ @_Py_NoneStruct, %_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation28digraph_maximum_bisimulation.exit.thread ], [ %.sroa.03.0.copyload.i.i.i.i, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators27RelationalCoarsestPartitionENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink1.i.sink.i.i7.i) ]
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31: ; preds = %bb.p, %bb.o
  %.sink1.i.sink.i.i7.i.sink = phi ptr [ %.sink1.i.sink.i.i7.i, %bb.p ], [ %.sroa.03.0.copyload.i.i.i.i, %bb.o ]
  %storemerge = phi i64 [ 0, %bb.p ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i.sink.i.i7.i.sink, ptr %i.cv, align 8
  store i64 %storemerge, ptr %0, align 8
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_paths:bb.a

bb.by:                                            ; preds = %.body150
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val97 = load i64, ptr %i.mz, align 8, !noundef !56
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.pre349, i64 %.val97) #63
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity24___pyfunction_cycle_basis(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2613, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.m, i64 noundef 2)
  %i.n = load i64, ptr %i.l, align 8, !range !57, !noundef !56
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit50

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = load ptr, ptr %i.m, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103426
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull %i.r), !inline_history !42
  %i.s = load ptr, ptr %i.e, align 8, !noalias !103426, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !103426, !nonnull !56, !noundef !56 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103426
  br i1 %.not.i.i.i, label %.noexc40, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u), !inline_history !42
  br label %.noexc39

.noexc40:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 4 uses
  %i.x = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.w), !inline_history !42
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc40
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.y), !inline_history !42
  br label %.noexc39

.noexc39:                                         ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.g), !inline_history !42
  %.sroa.022.0.copyload = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.022.0.copyload, ptr %i.aa, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit50

.body:                                            ; preds = %.split6.i.invoke, %bb.f, %bb.g, %.loopexit.i.thread.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %.body
  %eh.lpad-body73 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.cl, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i ], [ %i.cl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body73

bb.e:                                             ; preds = %.noexc40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !56 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = icmp eq ptr %i.ae, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.af
  br i1 %or.cond, label %.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103427
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.ae)
          to label %.noexc44 unwind label %.body

.noexc44:                                         ; preds = %bb.f
  %i.ag = load i64, ptr %i.c, align 8, !range !57, !noalias !103427, !noundef !56
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.8.copyload1.i.i = load i64, ptr %i.ai, align 8, !noalias !103428 ; 2 uses
  br i1 %i.ah, label %bb.g, label %.split6.i

bb.g:                                             ; preds = %.noexc44
  %.sroa.9.8..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.8.copyload3.i.i = load i64, ptr %.sroa.9.8..sroa_idx2.i.i, align 8, !noalias !103428
  %.sroa.11.8..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx4.i.i, i64 48, i1 false), !noalias !103428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103427
  store i64 %.sroa.5.8.copyload1.i.i, ptr %i.d, align 8, !alias.scope !103429, !noalias !103428
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.8.copyload3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !103429, !noalias !103428
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2611, i64 noundef range(i64 4, 19) 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.n unwind label %.body

.split6.i:                                        ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103430
  %i.ak = trunc i64 %.sroa.5.8.copyload1.i.i to i32
  br label %.split6.i.invoke

.split6.i.invoke:                                 ; preds = %.split.i, %.split6.i
  %i.al = phi i32 [ 1, %.split6.i ], [ 0, %.split.i ]
  %i.am = phi i32 [ %i.ak, %.split6.i ], [ undef, %.split.i ]
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11cycle_basis11cycle_basisRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ac, i32 noundef %i.al, i32 %i.am)
          to label %.noexc46 unwind label %.body

.split.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103430
  br label %.split6.i.invoke

.noexc46:                                         ; preds = %.split6.i.invoke
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !103430, !nonnull !56, !noundef !56 ; 9 uses
  %i.ap = load i64, ptr %i.b, align 8, !range !59, !noalias !103430, !noundef !56 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !103430, !noundef !56 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326
  call void @llvm.assume(i1 %i.as)
  %.idx.i = mul nuw nsw i64 %i.ar, 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103430
  %.not15.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not15.i.i.i.i.i, label %.loopexit.i.thread.i, label %.lr.ph.i.i.i.i.i

.body.i.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.bh to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !103431), !noalias !103432
  %i.ay = icmp eq ptr %i.at, %i.bh
  br i1 %i.ay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.ba, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %.body.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !103431, !noalias !103433 ; 2 uses
  %i.bb = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i7.i
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !103431, !noalias !103433, !nonnull !56, !noundef !56
  %i.bd = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103434
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i7.i
  %i.be = icmp eq i64 %i.ba, %i.ax
  br i1 %i.be, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i7.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.body.i.i
  %i.bf = icmp eq i64 %i.ap, 0
  br i1 %i.bf, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.bg = mul nuw i64 %i.ap, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103433
  br label %.body.thread

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc46, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %i.bh, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i ], [ %i.ao, %.noexc46 ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !103435 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !103435, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !103435 ; 6 uses
  %i.bh = getelementptr i8, ptr %.sroa.4.016.i.i.i.i.i, i64 24 ; 5 uses
  %i.bi = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.bi)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 2 ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.bk = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.h, !prof !62

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.bl, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103436
  %i.bm = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103436 ; 7 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.i
  %i.bo = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 3 uses
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.br = shl i64 %i.bo, 1
  %5 = getelementptr i8, ptr %i.bm, i64 %i.br
  %scevgep121 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.bm, %i.bj
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i.i, %scevgep121
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775804     ; 5 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !103437, !noalias !103438
  %wide.load122 = load <2 x i32>, ptr %i.bv, align 4, !alias.scope !103437, !noalias !103438
  %i.bw = zext <2 x i32> %wide.load to <2 x i64>
  %i.bx = zext <2 x i32> %wide.load122 to <2 x i64>
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x i64> %i.bw, ptr %i.by, align 8, !alias.scope !103439, !noalias !103440
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !alias.scope !103439, !noalias !103440
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !103415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124:    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph125 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i.i, %vector.memcheck ], [ %.sroa.412.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.bk) #61
          to label %bb.k unwind label %bb.l, !noalias !103441

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124 ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph125, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader124 ] ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !103438, !noundef !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cb
  store i64 %i.cf, ptr %i.cg, align 8, !noalias !103442
  %i.ch = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bj
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !103416

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.h
  %i.ci = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.bm, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %n.vec, %middle.block ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cj = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.cj, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103438
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.cm, label %.body.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.cn = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103443
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.co = ptrtoint ptr %.sroa.4.016.i.i.i.i.i to i64
  %i.cp = ptrtoint ptr %i.ao to i64
  %i.cq = sub nuw i64 %i.co, %i.cp
  %i.cr = udiv exact i64 %i.cq, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !103444), !noalias !103445
  %i.cs = icmp eq ptr %.sroa.4.016.i.i.i.i.i, %i.ao
  br i1 %i.cs, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.body.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.cu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103446), !noalias !103445
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !103447, !noalias !103448 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !103447, !noalias !103448, !nonnull !56, !noundef !56
  %i.cx = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103449
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cu, %i.cr
  br i1 %i.cy, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !103448
  store ptr %i.ci, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !103448
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !103448
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.at
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.thread.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.thread.i:                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i, %.noexc46
  %.in = phi ptr [ %i.ao, %.noexc46 ], [ %i.at, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity11cycle_basis0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i ]
  %i.cz = ptrtoint ptr %.in to i64
  %i.da = ptrtoint ptr %i.ao to i64
  %i.db = sub nuw i64 %i.cz, %i.da
  %i.dc = udiv exact i64 %i.db, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ap, ptr %i.h, align 8
  %.sroa.419.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ao, ptr %.sroa.419.sroa.4.0..sroa_idx, align 8
  %.sroa.419.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.dc, ptr %.sroa.419.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103450
  invoke fastcc void @_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecIBN_jEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h) #64
          to label %.noexc48 unwind label %.body

.noexc48:                                         ; preds = %.loopexit.i.thread.i
  %i.dd = load i64, ptr %i.a, align 8, !range !57, !noalias !103450, !noundef !56
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.453.8.copyload54 = load ptr, ptr %i.df, align 8, !noalias !103451
  br i1 %i.de, label %bb.m, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit49

bb.m:                                             ; preds = %.noexc48
  %.sroa.8.8..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx55, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit49

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit49: ; preds = %.noexc48, %bb.m
  %.sink = phi i64 [ 1, %bb.m ], [ 0, %.noexc48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.453.8.copyload54, ptr %i.dg, align 8
  store i64 %.sink, ptr %0, align 8
  %i.dh = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit50

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit50: ; preds = %bb.b, %.noexc39, %bb.n, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103428
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.531.0..sroa_idx, i64 48, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = load <2 x i64>, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store <2 x i64> %i.dj, ptr %i.di, align 8
  store i64 1, ptr %0, align 8
  %i.dk = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit50
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_adjacency_matrix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef %2, double noundef %3, double noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 13 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 13 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103572)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = load i64, ptr %7, align 8, !range !55, !alias.scope !103572, !noundef !56 ; 9 uses
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !103572 ; 8 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !103572 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !103573
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %.sroa.20.0 = phi i64 [ %.sroa.14.0.i192, %bb.ey ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.18.0 = phi ptr [ %.sroa.13.0.i193, %bb.ey ], [ @1413, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ @1413, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.16444.0 = phi ptr [ %.sroa.12.0.i194, %bb.ey ], [ %i.anx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ %i.anx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.14439.0 = phi ptr [ %.sroa.11.0.i195, %bb.ey ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.12434.0 = phi i64 [ %.sroa.10.0.i196, %bb.ey ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !122809
  %i.apl = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.apl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.apm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, i64 16, i1 false)
  %.sroa.4667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12434.0, ptr %.sroa.4667.0..sroa_idx, align 8
  %.sroa.5668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.14439.0, ptr %.sroa.5668.0..sroa_idx, align 8
  %.sroa.6669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.16444.0, ptr %.sroa.6669.0..sroa_idx, align 8
  %.sroa.7670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.18.0, ptr %.sroa.7670.0..sroa_idx, align 8
  %.sroa.8671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.20.0, ptr %.sroa.8671.0..sroa_idx, align 8
  %.sroa.9672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.21.0, ptr %.sroa.9672.0..sroa_idx, align 8
  %.sroa.10673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.23.0, ptr %.sroa.10673.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.0)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj)
          to label %bb.ib unwind label %.thread807.loopexit.split-lp

bb.hj:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i314, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !122809
  %i.apn = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.apn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, i64 16, i1 false)
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.12434.8.copyload438, ptr %.sroa.4635.0..sroa_idx, align 8
  %.sroa.5636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x ptr> %i.ajb, ptr %.sroa.5636.0..sroa_idx, align 8
  %.sroa.7638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %.sroa.18.8.copyload452, ptr %.sroa.7638.0..sroa_idx, align 8
  %.sroa.8639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.20.8.copyload456, ptr %.sroa.8639.0..sroa_idx, align 8
  %.sroa.9640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store <2 x i32> %i.ajc, ptr %.sroa.9640.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.0)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj)
          to label %bb.hk unwind label %.thread807.loopexit.split-lp

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dk

bb.hl:                                            ; preds = %.noexc156, %bb.dl
  store i64 0, ptr %i.ah, align 8, !alias.scope !122905
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !122905
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !122905
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.vr, ptr %i.apo, align 8, !alias.scope !122905
  %.sroa.0516.0.copyload = load i64, ptr %i.ak, align 8 ; 3 uses
  %.sroa.4517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4517.0.copyload = load ptr, ptr %.sroa.4517.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7520.0.copyload = load i64, ptr %.sroa.7520.0..sroa_idx, align 8 ; 4 uses
  %i.app = icmp eq i64 %.sroa.7520.0.copyload, 0
  br i1 %i.app, label %bb.hm, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6519.0.copyload719) ]
  %i.apq = shl i64 %.sroa.7520.0.copyload, 3
  %i.apr = icmp slt i64 %.sroa.7520.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.apr)
  %i.aps = and i64 %i.apq, -16                    ; 2 uses
  %i.apt = add i64 %i.aps, 16                     ; 2 uses
  %i.apu = add nsw i64 %.sroa.7520.0.copyload, 17
  %i.apv = add i64 %i.apu, %i.apt                 ; 3 uses
  %i.apw = icmp uge i64 %i.apv, %i.apt
  call void @llvm.assume(i1 %i.apw)
  %i.apx = icmp ult i64 %i.apv, 9223372036854775793
  call void @llvm.assume(i1 %i.apx)
  %i.apy = sub nuw nsw i64 -16, %i.aps
  %i.apz = getelementptr inbounds i8, ptr %.sroa.6519.0.copyload719, i64 %i.apy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apz, i64 noundef %i.apv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !122906
  br label %bb.hm

bb.hm:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4517.0.copyload) ]
  %i.aqa = icmp ult i64 %.sroa.5518.0.copyload718, 230584300921369396
  call void @llvm.assume(i1 %i.aqa)
  %.idx1089 = mul nuw nsw i64 %.sroa.5518.0.copyload718, 40
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.4517.0.copyload, i64 %.idx1089 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.sroa.4517.0.copyload, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.0516.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.aqb, ptr %.sroa.4515.0..sroa_idx, align 8
  %i.aqc = icmp eq i64 %.sroa.5518.0.copyload718, 0
  br i1 %i.aqc, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph: ; preds = %bb.hm
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.hn:                                            ; preds = %.loopexit
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aqi, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !122907
  br label %.body373

.body373:                                         ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i407, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.hn
  %eh.lpad-body374 = phi { ptr, i32 } [ %i.aqg, %bb.hn ], [ %i.asd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.asd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i407 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #63
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ah)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit390

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit
  %i.aqh = phi ptr [ %.sroa.4517.0.copyload, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph ], [ %i.aqi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122907)
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 40 ; 7 uses
  %.sroa.0752.0.copyload = load i64, ptr %i.aqh, align 8, !noalias !122907 ; 5 uses
  %.sroa.6753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %.sroa.6753.0.copyload = load ptr, ptr %.sroa.6753.0..sroa_idx, align 8, !noalias !122907 ; 10 uses
  %.sroa.8756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqh, i64 32
  %.sroa.8756.0.copyload = load i32, ptr %.sroa.8756.0..sroa_idx, align 8, !noalias !122907
  %.not101 = icmp eq i64 %.sroa.0752.0.copyload, -1
  br i1 %.not101, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit, label %bb.ho

bb.ho:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.7754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  %.sroa.7754.0.copyload = load i64, ptr %.sroa.7754.0..sroa_idx, align 8, !noalias !122907 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6753.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aqj = icmp ult i64 %.sroa.7754.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.aqj)
  %.idx = mul nuw nsw i64 %.sroa.7754.0.copyload, 24
  %i.aqk = getelementptr inbounds nuw i8, ptr %.sroa.6753.0.copyload, i64 %.idx ; 4 uses
  %i.aql = icmp sgt i64 %.sroa.0752.0.copyload, -1
  call void @llvm.assume(i1 %i.aql)
  call void @llvm.experimental.noalias.scope.decl(metadata !122908)
  %.not15.i.i.i.i = icmp eq i64 %.sroa.7754.0.copyload, 0
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i366

.body.i372:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %.body.i.i.i.i.i
  %i.aqm = ptrtoint ptr %i.aqk to i64
  %i.aqn = ptrtoint ptr %i.aqz to i64
  %i.aqo = sub nuw i64 %i.aqm, %i.aqn
  %i.aqp = udiv exact i64 %i.aqo, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !122909), !noalias !122908
  %i.aqq = icmp eq ptr %i.aqk, %i.aqz
  br i1 %i.aqq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i401

.lr.ph.i.i.i.i401:                                ; preds = %.body.i372, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406
  %.sroa.0.012.i.i.i.i402 = phi i64 [ %i.aqs, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406 ], [ 0, %.body.i372 ] ; 2 uses
  %i.aqr = getelementptr inbounds nuw [24 x i8], ptr %i.aqz, i64 %.sroa.0.012.i.i.i.i402 ; 2 uses
  %i.aqs = add nuw nsw i64 %.sroa.0.012.i.i.i.i402, 1 ; 2 uses
  %.val8.i.i.i.i403 = load i64, ptr %i.aqr, align 8, !alias.scope !122909, !noalias !122910 ; 2 uses
  %i.aqt = icmp eq i64 %.val8.i.i.i.i403, 0
  br i1 %i.aqt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i404

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i404: ; preds = %.lr.ph.i.i.i.i401
  %i.aqu = getelementptr i8, ptr %i.aqr, i64 8
  %.val9.i.i.i.i405 = load ptr, ptr %i.aqu, align 8, !alias.scope !122909, !noalias !122910, !nonnull !56, !noundef !56
  %i.aqv = shl nuw i64 %.val8.i.i.i.i403, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i405, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !122911
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i404, %.lr.ph.i.i.i.i401
  %i.aqw = icmp eq i64 %i.aqs, %i.aqp
  br i1 %i.aqw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i401

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i406, %.body.i372
  %i.aqx = icmp eq i64 %.sroa.0752.0.copyload, 0
  br i1 %i.aqx, label %.body373, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i407

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i407: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.aqy = mul nuw i64 %.sroa.0752.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6753.0.copyload, i64 noundef %i.aqy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122910
  br label %.body373

.lr.ph.i.i.i.i366:                                ; preds = %bb.ho, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i
  %.sroa.4.016.i.i.i.i = phi ptr [ %i.aqz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i ], [ %.sroa.6753.0.copyload, %bb.ho ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i, align 8, !noalias !122912 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !122912, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i367 = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i368 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i367, align 8, !noalias !122912 ; 6 uses
  %i.aqz = getelementptr i8, ptr %.sroa.4.016.i.i.i.i, i64 24 ; 5 uses
  %i.ara = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i368, 2305843009213693952
  call void @llvm.assume(i1 %i.ara)
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i368, 2 ; 2 uses
  %i.arb = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.arc = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i368, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i368, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.hr, label %bb.hp, !prof !62

bb.hp:                                            ; preds = %.lr.ph.i.i.i.i366
  %i.ard = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i368, 0
  br i1 %i.ard, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !122913
  %i.are = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.arc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122913 ; 7 uses
  %i.arf = icmp eq ptr %i.are, null
  br i1 %i.arf, label %bb.hr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.hq
  %i.arg = add nsw i64 %.idx.i.i.i.i.i.i, -4      ; 3 uses
  %i.arh = lshr exact i64 %i.arg, 2
  %i.ari = add nuw nsw i64 %i.arh, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.arg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.arj = shl i64 %i.arg, 1
  %6 = getelementptr i8, ptr %i.are, i64 %i.arj
  %scevgep1777 = getelementptr i8, ptr %6, i64 8
  %bound0 = icmp ult ptr %i.are, %i.arb
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i, %scevgep1777
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ari, 9223372036854775804    ; 5 uses
  %i.ark = shl i64 %n.vec, 2
  %i.arl = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i, i64 %i.ark
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.arm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i, i64 %i.arm ; 2 uses
  %i.arn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !122914, !noalias !122915
  %wide.load1778 = load <2 x i32>, ptr %i.arn, align 4, !alias.scope !122914, !noalias !122915
  %i.aro = zext <2 x i32> %wide.load to <2 x i64>
  %i.arp = zext <2 x i32> %wide.load1778 to <2 x i64>
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %index ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  store <2 x i64> %i.aro, ptr %i.arq, align 8, !alias.scope !122916, !noalias !122917
  store <2 x i64> %i.arp, ptr %i.arr, align 8, !alias.scope !122916, !noalias !122917
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ars = icmp eq i64 %index.next, %n.vec
  br i1 %i.ars, label %middle.block, label %vector.body, !llvm.loop !122671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ari, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1784 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i, %vector.memcheck ], [ %.sroa.412.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.arl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hq, %.lr.ph.i.i.i.i366
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.hq ], [ 0, %.lr.ph.i.i.i.i366 ]
  store ptr %i.aqi, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !122907
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.arc) #61
          to label %bb.hs unwind label %bb.ht, !noalias !122918

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.art = phi i64 [ %i.arz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783 ] ; 2 uses
  %i.aru = phi ptr [ %i.arw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph1784, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1783 ] ; 2 uses
  %i.arv = load i32, ptr %i.aru, align 4, !noalias !122915, !noundef !56
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 4 ; 2 uses
  %i.arx = zext i32 %i.arv to i64
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %i.art
  store i64 %i.arx, ptr %i.ary, align 8, !noalias !122919
  %i.arz = add nuw nsw i64 %i.art, 1              ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.arw, %i.arb
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !122672

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.hp
  %i.asa = phi ptr [ inttoptr (i64 8 to ptr), %bb.hp ], [ %i.are, %middle.block ], [ %i.are, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.hp ], [ %n.vec, %middle.block ], [ %i.arz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asb = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i, 0
  br i1 %i.asb, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.asc = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i, i64 noundef %i.asc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !122915
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i

bb.hs:                                            ; preds = %bb.hr
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.asd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ase = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i, 0
  br i1 %i.ase, label %.body.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ht
  %i.asf = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i, i64 noundef %i.asf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !122920
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ht
  %i.asg = ptrtoint ptr %.sroa.4.016.i.i.i.i to i64
  %i.ash = ptrtoint ptr %.sroa.6753.0.copyload to i64
  %i.asi = sub nuw i64 %i.asg, %i.ash
  %i.asj = udiv exact i64 %i.asi, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !122921), !noalias !122922
  %i.ask = icmp eq ptr %.sroa.4.016.i.i.i.i, %.sroa.6753.0.copyload
  br i1 %i.ask, label %.body.i372, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.body.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.asm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i ] ; 2 uses
  %i.asl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6753.0.copyload, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.asm = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122923), !noalias !122922
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.asl, align 8, !alias.scope !122924, !noalias !122925 ; 2 uses
  %i.asn = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.asn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.aso, align 8, !alias.scope !122924, !noalias !122925, !nonnull !56, !noundef !56
  %i.asp = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.asp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122926
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.asq = icmp eq i64 %i.asm, %i.asj
  br i1 %i.asq, label %.body.i372, label %.lr.ph.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i368, ptr %.sroa.4.016.i.i.i.i, align 8, !noalias !122925
  store ptr %i.asa, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !122925
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i367, align 8, !noalias !122925
  %.not.i.i.i.i369 = icmp eq ptr %i.aqz, %i.aqk
  br i1 %.not.i.i.i.i369, label %.loopexit, label %.lr.ph.i.i.i.i366

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  store ptr %i.aqi, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !122907
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit, %bb.hm
  %i.asr = phi ptr [ %.sroa.4517.0.copyload, %bb.hm ], [ %i.aqi, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit ] ; 3 uses
  %i.ass = ptrtoint ptr %i.aqb to i64
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = sub nuw i64 %i.ass, %i.ast
  %i.asv = udiv exact i64 %i.asu, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !122927)
  %i.asw = icmp eq ptr %i.aqb, %i.asr
  br i1 %i.asw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i377

.lr.ph.i.i.i.i377:                                ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.asy, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %i.asx = getelementptr inbounds nuw [40 x i8], ptr %i.asr, i64 %.sroa.0.07.i.i.i.i ; 3 uses
  %i.asy = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122928)
  call void @llvm.experimental.noalias.scope.decl(metadata !122929)
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 8
  %.val.i.i.i.i.i.i378 = load ptr, ptr %i.asz, align 8, !alias.scope !122930, !noalias !122931, !nonnull !56, !noundef !56 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ata, align 8, !alias.scope !122930, !noalias !122931, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122932)
  %i.atb = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.atb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i377, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i = phi i64 [ %i.atd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i377 ] ; 2 uses
  %i.atc = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i378, i64 %.sroa.0.012.i.i.i.i.i.i.i.i ; 2 uses
  %i.atd = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.atc, align 8, !alias.scope !122932, !noalias !122933 ; 2 uses
  %i.ate = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.ate, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.atf = getelementptr i8, ptr %i.atc, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.atf, align 8, !alias.scope !122932, !noalias !122933, !nonnull !56, !noundef !56
  %i.atg = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.atg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !122934
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ath = icmp eq i64 %i.atd, %.val1.i.i.i.i.i.i
  br i1 %i.ath, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i377
  %.val2.i.i.i.i.i.i379 = load i64, ptr %i.asx, align 8, !alias.scope !122930, !noalias !122931 ; 2 uses
  %i.ati = icmp eq i64 %.val2.i.i.i.i.i.i379, 0
  br i1 %i.ati, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.atj = mul nuw i64 %.val2.i.i.i.i.i.i379, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i378, i64 noundef %i.atj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122933
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.atk = icmp eq i64 %i.asy, %i.asv
  br i1 %i.atk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i377

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.thread, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %i.atl = icmp eq i64 %.sroa.0516.0.copyload, 0
  br i1 %i.atl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.atm = mul nuw i64 %.sroa.0516.0.copyload, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4517.0.copyload, i64 noundef %i.atm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !122931
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.atn, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val122 = load ptr, ptr %.sroa.4541.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, label %bb.hu

bb.hu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val122) ]
  %i.ato = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i380 = load i64, ptr %i.ato, align 8, !noundef !56
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dx, %bb.dt, %.invoke721.i.i, %bb.df
  %lpad.loopexit.split-lp751 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val47.i.i = load i64, ptr %i.l, align 8, !noalias !124835 ; 2 uses
  %i.xd = icmp eq i64 %.val47.i.i, 0
  br i1 %i.xd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit178.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val48.i.i = load ptr, ptr %i.ml, align 8, !noalias !124835, !nonnull !56, !noundef !56
  %i.xe = shl nuw i64 %.val47.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i.i, i64 noundef %i.xe, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124835
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit178.i.i

bb.dy:                                            ; preds = %bb.bo, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i
  %.sroa.7253.i.sroa.8.0 = phi i64 [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.6.i.i.sroa.5.0, %bb.bo ]
  %.sroa.7253.i.sroa.0.0 = phi double [ 0.000000e+00, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 0.000000e+00, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.6.i.i.sroa.0.0, %bb.bo ]
  %.sroa.23.0.i = phi i32 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.15.0.i.i, %bb.bo ]
  %.sroa.21.0.i = phi i32 [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.14237.0.i.i, %bb.bo ]
  %.sroa.20.0.i = phi i64 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.14.0.i.i, %bb.bo ]
  %.sroa.18.0.i = phi ptr [ @1413, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ @1413, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.13.0.i.i, %bb.bo ]
  %.sroa.16.0.i = phi ptr [ %i.vs, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ %i.vs, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.12.0.i.i, %bb.bo ]
  %.sroa.14.0.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.11.0.i.i, %bb.bo ]
  %.sroa.12.0.i = phi i64 [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.10.0.i177.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !124835
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !124830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !124830
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i

bb.dz:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !124835
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !124830
  store double %.sroa.7253.i.sroa.0.0.copyload, ptr %i.t, align 8, !noalias !124830
  %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store <2 x i64> %i.qv, ptr %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !124830
  %.sroa.5359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.6360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x ptr> %i.qw, ptr %.sroa.5359.0..sroa_idx.i, align 8, !noalias !124830
  %.sroa.7361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.sroa.18.8.copyload269.i, ptr %.sroa.7361.0..sroa_idx.i, align 8, !noalias !124830
  %.sroa.8362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %.sroa.20.8.copyload273.i, ptr %.sroa.8362.0..sroa_idx.i, align 8, !noalias !124830
  %.sroa.9363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store <2 x i32> %i.qx, ptr %.sroa.9363.0..sroa_idx.i, align 8, !noalias !124830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !124830
  call void @llvm.experimental.noalias.scope.decl(metadata !124927)
  %i.xf = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc187.i unwind label %bb.eq, !noalias !124830

.noexc187.i:                                      ; preds = %bb.dz
  %i.xg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !124928
  %i.xh = icmp eq i8 %i.xg, 2
  br i1 %i.xh, label %bb.eb, label %bb.ea, !prof !66

bb.ea:                                            ; preds = %.noexc187.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.eb unwind label %bb.eq, !noalias !124830

bb.eb:                                            ; preds = %bb.ea, %.noexc187.i
  store i64 0, ptr %i.s, align 8, !alias.scope !124929, !noalias !124830
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !124929, !noalias !124830
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !124929, !noalias !124830
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !124830
  %i.xi = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  store i64 %i.xf, ptr %i.xi, align 8, !alias.scope !124929, !noalias !124830
  %.sroa.0284.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !124830 ; 3 uses
  %.sroa.4285.0.copyload.i = load ptr, ptr %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !124830 ; 6 uses
  %.sroa.7288.0.copyload.i = load i64, ptr %.sroa.6360.0..sroa_idx.i, align 8, !noalias !124830 ; 4 uses
  %i.xj = icmp eq i64 %.sroa.7288.0.copyload.i, 0
  br i1 %i.xj, label %bb.ec, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.8.copyload261.i) ]
  %i.xk = shl i64 %.sroa.7288.0.copyload.i, 3
  %i.xl = icmp slt i64 %.sroa.7288.0.copyload.i, 2305843009213693950
  call void @llvm.assume(i1 %i.xl)
  %i.xm = and i64 %i.xk, -16                      ; 2 uses
  %i.xn = add i64 %i.xm, 16                       ; 2 uses
  %i.xo = add nsw i64 %.sroa.7288.0.copyload.i, 17
  %i.xp = add i64 %i.xo, %i.xn                    ; 3 uses
  %i.xq = icmp uge i64 %i.xp, %i.xn
  call void @llvm.assume(i1 %i.xq)
  %i.xr = icmp ult i64 %i.xp, 9223372036854775793
  call void @llvm.assume(i1 %i.xr)
  %i.xs = sub nuw nsw i64 -16, %i.xm
  %i.xt = getelementptr inbounds i8, ptr %.sroa.14.8.copyload261.i, i64 %i.xs
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xt, i64 noundef %i.xp, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !124930
  br label %bb.ec

bb.ec:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4285.0.copyload.i) ]
  %i.xu = icmp ult i64 %.sroa.12.8.copyload257.i, 230584300921369396
  call void @llvm.assume(i1 %i.xu)
  %.idx586.i = mul nuw nsw i64 %.sroa.12.8.copyload257.i, 40
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.4285.0.copyload.i, i64 %.idx586.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !124830
  store ptr %.sroa.4285.0.copyload.i, ptr %i.r, align 8, !noalias !124830
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0284.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !124830
  %.sroa.4283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.xv, ptr %.sroa.4283.0..sroa_idx.i, align 8, !noalias !124830
  %i.xw = icmp eq i64 %.sroa.12.8.copyload257.i, 0
  br i1 %i.xw, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i: ; preds = %bb.ec
  %i.xx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.xz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.ed:                                            ; preds = %.loopexit.i
  %i.ya = landingpad { ptr, i32 }
          cleanup
  store ptr %i.yc, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !124931, !noalias !124830
  br label %.body199.i

.body199.i:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i232.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ed
  %eh.lpad-body200.i = phi { ptr, i32 } [ %i.ya, %bb.ed ], [ %i.zx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.zx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i232.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #63, !noalias !124830
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.s), !noalias !124830
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit223.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i
  %i.yb = phi ptr [ %.sroa.4285.0.copyload.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i ], [ %i.yc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124931)
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 40 ; 5 uses
  %.sroa.0397.0.copyload.i = load i64, ptr %i.yb, align 8, !noalias !124932 ; 5 uses
  %.sroa.6398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %.sroa.6398.0.copyload.i = load ptr, ptr %.sroa.6398.0..sroa_idx.i, align 8, !noalias !124932 ; 10 uses
  %.sroa.8401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  %.sroa.8401.0.copyload.i = load i32, ptr %.sroa.8401.0..sroa_idx.i, align 8, !noalias !124932
  %.not149.i = icmp eq i64 %.sroa.0397.0.copyload.i, -1
  br i1 %.not149.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.ee

bb.ee:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.7399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %.sroa.7399.0.copyload.i = load i64, ptr %.sroa.7399.0..sroa_idx.i, align 8, !noalias !124932 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6398.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !124830
  %i.yd = icmp ult i64 %.sroa.7399.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.yd)
  %.idx.i = mul nuw nsw i64 %.sroa.7399.0.copyload.i, 24
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.6398.0.copyload.i, i64 %.idx.i ; 4 uses
  %i.yf = icmp sgt i64 %.sroa.0397.0.copyload.i, -1
  call void @llvm.assume(i1 %i.yf)
  call void @llvm.experimental.noalias.scope.decl(metadata !124933)
  %.not15.i.i.i.i.i = icmp eq i64 %.sroa.7399.0.copyload.i, 0
  br i1 %.not15.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i192.i

.body.i198.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.yt to i64
  %i.yi = sub nuw i64 %i.yg, %i.yh
  %i.yj = udiv exact i64 %i.yi, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !124934), !noalias !124933
  %i.yk = icmp eq ptr %i.ye, %i.yt
  br i1 %i.yk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i226.i

.lr.ph.i.i.i.i226.i:                              ; preds = %.body.i198.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i
  %.sroa.0.012.i.i.i.i227.i = phi i64 [ %i.ym, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i ], [ 0, %.body.i198.i ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [24 x i8], ptr %i.yt, i64 %.sroa.0.012.i.i.i.i227.i ; 2 uses
  %i.ym = add nuw nsw i64 %.sroa.0.012.i.i.i.i227.i, 1 ; 2 uses
  %.val8.i.i.i.i228.i = load i64, ptr %i.yl, align 8, !alias.scope !124934, !noalias !124935 ; 2 uses
  %i.yn = icmp eq i64 %.val8.i.i.i.i228.i, 0
  br i1 %i.yn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i229.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i229.i: ; preds = %.lr.ph.i.i.i.i226.i
  %i.yo = getelementptr i8, ptr %i.yl, i64 8
  %.val9.i.i.i.i230.i = load ptr, ptr %i.yo, align 8, !alias.scope !124934, !noalias !124935, !nonnull !56, !noundef !56
  %i.yp = shl nuw i64 %.val8.i.i.i.i228.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i230.i, i64 noundef %i.yp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124936
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i229.i, %.lr.ph.i.i.i.i226.i
  %i.yq = icmp eq i64 %i.ym, %i.yj
  br i1 %i.yq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i226.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i231.i, %.body.i198.i
  %i.yr = icmp eq i64 %.sroa.0397.0.copyload.i, 0
  br i1 %i.yr, label %.body199.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i232.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i232.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ys = mul nuw i64 %.sroa.0397.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6398.0.copyload.i, i64 noundef %i.ys, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124935
  br label %.body199.i

.lr.ph.i.i.i.i192.i:                              ; preds = %bb.ee, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %i.yt, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i ], [ %.sroa.6398.0.copyload.i, %bb.ee ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !124937 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !124937, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i193.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i194.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i193.i, align 8, !noalias !124937 ; 6 uses
  %i.yt = getelementptr i8, ptr %.sroa.4.016.i.i.i.i.i, i64 24 ; 5 uses
  %i.yu = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i194.i, 2305843009213693952
  call void @llvm.assume(i1 %i.yu)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i194.i, 2 ; 2 uses
  %i.yv = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.yw = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i194.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i194.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.eh, label %bb.ef, !prof !62

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i192.i
  %i.yx = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i194.i, 0
  br i1 %i.yx, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !124938
  %i.yy = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.yw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124938 ; 7 uses
  %i.yz = icmp eq ptr %i.yy, null
  br i1 %i.yz, label %bb.eh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.eg
  %i.za = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 3 uses
  %i.zb = lshr exact i64 %i.za, 2
  %i.zc = add nuw nsw i64 %i.zb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.za, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.zd = shl i64 %i.za, 1
  %5 = getelementptr i8, ptr %i.yy, i64 %i.zd
  %scevgep719 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.yy, %i.yv
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i.i, %scevgep719
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zc, 9223372036854775804     ; 5 uses
  %i.ze = shl i64 %n.vec, 2
  %i.zf = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.ze
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.zg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %i.zg ; 2 uses
  %i.zh = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !124939, !noalias !124940
  %wide.load720 = load <2 x i32>, ptr %i.zh, align 4, !alias.scope !124939, !noalias !124940
  %i.zi = zext <2 x i32> %wide.load to <2 x i64>
  %i.zj = zext <2 x i32> %wide.load720 to <2 x i64>
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %index ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store <2 x i64> %i.zi, ptr %i.zk, align 8, !alias.scope !124941, !noalias !124942
  store <2 x i64> %i.zj, ptr %i.zl, align 8, !alias.scope !124941, !noalias !124942
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.zm = icmp eq i64 %index.next, %n.vec
  br i1 %i.zm, label %middle.block, label %vector.body, !llvm.loop !124793

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723:    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph724 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i.i, %vector.memcheck ], [ %.sroa.412.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.zf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eh:                                            ; preds = %bb.eg, %.lr.ph.i.i.i.i192.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.eg ], [ 0, %.lr.ph.i.i.i.i192.i ]
  store ptr %i.yc, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !124931, !noalias !124830
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.yw) #61
          to label %bb.ei unwind label %bb.ej, !noalias !124943

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zn = phi i64 [ %i.zt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723 ] ; 2 uses
  %i.zo = phi ptr [ %i.zq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph724, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader723 ] ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !noalias !124940, !noundef !56
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 4 ; 2 uses
  %i.zr = zext i32 %i.zp to i64
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.zn
  store i64 %i.zr, ptr %i.zs, align 8, !noalias !124944
  %i.zt = add nuw nsw i64 %i.zn, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zq, %i.yv
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !124794

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.ef
  %i.zu = phi ptr [ inttoptr (i64 8 to ptr), %bb.ef ], [ %i.yy, %middle.block ], [ %i.yy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ef ], [ %n.vec, %middle.block ], [ %i.zt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.zv = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.zv, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zw = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.zw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124940
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.zx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zy = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.zy, label %.body.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ej
  %i.zz = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.zz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124945
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.ej
  %i.aaa = ptrtoint ptr %.sroa.4.016.i.i.i.i.i to i64
  %i.aab = ptrtoint ptr %.sroa.6398.0.copyload.i to i64
  %i.aac = sub nuw i64 %i.aaa, %i.aab
  %i.aad = udiv exact i64 %i.aac, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !124946), !noalias !124947
  %i.aae = icmp eq ptr %.sroa.4.016.i.i.i.i.i, %.sroa.6398.0.copyload.i
  br i1 %i.aae, label %.body.i198.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.body.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.aag, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6398.0.copyload.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.aag = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124948), !noalias !124947
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aaf, align 8, !alias.scope !124949, !noalias !124950 ; 2 uses
  %i.aah = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aah, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aai, align 8, !alias.scope !124949, !noalias !124950, !nonnull !56, !noundef !56
  %i.aaj = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.aaj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124951
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.aak = icmp eq i64 %i.aag, %i.aad
  br i1 %i.aak, label %.body.i198.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i194.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !124950
  store ptr %i.zu, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !124950
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i193.i, align 8, !noalias !124950
  %.not.i.i.i.i195.i = icmp eq ptr %i.yt, %i.ye
  br i1 %.not.i.i.i.i195.i, label %.loopexit.i, label %.lr.ph.i.i.i.i192.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %bb.ec
  %i.aal = phi ptr [ %.sroa.4285.0.copyload.i, %bb.ec ], [ %i.yc, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %i.aam = ptrtoint ptr %i.xv to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub nuw i64 %i.aam, %i.aan
  %i.aap = udiv exact i64 %i.aao, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !124952)
  %i.aaq = icmp eq ptr %i.xv, %i.aal
  br i1 %i.aaq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i203.i

.lr.ph.i.i.i.i203.i:                              ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.aas, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i ] ; 2 uses
  %i.aar = getelementptr inbounds nuw [40 x i8], ptr %i.aal, i64 %.sroa.0.07.i.i.i.i.i ; 3 uses
  %i.aas = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124953)
  call void @llvm.experimental.noalias.scope.decl(metadata !124954)
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %.val.i.i.i.i.i.i204.i = load ptr, ptr %i.aat, align 8, !alias.scope !124955, !noalias !124956, !nonnull !56, !noundef !56 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aau, align 8, !alias.scope !124955, !noalias !124956, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124957)
  %i.aav = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aav, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i203.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aax, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i203.i ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i204.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aax = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aaw, align 8, !alias.scope !124957, !noalias !124958 ; 2 uses
  %i.aay = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aaz = getelementptr i8, ptr %i.aaw, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aaz, align 8, !alias.scope !124957, !noalias !124958, !nonnull !56, !noundef !56
  %i.aba = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %i.aba, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124959
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.abb = icmp eq i64 %i.aax, %.val1.i.i.i.i.i.i.i
  br i1 %i.abb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i203.i
  %.val2.i.i.i.i.i.i205.i = load i64, ptr %i.aar, align 8, !alias.scope !124955, !noalias !124956 ; 2 uses
  %i.abc = icmp eq i64 %.val2.i.i.i.i.i.i205.i, 0
  br i1 %i.abc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.abd = mul nuw i64 %.val2.i.i.i.i.i.i205.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i204.i, i64 noundef %i.abd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124958
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.abe = icmp eq i64 %i.aas, %i.aap
  br i1 %i.abe, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i203.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.abf = icmp eq i64 %.sroa.0284.0.copyload.i, 0
  br i1 %i.abf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.abg = mul nuw i64 %.sroa.0284.0.copyload.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4285.0.copyload.i, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124956
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !124830
  %.sroa.8.8.copyload84 = load double, ptr %i.s, align 8, !noalias !124827
  %i.abh = load <2 x i64>, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !124827
  %i.abi = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !124827
  %.sroa.25.8..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.25.8.copyload106 = load ptr, ptr %.sroa.25.8..sroa_idx105, align 8, !noalias !124827
  %.sroa.28.8..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.28.8.copyload110 = load i64, ptr %.sroa.28.8..sroa_idx109, align 8, !noalias !124827
  %i.abj = load <2 x i32>, ptr %i.xi, align 8, !noalias !124827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !124830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !124830
  br i1 %.not153.i, label %bb.fm, label %bb.ek

bb.ek:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val.i.i.i.i.i206.i = load i64, ptr %i.dp, align 8, !noalias !124830, !noundef !56
  %i.abk = icmp sgt i64 %.val.i.i.i.i.i206.i, 0
  br i1 %i.abk, label %bb.em, label %bb.el, !prof !109
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx9traversal29___pyfunction_graph_bfs_layers:bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i52.i.i, i64 %.sroa.4.121.i.i.i.i.i
  %i.he = load i8, ptr %i.hd, align 1, !noalias !145566, !noundef !56 ; 2 uses
  %i.hf = icmp sgt i8 %i.he, -1
  br i1 %i.hf, label %bb.an, label %bb.ao, !prof !60

bb.an:                                            ; preds = %bb.am
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i52.i.i, align 16, !noalias !145566
  %i.hg = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.hh = bitcast <16 x i1> %i.hg to i16          ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.hh, 0
  %i.hi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hh, i1 true)
  %i.hj = zext nneg i16 %i.hi to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i52.i.i, i64 %i.hj
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !145592
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hk = phi i8 [ %.pre.i.i.i, %bb.an ], [ %i.he, %bb.am ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.hj, %bb.an ], [ %.sroa.4.121.i.i.i.i.i, %bb.am ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145593)
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i.i52.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.hm = and i8 %i.hk, 1
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.hp = and i64 %i.ho, %.val5.i.i.i.i
  store i8 %i.gb, ptr %i.hl, align 1, !noalias !145592
  %i.hq = getelementptr i8, ptr %.val.i.i52.i.i, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  store i8 %i.gb, ptr %i.hr, align 1, !noalias !145592
  %i.hs = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !145594, !noalias !145566
  %i.ht = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.hn, i64 0
  %i.hu = sub <2 x i64> %i.hs, %i.ht
  store <2 x i64> %i.hu, ptr %i.cv, align 8, !alias.scope !145594, !noalias !145566
  %i.hv = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.hw = getelementptr inbounds [4 x i8], ptr %.val.i.i52.i.i, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -4
  store i32 %.sroa.398.12.extract.trunc.i.i, ptr %i.hx, align 4, !noalias !145592
  %i.hy = load i64, ptr %i.cq, align 8, !alias.scope !145595, !noalias !145566, !noundef !56 ; 3 uses
  %i.hz = load i64, ptr %i.a, align 8, !range !59, !alias.scope !145595, !noalias !145566, !noundef !56
  %i.ia = icmp eq i64 %i.hy, %i.hz
  br i1 %i.ia, label %bb.ap, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !145566

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ap, %bb.ao
  %i.ib = load ptr, ptr %i.cp, align 8, !alias.scope !145595, !noalias !145566, !nonnull !56, !noundef !56
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hy
  store i32 %.sroa.398.12.extract.trunc.i.i, ptr %i.ic, align 4, !noalias !145566
  %i.id = add i64 %i.hy, 1
  store i64 %i.id, ptr %i.cq, align 8, !alias.scope !145595, !noalias !145566
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge: ; preds = %.lr.ph.i.i.i53.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i: ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i
  %.sroa.0101.0.copyload.pre.i.i = load i64, ptr %i.a, align 8, !noalias !145566 ; 2 uses
  %.sroa.5102.0.copyload.pre.i.i = load ptr, ptr %i.cp, align 8, !noalias !145566 ; 2 uses
  %.sroa.7103.0.copyload.pre.i.i = load i64, ptr %i.cq, align 8, !noalias !145566 ; 3 uses
  %i.ie = icmp eq i64 %.sroa.0.1152.i.i, 0
  br i1 %i.ie, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit59.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i58.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i58.i.i: ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i
  %i.if = shl nuw i64 %.sroa.0.1152.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1151.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145566
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit59.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit59.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i58.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145566
  %i.ig = icmp ult i64 %.sroa.7103.0.copyload.pre.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp eq i64 %.sroa.7103.0.copyload.pre.i.i, 0
  br i1 %i.ih, label %._crit_edge155.i.i, label %bb.u

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.val26.i.i = load ptr, ptr %i.cp, align 8, !noalias !145566, !nonnull !56, !noundef !56
  %i.ii = shl nuw i64 %.val25.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145566
  br label %.body42.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i, %._crit_edge155.i.i
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !145566 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val19.i.i = load i64, ptr %i.ij, align 8, !noalias !145566, !noundef !56 ; 4 uses
  %i.ik = icmp eq i64 %.val19.i.i, 0
  br i1 %i.ik, label %bb.as, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i62.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i62.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  %i.il = shl i64 %.val19.i.i, 2
  %i.im = icmp slt i64 %.val19.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.im)
  %i.in = and i64 %i.il, -16                      ; 2 uses
  %i.io = add i64 %i.in, 16                       ; 2 uses
  %i.ip = add nsw i64 %.val19.i.i, 17
  %i.iq = add i64 %i.ip, %i.io                    ; 4 uses
  %i.ir = icmp uge i64 %i.iq, %i.io
  %i.is = icmp ult i64 %i.iq, 9223372036854775793
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.assume(i1 %i.is)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.it = icmp eq i64 %i.iq, 0
  br i1 %i.it, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i62.i.i
  %i.iu = sub nuw nsw i64 -16, %i.in
  %i.iv = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.iu
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iv, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !145566
  br label %bb.as

bb.ar:                                            ; preds = %bb.p, %bb.o
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ix, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i.i: ; preds = %bb.ar
  %i.iy = shl nuw i64 %.sroa.0.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.iy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145566
  br label %.body.thread

bb.as:                                            ; preds = %bb.aq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i62.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !145563
  %i.iz = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.at unwind label %bb.bk, !noalias !145563 ; 4 uses

bb.at:                                            ; preds = %bb.as
  store ptr %i.iz, ptr %i.f, align 8, !noalias !145563
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !145563, !nonnull !56, !noundef !56 ; 6 uses
  %i.jc = load i64, ptr %i.g, align 8, !range !59, !noalias !145563, !noundef !56 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noalias !145563, !noundef !56 ; 3 uses
  %i.jf = icmp ult i64 %i.je, 384307168202282326
  call void @llvm.assume(i1 %i.jf)
  %.idx171.i = mul nuw nsw i64 %i.je, 24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx171.i ; 7 uses
  %i.jh = icmp eq i64 %i.je, 0
  br i1 %i.jh, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i: ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

.body50.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i, %.body57.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.az
  %.pn.i = phi { ptr, i32 } [ %i.lc, %bb.az ], [ %eh.lpad-body58.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i ], [ %i.lc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body58.i, %.body57.i ]
  %i.jj = ptrtoint ptr %i.jg to i64
  %i.jk = ptrtoint ptr %i.jx to i64
  %i.jl = sub nuw i64 %i.jj, %i.jk
  %i.jm = udiv exact i64 %i.jl, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !145596), !noalias !145563
  %i.jn = icmp eq ptr %i.jg, %i.jx
  br i1 %i.jn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body50.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34
  %.sroa.0.012.i.i.i = phi i64 [ %i.jp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34 ], [ 0, %.body50.i ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.jp = add nuw nsw i64 %.sroa.0.012.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.jo, align 8, !alias.scope !145596, !noalias !145597 ; 2 uses
  %i.jq = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.jq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jr = getelementptr i8, ptr %i.jo, i64 8
  %.val9.i.i.i = load ptr, ptr %i.jr, align 8, !alias.scope !145596, !noalias !145597, !nonnull !56, !noundef !56
  %i.js = shl nuw i64 %.val8.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.js, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145598
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.lr.ph.i.i.i
  %i.jt = icmp eq i64 %i.jp, %i.jm
  br i1 %i.jt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34, %.body50.i
  %i.ju = icmp eq i64 %i.jc, 0
  br i1 %i.ju, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jv = mul nuw i64 %i.jc, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145597
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i
  call void @_Py_DecRef(ptr noundef nonnull %i.iz) #59, !noalias !145563
  br label %.body.thread

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i
  %i.jw = phi ptr [ %i.jb, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i ], [ %i.jx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i ] ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 9 uses
  %.sroa.082.0.copyload.i = load i64, ptr %i.jw, align 8, !noalias !145599 ; 6 uses
  %.sroa.783.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.783.0.copyload.i = load ptr, ptr %.sroa.783.0..sroa_idx.i, align 8, !noalias !145599 ; 9 uses
  %.not32.i = icmp eq i64 %.sroa.082.0.copyload.i, -1
  br i1 %.not32.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !145599 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.783.0.copyload.i) ]
  %i.jy = icmp ult i64 %.sroa.8.0.copyload.i, 2305843009213693952
  call void @llvm.assume(i1 %i.jy)
  %.idx.i = shl nuw nsw i64 %.sroa.8.0.copyload.i, 2 ; 2 uses
  %i.jz = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %.idx.i ; 2 uses
  %i.ka = icmp sgt i64 %.sroa.082.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ka)
  %i.kb = shl nuw i64 %.sroa.8.0.copyload.i, 3    ; 5 uses
  %.not.i.i49.i = icmp samesign ugt i64 %.sroa.8.0.copyload.i, 1152921504606846975
  br i1 %.not.i.i49.i, label %bb.ax, label %bb.av, !prof !62

bb.av:                                            ; preds = %bb.au
  %i.kc = icmp eq i64 %.sroa.8.0.copyload.i, 0    ; 4 uses
  br i1 %i.kc, label %._crit_edge.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !145600
  %i.kd = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145600 ; 7 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.ax, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.aw
  %i.kf = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %i.kf, 28
  br i1 %min.iters.check430, label %.lr.ph.i.i.i.i.i.i.i.preheader442, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ki = shl i64 %i.kf, 1
  %5 = getelementptr i8, ptr %i.kd, i64 %i.ki
  %scevgep428 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.kd, %i.jz
  %bound1 = icmp ult ptr %.sroa.783.0.copyload.i, %scevgep428
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader442, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck
  %n.vec432 = and i64 %i.kh, 9223372036854775804  ; 5 uses
  %i.kj = shl i64 %n.vec432, 2
  %i.kk = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %i.kj
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next438, %vector.body433 ] ; 3 uses
  %i.kl = shl i64 %index434, 2
  %next.gep435 = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %i.kl ; 2 uses
  %i.km = getelementptr i8, ptr %next.gep435, i64 8
  %wide.load436 = load <2 x i32>, ptr %next.gep435, align 4, !alias.scope !145601, !noalias !145602
  %wide.load437 = load <2 x i32>, ptr %i.km, align 4, !alias.scope !145601, !noalias !145602
  %i.kn = zext <2 x i32> %wide.load436 to <2 x i64>
  %i.ko = zext <2 x i32> %wide.load437 to <2 x i64>
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index434 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <2 x i64> %i.kn, ptr %i.kp, align 8, !alias.scope !145603, !noalias !145604
  store <2 x i64> %i.ko, ptr %i.kq, align 8, !alias.scope !145603, !noalias !145604
  %index.next438 = add nuw i64 %index434, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next438, %n.vec432
  br i1 %i.kr, label %middle.block439, label %vector.body433, !llvm.loop !145528

middle.block439:                                  ; preds = %vector.body433
  %cmp.n = icmp eq i64 %i.kh, %n.vec432
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader442

.lr.ph.i.i.i.i.i.i.i.preheader442:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block439
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec432, %middle.block439 ]
  %.ph443 = phi ptr [ %.sroa.783.0.copyload.i, %vector.memcheck ], [ %.sroa.783.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kk, %middle.block439 ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.aw ], [ 0, %bb.au ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.kb) #61
          to label %bb.ay unwind label %bb.az, !noalias !145605

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader442, %.lr.ph.i.i.i.i.i.i.i
  %i.ks = phi i64 [ %i.ky, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader442 ] ; 2 uses
  %i.kt = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph443, %.lr.ph.i.i.i.i.i.i.i.preheader442 ] ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !noalias !145602, !noundef !56
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 4 ; 2 uses
  %i.kw = zext i32 %i.ku to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ks
  store i64 %i.kw, ptr %i.kx, align 8, !noalias !145606
  %i.ky = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.kv, %i.jz
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !145529

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block439, %bb.av
  %i.kz = phi ptr [ inttoptr (i64 8 to ptr), %bb.av ], [ %i.kd, %middle.block439 ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.av ], [ %n.vec432, %middle.block439 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i.i ]
  %i.la = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.la, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_layers0EE9from_iterB3F_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.lb = shl nuw i64 %.sroa.082.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.783.0.copyload.i, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145602
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_layers0EE9from_iterB3F_.exit.i

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.ld, label %.body50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.az
  %i.le = shl nuw i64 %.sroa.082.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.783.0.copyload.i, i64 noundef %i.le, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145607
  br label %.body50.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %bb.at
  %i.lf = phi ptr [ %i.jb, %bb.at ], [ %i.jx, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %i.lg = ptrtoint ptr %i.jg to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub nuw i64 %i.lg, %i.lh
  %i.lj = udiv exact i64 %i.li, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !145608)
  %i.lk = icmp eq ptr %i.jg, %i.lf
  br i1 %i.lk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i54.i

.lr.ph.i.i.i54.i:                                 ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.lm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.lm = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ll, align 8, !alias.scope !145608, !noalias !145609 ; 2 uses
  %i.ln = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ln, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i54.i
  %i.lo = getelementptr i8, ptr %i.ll, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.lo, align 8, !alias.scope !145608, !noalias !145609, !nonnull !56, !noundef !56
  %i.lp = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.lp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !145610
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i54.i
  %i.lq = icmp eq i64 %i.lm, %i.lj
  br i1 %i.lq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i54.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.lr = icmp eq i64 %i.jc, 0
  br i1 %i.lr, label %bb.bn, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.ls = mul nuw i64 %i.jc, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef %i.ls, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145609
  br label %bb.bn

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_layers0EE9from_iterB3F_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145563
  invoke fastcc void @_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newRjRINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr nonnull %i.kz, i64 %.sroa.42.0.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3161)
          to label %bb.bb unwind label %bb.ba, !noalias !145563

bb.ba:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_layers0EE9from_iterB3F_.exit.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

.body57.i:                                        ; preds = %bb.be, %bb.ba
  %eh.lpad-body58.i = phi { ptr, i32 } [ %i.lt, %bb.ba ], [ %i.lw, %bb.be ] ; 2 uses
  br i1 %i.kc, label %.body50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i: ; preds = %.body57.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kz, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145611
  br label %.body50.i

bb.bb:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_layers0EE9from_iterB3F_.exit.i
  %i.lu = load i64, ptr %i.e, align 8, !range !57, !noalias !145563, !noundef !56
  %i.lv = trunc nuw i64 %i.lu to i1
  %.sroa.027.0.copyload.i = load ptr, ptr %i.ji, align 8, !noalias !145563 ; 4 uses
  br i1 %i.lv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.428.0..sroa_idx.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145563
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145563
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtBa_8instance5BoundNtB6_6PyListENtB6_13PyListMethods6append5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull %.sroa.027.0.copyload.i)
          to label %bb.bf unwind label %bb.be, !noalias !145563

bb.be:                                            ; preds = %bb.bd
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.027.0.copyload.i) #59, !noalias !145612
  br label %.body57.i

bb.bf:                                            ; preds = %bb.bd
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.027.0.copyload.i) #59, !noalias !145612
  %i.lx = load i64, ptr %i.d, align 8, !range !57, !noalias !145563, !noundef !56
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8.copyload36 = load ptr, ptr %i.lz, align 8, !noalias !145564
  %.sroa.13.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.8..sroa_idx38, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145563
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145563
  br i1 %i.kc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i: ; preds = %bb.bh
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kz, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145613
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i, %bb.bh
  %i.ma = icmp eq ptr %i.jx, %i.jg
  br i1 %i.ma, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.bi:                                            ; preds = %bb.bg, %bb.bc
  %.sroa.7.0 = phi ptr [ %.sroa.027.0.copyload.i, %bb.bc ], [ %.sroa.7.8.copyload36, %bb.bg ]
  br i1 %i.kc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i: ; preds = %bb.bi
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kz, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145614
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i, %bb.bi
  %i.mb = ptrtoint ptr %i.jg to i64
  %i.mc = ptrtoint ptr %i.jx to i64
  %i.md = sub nuw i64 %i.mb, %i.mc
  %i.me = udiv exact i64 %i.md, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !145615)
  %i.mf = icmp eq ptr %i.jg, %i.jx
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx9traversal31___pyfunction_digraph_bfs_layers:bb.a
  %i.gx = icmp sgt i8 %i.gw, -1
  br i1 %i.gx, label %bb.ai, label %bb.aj, !prof !60

bb.ai:                                            ; preds = %bb.ah
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i51.i.i, align 16, !noalias !146122
  %i.gy = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.gz = bitcast <16 x i1> %i.gy to i16          ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.gz, 0
  %i.ha = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gz, i1 true)
  %i.hb = zext nneg i16 %i.ha to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i51.i.i, i64 %i.hb
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !146148
  br label %bb.aj

_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %.lr.ph.i.i.i52.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.hc = zext i32 %i.ff to i64                   ; 2 uses
  %i.hd = icmp ugt i64 %i.cu, %i.hc
  br i1 %i.hd, label %.lr.ph132.i.i, label %._crit_edge133.i.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.he = phi i8 [ %.pre.i.i.i, %bb.ai ], [ %i.gw, %bb.ah ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.hb, %bb.ai ], [ %.sroa.4.121.i.i.i.i.i, %bb.ah ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146149)
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i.i51.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.hg = and i8 %i.he, 1
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.hj = and i64 %i.hi, %.val5.i.i.i.i
  store i8 %i.ft, ptr %i.hf, align 1, !noalias !146148
  %i.hk = getelementptr i8, ptr %.val.i.i51.i.i, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  store i8 %i.ft, ptr %i.hl, align 1, !noalias !146148
  %i.hm = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !146150, !noalias !146122
  %i.hn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.hh, i64 0
  %i.ho = sub <2 x i64> %i.hm, %i.hn
  store <2 x i64> %i.ho, ptr %i.cv, align 8, !alias.scope !146150, !noalias !146122
  %i.hp = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val.i.i51.i.i, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4
  store i32 %.sroa.399.12.extract.trunc.i.i, ptr %i.hr, align 4, !noalias !146148
  %i.hs = load i64, ptr %i.cq, align 8, !alias.scope !146151, !noalias !146122, !noundef !56 ; 3 uses
  %i.ht = load i64, ptr %i.a, align 8, !range !59, !alias.scope !146151, !noalias !146122, !noundef !56
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.ak, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.aa, !noalias !146122

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.hv = load ptr, ptr %i.cp, align 8, !alias.scope !146151, !noalias !146122, !nonnull !56, !noundef !56
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hs
  store i32 %.sroa.399.12.extract.trunc.i.i, ptr %i.hw, align 4, !noalias !146122
  %i.hx = add i64 %i.hs, 1
  store i64 %i.hx, ptr %i.cq, align 8, !alias.scope !146151, !noalias !146122
  br label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

._crit_edge139.i.i:                               ; preds = %._crit_edge133.i.i
  %.sroa.0102.0.copyload.pre.i.i = load i64, ptr %i.a, align 8, !noalias !146122 ; 2 uses
  %.sroa.5103.0.copyload.pre.i.i = load ptr, ptr %i.cp, align 8, !noalias !146122 ; 2 uses
  %.sroa.7104.0.copyload.pre.i.i = load i64, ptr %i.cq, align 8, !noalias !146122 ; 3 uses
  %i.hy = icmp eq i64 %.sroa.0.1142.i.i, 0
  br i1 %i.hy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit58.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i57.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i57.i.i: ; preds = %._crit_edge139.i.i
  %i.hz = shl nuw i64 %.sroa.0.1142.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1141.i.i, i64 noundef %i.hz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146122
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit58.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit58.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i57.i.i, %._crit_edge139.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146122
  %i.ia = icmp ult i64 %.sroa.7104.0.copyload.pre.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp eq i64 %.sroa.7104.0.copyload.pre.i.i, 0
  br i1 %i.ib, label %._crit_edge145.i.i, label %bb.u

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i59.i.i: ; preds = %bb.aa
  %.val26.i.i = load ptr, ptr %i.cp, align 8, !noalias !146122, !nonnull !56, !noundef !56
  %i.ic = shl nuw i64 %.val25.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146122
  br label %.body42.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i, %._crit_edge145.i.i
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !146122 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val19.i.i = load i64, ptr %i.id, align 8, !noalias !146122, !noundef !56 ; 4 uses
  %i.ie = icmp eq i64 %.val19.i.i, 0
  br i1 %i.ie, label %bb.an, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i61.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i61.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  %i.if = shl i64 %.val19.i.i, 2
  %i.ig = icmp slt i64 %.val19.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ig)
  %i.ih = and i64 %i.if, -16                      ; 2 uses
  %i.ii = add i64 %i.ih, 16                       ; 2 uses
  %i.ij = add nsw i64 %.val19.i.i, 17
  %i.ik = add i64 %i.ij, %i.ii                    ; 4 uses
  %i.il = icmp uge i64 %i.ik, %i.ii
  %i.im = icmp ult i64 %i.ik, 9223372036854775793
  call void @llvm.assume(i1 %i.il)
  call void @llvm.assume(i1 %i.im)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.in = icmp eq i64 %i.ik, 0
  br i1 %i.in, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i61.i.i
  %i.io = sub nuw nsw i64 -16, %i.ih
  %i.ip = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.io
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ip, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !146122
  br label %bb.an

bb.am:                                            ; preds = %bb.p, %bb.o
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ir, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i63.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i63.i.i: ; preds = %bb.am
  %i.is = shl nuw i64 %.sroa.0.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146122
  br label %.body.thread

bb.an:                                            ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i61.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146119
  %i.it = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.ao unwind label %bb.bf, !noalias !146119 ; 4 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.it, ptr %i.f, align 8, !noalias !146119
  %i.iu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !146119, !nonnull !56, !noundef !56 ; 6 uses
  %i.iw = load i64, ptr %i.g, align 8, !range !59, !noalias !146119, !noundef !56 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !146119, !noundef !56 ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 384307168202282326
  call void @llvm.assume(i1 %i.iz)
  %.idx161.i = mul nuw nsw i64 %i.iy, 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx161.i ; 7 uses
  %i.jb = icmp eq i64 %i.iy, 0
  br i1 %i.jb, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i: ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

.body50.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i, %.body57.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.au
  %.pn.i = phi { ptr, i32 } [ %i.kw, %bb.au ], [ %eh.lpad-body58.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i ], [ %i.kw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body58.i, %.body57.i ]
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = ptrtoint ptr %i.jr to i64
  %i.jf = sub nuw i64 %i.jd, %i.je
  %i.jg = udiv exact i64 %i.jf, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !146152), !noalias !146119
  %i.jh = icmp eq ptr %i.ja, %i.jr
  br i1 %i.jh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body50.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34
  %.sroa.0.012.i.i.i = phi i64 [ %i.jj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34 ], [ 0, %.body50.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.jj = add nuw nsw i64 %.sroa.0.012.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !146152, !noalias !146153 ; 2 uses
  %i.jk = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.jk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jl = getelementptr i8, ptr %i.ji, i64 8
  %.val9.i.i.i = load ptr, ptr %i.jl, align 8, !alias.scope !146152, !noalias !146153, !nonnull !56, !noundef !56
  %i.jm = shl nuw i64 %.val8.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.jm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146154
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.lr.ph.i.i.i
  %i.jn = icmp eq i64 %i.jj, %i.jg
  br i1 %i.jn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i34, %.body50.i
  %i.jo = icmp eq i64 %i.iw, 0
  br i1 %i.jo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jp = mul nuw i64 %i.iw, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iv, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146153
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i
  call void @_Py_DecRef(ptr noundef nonnull %i.it) #59, !noalias !146119
  br label %.body.thread

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i
  %i.jq = phi ptr [ %i.iv, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i ], [ %i.jr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i ] ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 9 uses
  %.sroa.082.0.copyload.i = load i64, ptr %i.jq, align 8, !noalias !146155 ; 6 uses
  %.sroa.783.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.783.0.copyload.i = load ptr, ptr %.sroa.783.0..sroa_idx.i, align 8, !noalias !146155 ; 9 uses
  %.not32.i = icmp eq i64 %.sroa.082.0.copyload.i, -1
  br i1 %.not32.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !146155 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.783.0.copyload.i) ]
  %i.js = icmp ult i64 %.sroa.8.0.copyload.i, 2305843009213693952
  call void @llvm.assume(i1 %i.js)
  %.idx.i = shl nuw nsw i64 %.sroa.8.0.copyload.i, 2 ; 2 uses
  %i.jt = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %.idx.i ; 2 uses
  %i.ju = icmp sgt i64 %.sroa.082.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ju)
  %i.jv = shl nuw i64 %.sroa.8.0.copyload.i, 3    ; 5 uses
  %.not.i.i49.i = icmp samesign ugt i64 %.sroa.8.0.copyload.i, 1152921504606846975
  br i1 %.not.i.i49.i, label %bb.as, label %bb.aq, !prof !62

bb.aq:                                            ; preds = %bb.ap
  %i.jw = icmp eq i64 %.sroa.8.0.copyload.i, 0    ; 4 uses
  br i1 %i.jw, label %._crit_edge.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !146156
  %i.jx = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146156 ; 7 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ar
  %i.jz = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.ka = lshr exact i64 %i.jz, 2
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %min.iters.check385 = icmp ult i64 %i.jz, 28
  br i1 %min.iters.check385, label %.lr.ph.i.i.i.i.i.i.i.preheader397, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.kc = shl i64 %i.jz, 1
  %5 = getelementptr i8, ptr %i.jx, i64 %i.kc
  %scevgep383 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.jx, %i.jt
  %bound1 = icmp ult ptr %.sroa.783.0.copyload.i, %scevgep383
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader397, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck
  %n.vec387 = and i64 %i.kb, 9223372036854775804  ; 5 uses
  %i.kd = shl i64 %n.vec387, 2
  %i.ke = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %i.kd
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next393, %vector.body388 ] ; 3 uses
  %i.kf = shl i64 %index389, 2
  %next.gep390 = getelementptr i8, ptr %.sroa.783.0.copyload.i, i64 %i.kf ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep390, i64 8
  %wide.load391 = load <2 x i32>, ptr %next.gep390, align 4, !alias.scope !146157, !noalias !146158
  %wide.load392 = load <2 x i32>, ptr %i.kg, align 4, !alias.scope !146157, !noalias !146158
  %i.kh = zext <2 x i32> %wide.load391 to <2 x i64>
  %i.ki = zext <2 x i32> %wide.load392 to <2 x i64>
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %index389 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <2 x i64> %i.kh, ptr %i.kj, align 8, !alias.scope !146159, !noalias !146160
  store <2 x i64> %i.ki, ptr %i.kk, align 8, !alias.scope !146159, !noalias !146160
  %index.next393 = add nuw i64 %index389, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next393, %n.vec387
  br i1 %i.kl, label %middle.block394, label %vector.body388, !llvm.loop !146084

middle.block394:                                  ; preds = %vector.body388
  %cmp.n = icmp eq i64 %i.kb, %n.vec387
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader397

.lr.ph.i.i.i.i.i.i.i.preheader397:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block394
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec387, %middle.block394 ]
  %.ph398 = phi ptr [ %.sroa.783.0.copyload.i, %vector.memcheck ], [ %.sroa.783.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ke, %middle.block394 ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ar ], [ 0, %bb.ap ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.jv) #61
          to label %bb.at unwind label %bb.au, !noalias !146161

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader397, %.lr.ph.i.i.i.i.i.i.i
  %i.km = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader397 ] ; 2 uses
  %i.kn = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph398, %.lr.ph.i.i.i.i.i.i.i.preheader397 ] ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !noalias !146158, !noundef !56
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.kq = zext i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.km
  store i64 %i.kq, ptr %i.kr, align 8, !noalias !146162
  %i.ks = add nuw nsw i64 %i.km, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.kp, %i.jt
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !146085

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block394, %bb.aq
  %i.kt = phi ptr [ inttoptr (i64 8 to ptr), %bb.aq ], [ %i.jx, %middle.block394 ], [ %i.jx, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %n.vec387, %middle.block394 ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ku = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.ku, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal18digraph_bfs_layers0EE9from_iterB3F_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.kv = shl nuw i64 %.sroa.082.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.783.0.copyload.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146158
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal18digraph_bfs_layers0EE9from_iterB3F_.exit.i

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.kx, label %.body50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.au
  %i.ky = shl nuw i64 %.sroa.082.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.783.0.copyload.i, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146163
  br label %.body50.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %bb.ao
  %i.kz = phi ptr [ %i.iv, %bb.ao ], [ %i.jr, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %i.la = ptrtoint ptr %i.ja to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub nuw i64 %i.la, %i.lb
  %i.ld = udiv exact i64 %i.lc, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !146164)
  %i.le = icmp eq ptr %i.ja, %i.kz
  br i1 %i.le, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i54.i

.lr.ph.i.i.i54.i:                                 ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.lg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.lg = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.lf, align 8, !alias.scope !146164, !noalias !146165 ; 2 uses
  %i.lh = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.lh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i54.i
  %i.li = getelementptr i8, ptr %i.lf, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !146164, !noalias !146165, !nonnull !56, !noundef !56
  %i.lj = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.lj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146166
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i54.i
  %i.lk = icmp eq i64 %i.lg, %i.ld
  br i1 %i.lk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i54.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ll = icmp eq i64 %i.iw, 0
  br i1 %i.ll, label %bb.bi, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.lm = mul nuw i64 %i.iw, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iv, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146165
  br label %bb.bi

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal18digraph_bfs_layers0EE9from_iterB3F_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146119
  invoke fastcc void @_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newRjRINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr nonnull %i.kt, i64 %.sroa.42.0.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3163)
          to label %bb.aw unwind label %bb.av, !noalias !146119

bb.av:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal18digraph_bfs_layers0EE9from_iterB3F_.exit.i
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

.body57.i:                                        ; preds = %bb.az, %bb.av
  %eh.lpad-body58.i = phi { ptr, i32 } [ %i.ln, %bb.av ], [ %i.lq, %bb.az ] ; 2 uses
  br i1 %i.jw, label %.body50.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i56.i: ; preds = %.body57.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146167
  br label %.body50.i

bb.aw:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx9traversal18digraph_bfs_layers0EE9from_iterB3F_.exit.i
  %i.lo = load i64, ptr %i.e, align 8, !range !57, !noalias !146119, !noundef !56
  %i.lp = trunc nuw i64 %i.lo to i1
  %.sroa.027.0.copyload.i = load ptr, ptr %i.jc, align 8, !noalias !146119 ; 4 uses
  br i1 %i.lp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.428.0..sroa_idx.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146119
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !146119
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtBa_8instance5BoundNtB6_6PyListENtB6_13PyListMethods6append5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull %.sroa.027.0.copyload.i)
          to label %bb.ba unwind label %bb.az, !noalias !146119

bb.az:                                            ; preds = %bb.ay
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.027.0.copyload.i) #59, !noalias !146168
  br label %.body57.i

bb.ba:                                            ; preds = %bb.ay
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.027.0.copyload.i) #59, !noalias !146168
  %i.lr = load i64, ptr %i.d, align 8, !range !57, !noalias !146119, !noundef !56
  %i.ls = trunc nuw i64 %i.lr to i1
  br i1 %i.ls, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8.copyload36 = load ptr, ptr %i.lt, align 8, !noalias !146120
  %.sroa.13.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.8..sroa_idx38, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146119
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146119
  br i1 %i.jw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i: ; preds = %bb.bc
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146169
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit62.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i60.i, %bb.bc
  %i.lu = icmp eq ptr %i.jr, %i.ja
  br i1 %i.lu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.bd:                                            ; preds = %bb.bb, %bb.ax
  %.sroa.7.0 = phi ptr [ %.sroa.027.0.copyload.i, %bb.ax ], [ %.sroa.7.8.copyload36, %bb.bb ]
  br i1 %i.jw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i: ; preds = %bb.bd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146170
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit66.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i64.i, %bb.bd
  %i.lv = ptrtoint ptr %i.ja to i64
  %i.lw = ptrtoint ptr %i.jr to i64
  %i.lx = sub nuw i64 %i.lv, %i.lw
  %i.ly = udiv exact i64 %i.lx, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !146171)
  %i.lz = icmp eq ptr %i.ja, %i.jr
end_hunk_9
