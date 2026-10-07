Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_Z21test_replace_iteratorv:bb.a

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.sel139, i8 88, i64 %i.lg, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i

_ZNSt11char_traitsIcE6assignEPcmc.exit18.i:       ; preds = %bb.aw, %bb.av
  %i.ma = sub nuw nsw i64 3, %i.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 88, ptr %i.a, align 1, !tbaa !51
  %i.mb = invoke noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.sroa.sel142, ptr nonnull %i.a, i64 %i.ma, ptr null, i64 0, ptr noundef null)
          to label %.noexc51 unwind label %bb.cl  ; 0 uses

.noexc51:                                         ; preds = %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre213 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit: ; preds = %.noexc51, %bb.au, %bb.at, %bb.aq
  %i.mc = phi i8 [ %.pre213, %.noexc51 ], [ %i.ly, %bb.au ], [ %i.lw, %bb.at ], [ %i.lb, %bb.aq ] ; 2 uses
  %i.md = trunc i8 %i.mc to i1
  %i.me = lshr i8 %i.mc, 1
  %i.mf = zext nneg i8 %i.me to i64
  %i.mg = load i64, ptr %0, align 8               ; 2 uses
  %i.mh = lshr i64 %i.mg, 1
  %i.mi = select i1 %i.md, i64 %i.mf, i64 %i.mh
  %i.mj = icmp eq i64 %i.mi, 11
  br i1 %i.mj, label %bb.ax, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53

bb.ax:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit
  %i.mk = trunc i64 %i.mg to i1
  %i.ml = load ptr, ptr %i.d, align 8
  %i.mm = select i1 %i.mk, ptr %i.c, ptr %i.ml    ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 1
  %i.mo = xor i64 %i.mn, 6350124331664434504
  %i.mp = getelementptr i8, ptr %i.mm, i64 3
  %i.mq = load i64, ptr %i.mp, align 1
  %i.mr = xor i64 %i.mq, 2402767536722308972
  %i.ms = or i64 %i.mo, %i.mr
  %i.mt = icmp ne i64 %i.ms, 0
  %i.mu = zext i1 %i.mt to i32
  %i.mv = icmp eq i32 %i.mu, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit, %bb.ax
  %i.mw = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit ], [ %i.mv, %bb.ax ]
  %i.mx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.1, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_replace_iteratorv, i1 noundef zeroext %i.mw)
          to label %bb.ay unwind label %bb.cl     ; 0 uses

bb.ay:                                            ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53
  %i.my = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 13)
          to label %.noexc56 unwind label %bb.cl

.noexc56:                                         ; preds = %bb.ay
  br i1 %i.my, label %bb.az, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54

bb.az:                                            ; preds = %.noexc56
  %i.mz = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.na = trunc i8 %i.mz to i1
  %i.nb = lshr i8 %i.mz, 1
  %i.nc = zext nneg i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.nc
  %i.ne = load ptr, ptr %i.d, align 8
  %i.nf = load i64, ptr %0, align 8
  %i.ng = lshr i64 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ng
  %i.ni = select i1 %i.na, ptr %i.nd, ptr %i.nh
  store i8 0, ptr %i.ni, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54: ; preds = %bb.az, %.noexc56
  %i.nj = load i8, ptr %0, align 8, !tbaa !51
  %i.nk = trunc i8 %i.nj to i1                    ; 2 uses
  %i.nl = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nm = select i1 %i.nk, ptr %i.c, ptr %i.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.nm, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %.sroa.gep202 = getelementptr inbounds nuw i8, ptr %i.nl, i64 13
  %.sroa.sel203 = select i1 %i.nk, ptr %.sroa.gep189, ptr %.sroa.gep202
  store i8 0, ptr %.sroa.sel203, align 1, !tbaa !51
  %i.nn = load i8, ptr %0, align 8, !tbaa !51
  %i.no = trunc i8 %i.nn to i1
  br i1 %i.no, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54
  store i8 27, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57

bb.bb:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54
  %i.np = load i64, ptr %0, align 8
  %i.nq = and i64 %i.np, 1
  %i.nr = or disjoint i64 %i.nq, 26
  store i64 %i.nr, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i8 1, ptr %2, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i8 0, ptr %i.ns, align 1, !tbaa !51
  %i.nu = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 5)
          to label %.noexc.i58 unwind label %bb.bd

.noexc.i58:                                       ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57
  br i1 %i.nu, label %bb.bc, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59

bb.bc:                                            ; preds = %.noexc.i58
  %i.nv = load i8, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.nw = trunc i8 %i.nv to i1
  %i.nx = lshr i8 %i.nv, 1
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.oa = load ptr, ptr %i.nt, align 8
  %i.ob = load i64, ptr %2, align 8
  %i.oc = lshr i64 %i.ob, 1
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oc
  %i.oe = select i1 %i.nw, ptr %i.nz, ptr %i.od
  store i8 0, ptr %i.oe, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59: ; preds = %bb.bc, %.noexc.i58
  %i.of = load i8, ptr %2, align 8, !tbaa !51
  %i.og = trunc i8 %i.of to i1                    ; 2 uses
  %i.oh = load ptr, ptr %i.nt, align 8            ; 2 uses
  %i.oi = select i1 %i.og, ptr %i.ns, ptr %i.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.oi, ptr noundef nonnull align 1 dereferenceable(5) @.str.236, i64 5, i1 false)
  %.sroa.gep183 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.gep184 = getelementptr inbounds nuw i8, ptr %i.oh, i64 5
  %.sroa.sel185 = select i1 %i.og, ptr %.sroa.gep183, ptr %.sroa.gep184
  store i8 0, ptr %.sroa.sel185, align 1, !tbaa !51
  %i.oj = load i8, ptr %2, align 8, !tbaa !51
  %i.ok = trunc i8 %i.oj to i1
  br i1 %i.ok, label %.thread321, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63

.thread321:                                       ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59
  store i8 11, ptr %2, align 8
  %i.ol = load i8, ptr %0, align 8, !tbaa !51
  %i.om = trunc i8 %i.ol to i1                    ; 2 uses
  %i.on = load ptr, ptr %i.d, align 8             ; 2 uses
  %.sroa.gep144311 = getelementptr inbounds nuw i8, ptr %i.on, i64 7
  %.sroa.sel145312 = select i1 %i.om, ptr %.sroa.gep262274, ptr %.sroa.gep144311
  %.sroa.gep147313 = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %.sroa.sel148314 = select i1 %i.om, ptr %.sroa.gep122258278, ptr %.sroa.gep147313
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %.split329

bb.bd:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.oq = load i8, ptr %2, align 8, !tbaa !51
  %i.or = trunc i8 %i.oq to i1
  br i1 %i.or, label %.body61, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.os = load ptr, ptr %i.nt, align 8, !tbaa !61 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !62 ; 2 uses
  %i.ov = icmp ne ptr %i.os, null
  %i.ow = icmp ugt i64 %i.ou, 23
  %or.cond.i.i119 = and i1 %i.ov, %i.ow
  br i1 %or.cond.i.i119, label %bb.bf, label %.body61

bb.bf:                                            ; preds = %bb.be
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ou) #27
  br label %.body61

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59
  %i.ox = load i64, ptr %2, align 8
  %.fr364 = freeze i64 %i.ox                      ; 2 uses
  %i.oy = and i64 %.fr364, 1
  %i.oz = or disjoint i64 %i.oy, 10
  store i64 %i.oz, ptr %2, align 8
  %i.pa = trunc i64 %.fr364 to i1
  %i.pb = load i8, ptr %0, align 8, !tbaa !51
  %i.pc = trunc i8 %i.pb to i1                    ; 2 uses
  %i.pd = load ptr, ptr %i.d, align 8             ; 2 uses
  %.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.pd, i64 7
  %.sroa.sel145 = select i1 %i.pc, ptr %.sroa.gep262274, ptr %.sroa.gep144 ; 2 uses
  %.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  %.sroa.sel148 = select i1 %i.pc, ptr %.sroa.gep122258278, ptr %.sroa.gep147 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 6
  br i1 %i.pa, label %.split329, label %bb.bg

bb.bg:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63
  %i.pf = load ptr, ptr %i.nt, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 5
  br label %.split329

.split329:                                        ; preds = %bb.bg, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63, %.thread321
  %i.ph = phi ptr [ %i.pf, %bb.bg ], [ %i.ns, %.thread321 ], [ %i.ns, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 8 uses
  %.sroa.sel145316327 = phi ptr [ %.sroa.sel145, %bb.bg ], [ %.sroa.sel145312, %.thread321 ], [ %.sroa.sel145, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 8 uses
  %.sroa.sel148318325 = phi ptr [ %.sroa.sel148, %bb.bg ], [ %.sroa.sel148314, %.thread321 ], [ %.sroa.sel148, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 7 uses
  %i.pi = phi ptr [ %i.pg, %bb.bg ], [ %i.oo, %.thread321 ], [ %i.pe, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 5 uses
  %i.pj = icmp ne ptr %.sroa.sel145316327, %.sroa.sel148318325
  %i.pk = icmp ne ptr %i.ph, %i.pi
  %i.pl = and i1 %i.pj, %i.pk
  br i1 %i.pl, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.split329
  %i.pm = ptrtoaddr ptr %i.ph to i64              ; 2 uses
  %.sroa.sel145316327375 = ptrtoaddr ptr %.sroa.sel145316327 to i64 ; 2 uses
  %.sroa.sel148318325376.a = ptrtoaddr ptr %.sroa.sel148318325 to i64
  %i.pn = ptrtoaddr ptr %i.pi to i64
  %i.po = xor i64 %i.pm, -1
  %i.pp = add i64 %i.po, %i.pn
  %i.pq = xor i64 %.sroa.sel145316327375, -1
  %i.pr = add i64 %i.pq, %.sroa.sel148318325376.a
  %umin = call i64 @llvm.umin.i64(i64 %i.pp, i64 %i.pr)
  %i.ps = add i64 %umin, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.ps, 4
  %i.pt = sub i64 %i.pm, %.sroa.sel145316327375
  %diff.check = icmp ugt i64 %i.pt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check377 = icmp ult i64 %i.ps, 32
  br i1 %min.iters.check377, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pu = and i64 %i.ps, 28
  %n.vec = and i64 %i.ps, -32                     ; 5 uses
  %i.pv = getelementptr i8, ptr %.sroa.sel145316327, i64 %n.vec ; 2 uses
  %i.pw = getelementptr i8, ptr %i.ph, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.sel145316327, i64 %index ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.ph, i64 %index ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep378, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep378, align 1, !tbaa !51
  %wide.load379 = load <16 x i8>, ptr %i.px, align 1, !tbaa !51
  %i.py = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load379, ptr %i.py, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pz = icmp eq i64 %index.next, %n.vec
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ps, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec381 = and i64 %i.ps, -4                   ; 4 uses
  %i.qa = getelementptr i8, ptr %.sroa.sel145316327, i64 %n.vec381 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.ph, i64 %n.vec381 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index382 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 3 uses
  %next.gep383 = getelementptr i8, ptr %.sroa.sel145316327, i64 %index382
  %next.gep384 = getelementptr i8, ptr %i.ph, i64 %index382
  %wide.load385 = load <4 x i8>, ptr %next.gep384, align 1, !tbaa !51
  store <4 x i8> %wide.load385, ptr %next.gep383, align 1, !tbaa !51
  %index.next386 = add nuw i64 %index382, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next386, %n.vec381
  br i1 %i.qc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !294

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n387 = icmp eq i64 %i.ps, %n.vec381
  br i1 %cmp.n387, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %.sroa.sel145316327, %iter.check ], [ %i.pv, %vec.epilog.iter.check ], [ %i.qa, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %i.ph, %iter.check ], [ %i.pw, %vec.epilog.iter.check ], [ %i.qb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.qe, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.qf, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.qd = load i8, ptr %.01618.i, align 1, !tbaa !51
  store i8 %i.qd, ptr %.019.i, align 1, !tbaa !51
  %i.qe = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.qg = icmp ne ptr %i.qe, %.sroa.sel148318325
  %i.qh = icmp ne ptr %i.qf, %i.pi
  %i.qi = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %i.qi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !295

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.split329
  %.016.lcssa.i = phi ptr [ %i.ph, %.split329 ], [ %i.qb, %vec.epilog.middle.block ], [ %i.pw, %middle.block ], [ %i.qf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.sroa.sel145316327, %.split329 ], [ %i.qa, %vec.epilog.middle.block ], [ %i.pv, %middle.block ], [ %i.qe, %.lr.ph.i ] ; 3 uses
  %i.qj = icmp eq ptr %.016.lcssa.i, %i.pi
  br i1 %i.qj, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %._crit_edge.i
  %.not.i.i64 = icmp eq ptr %.0.lcssa.i, %.sroa.sel148318325
  %.pre216 = load i8, ptr %0, align 8, !tbaa !51  ; 3 uses
  br i1 %.not.i.i64, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qk = ptrtoint ptr %.sroa.sel148318325 to i64 ; 2 uses
  %i.ql = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i65 = sub i64 %i.ql, %i.qk
  %i.qm = trunc i8 %.pre216 to i1
  %i.qn = lshr i8 %.pre216, 1
  %i.qo = zext nneg i8 %i.qn to i64
  %i.qp = load i64, ptr %0, align 8               ; 3 uses
  %i.qq = lshr i64 %i.qp, 1
  %i.qr = select i1 %i.qm, i64 %i.qo, i64 %i.qq   ; 2 uses
  %i.qs = trunc i64 %i.qp to i1
  %i.qt = load ptr, ptr %i.d, align 8
  %i.qu = select i1 %i.qs, ptr %i.c, ptr %i.qt
  %i.qv = add nuw i64 %i.qr, 1
  %i.qw = ptrtoint ptr %i.qu to i64
  %.neg.i.i66 = sub i64 %i.qw, %i.qk
  %i.qx = add i64 %i.qv, %.neg.i.i66              ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.lcssa.i, ptr nonnull align 1 %.sroa.sel148318325, i64 %i.qx, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68:     ; preds = %bb.bj, %bb.bi
  %i.qz = add i64 %i.qr, %.neg14.i.i65            ; 2 uses
  %i.ra = trunc i64 %i.qp to i1
  br i1 %i.ra, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68
  %i.rb = trunc i64 %i.qz to i8
  %i.rc = shl i8 %i.rb, 1
  %i.rd = or disjoint i8 %i.rc, 1                 ; 2 uses
  store i8 %i.rd, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.bl:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68
  %i.re = load i64, ptr %0, align 8
  %i.rf = shl i64 %i.qz, 1
  %i.rg = and i64 %i.re, 1
  %i.rh = or disjoint i64 %i.rg, %i.rf            ; 2 uses
  store i64 %i.rh, ptr %0, align 8
  %i.ri = trunc i64 %i.rh to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.bm:                                            ; preds = %._crit_edge.i
  %i.rj = invoke noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPcEES6_PKcT_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.sroa.sel148318325, ptr noundef %.016.lcssa.i, ptr noundef nonnull %i.pi, ptr noundef null)
          to label %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge unwind label %bb.cm ; 0 uses

._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge: ; preds = %bb.bm
  %.pre215 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge, %bb.bl, %bb.bk, %bb.bh
  %i.rk = phi i8 [ %.pre215, %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge ], [ %i.ri, %bb.bl ], [ %i.rd, %bb.bk ], [ %.pre216, %bb.bh ] ; 2 uses
  %i.rl = trunc i8 %i.rk to i1
  %i.rm = lshr i8 %i.rk, 1
  %i.rn = zext nneg i8 %i.rm to i64
  %i.ro = load i64, ptr %0, align 8               ; 2 uses
  %i.rp = lshr i64 %i.ro, 1
  %i.rq = select i1 %i.rl, i64 %i.rn, i64 %i.rp
  %i.rr = icmp eq i64 %i.rq, 13
  br i1 %i.rr, label %bb.bn, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71

bb.bn:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit
  %i.rs = trunc i64 %i.ro to i1
  %i.rt = load ptr, ptr %i.d, align 8
  %i.ru = select i1 %i.rs, ptr %i.c, ptr %i.rt    ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 1
  %i.rw = xor i64 %i.rv, 6206009143588578632
  %i.rx = getelementptr i8, ptr %i.ru, i64 5
  %i.ry = load i64, ptr %i.rx, align 1
  %i.rz = xor i64 %i.ry, 2410399342580342828
  %i.sa = or i64 %i.rw, %i.rz
  %i.sb = icmp ne i64 %i.sa, 0
  %i.sc = zext i1 %i.sb to i32
  %i.sd = icmp eq i32 %i.sc, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, %bb.bn
  %i.se = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit ], [ %i.sd, %bb.bn ]
  %i.sf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.1, i32 noundef 1591, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_replace_iteratorv, i1 noundef zeroext %i.se)
          to label %bb.bo unwind label %bb.cm     ; 0 uses

bb.bo:                                            ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71
  %i.sg = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 13)
          to label %.noexc74 unwind label %bb.cm

.noexc74:                                         ; preds = %bb.bo
  br i1 %i.sg, label %bb.bp, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72

bb.bp:                                            ; preds = %.noexc74
  %i.sh = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.si = trunc i8 %i.sh to i1
  %i.sj = lshr i8 %i.sh, 1
  %i.sk = zext nneg i8 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.sk
  %i.sm = load ptr, ptr %i.d, align 8
  %i.sn = load i64, ptr %0, align 8
  %i.so = lshr i64 %i.sn, 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.so
  %i.sq = select i1 %i.si, ptr %i.sl, ptr %i.sp
  store i8 0, ptr %i.sq, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72: ; preds = %bb.bp, %.noexc74
  %i.sr = load i8, ptr %0, align 8, !tbaa !51
  %i.ss = trunc i8 %i.sr to i1                    ; 2 uses
  %i.st = load ptr, ptr %i.d, align 8             ; 2 uses
end_hunk_0
