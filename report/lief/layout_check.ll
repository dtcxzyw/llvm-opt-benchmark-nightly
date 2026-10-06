Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker14check_linkeditEv:bb.a
bb.de:                                            ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i522
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0632.16, i64 noundef %i.tz) #27
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525: ; preds = %bb.de, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i522
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %i.ui, i64 %i.ug
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354: ; preds = %bb.br, %bb.bp, %bb.bx, %bb.bv, %bb.cd, %bb.cb, %bb.cj, %bb.ch, %bb.cp, %bb.cn, %bb.cv, %bb.ct, %bb.cz, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEERS3_DpOT_.exit511, %bb.db, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525
  %.sroa.0632.17 = phi ptr [ %.sroa.0632.16, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEERS3_DpOT_.exit511 ], [ %.sroa.0632.16, %bb.cz ], [ %.sroa.0632.16, %bb.db ], [ %i.ui, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525 ], [ %.sroa.0632.15, %bb.ct ], [ %.sroa.0632.15, %bb.cv ], [ %.sroa.0632.14, %bb.cn ], [ %.sroa.0632.14, %bb.cp ], [ %.sroa.0632.13, %bb.ch ], [ %.sroa.0632.13, %bb.cj ], [ %.sroa.0632.12, %bb.cb ], [ %.sroa.0632.12, %bb.cd ], [ %.sroa.0632.11, %bb.bv ], [ %.sroa.0632.11, %bb.bx ], [ %.sroa.0632.10, %bb.bp ], [ %.sroa.0632.10, %bb.br ] ; 3 uses
  %.sroa.45.17 = phi ptr [ %.sroa.45.16, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEERS3_DpOT_.exit511 ], [ %.sroa.45.16, %bb.cz ], [ %i.tw, %bb.db ], [ %i.uq, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525 ], [ %.sroa.45.15, %bb.ct ], [ %i.sq, %bb.cv ], [ %.sroa.45.14, %bb.cn ], [ %i.rk, %bb.cp ], [ %.sroa.45.13, %bb.ch ], [ %i.qe, %bb.cj ], [ %.sroa.45.12, %bb.cb ], [ %i.oy, %bb.cd ], [ %.sroa.45.11, %bb.bv ], [ %i.ns, %bb.bx ], [ %.sroa.45.10, %bb.bp ], [ %i.mm, %bb.br ] ; 2 uses
  %.sroa.102.17 = phi ptr [ %.sroa.102.16, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEERS3_DpOT_.exit511 ], [ %.sroa.102.16, %bb.cz ], [ %.sroa.102.16, %bb.db ], [ %i.ur, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i525 ], [ %.sroa.102.15, %bb.ct ], [ %.sroa.102.15, %bb.cv ], [ %.sroa.102.14, %bb.cn ], [ %.sroa.102.14, %bb.cp ], [ %.sroa.102.13, %bb.ch ], [ %.sroa.102.13, %bb.cj ], [ %.sroa.102.12, %bb.cb ], [ %.sroa.102.12, %bb.cd ], [ %.sroa.102.11, %bb.bv ], [ %.sroa.102.11, %bb.bx ], [ %.sroa.102.10, %bb.bp ], [ %.sroa.102.10, %bb.br ] ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.4599.0984, i64 8
  %i.ut = add nuw nsw i64 %.sroa.8600.0983, 1     ; 2 uses
  %.not745 = icmp eq i64 %i.ut, %.pre1186
  br i1 %.not745, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354
  %.pre1177 = load i32, ptr %i.a, align 4
  %i.uu = icmp ne i32 %.pre1177, %.2160.ph
  %i.uv = select i1 %.2155.ph, i1 %i.uu, i1 false
  br i1 %i.uv, label %bb.df, label %._crit_edge.thread

bb.df:                                            ; preds = %._crit_edge
  %i.uw = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.39)
  br label %.thread726

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit, %._crit_edge
  %.0163.lcssa1281 = phi i1 [ %.2165.ph, %._crit_edge ], [ false, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit ], [ false, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread ]
  %.0168.lcssa1280 = phi i1 [ %.2170.ph, %._crit_edge ], [ false, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit ], [ false, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread ]
  %.sroa.102.0.lcssa1279 = phi ptr [ %.sroa.102.17, %._crit_edge ], [ %i.t, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit ], [ null, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread ] ; 7 uses
  %.sroa.45.0.lcssa1278 = phi ptr [ %.sroa.45.17, %._crit_edge ], [ %i.s, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit ], [ null, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread ] ; 3 uses
  %.sroa.0632.0.lcssa1277 = phi ptr [ %.sroa.0632.17, %._crit_edge ], [ %i.s, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit ], [ null, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread ] ; 13 uses
  %i.ux = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.uy = tail call noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ux, i64 noundef 2147483682) #24
  %i.uz = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.va = tail call noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.uz, i64 noundef 2147483700) #24 ; 2 uses
  %or.cond = and i1 %i.uy, %i.va
  br i1 %or.cond, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %._crit_edge.thread
  %i.vb = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.40)
  br label %.thread726

bb.dh:                                            ; preds = %._crit_edge.thread
  br i1 %i.va, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  br i1 %.0163.lcssa1281, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.vc = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.41)
  br label %.thread726

bb.dk:                                            ; preds = %bb.di
  br i1 %.0168.lcssa1280, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.vd = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
  br label %.thread726

bb.dm:                                            ; preds = %bb.dk, %bb.dh
  %i.ve = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 116
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !158
  switch i32 %i.vg, label %bb.dr [
    i32 1, label %bb.dn
    i32 5, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 232
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !100, !noalias !681 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 240
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !100, !noalias !682 ; 2 uses
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = ashr exact i64 %i.vn, 3
  %.not746995 = icmp eq ptr %i.vk, %i.vi
  br i1 %.not746995, label %.loopexit, label %.lr.ph1001

.lr.ph1001:                                       ; preds = %bb.dn, %.critedge
  %.0140999 = phi i64 [ %.1141, %.critedge ], [ 0, %bb.dn ] ; 2 uses
  %.0142998 = phi i64 [ %.4, %.critedge ], [ 0, %bb.dn ] ; 3 uses
  %.sroa.4542.0997 = phi ptr [ %i.wm, %.critedge ], [ %i.vi, %bb.dn ] ; 2 uses
  %.sroa.8.0996 = phi i64 [ %i.wn, %.critedge ], [ 0, %bb.dn ]
  %i.vp = load ptr, ptr %.sroa.4542.0997, align 8, !tbaa !102 ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 116
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !105
  %trunc = trunc i32 %i.vr to i8
  switch i8 %trunc, label %bb.do [
    i8 1, label %.critedge
    i8 18, label %.critedge
  ]

bb.do:                                            ; preds = %.lr.ph1001
  %i.vs = load ptr, ptr %i.vp, align 8, !tbaa !62
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  %i.vu = load ptr, ptr %i.vt, align 8
  %i.vv = tail call noundef i64 %i.vu(ptr noundef nonnull align 8 dereferenceable(64) %i.vp) #24
  %i.vw = load ptr, ptr %i.vp, align 8, !tbaa !62
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 72
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = tail call noundef i64 %i.vy(ptr noundef nonnull align 8 dereferenceable(64) %i.vp) #24
  %i.wa = add i64 %i.vz, %i.vv
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.wa, i64 %.0142998) ; 2 uses
  %i.wb = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 80
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !153 ; 3 uses
  %i.we = icmp eq i64 %spec.select, 0
  br i1 %i.we, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.wf = tail call noundef ptr @_ZNK4LIEF5MachO6Binary3getENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.wb, i64 noundef 2) #24 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !98
  %i.wi = icmp ne i64 %i.wh, 2
  %.not228747 = icmp eq ptr %i.wf, null
  %.not228 = or i1 %.not228747, %i.wi
  br i1 %.not228, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 56
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !163
  %i.wl = zext i32 %i.wk to i64
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph1001, %.lr.ph1001, %bb.do, %bb.dq, %bb.dp
  %.4 = phi i64 [ %.0142998, %.lr.ph1001 ], [ 0, %bb.dp ], [ %spec.select, %bb.do ], [ %i.wl, %bb.dq ], [ %.0142998, %.lr.ph1001 ] ; 2 uses
  %.1141 = phi i64 [ %.0140999, %.lr.ph1001 ], [ %i.wd, %bb.dp ], [ %i.wd, %bb.do ], [ %i.wd, %bb.dq ], [ %.0140999, %.lr.ph1001 ] ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.4542.0997, i64 8
  %i.wn = add nuw nsw i64 %.sroa.8.0996, 1        ; 2 uses
  %.not746 = icmp eq i64 %i.wn, %i.vo
  br i1 %.not746, label %.loopexit, label %.lr.ph1001

bb.dr:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.wo = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %2) #24 ; 3 uses
  %i.wp = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.wr = icmp eq ptr %i.wp, %i.wq
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dr
  %i.ws = load i64, ptr %i.wq, align 8, !tbaa !107
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.wt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not226 = icmp eq ptr %i.wo, null
  br i1 %.not226, label %.thread736, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 104
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !136 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wo, i64 112
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !90
  %i.wy = add i64 %i.wx, %i.wv                    ; 2 uses
  %i.wz = icmp eq i64 %i.wv, 0
  %i.xa = icmp eq i64 %i.wy, 0
  %or.cond11 = or i1 %i.wz, %i.xa
  br i1 %or.cond11, label %.thread736, label %.loopexit

.thread736:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ds
  %i.xb = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.43)
  br label %.thread726

.loopexit:                                        ; preds = %.critedge, %bb.dn, %bb.ds
  %.6 = phi i64 [ %i.wv, %bb.ds ], [ 0, %bb.dn ], [ %.4, %.critedge ]
  %.3 = phi i64 [ %i.wy, %bb.ds ], [ 0, %bb.dn ], [ %.1141, %.critedge ] ; 2 uses
  %i.xc = icmp eq ptr %.sroa.0632.0.lcssa1277, %.sroa.45.0.lcssa1278
  br i1 %i.xc, label %bb.dt, label %.preheader.preheader.i

bb.dt:                                            ; preds = %.loopexit
  %i.xd = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 116
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !158
  %i.xg = icmp eq i32 %i.xf, 1
  br i1 %i.xg, label %.thread726, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xh = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.44)
  br label %.thread726

.preheader.preheader.i:                           ; preds = %.loopexit
  %i.xi = ptrtoint ptr %.sroa.45.0.lcssa1278 to i64
  %i.xj = ptrtoint ptr %.sroa.0632.0.lcssa1277 to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = sdiv exact i64 %i.xk, 24
  %i.xm = add nsw i64 %i.xl, -1                   ; 3 uses
  %exitcond7.i1592 = icmp eq i64 %i.xm, 0
  br i1 %exitcond7.i1592, label %.lr.ph1008.preheader, label %.lr.ph.outer.i.preheader

._crit_edge.thread.i:                             ; preds = %.thread.i, %._crit_edge.i
  %.val25.pre9142024.i = phi ptr [ %.val25.pre913.ph.i, %._crit_edge.i ], [ %.sroa.0632.0.lcssa1277, %.thread.i ]
  %i.xn = add nuw i64 %.0193.i1594, 1             ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i1593, -1
  %exitcond7.i = icmp eq i64 %i.xn, %i.xm
  br i1 %exitcond7.i, label %.lr.ph1008.preheader, label %.lr.ph.outer.i.preheader

.lr.ph.outer.i.preheader:                         ; preds = %.preheader.preheader.i, %._crit_edge.thread.i
  %.0193.i1594 = phi i64 [ %i.xn, %._crit_edge.thread.i ], [ 0, %.preheader.preheader.i ]
  %indvars.iv.i1593 = phi i64 [ %indvars.iv.next.i, %._crit_edge.thread.i ], [ %i.xm, %.preheader.preheader.i ] ; 3 uses
  %.val25.pre9.i1597 = phi ptr [ %.val25.pre9142024.i, %._crit_edge.thread.i ], [ %.sroa.0632.0.lcssa1277, %.preheader.preheader.i ]
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.lr.ph.outer.i.preheader, %.thread.i
  %.val25.pre913.ph.i = phi ptr [ %.sroa.0632.0.lcssa1277, %.thread.i ], [ %.val25.pre9.i1597, %.lr.ph.outer.i.preheader ] ; 4 uses
  %.02.ph.i = phi i64 [ %i.xp, %.thread.i ], [ 0, %.lr.ph.outer.i.preheader ] ; 2 uses
  %.0171.ph.i = phi i1 [ false, %.thread.i ], [ true, %.lr.ph.outer.i.preheader ]
  %.phi.trans.insert1178 = getelementptr inbounds nuw [24 x i8], ptr %.val25.pre913.ph.i, i64 %.02.ph.i
  %.phi.trans.insert1179 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1178, i64 8
  %.pre1180 = load i32, ptr %.phi.trans.insert1179, align 8, !tbaa !661
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dv
  br i1 %.0171.ph.i, label %.lr.ph1008.preheader, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.dv, %.lr.ph.outer.i
  %i.xo = phi i32 [ %i.xs, %bb.dv ], [ %.pre1180, %.lr.ph.outer.i ]
  %.02.i = phi i64 [ %i.xp, %bb.dv ], [ %.02.ph.i, %.lr.ph.outer.i ] ; 2 uses
  %i.xp = add nuw i64 %.02.i, 1                   ; 5 uses
  %i.xq = getelementptr inbounds nuw [24 x i8], ptr %.val25.pre913.ph.i, i64 %i.xp ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !661 ; 2 uses
  %i.xt = icmp ugt i32 %i.xo, %i.xs
  br i1 %i.xt, label %.thread.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.xp, %indvars.iv.i1593
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !654

.thread.i:                                        ; preds = %.lr.ph.i
  %i.xu = getelementptr inbounds nuw [24 x i8], ptr %.val25.pre913.ph.i, i64 %.02.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.xu, i64 24, i1 false), !tbaa.struct !663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xu, ptr noundef nonnull align 8 dereferenceable(24) %i.xq, i64 24, i1 false), !tbaa.struct !663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !663
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %exitcond.not11.i = icmp eq i64 %i.xp, %indvars.iv.i1593
  br i1 %exitcond.not11.i, label %._crit_edge.thread.i, label %.lr.ph.outer.i, !llvm.loop !654

.lr.ph1008.preheader:                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr @.str.45, ptr %i.c, align 8, !tbaa !123
  br label %.lr.ph1008

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.ec
  %.01006 = phi i64 [ %i.yv, %bb.ec ], [ %.6, %.lr.ph1008.preheader ]
  %.sroa.0539.01005 = phi ptr [ %i.yz, %bb.ec ], [ %.sroa.0632.0.lcssa1277, %.lr.ph1008.preheader ] ; 8 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0539.01005, i64 8
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !661 ; 2 uses
  %i.xx = zext i32 %i.xw to i64                   ; 4 uses
  %i.xy = icmp ugt i64 %.01006, %i.xx
  br i1 %i.xy, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph1008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.xz = load i32, ptr %.sroa.0539.01005, align 8, !tbaa !659
  %switch.tableidx = add i32 %i.xz, -1            ; 2 uses
  %i.ya = icmp ult i32 %switch.tableidx, 17
  br i1 %i.ya, label %switch.lookup, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit

switch.lookup:                                    ; preds = %bb.dw
  %i.yb = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yb
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit: ; preds = %bb.dw, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.232, %bb.dw ]
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !123
  %i.yc = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread740

bb.dx:                                            ; preds = %.lr.ph1008
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0539.01005, i64 16
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !662 ; 2 uses
  %i.yf = icmp ult i64 %.3, %i.xx
  %i.yg = sub nuw i64 %.3, %i.xx
  %i.yh = icmp ugt i64 %i.ye, %i.yg
  %i.yi = select i1 %i.yf, i1 true, i1 %i.yh
  br i1 %i.yi, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.yj = load i32, ptr %.sroa.0539.01005, align 8, !tbaa !659
  %switch.tableidx1595 = add i32 %i.yj, -1        ; 2 uses
  %i.yk = icmp ult i32 %switch.tableidx1595, 17
  br i1 %i.yk, label %switch.lookup1596, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533

switch.lookup1596:                                ; preds = %bb.dy
  %i.yl = zext nneg i32 %switch.tableidx1595 to i64
  %switch.gep1597 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yl
  %switch.load1598 = load ptr, ptr %switch.gep1597, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533: ; preds = %bb.dy, %switch.lookup1596
  %.0.i532 = phi ptr [ %switch.load1598, %switch.lookup1596 ], [ @.str.232, %bb.dy ]
  store ptr %.0.i532, ptr %i.e, align 8, !tbaa !123
  %i.ym = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread740

bb.dz:                                            ; preds = %bb.dx
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.0539.01005, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !660
  %i.yp = add i32 %i.yo, -1
  %i.yq = and i32 %i.yp, %i.xw
  %.not227 = icmp eq i32 %i.yq, 0
  br i1 %.not227, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.yr = load i32, ptr %.sroa.0539.01005, align 8, !tbaa !659
  %switch.tableidx1599 = add i32 %i.yr, -1        ; 2 uses
  %i.ys = icmp ult i32 %switch.tableidx1599, 17
  br i1 %i.ys, label %switch.lookup1600, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535

switch.lookup1600:                                ; preds = %bb.ea
  %i.yt = zext nneg i32 %switch.tableidx1599 to i64
  %switch.gep1601 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yt
  %switch.load1602 = load ptr, ptr %switch.gep1601, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535: ; preds = %bb.ea, %switch.lookup1600
  %.0.i534 = phi ptr [ %switch.load1602, %switch.lookup1600 ], [ @.str.232, %bb.ea ]
  store ptr %.0.i534, ptr %i.f, align 8, !tbaa !123
  %i.yu = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread740

bb.eb:                                            ; preds = %bb.dz
  %i.yv = add i64 %i.ye, %i.xx
  %i.yw = load i32, ptr %.sroa.0539.01005, align 8, !tbaa !659
  %switch.tableidx1603 = add i32 %i.yw, -1        ; 2 uses
  %i.yx = icmp ult i32 %switch.tableidx1603, 17
  br i1 %i.yx, label %switch.lookup1604, label %bb.ec

switch.lookup1604:                                ; preds = %bb.eb
  %i.yy = zext nneg i32 %switch.tableidx1603 to i64
  %switch.gep1605 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yy
  %switch.load1606 = load ptr, ptr %switch.gep1605, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %switch.lookup1604
  %.0.i536 = phi ptr [ %switch.load1606, %switch.lookup1604 ], [ @.str.232, %bb.eb ]
  store ptr %.0.i536, ptr %i.c, align 8, !tbaa !123
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0539.01005, i64 24 ; 2 uses
  %.not748 = icmp eq ptr %i.yz, %.sroa.45.0.lcssa1278
  br i1 %.not748, label %.thread740, label %.lr.ph1008

.thread740:                                       ; preds = %bb.ec, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit
  %.not748762 = phi i1 [ %i.yc, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit ], [ %i.yu, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535 ], [ %i.ym, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533 ], [ true, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread726

.thread726:                                       ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit, %bb.v, %bb.t, %bb.r, %bb.x, %bb.dg, %bb.dj, %bb.dl, %bb.dt, %.thread740, %bb.du, %.thread736, %bb.df
  %.sroa.102.18735 = phi ptr [ %.sroa.102.17, %bb.df ], [ %.sroa.102.0.lcssa1279, %bb.dt ], [ %.sroa.102.0.lcssa1279, %bb.dg ], [ %.sroa.102.0.lcssa1279, %bb.dj ], [ %.sroa.102.0.lcssa1279, %bb.dl ], [ %.sroa.102.0.lcssa1279, %.thread736 ], [ %.sroa.102.0.lcssa1279, %bb.du ], [ %.sroa.102.0.lcssa1279, %.thread740 ], [ %.sroa.102.1.ph, %bb.t ], [ %.sroa.102.1.ph, %bb.v ], [ %.sroa.102.1.ph, %bb.r ], [ %.sroa.102.0982, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %.sroa.102.1.ph, %bb.x ]
  %.sroa.0632.18734 = phi ptr [ %.sroa.0632.17, %bb.df ], [ %.sroa.0632.0.lcssa1277, %bb.dt ], [ %.sroa.0632.0.lcssa1277, %bb.dg ], [ %.sroa.0632.0.lcssa1277, %bb.dj ], [ %.sroa.0632.0.lcssa1277, %bb.dl ], [ %.sroa.0632.0.lcssa1277, %.thread736 ], [ %.sroa.0632.0.lcssa1277, %bb.du ], [ %.sroa.0632.0.lcssa1277, %.thread740 ], [ %.sroa.0632.1.ph, %bb.t ], [ %.sroa.0632.1.ph, %bb.v ], [ %.sroa.0632.1.ph, %bb.r ], [ %.sroa.0632.0980, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %.sroa.0632.1.ph, %bb.x ] ; 3 uses
  %.14 = phi i1 [ %i.uw, %bb.df ], [ true, %bb.dt ], [ %i.vb, %bb.dg ], [ %i.vc, %bb.dj ], [ %i.vd, %bb.dl ], [ %i.xb, %.thread736 ], [ %i.xh, %bb.du ], [ %.not748762, %.thread740 ], [ %i.db, %bb.t ], [ %i.dg, %bb.v ], [ %i.cy, %bb.r ], [ %i.cl, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %i.dm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i538 = icmp eq ptr %.sroa.0632.18734, null
  br i1 %.not.i.i.i538, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %.thread726
  %i.za = ptrtoint ptr %.sroa.102.18735 to i64
  %i.zb = ptrtoint ptr %.sroa.0632.18734 to i64
  %i.zc = sub i64 %i.za, %i.zb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0632.18734, i64 noundef %i.zc) #27
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit: ; preds = %.thread726, %bb.ed
  ret i1 %.14
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary3getENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.1450", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !689
  %i.c = load ptr, ptr %2, align 8, !tbaa !123, !noalias !689
  store ptr %i.c, ptr %6, align 16, !tbaa !107, !noalias !689
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load ptr, ptr %3, align 8, !tbaa !123, !noalias !689
  store ptr %i.e, ptr %i.d, align 16, !tbaa !107, !noalias !689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !690
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !noalias !690
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !120, !noalias !690
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !121, !noalias !690
  store i64 500, ptr %i.f, align 8, !tbaa !122, !noalias !690
  %i.j = icmp eq i64 %i.b, 2
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 32123
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %6, align 16, !tbaa !107, !noalias !690
  %i.o = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.154) #28, !noalias !690
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.c
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.o to ptr ; 3 uses
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i) #24, !noalias !690
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.p
  %i.r = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull %i.q, ptr nonnull %5), !noalias !690 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !690
end_hunk_0
