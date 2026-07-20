inline.NumInlined: 4253
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2PP3Cmd10handle_opsEv:bb.a
  switch i64 %i.nl, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i
  %i.nq = load i8, ptr %i.nj, align 1, !tbaa !15
  store i8 %i.nq, ptr %i.np, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.bq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.np, ptr align 1 %i.nj, i64 %i.nl, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.bp, %bb.bq
  %i.nr = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !862 ; 2 uses
  store i64 %i.nr, ptr %i.hj, align 8, !tbaa !12, !alias.scope !862
  %i.ns = load ptr, ptr %22, align 8, !tbaa !45, !alias.scope !862
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  store i8 0, ptr %i.nt, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !862
  %i.nu = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.nv = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = lshr exact i64 %i.ny, 5
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph602, label %._crit_edge603

bb.br:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit367
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %i.oc = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.od = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %sext850 = shl i64 %i.og, 27
  %i.oh = ashr i64 %sext850, 32
  %i.oi = icmp slt i64 %indvars.iv.next608, %i.oh
  br i1 %i.oi, label %.lr.ph602, label %._crit_edge603, !llvm.loop !865

bb.bs:                                            ; preds = %.noexc.i.i
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

.lr.ph602:                                        ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %bb.br
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %bb.br ], [ 0, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 2 uses
  %i.ok = phi ptr [ %i.od, %bb.br ], [ %i.nv, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ]
  %.145601 = phi i32 [ %.246, %bb.br ], [ %.044, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.ol = getelementptr inbounds nuw [32 x i8], ptr %i.ok, i64 %indvars.iv607
  %i.om = invoke noundef zeroext i1 @_ZN2PP3Cmd12separate_strERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RSt6vectorIS6_SaIS6_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.ol, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.bt unwind label %bb.ed     ; 2 uses

bb.bt:                                            ; preds = %.lr.ph602
  br i1 %i.om, label %bb.bu, label %bb.fc

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %i.on = load ptr, ptr %i.hk, align 8, !tbaa !47
  %i.oo = load ptr, ptr %23, align 8, !tbaa !46
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = lshr exact i64 %i.or, 5
  %i.ot = trunc i64 %i.os to i32
  %i.ou = icmp sgt i32 %i.ot, 0
  %i.ov = sext i32 %.145601 to i64                ; 6 uses
  br i1 %i.ou, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %bb.bu
  %i.ow = load ptr, ptr %i.hc, align 8, !tbaa !71, !noalias !866 ; 2 uses
  %i.ox = load ptr, ptr %i.hh, align 8, !tbaa !75, !noalias !866
  %i.oy = load ptr, ptr %i.he, align 8, !tbaa !76, !noalias !866 ; 4 uses
  %i.oz = ptrtoint ptr %i.ow to i64
  %i.pa = ptrtoint ptr %i.ox to i64               ; 2 uses
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = ashr exact i64 %i.pb, 7
  %i.pd = add nsw i64 %i.pc, %i.ov                ; 6 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  br i1 %i.pe, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %._crit_edge
  %i.pf = icmp samesign ult i64 %i.pd, 4
  br i1 %i.pf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pg = getelementptr inbounds [128 x i8], ptr %i.ow, i64 %i.ov ; 2 uses
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i

bb.bx:                                            ; preds = %bb.bv
  %i.ph = lshr i64 %i.pd, 2
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge
  %i.pi = ashr i64 %i.pd, 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink = phi i64 [ %i.pi, %bb.by ], [ %i.ph, %bb.bx ] ; 3 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.oy, i64 %.sink ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !51, !noalias !869 ; 3 uses
  %i.pl = and i64 %i.pd, 3
  %i.pm = getelementptr inbounds nuw [128 x i8], ptr %i.pk, i64 %i.pl
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.oy, i64 %.sink
  %i.po = shl nsw i64 %.sink, 2
  %i.pp = sub nsw i64 %i.pd, %i.po
  %i.pq = getelementptr inbounds [128 x i8], ptr %i.pk, i64 %i.pp
  %.pre.i406 = ptrtoint ptr %i.pk to i64
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i: ; preds = %bb.bz, %bb.bw
  %storemerge.i.i.i405453 = phi ptr [ %i.pg, %bb.bw ], [ %i.pm, %bb.bz ]
  %.sroa.1015.0.i450 = phi ptr [ %i.oy, %bb.bw ], [ %i.pj, %bb.bz ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.pa, %bb.bw ], [ %.pre.i406, %bb.bz ]
  %.sroa.10.0.i407 = phi ptr [ %i.oy, %bb.bw ], [ %i.pn, %bb.bz ] ; 2 uses
  %storemerge.i.i2.i = phi ptr [ %i.pg, %bb.bw ], [ %i.pq, %bb.bz ] ; 2 uses
  %i.pr = ptrtoint ptr %storemerge.i.i2.i to i64
  %i.ps = sub i64 %i.pr, %.pre-phi.i
  %i.pt = ashr exact i64 %i.ps, 7                 ; 3 uses
  %i.pu = add nsw i64 %i.pt, 1                    ; 3 uses
  %i.pv = icmp sgt i64 %i.pt, -2
  br i1 %i.pv, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i
  %i.pw = icmp slt i64 %i.pt, 3
  br i1 %i.pw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.px = getelementptr inbounds nuw i8, ptr %storemerge.i.i2.i, i64 128
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i

bb.cc:                                            ; preds = %bb.ca
  %i.py = lshr i64 %i.pu, 2
  br label %bb.ce

bb.cd:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i
  %i.pz = ashr i64 %i.pu, 2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.qa = phi i64 [ %i.py, %bb.cc ], [ %i.pz, %bb.cd ] ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %.sroa.10.0.i407, i64 %i.qa ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !51, !noalias !872
  %i.qd = shl nsw i64 %i.qa, 2
  %i.qe = sub nsw i64 %i.pu, %i.qd
  %i.qf = getelementptr inbounds [128 x i8], ptr %i.qc, i64 %i.qe
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i: ; preds = %bb.ce, %bb.cb
  %.sroa.109.0.i = phi ptr [ %.sroa.10.0.i407, %bb.cb ], [ %i.qb, %bb.ce ] ; 2 uses
  %storemerge.i.i4.i = phi ptr [ %i.px, %bb.cb ], [ %i.qf, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  store ptr %storemerge.i.i.i405453, ptr %1, align 8, !tbaa !71, !alias.scope !875, !noalias !878
  %i.qg = load ptr, ptr %.sroa.1015.0.i450, align 8, !tbaa !51, !noalias !881 ; 2 uses
  store ptr %i.qg, ptr %i.hu, align 8, !tbaa !75, !alias.scope !875, !noalias !878
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 512
  store ptr %i.qh, ptr %i.hv, align 8, !tbaa !87, !alias.scope !875, !noalias !878
  store ptr %.sroa.1015.0.i450, ptr %i.hw, align 8, !tbaa !76, !alias.scope !875, !noalias !878
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  store ptr %storemerge.i.i4.i, ptr %2, align 8, !tbaa !71, !alias.scope !882, !noalias !878
  %i.qi = load ptr, ptr %.sroa.109.0.i, align 8, !tbaa !51, !noalias !885 ; 2 uses
  store ptr %i.qi, ptr %i.hx, align 8, !tbaa !75, !alias.scope !882, !noalias !878
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 512
  store ptr %i.qj, ptr %i.hy, align 8, !tbaa !87, !alias.scope !882, !noalias !878
  store ptr %.sroa.109.0.i, ptr %i.hz, align 8, !tbaa !76, !alias.scope !882, !noalias !878
  invoke void @_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %i.ha, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit

.noexc303:                                        ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.qk = load ptr, ptr %i.hs, align 8, !tbaa !886 ; 2 uses
  %i.ql = load ptr, ptr %24, align 8, !tbaa !888  ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = lshr exact i64 %i.qo, 7                 ; 2 uses
  %i.qq = trunc i64 %i.qp to i32
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph.i, label %_ZN2PP3Cmd13replace_wordsEiiRSt6vectorINS_4WordESaIS2_EE.exit

.lr.ph.i:                                         ; preds = %.noexc303
  %i.qs = and i64 %i.qp, 2147483647
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc304, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.qs, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc304 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.qt = load ptr, ptr %i.hc, align 8, !tbaa !71, !noalias !889 ; 5 uses
  %i.qu = load ptr, ptr %i.hh, align 8, !tbaa !75, !noalias !889 ; 2 uses
  %i.qv = load ptr, ptr %i.he, align 8, !tbaa !76, !noalias !889 ; 17 uses
  %i.qw = ptrtoint ptr %i.qt to i64               ; 3 uses
  %i.qx = ptrtoint ptr %i.qu to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = ashr exact i64 %i.qy, 7
  %i.ra = add nsw i64 %i.qz, %i.ov                ; 5 uses
  %i.rb = icmp sgt i64 %i.ra, -1
  br i1 %i.rb, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.rc = icmp samesign ult i64 %i.ra, 4
  br i1 %i.rc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.rd = getelementptr inbounds [128 x i8], ptr %i.qt, i64 %i.ov
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.re = lshr i64 %i.ra, 2
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.rf = ashr i64 %i.ra, 2
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.rg = phi i64 [ %i.re, %bb.ci ], [ %i.rf, %bb.cj ] ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.rg ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !51, !noalias !892
  %i.rj = shl nsw i64 %i.rg, 2
  %i.rk = sub nsw i64 %i.ra, %i.rj
  %i.rl = getelementptr inbounds [128 x i8], ptr %i.ri, i64 %i.rk
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i: ; preds = %bb.ck, %bb.ch
  %.sroa.10.0.i = phi ptr [ %i.qv, %bb.ch ], [ %i.rh, %bb.ck ] ; 2 uses
  %storemerge.i.i.i = phi ptr [ %i.rd, %bb.ch ], [ %i.rl, %bb.ck ] ; 5 uses
  %i.rm = load ptr, ptr %24, align 8, !tbaa !888
  %i.rn = getelementptr inbounds nuw [128 x i8], ptr %i.rm, i64 %indvars.iv.next.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ro = icmp eq ptr %storemerge.i.i.i, %i.qt
  br i1 %i.ro, label %bb.cl, label %bb.de

bb.cl:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  %.not.i.i398 = icmp eq ptr %i.qt, %i.qu
  br i1 %.not.i.i398, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rp = getelementptr inbounds i8, ptr %i.qt, i64 -128
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.rp, ptr noundef nonnull align 8 dereferenceable(128) %i.rn)
          to label %.noexc399 unwind label %.loopexit

.noexc399:                                        ; preds = %bb.cm
  %i.rq = load ptr, ptr %i.hc, align 8, !tbaa !898, !noalias !895
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 -128
  store ptr %i.rr, ptr %i.hc, align 8, !tbaa !898, !noalias !895
  br label %.noexc304

bb.cn:                                            ; preds = %bb.cl
  %i.rs = load ptr, ptr %i.hd, align 8, !tbaa !76 ; 4 uses
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.qv to i64               ; 3 uses
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = ashr exact i64 %i.rv, 3                 ; 3 uses
  %i.rx = icmp ne ptr %i.rs, null
  %.neg.i.i.i412 = sext i1 %i.rx to i64
  %i.ry = add nsw i64 %i.rw, %.neg.i.i.i412
  %i.rz = shl nsw i64 %i.ry, 2
  %i.sa = load ptr, ptr %i.hb, align 8, !tbaa !71
  %i.sb = load ptr, ptr %i.hf, align 8, !tbaa !75
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = ashr exact i64 %i.se, 7
  %i.sg = add nsw i64 %i.rz, %i.sf
  %i.sh = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = sub i64 %i.si, %i.qw
  %i.sk = ashr exact i64 %i.sj, 7
  %i.sl = add nsw i64 %i.sg, %i.sk
  %i.sm = icmp eq i64 %i.sl, 72057594037927935
  br i1 %i.sm, label %.invoke, label %bb.co

.invoke:                                          ; preds = %bb.dh, %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.sn = load ptr, ptr %i.ha, align 8, !tbaa !59 ; 3 uses
  %i.so = icmp eq ptr %i.qv, %i.sn
  br i1 %i.so, label %bb.cp, label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.sp = add nsw i64 %i.rw, 1                    ; 2 uses
  %i.sq = add nsw i64 %i.rw, 2                    ; 3 uses
  %i.sr = load i64, ptr %i.ie, align 8, !tbaa !63 ; 5 uses
  %i.ss = shl nsw i64 %i.sq, 1
  %i.st = icmp ugt i64 %i.sr, %i.ss
  br i1 %i.st, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.su = sub i64 %i.sr, %i.sq
  %i.sv = lshr i64 %i.su, 1
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sv
  %29 = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.sp ; 2 uses
  %31 = ptrtoint ptr %i.sx to i64
  %32 = sub i64 %31, %i.ru                        ; 3 uses
  %33 = ashr exact i64 %32, 3                     ; 2 uses
  %34 = icmp sgt i64 %33, 1
  br i1 %34, label %bb.cr, label %bb.cs, !prof !899

bb.cr:                                            ; preds = %bb.cq
  %i.sy = sub nsw i64 0, %33
  %i.sz = getelementptr inbounds [8 x i8], ptr %30, i64 %i.sy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sz, ptr align 8 %i.qv, i64 %32, i1 false)
  br label %.noexc415

bb.cs:                                            ; preds = %bb.cq
  %i.ta = icmp eq i64 %32, 8
  br i1 %i.ta, label %bb.ct, label %.noexc415

bb.ct:                                            ; preds = %bb.cs
  %i.tb = getelementptr inbounds i8, ptr %30, i64 -8
  %i.tc = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.tc, ptr %i.tb, align 8, !tbaa !51
  br label %.noexc415

bb.cu:                                            ; preds = %bb.cp
  %.sroa.speculated.i423 = call i64 @llvm.umax.i64(i64 %i.sr, i64 1)
  %i.td = add i64 %i.sr, 2
  %i.te = add i64 %i.td, %.sroa.speculated.i423   ; 5 uses
  %i.tf = icmp ugt i64 %i.te, 1152921504606846975
  br i1 %i.tf, label %bb.cv, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424, !prof !517

bb.cv:                                            ; preds = %bb.cu
  %i.tg = icmp ugt i64 %i.te, 2305843009213693951
  br i1 %i.tg, label %.noexc.i.i428.invoke, label %.noexc3.i.i427.invoke

.noexc.i.i428.invoke:                             ; preds = %bb.du, %bb.cv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i428.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.i.i428.cont:                               ; preds = %.noexc.i.i428.invoke
  unreachable

.noexc3.i.i427.invoke:                            ; preds = %bb.du, %bb.cv
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i427.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc3.i.i427.cont:                              ; preds = %.noexc3.i.i427.invoke
  unreachable

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424: ; preds = %bb.cu
  %i.th = shl nuw nsw i64 %i.te, 3
  %i.ti = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.th) #25
          to label %.noexc431 unwind label %.loopexit ; 2 uses

.noexc431:                                        ; preds = %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424
  %i.tj = sub nsw i64 %i.te, %i.sq
  %i.tk = lshr i64 %i.tj, 1
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.to = ptrtoint ptr %i.tn to i64
  %i.tp = sub i64 %i.to, %i.ru                    ; 3 uses
  %i.tq = icmp sgt i64 %i.tp, 8
  br i1 %i.tq, label %bb.cw, label %bb.cx, !prof !899

bb.cw:                                            ; preds = %.noexc431
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tm, ptr align 8 %i.qv, i64 %i.tp, i1 false)
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

bb.cx:                                            ; preds = %.noexc431
  %i.tr = icmp eq i64 %i.tp, 8
  br i1 %i.tr, label %bb.cy, label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

bb.cy:                                            ; preds = %bb.cx
  %i.ts = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.ts, ptr %i.tm, align 8, !tbaa !51
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425: ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.tt = shl i64 %i.sr, 3
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.tt) #21
  store ptr %i.ti, ptr %i.ha, align 8, !tbaa !59
  store i64 %i.te, ptr %i.ie, align 8, !tbaa !63
  br label %.noexc415

.noexc415:                                        ; preds = %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425, %bb.ct, %bb.cs, %bb.cr
  %.0.i426 = phi ptr [ %i.tm, %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425 ], [ %29, %bb.cs ], [ %29, %bb.cr ], [ %29, %bb.ct ] ; 4 uses
  store ptr %.0.i426, ptr %i.he, align 8, !tbaa !76
  %i.tu = load ptr, ptr %.0.i426, align 8, !tbaa !51 ; 2 uses
  store ptr %i.tu, ptr %i.hh, align 8, !tbaa !75
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 512
  store ptr %i.tv, ptr %i.hg, align 8, !tbaa !87
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %.0.i426, i64 %i.sp
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 -8 ; 2 uses
  store ptr %i.tx, ptr %i.hd, align 8, !tbaa !76
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ty, ptr %i.hf, align 8, !tbaa !75
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 512
  store ptr %i.tz, ptr %i.id, align 8, !tbaa !87
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i: ; preds = %.noexc415, %bb.co
  %i.ua = phi ptr [ %.0.i426, %.noexc415 ], [ %i.qv, %bb.co ]
  %i.ub = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc416 unwind label %.loopexit ; 4 uses

.noexc416:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i
  %i.uc = getelementptr inbounds i8, ptr %i.ua, i64 -8 ; 2 uses
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !51
  store ptr %i.uc, ptr %i.he, align 8, !tbaa !76
  store ptr %i.ub, ptr %i.hh, align 8, !tbaa !75
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 512
  store ptr %i.ud, ptr %i.hg, align 8, !tbaa !87
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 384 ; 2 uses
  store ptr %i.ue, ptr %i.hc, align 8, !tbaa !898
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.ue, ptr noundef nonnull align 8 dereferenceable(128) %i.rn)
          to label %.noexc304 unwind label %bb.cz

bb.cz:                                            ; preds = %.noexc416
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  %i.uh = call ptr @__cxa_begin_catch(ptr %i.ug) #22 ; 0 uses
  %i.ui = load ptr, ptr %i.hc, align 8, !tbaa !71
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 128 ; 2 uses
  store ptr %i.uj, ptr %i.hc, align 8, !tbaa !71
  %i.uk = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.ul = icmp eq ptr %i.uj, %i.uk
  %.pre.i413 = load ptr, ptr %i.he, align 8, !tbaa !76 ; 2 uses
  br i1 %i.ul, label %bb.da, label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

bb.da:                                            ; preds = %bb.cz
  %i.um = getelementptr inbounds nuw i8, ptr %.pre.i413, i64 8 ; 3 uses
  store ptr %i.um, ptr %i.he, align 8, !tbaa !76
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !51 ; 3 uses
  store ptr %i.un, ptr %i.hh, align 8, !tbaa !75
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 512
  store ptr %i.uo, ptr %i.hg, align 8, !tbaa !87
  store ptr %i.un, ptr %i.hc, align 8, !tbaa !71
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i: ; preds = %bb.da, %bb.cz
  %i.up = phi ptr [ %.pre.i413, %bb.cz ], [ %i.um, %bb.da ]
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 -8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !51
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef 512) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.dd unwind label %bb.db

bb.db:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  %i.us = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ut = landingpad { ptr, i32 }
          catch ptr null
  %i.uu = extractvalue { ptr, i32 } %i.ut, 0
  call void @__clang_call_terminate(ptr %i.uu) #23
  unreachable

bb.dd:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  unreachable

bb.de:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  %i.uv = load ptr, ptr %i.hb, align 8, !tbaa !68, !noalias !895 ; 2 uses
  %i.uw = icmp eq ptr %storemerge.i.i.i, %i.uv
  br i1 %i.uw, label %bb.df, label %bb.ec

bb.df:                                            ; preds = %bb.de
  %i.ux = load ptr, ptr %i.id, align 8, !tbaa !69, !noalias !895
  %i.uy = getelementptr inbounds i8, ptr %i.ux, i64 -128
  %.not.i4.i = icmp eq ptr %storemerge.i.i.i, %i.uy
  br i1 %.not.i4.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.uv, ptr noundef nonnull align 8 dereferenceable(128) %i.rn)
          to label %_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit.i unwind label %.loopexit

bb.dh:                                            ; preds = %bb.df
  %i.uz = load ptr, ptr %i.hd, align 8, !tbaa !76 ; 5 uses
  %i.va = ptrtoint ptr %i.uz to i64               ; 2 uses
  %i.vb = ptrtoint ptr %i.qv to i64               ; 4 uses
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = ashr exact i64 %i.vc, 3                 ; 3 uses
  %i.ve = icmp ne ptr %i.uz, null
  %.neg.i.i.i = sext i1 %i.ve to i64
  %i.vf = add nsw i64 %i.vd, %.neg.i.i.i
  %i.vg = shl nsw i64 %i.vf, 2
  %i.vh = load ptr, ptr %i.hf, align 8, !tbaa !75
  %i.vi = ptrtoint ptr %storemerge.i.i.i to i64
  %i.vj = ptrtoint ptr %i.vh to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = ashr exact i64 %i.vk, 7
  %i.vm = add nsw i64 %i.vg, %i.vl
  %i.vn = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = sub i64 %i.vo, %i.qw
  %i.vq = ashr exact i64 %i.vp, 7
  %i.vr = add nsw i64 %i.vm, %i.vq
  %i.vs = icmp eq i64 %i.vr, 72057594037927935
  br i1 %i.vs, label %.invoke, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vt = load i64, ptr %i.ie, align 8, !tbaa !63 ; 6 uses
  %i.vu = load ptr, ptr %i.ha, align 8, !tbaa !59 ; 3 uses
  %i.vv = ptrtoint ptr %i.vu to i64
  %i.vw = sub i64 %i.va, %i.vv
  %i.vx = ashr exact i64 %i.vw, 3
  %i.vy = sub i64 %i.vt, %i.vx
  %i.vz = icmp ult i64 %i.vy, 2
  br i1 %i.vz, label %bb.dj, label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.wa = add nsw i64 %i.vd, 1                    ; 2 uses
  %i.wb = add nsw i64 %i.vd, 2                    ; 3 uses
  %i.wc = shl nsw i64 %i.wb, 1
  %i.wd = icmp ugt i64 %i.vt, %i.wc
  br i1 %i.wd, label %bb.dk, label %bb.dt

bb.dk:                                            ; preds = %bb.dj
  %i.we = sub i64 %i.vt, %i.wb
  %i.wf = lshr i64 %i.we, 1
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.wf ; 10 uses
  %i.wh = icmp ult ptr %i.wg, %i.qv
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 2 uses
  br i1 %i.wh, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = sub i64 %i.wj, %i.vb                    ; 3 uses
  %i.wl = icmp sgt i64 %i.wk, 8
  br i1 %i.wl, label %bb.dm, label %bb.dn, !prof !899

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.wg, ptr nonnull align 8 %i.qv, i64 %i.wk, i1 false)
  br label %.noexc410

bb.dn:                                            ; preds = %bb.dl
  %i.wm = icmp eq i64 %i.wk, 8
  br i1 %i.wm, label %bb.do, label %.noexc410

bb.do:                                            ; preds = %bb.dn
  %i.wn = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.wn, ptr %i.wg, align 8, !tbaa !51
  br label %.noexc410

bb.dp:                                            ; preds = %bb.dk
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wa ; 2 uses
  %i.wp = ptrtoint ptr %i.wi to i64
  %i.wq = sub i64 %i.wp, %i.vb                    ; 3 uses
  %i.wr = ashr exact i64 %i.wq, 3                 ; 2 uses
  %i.ws = icmp sgt i64 %i.wr, 1
  br i1 %i.ws, label %bb.dq, label %bb.dr, !prof !899

bb.dq:                                            ; preds = %bb.dp
  %i.wt = sub nsw i64 0, %i.wr
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.wo, i64 %i.wt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wu, ptr align 8 %i.qv, i64 %i.wq, i1 false)
  br label %.noexc410

bb.dr:                                            ; preds = %bb.dp
  %i.wv = icmp eq i64 %i.wq, 8
  br i1 %i.wv, label %bb.ds, label %.noexc410

bb.ds:                                            ; preds = %bb.dr
  %i.ww = getelementptr inbounds i8, ptr %i.wo, i64 -8
  %i.wx = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.wx, ptr %i.ww, align 8, !tbaa !51
  br label %.noexc410

bb.dt:                                            ; preds = %bb.dj
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.vt, i64 1)
  %i.wy = add i64 %i.vt, 2
  %i.wz = add i64 %i.wy, %.sroa.speculated.i      ; 5 uses
  %i.xa = icmp ugt i64 %i.wz, 1152921504606846975
  br i1 %i.xa, label %bb.du, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !517

bb.du:                                            ; preds = %bb.dt
  %i.xb = icmp ugt i64 %i.wz, 2305843009213693951
  br i1 %i.xb, label %.noexc.i.i428.invoke, label %.noexc3.i.i427.invoke

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.dt
  %i.xc = shl nuw nsw i64 %i.wz, 3
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #25
          to label %.noexc422 unwind label %.loopexit ; 2 uses
end_hunk_0
