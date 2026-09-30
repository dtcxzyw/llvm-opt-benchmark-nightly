Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestConfigureCommand?download=true
inline.NumInlined: 1756
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK23cmCTestConfigureCommand16ExecuteConfigureERKNS_18ConfigureArgumentsER17cmExecutionStatus:bb.a

bb.bo:                                            ; preds = %._crit_edge.i.i566
  %i.oh = load i8, ptr %i.ob, align 1, !tbaa !27
  store i8 %i.oh, ptr %i.og, align 1, !tbaa !27
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i566
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.og, ptr align 1 %i.ob, i64 %i.oc, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i566
  %i.oi = load i64, ptr %i.r, align 8, !tbaa !25  ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !23
  %i.ok = load ptr, ptr %60, align 8, !tbaa !26
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oi
  store i8 0, ptr %i.ol, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.on = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  store ptr %i.on, ptr %61, align 8, !tbaa !24
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !26 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  store i64 %i.oq, ptr %i.q, align 8, !tbaa !25
  %i.or = icmp ugt i64 %i.oq, 15
  br i1 %i.or, label %.noexc.i571, label %._crit_edge.i.i570

.noexc.i571:                                      ; preds = %bb.bq
  %i.os = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc572 unwind label %bb.fp ; 2 uses

.noexc572:                                        ; preds = %.noexc.i571
  store ptr %i.os, ptr %61, align 8, !tbaa !26
  %i.ot = load i64, ptr %i.q, align 8, !tbaa !25
  store i64 %i.ot, ptr %i.on, align 8, !tbaa !27
  br label %._crit_edge.i.i570

._crit_edge.i.i570:                               ; preds = %.noexc572, %bb.bq
  %i.ou = phi ptr [ %i.os, %.noexc572 ], [ %i.on, %bb.bq ] ; 2 uses
  switch i64 %i.oq, label %bb.bs [
    i64 1, label %bb.br
    i64 0, label %bb.bt
  ]

bb.br:                                            ; preds = %._crit_edge.i.i570
  %i.ov = load i8, ptr %i.oo, align 1, !tbaa !27
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !27
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i570
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ou, ptr align 1 %i.oo, i64 %i.oq, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge.i.i570
  %i.ow = load i64, ptr %i.q, align 8, !tbaa !25  ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !23
  %i.oy = load ptr, ptr %61, align 8, !tbaa !26
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store i8 0, ptr %i.oz, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  %i.pa = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 7 uses
  store ptr %i.pa, ptr %62, align 8, !tbaa !24
  %i.pb = load ptr, ptr %47, align 8, !tbaa !26   ; 2 uses
  %i.pc = load i64, ptr %i.gh, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  store i64 %i.pc, ptr %i.p, align 8, !tbaa !25
  %i.pd = icmp ugt i64 %i.pc, 15
  br i1 %i.pd, label %.noexc.i575, label %._crit_edge.i.i574

.noexc.i575:                                      ; preds = %bb.bt
  %i.pe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc576 unwind label %bb.fq ; 2 uses

.noexc576:                                        ; preds = %.noexc.i575
  store ptr %i.pe, ptr %62, align 8, !tbaa !26
  %i.pf = load i64, ptr %i.p, align 8, !tbaa !25
  store i64 %i.pf, ptr %i.pa, align 8, !tbaa !27
  br label %._crit_edge.i.i574

._crit_edge.i.i574:                               ; preds = %.noexc576, %bb.bt
  %i.pg = phi ptr [ %i.pe, %.noexc576 ], [ %i.pa, %bb.bt ] ; 2 uses
  switch i64 %i.pc, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %bb.bw
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i574
  %i.ph = load i8, ptr %i.pb, align 1, !tbaa !27
  store i8 %i.ph, ptr %i.pg, align 1, !tbaa !27
  br label %bb.bw

bb.bv:                                            ; preds = %._crit_edge.i.i574
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pg, ptr align 1 %i.pb, i64 %i.pc, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i574
  %i.pi = load i64, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  store i64 %i.pi, ptr %i.pj, align 8, !tbaa !23
  %i.pk = load ptr, ptr %62, align 8, !tbaa !26
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pi
  store i8 0, ptr %i.pl, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  %i.pm = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  store ptr %i.pm, ptr %63, align 8, !tbaa !24
  %i.pn = load ptr, ptr %53, align 8, !tbaa !26   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  store i64 %i.pp, ptr %i.o, align 8, !tbaa !25
  %i.pq = icmp ugt i64 %i.pp, 15
  br i1 %i.pq, label %.noexc.i579, label %._crit_edge.i.i578

.noexc.i579:                                      ; preds = %bb.bw
  %i.pr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc580 unwind label %bb.fr ; 2 uses

.noexc580:                                        ; preds = %.noexc.i579
  store ptr %i.pr, ptr %63, align 8, !tbaa !26
  %i.ps = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ps, ptr %i.pm, align 8, !tbaa !27
  br label %._crit_edge.i.i578

._crit_edge.i.i578:                               ; preds = %.noexc580, %bb.bw
  %i.pt = phi ptr [ %i.pr, %.noexc580 ], [ %i.pm, %bb.bw ] ; 2 uses
  switch i64 %i.pp, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i578
  %i.pu = load i8, ptr %i.pn, align 1, !tbaa !27
  store i8 %i.pu, ptr %i.pt, align 1, !tbaa !27
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i578
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pt, ptr align 1 %i.pn, i64 %i.pp, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i578
  %i.pv = load i64, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  store i64 %i.pv, ptr %i.pw, align 8, !tbaa !23
  %i.px = load ptr, ptr %63, align 8, !tbaa !26
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pv
  store i8 0, ptr %i.py, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.pz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools15GetCMakeCommandB5cxx11Ev()
          to label %.noexc589 unwind label %bb.fs ; 2 uses

.noexc589:                                        ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !208
  %i.qa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store i64 0, ptr %16, align 8, !noalias !208
  store i8 34, ptr %i.qb, align 8, !tbaa !27, !noalias !208
  store i64 1, ptr %i.qa, align 8, !tbaa !25, !noalias !208
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.qb, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !37, !noalias !208
  store i64 1, ptr %15, align 8, !tbaa !25, !alias.scope !209, !noalias !208
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.qb, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 8, !tbaa !37, !alias.scope !209, !noalias !208
  %i.qc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr null, ptr %i.qc, align 8, !tbaa !211, !alias.scope !209, !noalias !208
  %i.qd = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.qe = load ptr, ptr %i.pz, align 8, !tbaa !26, !noalias !208
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !23, !noalias !208
  store i64 %i.qg, ptr %i.qd, align 8, !tbaa !25, !alias.scope !212, !noalias !208
  %.sroa.4.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.qe, ptr %.sroa.4.0..sroa_idx.i11.i.i, align 8, !tbaa !37, !alias.scope !212, !noalias !208
  %i.qh = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr null, ptr %i.qh, align 8, !tbaa !211, !alias.scope !212, !noalias !208
  %i.qi = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !208
  %i.qj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store i64 0, ptr %17, align 8, !noalias !208
  store i8 34, ptr %i.qk, align 8, !tbaa !27, !noalias !208
  store i64 1, ptr %i.qj, align 8, !tbaa !25, !noalias !208
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.qk, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 8, !tbaa !37, !noalias !208
  store i64 1, ptr %i.qi, align 8, !tbaa !25, !alias.scope !213, !noalias !208
  %.sroa.4.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.qk, ptr %.sroa.4.0..sroa_idx.i20.i.i, align 8, !tbaa !37, !alias.scope !213, !noalias !208
  %i.ql = getelementptr inbounds nuw i8, ptr %15, i64 64
  store ptr null, ptr %i.ql, align 8, !tbaa !211, !alias.scope !213, !noalias !208
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %15, i64 3)
          to label %.noexc590 unwind label %bb.fs

.noexc590:                                        ; preds = %.noexc589
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !208
  %i.qm = load ptr, ptr %54, align 8, !tbaa !26   ; 6 uses
  %96 = icmp eq ptr %i.qm, %i.ii
  %i.qn = load ptr, ptr %18, align 8, !tbaa !26   ; 5 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo                ; 2 uses
  br i1 %96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %.noexc590
  br i1 %i.qp, label %bb.ca, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i582: ; preds = %.noexc590
  br i1 %i.qp, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  %i.qq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !23 ; 3 uses
  %i.qs = icmp ult i64 %i.qr, 16
  call void @llvm.assume(i1 %i.qs)
  switch i64 %i.qr, label %bb.cc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.qt = load i8, ptr %i.qn, align 1, !tbaa !27
  store i8 %i.qt, ptr %i.qm, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qm, ptr align 1 %i.qn, i64 %i.qr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.qu = load i64, ptr %i.qq, align 8, !tbaa !23 ; 2 uses
  store i64 %i.qu, ptr %i.ij, align 8, !tbaa !23
  %i.qv = load ptr, ptr %54, align 8, !tbaa !26
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qu
  store i8 0, ptr %i.qw, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %18, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  store ptr %i.qn, ptr %54, align 8, !tbaa !26
  %i.qx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.qy = load <2 x i64>, ptr %i.qx, align 8, !tbaa !27
  store <2 x i64> %i.qy, ptr %i.ij, align 8, !tbaa !27
  br label %bb.ce

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i582
  %i.qz = load i64, ptr %i.ii, align 8, !tbaa !27
  store ptr %i.qn, ptr %54, align 8, !tbaa !26
  %i.ra = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.rb = load <2 x i64>, ptr %i.ra, align 8, !tbaa !27
  store <2 x i64> %i.rb, ptr %i.ij, align 8, !tbaa !27
  %.not.i.i583 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i583, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.qm, ptr %18, align 8, !tbaa !26
  store i64 %i.qz, ptr %i.qo, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.qo, ptr %18, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ce, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.rc = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.qm, %bb.cd ], [ %i.qo, %bb.ce ]
  %i.rd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.rd, align 8, !tbaa !23
  store i8 0, ptr %i.rc, align 1, !tbaa !27
  %i.re = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !27
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.rj = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.rk = and i64 %i.rj, -4
  %i.rl = icmp eq i64 %i.rk, 4611686018427387900
  br i1 %i.rl, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.rm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %.noexc592 unwind label %bb.fs ; 0 uses

.noexc592:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5cmsys11SystemTools16CollapseFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %59)
          to label %.noexc593 unwind label %bb.fs

.noexc593:                                        ; preds = %.noexc592
  %i.rn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !23 ; 2 uses
  %i.rp = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.rq = sub i64 4611686018427387903, %i.rp
  %i.rr = icmp ult i64 %i.rq, %i.ro
  br i1 %i.rr, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.cf:                                            ; preds = %.noexc593
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #24
          to label %.noexc.i587 unwind label %bb.ci

.noexc.i587:                                      ; preds = %bb.cf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %.noexc593
  %i.rs = load ptr, ptr %19, align 8, !tbaa !26
  %i.rt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef %i.rs, i64 noundef %i.ro)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %bb.ci ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.ru = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !27
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.rz = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.sa = icmp eq i64 %i.rz, 4611686018427387903
  br i1 %i.sa, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit166.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit166.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i
  %i.sb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc595 unwind label %bb.fs ; 0 uses

.noexc595:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit166.i
  %i.sc = load i64, ptr %i.oj, align 8, !tbaa !23
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %.noexc.i.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc595
  %i.se = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.sf = and i64 %i.se, -4
  %i.sg = icmp eq i64 %i.sf, 4611686018427387900
  br i1 %i.sg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit167.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit167.i: ; preds = %bb.cg
  %i.sh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.38, i64 noundef 4)
          to label %.noexc597 unwind label %bb.fs ; 0 uses

.noexc597:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit167.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN5cmsys11SystemTools16CollapseFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %.noexc598 unwind label %bb.fs

.noexc598:                                        ; preds = %.noexc597
  %i.si = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !23 ; 2 uses
  %i.sk = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.sl = sub i64 4611686018427387903, %i.sk
  %i.sm = icmp ult i64 %i.sl, %i.sj
  br i1 %i.sm, label %bb.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i168.i

bb.ch:                                            ; preds = %.noexc598
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #24
          to label %.noexc169.i unwind label %bb.cj

.noexc169.i:                                      ; preds = %bb.ch
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i168.i: ; preds = %.noexc598
  %i.sn = load ptr, ptr %20, align 8, !tbaa !26
  %i.so = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef %i.sn, i64 noundef %i.sj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit171.i unwind label %bb.cj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i168.i
  %i.sp = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit171.i
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !27
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit171.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.su = load i64, ptr %i.ij, align 8, !tbaa !23
  %i.sv = icmp eq i64 %i.su, 4611686018427387903
  br i1 %i.sv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit175.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i
  %i.sw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.fs ; 0 uses

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.cf
  %i.sx = landingpad { ptr, i32 }
          cleanup
  %i.sy = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i: ; preds = %bb.ci
  %i.tb = load i64, ptr %i.sz, align 8, !tbaa !27
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.body624

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i168.i, %bb.ch
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i: ; preds = %bb.cj
  %i.th = load i64, ptr %i.tf, align 8, !tbaa !27
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.body624

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit175.i, %.noexc595
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.tj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.tj, ptr %21, align 8, !tbaa !24
end_hunk_0
