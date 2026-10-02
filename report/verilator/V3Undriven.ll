Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Undriven?download=true
inline.NumInlined: 1854
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN16UndrivenVarEntry16reportViolationsEv:bb.a
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNK7AstNode11prettyNameQB5cxx11Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366: ; preds = %bb.ck
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !24, !noalias !488
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #20
  br label %_ZNK7AstNode11prettyNameQB5cxx11Ev.exit368

bb.cl:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit362
  %i.no = landingpad { ptr, i32 }
          cleanup
  %i.np = load ptr, ptr %1, align 8, !tbaa !22, !noalias !488 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i363: ; preds = %bb.cl
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !24, !noalias !488
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i364: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !488
  br label %common.resume

_ZNK7AstNode11prettyNameQB5cxx11Ev.exit368:       ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !488
  %i.nu = load ptr, ptr %17, align 8, !tbaa !22
  %i.nv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !23
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ne, ptr noundef %i.nu, i64 noundef %i.nw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit370 unwind label %bb.cr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit370: ; preds = %_ZNK7AstNode11prettyNameQB5cxx11Ev.exit368
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.nx)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit370
  %i.ny = load ptr, ptr %17, align 8, !tbaa !22   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %bb.cm
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !24
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.od = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !160 ; 2 uses
  %i.of = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %bb.cn, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit375, !prof !161

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  %i.oh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #19
  %.not.i.i.i.i.i374 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i.i.i.i374, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit375, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.oi = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #19 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #19
  br label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit375

bb.cq:                                            ; preds = %bb.co
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #19
  br label %common.resume

_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %bb.cn, %bb.cp
  %i.ok = load i16, ptr %i.oe, align 8, !tbaa !264
  %i.ol = call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.ok, i8 noundef zeroext 0, i8 -125, i1 noundef zeroext false)
  store i16 %i.ol, ptr %i.oe, align 8, !tbaa !264
  br label %bb.gb

bb.cr:                                            ; preds = %_ZNK7AstNode11prettyNameQB5cxx11Ev.exit368, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit370
  %i.om = landingpad { ptr, i32 }
          cleanup
  %i.on = load ptr, ptr %17, align 8, !tbaa !22   ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %bb.cr
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !24
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %common.resume

bb.cs:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.os = load i64, ptr %i.fm, align 4
  %i.ot = and i64 %i.os, 8192
  %.not538.not = icmp eq i64 %i.ot, 0             ; 3 uses
  %i.ou = select i1 %.not538.not, ptr @.str.66, ptr @.str.65
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.ov, ptr %18, align 8, !tbaa !82
  %i.ow = select i1 %.not538.not, i64 6, i64 17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ow, ptr %i.a, align 8, !tbaa !109
  br i1 %.not538.not, label %._crit_edge.i.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.cs
  %i.ox = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc379 unwind label %bb.cv ; 2 uses

.noexc379:                                        ; preds = %.noexc.i
  store ptr %i.ox, ptr %18, align 8, !tbaa !22
  %i.oy = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.oy, ptr %i.ov, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cs, %.noexc379
  %i.oz = phi ptr [ %i.ox, %.noexc379 ], [ %i.ov, %bb.cs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.oz, ptr noundef nonnull align 1 dereferenceable(6) %i.ou, i64 %i.ow, i1 false)
  %i.pa = load i64, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 %i.pa, ptr %i.pb, align 8, !tbaa !23
  %i.pc = load ptr, ptr %18, align 8, !tbaa !22
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pa
  store i8 0, ptr %i.pd, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.pe = load i64, ptr %i.fm, align 4
  %i.pf = and i64 %i.pe, 8192
  %.not539 = icmp eq i64 %i.pf, 0
  br i1 %.not539, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !182
  %i.pi = icmp eq i8 %i.ph, 3
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge.i.i
  %i.pj = phi i1 [ false, %._crit_edge.i.i ], [ %i.pi, %bb.ct ] ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !105 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !109 ; 4 uses
  %i.pn = trunc i64 %i.pm to i1                   ; 3 uses
  %i.po = and i64 %i.pm, 2
  %i.pp = icmp ne i64 %i.po, 0                    ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !105
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !163
  %i.pv = load ptr, ptr %i.pq, align 8, !tbaa !105 ; 5 uses
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = shl nsw i64 %i.py, 3
  %i.qa = zext i32 %i.pu to i64
  %i.qb = add nsw i64 %i.pz, %i.qa
  %i.qc = lshr i64 %i.qb, 2                       ; 4 uses
  %.not593 = icmp eq i64 %i.qc, 0
  br i1 %.not593, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cu
  %i.qd = and i64 %i.pm, 1
  %.not.i382 = icmp eq i64 %i.qd, 0               ; 2 uses
  br i1 %i.pp, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i382, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us

_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us:     ; preds = %.lr.ph.split.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us
  %.0101549.us.us = phi i32 [ %i.rj, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.0102548.us.us = phi i1 [ %i.ri, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %.lr.ph.split.us ]
  %.0103547.us.us = phi i1 [ %i.rh, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %.lr.ph.split.us ]
  %.0104546.us.us = phi i1 [ %i.rf, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %.lr.ph.split.us ]
  %.0105.in545.us.us = phi i1 [ %i.rc, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %.lr.ph.split.us ]
  %.0106.in544.us.us = phi i1 [ %i.rb, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ %i.pn, %.lr.ph.split.us ]
  %.0107543.us.us = phi i8 [ %spec.select534.us.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ 1, %.lr.ph.split.us ]
  %.0109542.us.us = phi i8 [ %i.ra, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ 1, %.lr.ph.split.us ]
  %i.qe = shl nsw i32 %.0101549.us.us, 2          ; 2 uses
  %i.qf = sext i32 %i.qe to i64                   ; 2 uses
  %i.qg = sdiv i32 %.0101549.us.us, 16
  %.sext.i.us.us = sext i32 %i.qg to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.sext.i.us.us
  %i.qi = and i64 %i.qf, -9223372036854775748
  %i.qj = icmp ugt i64 %i.qi, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.us.us = select i1 %i.qj, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.us.us = getelementptr inbounds i8, ptr %i.qh, i64 %storemerge.idx.i.i.i.i.i.i.us.us
  %i.qk = and i64 %i.qf, 60
  %i.ql = shl nuw nsw i64 1, %i.qk
  %i.qm = load i64, ptr %storemerge.i.i.i.i.i.i.us.us, align 8, !tbaa !109
  %i.qn = and i64 %i.qm, %i.ql
  %i.qo = icmp ne i64 %i.qn, 0                    ; 4 uses
  %i.qp = or disjoint i32 %i.qe, 1                ; 2 uses
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = sdiv i32 %i.qp, 64
  %.sext.i384.us.us = sext i32 %i.qr to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.sext.i384.us.us
  %i.qt = and i64 %i.qq, -9223372036854775747
  %i.qu = icmp ugt i64 %i.qt, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i385.us.us = select i1 %i.qu, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i386.us.us = getelementptr inbounds i8, ptr %i.qs, i64 %storemerge.idx.i.i.i.i.i.i385.us.us
  %i.qv = and i64 %i.qq, 61
  %i.qw = shl nuw nsw i64 1, %i.qv
  %i.qx = load i64, ptr %storemerge.i.i.i.i.i.i386.us.us, align 8, !tbaa !109
  %i.qy = and i64 %i.qx, %i.qw
  %.fr.us.us = freeze i64 %i.qy
  %i.qz = icmp ne i64 %.fr.us.us, 0               ; 4 uses
  %i.ra = select i1 %i.qo, i8 %.0109542.us.us, i8 0 ; 2 uses
  %spec.select534.us.us = select i1 %i.qz, i8 %.0107543.us.us, i8 0 ; 2 uses
  %i.rb = or i1 %.0106.in544.us.us, %i.qo         ; 2 uses
  %i.rc = or i1 %.0105.in545.us.us, %i.qz         ; 2 uses
  %i.rd = xor i1 %i.qz, true                      ; 2 uses
  %i.re = and i1 %i.qo, %i.rd
  %i.rf = or i1 %.0104546.us.us, %i.re            ; 2 uses
  %not..us.us = xor i1 %i.qo, true                ; 2 uses
  %i.rg = and i1 %i.qz, %not..us.us
  %i.rh = or i1 %.0103547.us.us, %i.rg            ; 2 uses
  %30 = and i1 %not..us.us, %i.rd
  %i.ri = or i1 %.0102548.us.us, %30              ; 2 uses
  %i.rj = add i32 %.0101549.us.us, 1              ; 2 uses
  %i.rk = zext i32 %i.rj to i64
  %i.rl = icmp samesign ugt i64 %i.qc, %i.rk
  br i1 %i.rl, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us, label %._crit_edge, !llvm.loop !474

_ZNK16UndrivenVarEntry8usedFlagEi.exit.us:        ; preds = %.lr.ph.split.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us
  %.0101549.us = phi i32 [ %i.sb, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.0104546.us = phi i1 [ %i.sa, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ], [ false, %.lr.ph.split.us ]
  %.0105.in545.us = phi i1 [ %i.ry, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ], [ false, %.lr.ph.split.us ]
  %.0107543.us = phi i8 [ %spec.select534.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ], [ 1, %.lr.ph.split.us ]
  %i.rm = shl nsw i32 %.0101549.us, 2
  %i.rn = or disjoint i32 %i.rm, 1                ; 2 uses
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = sdiv i32 %i.rn, 64
  %.sext.i384.us = sext i32 %i.rp to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.sext.i384.us
  %i.rr = and i64 %i.ro, -9223372036854775747
  %i.rs = icmp ugt i64 %i.rr, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i385.us = select i1 %i.rs, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i386.us = getelementptr inbounds i8, ptr %i.rq, i64 %storemerge.idx.i.i.i.i.i.i385.us
  %i.rt = and i64 %i.ro, 61
  %i.ru = shl nuw nsw i64 1, %i.rt
  %i.rv = load i64, ptr %storemerge.i.i.i.i.i.i386.us, align 8, !tbaa !109
  %i.rw = and i64 %i.rv, %i.ru
  %.fr.us = freeze i64 %i.rw
  %i.rx = icmp ne i64 %.fr.us, 0                  ; 3 uses
  %spec.select534.us = select i1 %i.rx, i8 %.0107543.us, i8 0 ; 2 uses
  %i.ry = or i1 %.0105.in545.us, %i.rx            ; 2 uses
  %i.rz = xor i1 %i.rx, true
  %i.sa = or i1 %.0104546.us, %i.rz               ; 2 uses
  %i.sb = add i32 %.0101549.us, 1                 ; 2 uses
  %i.sc = zext i32 %i.sb to i64
  %i.sd = icmp samesign ugt i64 %i.qc, %i.sc
  br i1 %i.sd, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us, label %._crit_edge, !llvm.loop !474

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i382, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570, label %._crit_edge

_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570:     ; preds = %.lr.ph.split, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570
  %.0101549.us562 = phi i32 [ %i.ss, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ 0, %.lr.ph.split ] ; 3 uses
  %.0103547.us563 = phi i1 [ %i.sr, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ false, %.lr.ph.split ]
  %.0106.in544.us564 = phi i1 [ %i.sq, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.pn, %.lr.ph.split ]
  %.0109542.us566 = phi i8 [ %i.sp, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ 1, %.lr.ph.split ]
  %i.se = shl nsw i32 %.0101549.us562, 2
  %i.sf = sext i32 %i.se to i64                   ; 2 uses
  %i.sg = sdiv i32 %.0101549.us562, 16
  %.sext.i.us567 = sext i32 %i.sg to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.sext.i.us567
  %i.si = and i64 %i.sf, -9223372036854775748
  %i.sj = icmp ugt i64 %i.si, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.us568 = select i1 %i.sj, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.us569 = getelementptr inbounds i8, ptr %i.sh, i64 %storemerge.idx.i.i.i.i.i.i.us568
  %i.sk = and i64 %i.sf, 60
  %i.sl = shl nuw nsw i64 1, %i.sk
  %i.sm = load i64, ptr %storemerge.i.i.i.i.i.i.us569, align 8, !tbaa !109
  %i.sn = and i64 %i.sm, %i.sl
  %i.so = icmp ne i64 %i.sn, 0                    ; 3 uses
  %i.sp = select i1 %i.so, i8 %.0109542.us566, i8 0 ; 2 uses
  %i.sq = or i1 %.0106.in544.us564, %i.so         ; 2 uses
  %not..us571 = xor i1 %i.so, true
  %i.sr = or i1 %.0103547.us563, %not..us571      ; 2 uses
  %i.ss = add i32 %.0101549.us562, 1              ; 2 uses
  %i.st = zext i32 %i.ss to i64
  %i.su = icmp samesign ugt i64 %i.qc, %i.st
  br i1 %i.su, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570, label %._crit_edge, !llvm.loop !474

._crit_edge:                                      ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570, %.lr.ph.split, %bb.cu
  %.0109.lcssa = phi i8 [ 1, %bb.cu ], [ 1, %.lr.ph.split ], [ %i.sp, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.ra, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ 1, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ]
  %.0107.lcssa = phi i8 [ 1, %bb.cu ], [ 1, %.lr.ph.split ], [ 1, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %spec.select534.us.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ %spec.select534.us, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ]
  %.0106.in.lcssa = phi i1 [ %i.pn, %bb.cu ], [ true, %.lr.ph.split ], [ %i.sq, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.rb, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ true, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ] ; 2 uses
  %.0105.in.lcssa = phi i1 [ %i.pp, %bb.cu ], [ true, %.lr.ph.split ], [ true, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.rc, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ %i.ry, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ] ; 3 uses
  %.0104.lcssa = phi i1 [ false, %bb.cu ], [ false, %.lr.ph.split ], [ false, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.rf, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ %i.sa, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ] ; 2 uses
  %.0103.lcssa = phi i1 [ false, %bb.cu ], [ false, %.lr.ph.split ], [ %i.sr, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.rh, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ]
  %.0102.lcssa = phi i1 [ false, %bb.cu ], [ false, %.lr.ph.split ], [ false, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us570 ], [ %i.ri, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us.us ], [ false, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.us ]
  %i.sv = select i1 %i.pj, i1 %.0105.in.lcssa, i1 false
  %.2 = select i1 %i.sv, i8 1, i8 %.0109.lcssa    ; 4 uses
  %.1108 = select i1 %i.pj, i8 1, i8 %.0107.lcssa ; 3 uses
  %i.sw = trunc nuw i8 %.2 to i1
  %i.sx = trunc nuw i8 %.1108 to i1               ; 2 uses
  %i.sy = or i8 %.2, %.1108
  %i.sz = and i8 %i.sy, 1
  %.not734 = icmp eq i8 %i.sz, 0
  br i1 %.not734, label %bb.cx, label %bb.cw

bb.cv:                                            ; preds = %.noexc.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505

bb.cw:                                            ; preds = %._crit_edge
  %i.tb = zext i8 %.2 to i64
  %i.tc = or i64 %i.pm, %i.tb                     ; 2 uses
  %i.td = or i64 %i.tc, 2
  %simplifycfg.merge = select i1 %i.sx, i64 %i.td, i64 %i.tc
  store i64 %simplifycfg.merge, ptr %i.pl, align 8, !tbaa !109
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge, %bb.cw
  %.sroa.0.0.copyload.i.i391 = load i8, ptr %i.kv, align 8, !tbaa !159
  %i.te = icmp ne i8 %.sroa.0.0.copyload.i.i391, 20
  %i.tf = and i8 %.2, %.1108
  %or.cond.not = icmp eq i8 %i.tf, 0
  %or.cond535 = and i1 %i.te, %or.cond.not
  br i1 %or.cond535, label %bb.cy, label %bb.fz

bb.cy:                                            ; preds = %bb.cx
  %or.cond3 = select i1 %.0105.in.lcssa, i1 true, i1 %.0106.in.lcssa
  br i1 %or.cond3, label %bb.dj, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tg = invoke noundef zeroext i1 @_ZN16UndrivenVarEntry11unusedMatchEP6AstVar(ptr noundef nonnull %i.f)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %bb.cz
  br i1 %i.tg, label %bb.fz, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.th = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 -124)
          to label %bb.dc unwind label %bb.dg     ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.ti = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.tj = load ptr, ptr %18, align 8, !tbaa !22
  %i.tk = load i64, ptr %i.pb, align 8, !tbaa !23
  %i.tl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noundef %i.tj, i64 noundef %i.tk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit393 unwind label %bb.dg ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit393: ; preds = %bb.dd
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tl, ptr noundef nonnull @.str.67, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit395 unwind label %bb.dg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit395: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit393
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNK7AstNode11prettyNameQB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit395
  %i.tn = load ptr, ptr %19, align 8, !tbaa !22
  %i.to = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !23
  %i.tq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tl, ptr noundef %i.tn, i64 noundef %i.tp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit397 unwind label %bb.di

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit397: ; preds = %bb.de
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.tq)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit397
  %i.tr = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.tt = icmp eq ptr %i.tr, %i.ts
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.df
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !24
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.invoke

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417, %bb.dw, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405, %bb.do, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit393, %bb.dd, %bb.dv, %bb.du, %bb.dn, %bb.dm, %bb.dk, %bb.dc, %bb.db, %bb.cz
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.dh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit395
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.di:                                            ; preds = %bb.de, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit397
  %i.ty = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tz = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %bb.di
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !24
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.dh
  %.pn178 = phi { ptr, i32 } [ %i.tx, %bb.dh ], [ %i.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %i.ty, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ga

bb.dj:                                            ; preds = %bb.cy
  %.not = xor i1 %i.sx, true
  %or.cond5 = select i1 %.not, i1 true, i1 %.0106.in.lcssa
  br i1 %or.cond5, label %bb.dt, label %bb.dk

end_hunk_0
