Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ac_wrapper?download=true
inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3acd21ac_decomposition_impl29compute_top_lut_decompositionEv:bb.a
  %i.lp = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  %i.lq = ptrtoint ptr %i.lj to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = and i64 %i.lr, 34359738360              ; 3 uses
  %i.lt = icmp samesign ugt i64 %i.ls, 8
  br i1 %i.lt, label %bb.am, label %bb.an, !prof !135

bb.am:                                            ; preds = %_ZN5kitty6createINS_19dynamic_truth_tableEEET_j.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lj, ptr nonnull align 8 dereferenceable(256) %i.lb, i64 %i.ls, i1 false), !noalias !493
  br label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i

bb.an:                                            ; preds = %_ZN5kitty6createINS_19dynamic_truth_tableEEET_j.exit.i
  %i.lu = icmp eq i64 %i.ls, 8
  br i1 %i.lu, label %bb.ao, label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.lv = load i64, ptr %i.lb, align 8, !tbaa !84, !noalias !493
  store i64 %i.lv, ptr %i.lj, align 8, !tbaa !84, !noalias !493
  br label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i

_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.lw = icmp ult i32 %i.lc, 6                   ; 3 uses
  br i1 %i.lw, label %_ZN5kitty19dynamic_truth_table9mask_bitsEv.exit.i.i, label %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit

_ZN5kitty19dynamic_truth_table9mask_bitsEv.exit.i.i: ; preds = %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i
  %i.lx = zext nneg i32 %i.lc to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL5masksE, i64 %i.lx
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !84, !noalias !493
  %i.ma = load i64, ptr %i.lj, align 8, !tbaa !84, !noalias !493
  %i.mb = and i64 %i.ma, %i.lz
  store i64 %i.mb, ptr %i.lj, align 8, !tbaa !84, !noalias !493
  br label %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit

_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit: ; preds = %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit.i.i, %_ZN5kitty19dynamic_truth_table9mask_bitsEv.exit.i.i
  %i.mc = load ptr, ptr %i.cb, align 8, !tbaa !163
  %i.md = load ptr, ptr %2, align 8, !tbaa !165   ; 2 uses
  %.not141 = icmp eq ptr %i.mc, %i.md
  br i1 %.not141, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit
  %i.me = shl nuw i64 1, %i.la                    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i58 = shl nuw nsw i64 %i.lm, 3 ; 4 uses
  %i.mf = zext nneg i32 %i.lc to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL5masksE, i64 %i.mf ; 2 uses
  br label %bb.ar

._crit_edge133:                                   ; preds = %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit, %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit
  %.sroa.14.0.lcssa = phi ptr [ %i.lk, %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit ], [ %.sroa.14.1, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ]
  %.sroa.098.0.lcssa = phi ptr [ %i.lj, %_ZN5kitty9shrink_toINS_18static_truth_tableILj11ELb0EEEEENS_19dynamic_truth_tableERKT_j.exit ], [ %.sroa.098.1, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 7 uses
  %.sroa.098.0.lcssa204 = ptrtoaddr ptr %.sroa.098.0.lcssa to i64
  %i.mh = load i32, ptr %i.ab, align 8, !tbaa !105, !noalias !494 ; 5 uses
  %i.mi = icmp ult i32 %i.mh, 7
  %i.mj = add i32 %i.mh, -6
  %i.mk = shl nuw i32 1, %i.mj
  %i.ml = select i1 %i.mi, i32 1, i32 %i.mk
  %i.mm = zext i32 %i.ml to i64                   ; 3 uses
  %i.mn = shl nuw nsw i64 %i.mm, 3
  %i.mo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mn) #15, !noalias !494 ; 11 uses
  %i.mp = ptrtoaddr ptr %i.mo to i64              ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mm
  store i64 0, ptr %i.mo, align 8, !tbaa !84, !noalias !494
  %i.mr = getelementptr i8, ptr %i.mo, i64 8      ; 3 uses
  %i.ms = add nsw i64 %i.mm, -1                   ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i51, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i49

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i49: ; preds = %._crit_edge133
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.ms, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.mr, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i50, i1 false), !tbaa !84, !noalias !494
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i50
  br label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i51

_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i51: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i49, %._crit_edge133
  %.0.i.i.i.i.i.i.i.i.i.i52 = phi ptr [ %i.mu, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i49 ], [ %i.mr, %._crit_edge133 ]
  %i.mv = load ptr, ptr %1, align 8, !tbaa !159, !noalias !495 ; 9 uses
  %i.mw = ptrtoaddr ptr %i.mv to i64              ; 2 uses
  %i.mx = load ptr, ptr %i.aa, align 8, !tbaa !159, !noalias !495 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %i.mv, %i.mx
  br i1 %.not8.i.i.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.i.i.i53.preheader

.lr.ph.i.i.i.i53.preheader:                       ; preds = %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i51
  %i.my = ptrtoaddr ptr %i.mx to i64
  %i.mz = add i64 %i.my, -8
  %i.na = sub i64 %i.mz, %i.mw                    ; 2 uses
  %i.nb = lshr i64 %i.na, 3
  %i.nc = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.na, 56
  br i1 %min.iters.check207, label %.lr.ph.i.i.i.i53.preheader292, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph.i.i.i.i53.preheader
  %i.nd = sub i64 %i.mw, %i.mp
  %diff.check203 = icmp ugt i64 %i.nd, -32
  %i.ne = sub i64 %.sroa.098.0.lcssa204, %i.mp
  %diff.check205 = icmp ugt i64 %i.ne, -32
  %conflict.rdx = or i1 %diff.check203, %diff.check205
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i53.preheader292, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck202
  %n.vec209 = and i64 %i.nc, 4611686018427387900  ; 3 uses
  %i.nf = shl i64 %n.vec209, 3                    ; 3 uses
  %i.ng = getelementptr i8, ptr %i.mo, i64 %i.nf
  %i.nh = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.nf
  %i.ni = getelementptr i8, ptr %i.mv, i64 %i.nf
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next219, %vector.body210 ] ; 2 uses
  %i.nj = shl i64 %index211, 3                    ; 3 uses
  %next.gep212 = getelementptr i8, ptr %i.mo, i64 %i.nj ; 2 uses
  %next.gep213 = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.nj ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.mv, i64 %i.nj ; 2 uses
  %i.nk = getelementptr i8, ptr %next.gep214, i64 16
  %wide.load215 = load <2 x i64>, ptr %next.gep214, align 8, !tbaa !84, !noalias !495
  %wide.load216 = load <2 x i64>, ptr %i.nk, align 8, !tbaa !84, !noalias !495
  %i.nl = getelementptr i8, ptr %next.gep213, i64 16
  %wide.load217 = load <2 x i64>, ptr %next.gep213, align 8, !tbaa !84, !noalias !495
  %wide.load218 = load <2 x i64>, ptr %i.nl, align 8, !tbaa !84, !noalias !495
  %i.nm = or <2 x i64> %wide.load217, %wide.load215
  %i.nn = or <2 x i64> %wide.load218, %wide.load216
  %i.no = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x i64> %i.nm, ptr %next.gep212, align 8, !tbaa !84, !noalias !495
  store <2 x i64> %i.nn, ptr %i.no, align 8, !tbaa !84, !noalias !495
  %index.next219 = add nuw i64 %index211, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next219, %n.vec209
  br i1 %i.np, label %middle.block220, label %vector.body210, !llvm.loop !460

middle.block220:                                  ; preds = %vector.body210
  %cmp.n221 = icmp eq i64 %i.nc, %n.vec209
  br i1 %cmp.n221, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.i.i.i53.preheader292

.lr.ph.i.i.i.i53.preheader292:                    ; preds = %vector.memcheck202, %.lr.ph.i.i.i.i53.preheader, %middle.block220
  %.sroa.0.011.i.i.i.i.ph = phi ptr [ %i.mo, %vector.memcheck202 ], [ %i.mo, %.lr.ph.i.i.i.i53.preheader ], [ %i.ng, %middle.block220 ]
  %.sroa.02.010.i.i.i.i.ph = phi ptr [ %.sroa.098.0.lcssa, %vector.memcheck202 ], [ %.sroa.098.0.lcssa, %.lr.ph.i.i.i.i53.preheader ], [ %i.nh, %middle.block220 ]
  %.sroa.05.09.i.i.i.i.ph = phi ptr [ %i.mv, %vector.memcheck202 ], [ %i.mv, %.lr.ph.i.i.i.i53.preheader ], [ %i.ni, %middle.block220 ]
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53.preheader292, %.lr.ph.i.i.i.i53
  %.sroa.0.011.i.i.i.i = phi ptr [ %i.nv, %.lr.ph.i.i.i.i53 ], [ %.sroa.0.011.i.i.i.i.ph, %.lr.ph.i.i.i.i53.preheader292 ] ; 2 uses
  %.sroa.02.010.i.i.i.i = phi ptr [ %i.nu, %.lr.ph.i.i.i.i53 ], [ %.sroa.02.010.i.i.i.i.ph, %.lr.ph.i.i.i.i53.preheader292 ] ; 2 uses
  %.sroa.05.09.i.i.i.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i53 ], [ %.sroa.05.09.i.i.i.i.ph, %.lr.ph.i.i.i.i53.preheader292 ] ; 2 uses
  %i.nq = load i64, ptr %.sroa.05.09.i.i.i.i, align 8, !tbaa !84, !noalias !495
  %i.nr = load i64, ptr %.sroa.02.010.i.i.i.i, align 8, !tbaa !84, !noalias !495
  %i.ns = or i64 %i.nr, %i.nq
  store i64 %i.ns, ptr %.sroa.0.011.i.i.i.i, align 8, !tbaa !84, !noalias !495
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 8
  %.not.i.i.i.i54 = icmp eq ptr %i.nt, %i.mx
  br i1 %.not.i.i.i.i54, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.i.i.i53, !llvm.loop !461

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i53, %middle.block220, %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i51
  %i.nw = icmp ult i32 %i.mh, 6
  br i1 %i.nw, label %bb.ap, label %_ZN5kitty9binary_orINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i

bb.ap:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i
  %i.nx = zext nneg i32 %i.mh to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL5masksE, i64 %i.nx
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !84, !noalias !495
  %i.oa = load i64, ptr %i.mo, align 8, !tbaa !84, !noalias !495
  %i.ob = and i64 %i.oa, %i.nz
  store i64 %i.ob, ptr %i.mo, align 8, !tbaa !84, !noalias !495
  br label %_ZN5kitty9binary_orINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i

_ZN5kitty9binary_orINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i: ; preds = %bb.ap, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt6bit_orImEET1_T_SD_T0_SC_T2_.exit.i.i.i
  %i.oc = load ptr, ptr %i.v, align 8, !tbaa !94
  store ptr %i.mo, ptr %1, align 8, !tbaa !93
  store ptr %.0.i.i.i.i.i.i.i.i.i.i52, ptr %i.aa, align 8, !tbaa !103
  store ptr %i.mq, ptr %i.v, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5kitty19dynamic_truth_tableD2Ev.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN5kitty9binary_orINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.mv to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.of) #13
  br label %_ZN5kitty19dynamic_truth_tableD2Ev.exit56

_ZN5kitty19dynamic_truth_tableD2Ev.exit56:        ; preds = %_ZN5kitty9binary_orINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i, %bb.aq
  store i32 %i.mh, ptr %i.ab, align 8, !tbaa !105
  %i.og = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.oh = ptrtoint ptr %.sroa.098.0.lcssa to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0.lcssa, i64 noundef %i.oi) #13
  %i.oj = add i32 %.023135, 1                     ; 2 uses
  %i.ok = zext i32 %i.oj to i64                   ; 2 uses
  %i.ol = load ptr, ptr %i.by, align 8, !tbaa !136
  %i.om = load ptr, ptr %i.bx, align 8, !tbaa !96 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 8
  %i.or = icmp ugt i64 %i.oq, %i.ok
  br i1 %i.or, label %bb.al, label %._crit_edge137, !llvm.loop !462

bb.ar:                                            ; preds = %.lr.ph132, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit
  %i.os = phi ptr [ %i.md, %.lr.ph132 ], [ %i.tp, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 2 uses
  %i.ot = phi i64 [ 0, %.lr.ph132 ], [ %i.tn, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 4 uses
  %.0131 = phi i32 [ 0, %.lr.ph132 ], [ %i.tm, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ]
  %.sroa.098.0130 = phi ptr [ %i.lj, %.lr.ph132 ], [ %.sroa.098.1, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 16 uses
  %.sroa.9102.0129 = phi ptr [ %.0.i.i.i.i.i.i.i.i, %.lr.ph132 ], [ %.sroa.9102.1, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 7 uses
  %.sroa.14.0128 = phi ptr [ %i.lk, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit ] ; 3 uses
  %.sroa.098.0130226 = ptrtoaddr ptr %.sroa.098.0130 to i64 ; 4 uses
  %i.ou = load ptr, ptr %i.cc, align 8, !tbaa !93
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ot
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !84
  %i.ox = and i64 %i.ow, %i.me
  %.not = icmp eq i64 %i.ox, 0
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oy = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %i.ot
  %i.oz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #15, !noalias !496 ; 11 uses
  %i.pa = ptrtoaddr ptr %i.oz to i64              ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.lh
  store i64 0, ptr %i.oz, align 8, !tbaa !84, !noalias !496
  %i.pc = getelementptr i8, ptr %i.oz, i64 8      ; 3 uses
  br i1 %i.ln, label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i59, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i57

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i57: ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr align 8 %i.pc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i58, i1 false), !tbaa !84, !noalias !496
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i58
  br label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i59

_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i59: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i57, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i60 = phi ptr [ %i.pd, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i57 ], [ %i.pc, %bb.as ]
  %.not8.i.i.i.i61 = icmp eq ptr %.sroa.098.0130, %.sroa.9102.0129
  br i1 %.not8.i.i.i.i61, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i62

.lr.ph.i.preheader.i.i.i62:                       ; preds = %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i59
  %i.pe = load ptr, ptr %i.oy, align 8, !tbaa !159, !noalias !497 ; 5 uses
  %3 = ptrtoaddr ptr %.sroa.9102.0129 to i64
  %i.pf = add i64 %3, -8
  %i.pg = sub i64 %i.pf, %.sroa.098.0130226       ; 2 uses
  %i.ph = lshr i64 %i.pg, 3
  %i.pi = add nuw nsw i64 %i.ph, 1                ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.pg, 56
  br i1 %min.iters.check271, label %.lr.ph.i.i.i.i63.preheader, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph.i.preheader.i.i.i62
  %i.pj = ptrtoaddr ptr %i.pe to i64
  %i.pk = sub i64 %.sroa.098.0130226, %i.pa
  %diff.check267 = icmp ugt i64 %i.pk, -32
  %i.pl = sub i64 %i.pj, %i.pa
  %diff.check268 = icmp ugt i64 %i.pl, -32
  %conflict.rdx269 = or i1 %diff.check267, %diff.check268
  br i1 %conflict.rdx269, label %.lr.ph.i.i.i.i63.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck266
  %n.vec273 = and i64 %i.pi, 4611686018427387900  ; 3 uses
  %i.pm = shl i64 %n.vec273, 3                    ; 3 uses
  %i.pn = getelementptr i8, ptr %i.oz, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pe, i64 %i.pm
  %i.pp = getelementptr i8, ptr %.sroa.098.0130, i64 %i.pm
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next283, %vector.body274 ] ; 2 uses
  %i.pq = shl i64 %index275, 3                    ; 3 uses
  %next.gep276 = getelementptr i8, ptr %i.oz, i64 %i.pq ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.pe, i64 %i.pq ; 2 uses
  %next.gep278 = getelementptr i8, ptr %.sroa.098.0130, i64 %i.pq ; 2 uses
  %i.pr = getelementptr i8, ptr %next.gep278, i64 16
  %wide.load279 = load <2 x i64>, ptr %next.gep278, align 8, !tbaa !84, !noalias !497
  %wide.load280 = load <2 x i64>, ptr %i.pr, align 8, !tbaa !84, !noalias !497
  %i.ps = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load281 = load <2 x i64>, ptr %next.gep277, align 8, !tbaa !84, !noalias !497
  %wide.load282 = load <2 x i64>, ptr %i.ps, align 8, !tbaa !84, !noalias !497
  %i.pt = and <2 x i64> %wide.load281, %wide.load279
  %i.pu = and <2 x i64> %wide.load282, %wide.load280
  %i.pv = getelementptr i8, ptr %next.gep276, i64 16
  store <2 x i64> %i.pt, ptr %next.gep276, align 8, !tbaa !84, !noalias !497
  store <2 x i64> %i.pu, ptr %i.pv, align 8, !tbaa !84, !noalias !497
  %index.next283 = add nuw i64 %index275, 4       ; 2 uses
  %i.pw = icmp eq i64 %index.next283, %n.vec273
  br i1 %i.pw, label %middle.block284, label %vector.body274, !llvm.loop !469

middle.block284:                                  ; preds = %vector.body274
  %cmp.n285 = icmp eq i64 %i.pi, %n.vec273
  br i1 %cmp.n285, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.i.i.i63.preheader

.lr.ph.i.i.i.i63.preheader:                       ; preds = %vector.memcheck266, %.lr.ph.i.preheader.i.i.i62, %middle.block284
  %.sroa.0.011.i.i.i.i64.ph = phi ptr [ %i.oz, %vector.memcheck266 ], [ %i.oz, %.lr.ph.i.preheader.i.i.i62 ], [ %i.pn, %middle.block284 ]
  %.sroa.02.010.i.i.i.i65.ph = phi ptr [ %i.pe, %vector.memcheck266 ], [ %i.pe, %.lr.ph.i.preheader.i.i.i62 ], [ %i.po, %middle.block284 ]
  %.sroa.05.09.i.i.i.i66.ph = phi ptr [ %.sroa.098.0130, %vector.memcheck266 ], [ %.sroa.098.0130, %.lr.ph.i.preheader.i.i.i62 ], [ %i.pp, %middle.block284 ]
  br label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %.sroa.0.011.i.i.i.i64 = phi ptr [ %i.qc, %.lr.ph.i.i.i.i63 ], [ %.sroa.0.011.i.i.i.i64.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  %.sroa.02.010.i.i.i.i65 = phi ptr [ %i.qb, %.lr.ph.i.i.i.i63 ], [ %.sroa.02.010.i.i.i.i65.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  %.sroa.05.09.i.i.i.i66 = phi ptr [ %i.qa, %.lr.ph.i.i.i.i63 ], [ %.sroa.05.09.i.i.i.i66.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  %i.px = load i64, ptr %.sroa.05.09.i.i.i.i66, align 8, !tbaa !84, !noalias !497
  %i.py = load i64, ptr %.sroa.02.010.i.i.i.i65, align 8, !tbaa !84, !noalias !497
  %i.pz = and i64 %i.py, %i.px
  store i64 %i.pz, ptr %.sroa.0.011.i.i.i.i64, align 8, !tbaa !84, !noalias !497
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i66, i64 8 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i65, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i64, i64 8
  %.not.i.i.i.i67 = icmp eq ptr %i.qa, %.sroa.9102.0129
  br i1 %.not.i.i.i.i67, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i, label %.lr.ph.i.i.i.i63, !llvm.loop !470

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i63, %middle.block284, %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i59
  br i1 %i.lw, label %bb.at, label %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i

bb.at:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i
  %i.qd = load i64, ptr %i.mg, align 8, !tbaa !84, !noalias !497
  %i.qe = load i64, ptr %i.oz, align 8, !tbaa !84, !noalias !497
  %i.qf = and i64 %i.qe, %i.qd
  store i64 %i.qf, ptr %i.oz, align 8, !tbaa !84, !noalias !497
  br label %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i

_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i, %bb.at
  %i.qg = ptrtoint ptr %.sroa.14.0128 to i64
  %i.qh = ptrtoint ptr %.sroa.098.0130 to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0130, i64 noundef %i.qi) #13
  br label %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit

bb.au:                                            ; preds = %bb.ar
  %i.qj = load ptr, ptr %i.cd, align 8, !tbaa !93
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.ot
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !84
  %i.qm = and i64 %i.ql, %i.me
  %.not30 = icmp eq i64 %i.qm, 0
  br i1 %.not30, label %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %i.ot ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !105, !noalias !498 ; 4 uses
  %i.qq = icmp ult i32 %i.qp, 7
  %i.qr = add i32 %i.qp, -6
  %i.qs = shl nuw i32 1, %i.qr
  %i.qt = select i1 %i.qq, i32 1, i32 %i.qs
  %i.qu = zext i32 %i.qt to i64                   ; 2 uses
  %i.qv = shl nuw nsw i64 %i.qu, 3                ; 2 uses
  %i.qw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #15, !noalias !498 ; 13 uses
  %i.qx = ptrtoaddr ptr %i.qw to i64              ; 2 uses
  store i64 0, ptr %i.qw, align 8, !tbaa !84, !noalias !498
  %i.qy = add nsw i64 %i.qu, -1                   ; 2 uses
  %i.qz = icmp eq i64 %i.qy, 0
  br i1 %i.qz, label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i71, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i69

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i69: ; preds = %bb.av
  %i.ra = getelementptr i8, ptr %i.qw, i64 8
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i70 = shl nuw nsw i64 %i.qy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ra, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i70, i1 false), !tbaa !84, !noalias !498
  br label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i71

_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i71: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i69, %bb.av
  %i.rb = load ptr, ptr %i.qn, align 8, !tbaa !159, !noalias !499 ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !159, !noalias !499 ; 3 uses
  %.not6.i.i.i.i73 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not6.i.i.i.i73, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78, label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader:                       ; preds = %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i71
  %i.re = ptrtoaddr ptr %i.rb to i64              ; 2 uses
  %i.rf = ptrtoaddr ptr %i.rd to i64
  %i.rg = add i64 %i.rf, -8
  %i.rh = sub i64 %i.rg, %i.re                    ; 2 uses
  %i.ri = lshr i64 %i.rh, 3
  %i.rj = add nuw nsw i64 %i.ri, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.rh, 24
  %i.rk = sub i64 %i.re, %i.qx
  %diff.check250 = icmp ugt i64 %i.rk, -32
  %or.cond289 = or i1 %min.iters.check252, %diff.check250
  br i1 %or.cond289, label %.lr.ph.i.i.i.i74.preheader291, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i.i.i74.preheader
  %n.vec254 = and i64 %i.rj, 4611686018427387900  ; 3 uses
  %i.rl = shl i64 %n.vec254, 3                    ; 2 uses
  %i.rm = getelementptr i8, ptr %i.qw, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rb, i64 %i.rl
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.ro = shl i64 %index256, 3                    ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.qw, i64 %i.ro ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.rb, i64 %i.ro ; 2 uses
  %i.rp = getelementptr i8, ptr %next.gep258, i64 16
  %wide.load259 = load <2 x i64>, ptr %next.gep258, align 8, !tbaa !84, !noalias !499
  %wide.load260 = load <2 x i64>, ptr %i.rp, align 8, !tbaa !84, !noalias !499
  %i.rq = xor <2 x i64> %wide.load259, splat (i64 -1)
  %i.rr = xor <2 x i64> %wide.load260, splat (i64 -1)
  %i.rs = getelementptr i8, ptr %next.gep257, i64 16
  store <2 x i64> %i.rq, ptr %next.gep257, align 8, !tbaa !84, !noalias !499
  store <2 x i64> %i.rr, ptr %i.rs, align 8, !tbaa !84, !noalias !499
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.rt = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.rt, label %middle.block262, label %vector.body255, !llvm.loop !479

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.rj, %n.vec254
  br i1 %cmp.n263, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78, label %.lr.ph.i.i.i.i74.preheader291

.lr.ph.i.i.i.i74.preheader291:                    ; preds = %.lr.ph.i.i.i.i74.preheader, %middle.block262
  %.sroa.0.08.i.i.i.i75.ph = phi ptr [ %i.qw, %.lr.ph.i.i.i.i74.preheader ], [ %i.rm, %middle.block262 ]
  %.sroa.03.07.i.i.i.i76.ph = phi ptr [ %i.rb, %.lr.ph.i.i.i.i74.preheader ], [ %i.rn, %middle.block262 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader291, %.lr.ph.i.i.i.i74
  %.sroa.0.08.i.i.i.i75 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i74 ], [ %.sroa.0.08.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader291 ] ; 2 uses
  %.sroa.03.07.i.i.i.i76 = phi ptr [ %i.rw, %.lr.ph.i.i.i.i74 ], [ %.sroa.03.07.i.i.i.i76.ph, %.lr.ph.i.i.i.i74.preheader291 ] ; 2 uses
  %i.ru = load i64, ptr %.sroa.03.07.i.i.i.i76, align 8, !tbaa !84, !noalias !499
  %i.rv = xor i64 %i.ru, -1
  store i64 %i.rv, ptr %.sroa.0.08.i.i.i.i75, align 8, !tbaa !84, !noalias !499
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i76, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i75, i64 8
  %.not.i.i.i.i77 = icmp eq ptr %i.rw, %i.rd
  br i1 %.not.i.i.i.i77, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78, label %.lr.ph.i.i.i.i74, !llvm.loop !480

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78: ; preds = %.lr.ph.i.i.i.i74, %middle.block262, %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i71
  %i.ry = icmp ult i32 %i.qp, 6
  br i1 %i.ry, label %bb.aw, label %_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79

bb.aw:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78
  %i.rz = zext nneg i32 %i.qp to i64
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL5masksE, i64 %i.rz
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !84, !noalias !499
  %i.sc = load i64, ptr %i.qw, align 8, !tbaa !84, !noalias !499
  %i.sd = and i64 %i.sc, %i.sb
  store i64 %i.sd, ptr %i.qw, align 8, !tbaa !84, !noalias !499
  br label %_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79

_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79:   ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEZN5kitty9unary_notINSA_19dynamic_truth_tableEEET_RKSD_EUlmE_ET0_SD_SD_SH_T1_.exit.i.i.i78, %bb.aw
  %i.se = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #15, !noalias !500 ; 11 uses
  %i.sf = ptrtoaddr ptr %i.se to i64              ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.lh
  store i64 0, ptr %i.se, align 8, !tbaa !84, !noalias !500
  %i.sh = getelementptr i8, ptr %i.se, i64 8      ; 3 uses
  br i1 %i.ln, label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i82, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i80

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i80: ; preds = %_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79
  call void @llvm.memset.p0.i64(ptr align 8 %i.sh, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i58, i1 false), !tbaa !84, !noalias !500
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i58
  br label %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i82

_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i82: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i80, %_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79
  %.0.i.i.i.i.i.i.i.i.i.i83 = phi ptr [ %i.si, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i.i80 ], [ %i.sh, %_ZN5kittycoERKNS_19dynamic_truth_tableE.exit79 ]
  %.not8.i.i.i.i84 = icmp eq ptr %.sroa.098.0130, %.sroa.9102.0129
  br i1 %.not8.i.i.i.i84, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91, label %.lr.ph.i.i.i.i86.preheader

.lr.ph.i.i.i.i86.preheader:                       ; preds = %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i82
  %4 = ptrtoaddr ptr %.sroa.9102.0129 to i64
  %i.sj = add i64 %4, -8
  %i.sk = sub i64 %i.sj, %.sroa.098.0130226       ; 2 uses
  %i.sl = lshr i64 %i.sk, 3
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.sk, 56
  br i1 %min.iters.check231, label %.lr.ph.i.i.i.i86.preheader290, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph.i.i.i.i86.preheader
  %i.sn = sub i64 %.sroa.098.0130226, %i.sf
  %diff.check227 = icmp ugt i64 %i.sn, -32
  %i.so = sub i64 %i.qx, %i.sf
  %diff.check228 = icmp ugt i64 %i.so, -32
  %conflict.rdx229 = or i1 %diff.check227, %diff.check228
  br i1 %conflict.rdx229, label %.lr.ph.i.i.i.i86.preheader290, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck225
  %n.vec233 = and i64 %i.sm, 4611686018427387900  ; 3 uses
  %i.sp = shl i64 %n.vec233, 3                    ; 3 uses
  %i.sq = getelementptr i8, ptr %i.se, i64 %i.sp
  %i.sr = getelementptr i8, ptr %i.qw, i64 %i.sp
  %i.ss = getelementptr i8, ptr %.sroa.098.0130, i64 %i.sp
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next243, %vector.body234 ] ; 2 uses
  %i.st = shl i64 %index235, 3                    ; 3 uses
  %next.gep236 = getelementptr i8, ptr %i.se, i64 %i.st ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.qw, i64 %i.st ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.sroa.098.0130, i64 %i.st ; 2 uses
  %i.su = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep238, align 8, !tbaa !84, !noalias !501
  %wide.load240 = load <2 x i64>, ptr %i.su, align 8, !tbaa !84, !noalias !501
  %i.sv = getelementptr i8, ptr %next.gep237, i64 16
  %wide.load241 = load <2 x i64>, ptr %next.gep237, align 8, !tbaa !84, !noalias !501
  %wide.load242 = load <2 x i64>, ptr %i.sv, align 8, !tbaa !84, !noalias !501
  %i.sw = and <2 x i64> %wide.load241, %wide.load239
  %i.sx = and <2 x i64> %wide.load242, %wide.load240
  %i.sy = getelementptr i8, ptr %next.gep236, i64 16
  store <2 x i64> %i.sw, ptr %next.gep236, align 8, !tbaa !84, !noalias !501
  store <2 x i64> %i.sx, ptr %i.sy, align 8, !tbaa !84, !noalias !501
  %index.next243 = add nuw i64 %index235, 4       ; 2 uses
  %i.sz = icmp eq i64 %index.next243, %n.vec233
  br i1 %i.sz, label %middle.block244, label %vector.body234, !llvm.loop !487

middle.block244:                                  ; preds = %vector.body234
  %cmp.n245 = icmp eq i64 %i.sm, %n.vec233
  br i1 %cmp.n245, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91, label %.lr.ph.i.i.i.i86.preheader290

.lr.ph.i.i.i.i86.preheader290:                    ; preds = %vector.memcheck225, %.lr.ph.i.i.i.i86.preheader, %middle.block244
  %.sroa.0.011.i.i.i.i87.ph = phi ptr [ %i.se, %vector.memcheck225 ], [ %i.se, %.lr.ph.i.i.i.i86.preheader ], [ %i.sq, %middle.block244 ]
  %.sroa.02.010.i.i.i.i88.ph = phi ptr [ %i.qw, %vector.memcheck225 ], [ %i.qw, %.lr.ph.i.i.i.i86.preheader ], [ %i.sr, %middle.block244 ]
  %.sroa.05.09.i.i.i.i89.ph = phi ptr [ %.sroa.098.0130, %vector.memcheck225 ], [ %.sroa.098.0130, %.lr.ph.i.i.i.i86.preheader ], [ %i.ss, %middle.block244 ]
  br label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %.lr.ph.i.i.i.i86.preheader290, %.lr.ph.i.i.i.i86
  %.sroa.0.011.i.i.i.i87 = phi ptr [ %i.tf, %.lr.ph.i.i.i.i86 ], [ %.sroa.0.011.i.i.i.i87.ph, %.lr.ph.i.i.i.i86.preheader290 ] ; 2 uses
  %.sroa.02.010.i.i.i.i88 = phi ptr [ %i.te, %.lr.ph.i.i.i.i86 ], [ %.sroa.02.010.i.i.i.i88.ph, %.lr.ph.i.i.i.i86.preheader290 ] ; 2 uses
  %.sroa.05.09.i.i.i.i89 = phi ptr [ %i.td, %.lr.ph.i.i.i.i86 ], [ %.sroa.05.09.i.i.i.i89.ph, %.lr.ph.i.i.i.i86.preheader290 ] ; 2 uses
  %i.ta = load i64, ptr %.sroa.05.09.i.i.i.i89, align 8, !tbaa !84, !noalias !501
  %i.tb = load i64, ptr %.sroa.02.010.i.i.i.i88, align 8, !tbaa !84, !noalias !501
  %i.tc = and i64 %i.tb, %i.ta
  store i64 %i.tc, ptr %.sroa.0.011.i.i.i.i87, align 8, !tbaa !84, !noalias !501
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i89, i64 8 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i88, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i87, i64 8
  %.not.i.i.i.i90 = icmp eq ptr %i.td, %.sroa.9102.0129
  br i1 %.not.i.i.i.i90, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91, label %.lr.ph.i.i.i.i86, !llvm.loop !488

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91: ; preds = %.lr.ph.i.i.i.i86, %middle.block244, %_ZNK5kitty19dynamic_truth_table9constructEv.exit.i.i.i82
  br i1 %i.lw, label %bb.ax, label %_ZN5kitty19dynamic_truth_tableD2Ev.exit96

bb.ax:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91
  %i.tg = load i64, ptr %i.mg, align 8, !tbaa !84, !noalias !501
  %i.th = load i64, ptr %i.se, align 8, !tbaa !84, !noalias !501
  %i.ti = and i64 %i.th, %i.tg
  store i64 %i.ti, ptr %i.se, align 8, !tbaa !84, !noalias !501
  br label %_ZN5kitty19dynamic_truth_tableD2Ev.exit96

_ZN5kitty19dynamic_truth_tableD2Ev.exit96:        ; preds = %bb.ax, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEES7_NS1_IPmS6_EESt7bit_andImEET1_T_SD_T0_SC_T2_.exit.i.i.i91
  %i.tj = ptrtoint ptr %.sroa.14.0128 to i64
  %i.tk = ptrtoint ptr %.sroa.098.0130 to i64
  %i.tl = sub i64 %i.tj, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0130, i64 noundef %i.tl) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.qv) #13
  br label %_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit

_ZN5kittyaNERNS_19dynamic_truth_tableERKS0_.exit: ; preds = %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i, %_ZN5kitty19dynamic_truth_tableD2Ev.exit96, %bb.au
  %.sroa.14.1 = phi ptr [ %.sroa.14.0128, %bb.au ], [ %i.sg, %_ZN5kitty19dynamic_truth_tableD2Ev.exit96 ], [ %i.pb, %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i ] ; 2 uses
  %.sroa.9102.1 = phi ptr [ %.sroa.9102.0129, %bb.au ], [ %.0.i.i.i.i.i.i.i.i.i.i83, %_ZN5kitty19dynamic_truth_tableD2Ev.exit96 ], [ %.0.i.i.i.i.i.i.i.i.i.i60, %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i ]
  %.sroa.098.1 = phi ptr [ %.sroa.098.0130, %bb.au ], [ %i.se, %_ZN5kitty19dynamic_truth_tableD2Ev.exit96 ], [ %i.oz, %_ZN5kitty10binary_andINS_19dynamic_truth_tableEEET_RKS2_S4_.exit.i ] ; 2 uses
  %i.tm = add i32 %.0131, 1                       ; 2 uses
  %i.tn = zext i32 %i.tm to i64                   ; 2 uses
  %i.to = load ptr, ptr %i.cb, align 8, !tbaa !163
  %i.tp = load ptr, ptr %2, align 8, !tbaa !165   ; 2 uses
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = ashr exact i64 %i.ts, 5
  %i.tu = icmp ugt i64 %i.tt, %i.tn
  br i1 %i.tu, label %bb.ar, label %._crit_edge133, !llvm.loop !489
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
  unreachable

_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !93     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.d, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !138

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15
  %.pre = load ptr, ptr %2, align 8, !tbaa !159   ; 2 uses
  %.pre29 = load ptr, ptr %i.r, align 8, !tbaa !159
  %.pre32 = ptrtoint ptr %.pre29 to i64
  %.pre33 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i:  ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi34 = phi i64 [ %.pre33, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre32, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZNKSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !94
  %i.ae = sub i64 %.pre-phi, %.pre-phi34          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.e, label %bb.f, !prof !135

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.z, i64 %i.ae, i1 false)
  br label %_ZN5kitty19dynamic_truth_tableC2ERKS0_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.g, label %_ZN5kitty19dynamic_truth_tableC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !84
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !84
  br label %_ZN5kitty19dynamic_truth_tableC2ERKS0_.exit.i

_ZN5kitty19dynamic_truth_tableC2ERKS0_.exit.i:    ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !105
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !91 ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i, label %bb.h
end_hunk_0
