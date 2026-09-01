Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Task?download=true
inline.NumInlined: 6593
inline.NumDeleted: 1866
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11TaskVisitor12makeUserFuncEP12AstNodeFTaskb:bb.a
  br i1 %i.os, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread989

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.ot, ptr %19, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ot, ptr noundef nonnull align 1 dereferenceable(3) @.str.635, i64 3, i1 false)
  %i.ou = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %i.ou, align 8, !tbaa !16
  %i.ov = getelementptr inbounds nuw i8, ptr %19, i64 19
  store i8 0, ptr %i.ov, align 1, !tbaa !17
  br label %.critedge428

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread989: ; preds = %bb.cj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.ow = load ptr, ptr %1, align 8, !tbaa !86
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  %i.oy = load ptr, ptr %i.ox, align 8
  invoke void %i.oy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(272) %1)
          to label %bb.ck unwind label %bb.cu

bb.ck:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread989
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.oz = load i64, ptr %i.ly, align 8, !tbaa !16, !noalias !1078
  %i.pa = load ptr, ptr %15, align 8, !tbaa !10, !noalias !1078
  %i.pb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef %i.pa, i64 noundef %i.oz)
          to label %.noexc562 unwind label %bb.cv ; 6 uses

.noexc562:                                        ; preds = %bb.ck
  %i.pc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.pc, ptr %21, align 8, !tbaa !68, !alias.scope !1078
  %i.pd = load ptr, ptr %i.pb, align 8, !tbaa !10 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 5 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %bb.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559

bb.cl:                                            ; preds = %.noexc562
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !16 ; 3 uses
  %i.pi = icmp ult i64 %i.ph, 16
  call void @llvm.assume(i1 %i.pi)
  %i.pj = add nuw nsw i64 %i.ph, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pc, ptr noundef nonnull align 8 dereferenceable(1) %i.pe, i64 %i.pj, i1 false)
  br label %bb.cm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559: ; preds = %.noexc562
  store ptr %i.pd, ptr %21, align 8, !tbaa !10, !alias.scope !1078
  %i.pk = load i64, ptr %i.pe, align 8, !tbaa !17
  store i64 %i.pk, ptr %i.pc, align 8, !tbaa !17, !alias.scope !1078
  %.phi.trans.insert.i560 = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.pre.i561 = load i64, ptr %.phi.trans.insert.i560, align 8, !tbaa !16
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559, %bb.cl
  %i.pl = phi i64 [ %i.ph, %bb.cl ], [ %.pre.i561, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559 ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.pl, ptr %i.pn, align 8, !tbaa !16, !alias.scope !1078
  store ptr %i.pe, ptr %i.pb, align 8, !tbaa !10
  store i64 0, ptr %i.pm, align 8, !tbaa !16
  store i8 0, ptr %i.pe, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.po = load i64, ptr %i.mg, align 8, !tbaa !16, !noalias !1081 ; 2 uses
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !16, !noalias !1081
  %i.pq = sub i64 4611686018427387903, %i.pp
  %i.pr = icmp ult i64 %i.pq, %i.po
  br i1 %i.pr, label %bb.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.747) #27
          to label %.noexc566 unwind label %bb.cw

.noexc566:                                        ; preds = %bb.cn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.cm
  %i.ps = load ptr, ptr %16, align 8, !tbaa !10, !noalias !1081
  %i.pt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.ps, i64 noundef %i.po)
          to label %.noexc567 unwind label %bb.cw ; 6 uses

.noexc567:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.pu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.pu, ptr %19, align 8, !tbaa !68, !alias.scope !1081
  %i.pv = load ptr, ptr %i.pt, align 8, !tbaa !10 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 5 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %bb.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

bb.co:                                            ; preds = %.noexc567
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !16 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 16
  call void @llvm.assume(i1 %i.qa)
  %i.qb = add nuw nsw i64 %i.pz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pu, ptr noundef nonnull align 8 dereferenceable(1) %i.pw, i64 %i.qb, i1 false)
  br label %.critedge423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563: ; preds = %.noexc567
  store ptr %i.pv, ptr %19, align 8, !tbaa !10, !alias.scope !1081
  %i.qc = load i64, ptr %i.pw, align 8, !tbaa !17
  store i64 %i.qc, ptr %i.pu, align 8, !tbaa !17, !alias.scope !1081
  %.phi.trans.insert.i564 = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %.pre.i565 = load i64, ptr %.phi.trans.insert.i564, align 8, !tbaa !16
  br label %.critedge423

.critedge423:                                     ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563
  %i.qd = phi i64 [ %i.pz, %bb.co ], [ %.pre.i565, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563 ]
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.qd, ptr %i.qf, align 8, !tbaa !16, !alias.scope !1081
  store ptr %i.pw, ptr %i.pt, align 8, !tbaa !10
  store i64 0, ptr %i.qe, align 8, !tbaa !16
  store i8 0, ptr %i.pw, align 8, !tbaa !17
  %i.qg = load ptr, ptr %21, align 8, !tbaa !10   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.pc
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568: ; preds = %.critedge423
  %i.qi = load i64, ptr %i.pc, align 8, !tbaa !17
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570: ; preds = %.critedge423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568
  %i.qk = load ptr, ptr %22, align 8, !tbaa !10   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !17
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %.pre1100 = load ptr, ptr %20, align 8, !tbaa !10
  br label %.critedge428

.critedge428:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.qp = phi ptr [ %.pre1100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573 ], [ %i.oi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %.critedge428
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !17
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %.critedge428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.qu = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #28
          to label %bb.cp unwind label %bb.cx     ; 24 uses

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !101
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !946
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.qz = load i16, ptr %i.jg, align 8
  %i.ra = trunc i16 %i.qz to i1
  %or.cond = and i1 %i.kv, %i.ra
  br i1 %or.cond, label %bb.cq, label %._crit_edge.i.i577

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZNK6AstVar11cPubArgTypeB5cxx11Ebb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(280) %i.f, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.cr unwind label %bb.cy

._crit_edge.i.i577:                               ; preds = %bb.cp
  %i.rb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.rb, ptr %23, align 8, !tbaa !68
  %i.rc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.rc, align 8, !tbaa !16
  store i8 0, ptr %i.rb, align 8, !tbaa !17
  br label %bb.cr

bb.cr:                                            ; preds = %._crit_edge.i.i577, %bb.cq
  invoke void @_ZN8AstCFuncC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8AstScopeS9_(ptr noundef nonnull align 8 dereferenceable(328) %i.qu, ptr noundef %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.qy, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %bb.cr
  %i.rd = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %.critedge430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %bb.cs
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !17
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #26
  br label %.critedge430

.critedge430:                                     ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.ri = load i16, ptr %i.jg, align 8            ; 6 uses
  %i.rj = and i16 %i.ri, 32
  %.not1054 = icmp eq i16 %i.rj, 0                ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qu, i64 313 ; 5 uses
  %i.rl = load i16, ptr %i.rk, align 1
  %i.rm = select i1 %.not1054, i16 4, i16 0
  %i.rn = and i16 %i.rl, -20549
  %i.ro = select i1 %.not1054, i16 4096, i16 0
  %i.rp = shl i16 %i.ri, 6
  %i.rq = and i16 %i.rp, 64
  %i.rr = shl i16 %i.ri, 8
  %i.rs = and i16 %i.rr, 16384
  %i.rt = or disjoint i16 %i.rq, %i.rn
  %i.ru = or disjoint i16 %i.rt, %i.rs
  %i.rv = or disjoint i16 %i.ru, %i.rm
  %i.rw = or disjoint i16 %i.rv, %i.ro            ; 2 uses
  %i.rx = trunc i16 %i.ri to i8
  %i.ry = lshr i8 %i.rx, 4
  %i.rz = and i8 %i.ry, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qu, i64 315 ; 9 uses
  %i.sb = load i8, ptr %i.sa, align 1
  %i.sc = and i8 %i.sb, -22
  %51 = select i1 %.not1054, i8 0, i8 4
  %i.sd = or disjoint i8 %51, %i.rz
  %i.se = or disjoint i8 %i.sd, %i.sc
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 258 ; 5 uses
  %i.sg = load i8, ptr %i.sf, align 2             ; 2 uses
  %i.sh = shl i8 %i.sg, 4
  %i.si = and i8 %i.sh, 16
  %i.sj = or disjoint i8 %i.se, %i.si
  store i8 %i.sj, ptr %i.sa, align 1
  %i.sk = and i16 %i.ri, 48
  %brmerge.not = icmp eq i16 %i.sk, 0
  %i.sl = and i16 %i.rw, -10242
  %i.sm = and i8 %i.sg, 32
  %i.sn = zext nneg i8 %i.sm to i16
  %i.so = shl nuw nsw i16 %i.sn, 6
  %i.sp = and i16 %i.rw, -11266
  %i.sq = or disjoint i16 %i.sp, 1025
  %i.sr = select i1 %brmerge.not, i16 %i.sl, i16 %i.sq
  %i.ss = or disjoint i16 %i.sr, %i.so
  %i.st = lshr i16 %i.ri, 1
  %i.su = and i16 %i.st, 8192
  %i.sv = or disjoint i16 %i.ss, %i.su
  store i16 %i.sv, ptr %i.rk, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.sw = load ptr, ptr %1, align 8, !tbaa !86
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 64
  %i.sy = load ptr, ptr %i.sx, align 8
  invoke void %i.sy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(272) %1)
          to label %bb.da unwind label %bb.dd

bb.ct:                                            ; preds = %bb.ci
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

bb.cu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread989
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.critedge432

bb.cv:                                            ; preds = %bb.ck
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cn
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = load ptr, ptr %21, align 8, !tbaa !10   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.pc
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584: ; preds = %bb.cw
  %i.tf = load i64, ptr %i.pc, align 8, !tbaa !17
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584, %bb.cv
  %.pn333 = phi { ptr, i32 } [ %i.tb, %bb.cv ], [ %i.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584 ], [ %i.tc, %bb.cw ] ; 2 uses
  %i.th = load ptr, ptr %22, align 8, !tbaa !10   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %.critedge432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !17
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #26
  br label %.critedge432

.critedge432:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587
  %.pn333.pn = phi { ptr, i32 } [ %i.ta, %bb.cu ], [ %.pn333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587 ], [ %.pn333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.tm = load ptr, ptr %20, align 8, !tbaa !10   ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590: ; preds = %.critedge432
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !17
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592: ; preds = %.critedge432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590, %bb.ct
  %.pn336.pn = phi { ptr, i32 } [ %i.sz, %bb.ct ], [ %.pn333.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590 ], [ %.pn333.pn, %.critedge432 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.cy:                                            ; preds = %bb.cq
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.critedge434

bb.cz:                                            ; preds = %bb.cr
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tu = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %.critedge434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593: ; preds = %bb.cz
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !17
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #26
  br label %.critedge434

.critedge434:                                     ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593, %bb.cy
  %.pn339.pn = phi { ptr, i32 } [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593 ], [ %i.ts, %bb.cy ], [ %i.tt, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.qu, i64 noundef 328) #26
  br label %bb.ky

bb.da:                                            ; preds = %.critedge430
  %i.tz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !16 ; 2 uses
  %i.ub = icmp eq i64 %i.ua, 3
  %.pre1101 = load ptr, ptr %24, align 8, !tbaa !10 ; 4 uses
  br i1 %i.ub, label %bb.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597

bb.db:                                            ; preds = %bb.da
  %i.uc = load i16, ptr %.pre1101, align 1
  %i.ud = xor i16 %i.uc, 25966
  %i.ue = getelementptr i8, ptr %.pre1101, i64 2
  %i.uf = load i8, ptr %i.ue, align 1
  %i.ug = zext i8 %i.uf to i16
  %i.uh = xor i16 %i.ug, 119
  %i.ui = or i16 %i.ud, %i.uh
  %i.uj = icmp ne i16 %i.ui, 0
  %i.uk = zext i1 %i.uj to i32
  %i.ul = icmp eq i32 %i.uk, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597: ; preds = %bb.da, %bb.db
  %i.um = phi i1 [ false, %bb.da ], [ %i.ul, %bb.db ]
  %i.un = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.uo = icmp eq ptr %.pre1101, %i.un
  br i1 %i.uo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i599: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597
  %i.up = icmp ult i64 %i.ua, 16
  call void @llvm.assume(i1 %i.up)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597
  %i.uq = load i64, ptr %i.un, align 8, !tbaa !17
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %.pre1101, i64 noundef %i.ur) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i599, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br i1 %i.um, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.us = load i16, ptr %i.rk, align 1
  %i.ut = or i16 %i.us, 128
  store i16 %i.ut, ptr %i.rk, align 1
  br label %bb.de

bb.dd:                                            ; preds = %.critedge430
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.ky

bb.de:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.uv = load i8, ptr %i.sf, align 2
  %i.uw = icmp slt i8 %i.uv, 0
  %.pre1102 = load i8, ptr %i.sa, align 1         ; 2 uses
  br i1 %i.uw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ux = or i8 %.pre1102, 64                     ; 2 uses
  store i8 %i.ux, ptr %i.sa, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.uy = phi i8 [ %i.ux, %bb.df ], [ %.pre1102, %bb.de ] ; 2 uses
  %i.uz = trunc i8 %i.uy to i1
  br i1 %i.uz, label %bb.dh, label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.vb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.vb, ptr %25, align 8, !tbaa !68, !alias.scope !1084
  %i.vc = load ptr, ptr %i.va, align 8, !tbaa !10, !noalias !1084 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !16, !noalias !1084 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !1084
  store i64 %i.ve, ptr %i.b, align 8, !tbaa !69, !noalias !1084
  %i.vf = icmp ugt i64 %i.ve, 15
end_hunk_0
