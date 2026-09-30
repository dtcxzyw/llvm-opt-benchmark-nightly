Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CTFTransform?download=true
inline.NumInlined: 3283
inline.NumDeleted: 894
begin_hunk_0_@_ZNK16OpenColorIO_v2_515TransformWriter5writeEv:._crit_edge.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i64 %i.oq, ptr %i.or, align 8, !tbaa !52
  %i.os = load ptr, ptr %10, align 8, !tbaa !51
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oq
  store i8 0, ptr %i.ot, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ou = load i64, ptr %i.or, align 8, !tbaa !52
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %bb.dh, label %bb.ee

bb.dh:                                            ; preds = %bb.dg
  %i.ow = load ptr, ptr %i.of, align 8, !tbaa !108 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 280
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !364 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 288
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !364 ; 2 uses
  %.not232 = icmp eq ptr %i.oy, %i.pa
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dh
  %i.pb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.dj

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre240 = load i64, ptr %i.or, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.dh
  %i.pe = phi i64 [ %.pre240, %._crit_edge.loopexit ], [ 0, %bb.dh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.pf = load ptr, ptr %10, align 8, !tbaa !51
  invoke void @_ZN16OpenColorIO_v2_511CacheIDHashB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.pf, i64 noundef %i.pe)
          to label %bb.dx unwind label %bb.ed

bb.di:                                            ; preds = %.noexc.i125
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.dj:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0217.0233 = phi ptr [ %i.oy, %.lr.ph ], [ %i.qt, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ph = load ptr, ptr %.sroa.0217.0233, align 8, !tbaa !111 ; 3 uses
  store ptr %i.ph, ptr %11, align 8, !tbaa !111
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0217.0233, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !74 ; 3 uses
  store ptr %i.pj, ptr %i.pb, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 3 uses
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.pl, 0
  br i1 %.not.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pm = load i32, ptr %i.pk, align 4, !tbaa !59
  %i.pn = add nsw i32 %i.pm, 1
  store i32 %i.pn, ptr %i.pk, align 4, !tbaa !59
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit

bb.dm:                                            ; preds = %bb.dk
  %i.po = atomicrmw volatile add ptr %i.pk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre239 = load ptr, ptr %11, align 8, !tbaa !111
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit: ; preds = %bb.dj, %bb.dl, %bb.dm
  %i.pp = phi ptr [ %i.ph, %bb.dj ], [ %i.ph, %bb.dl ], [ %.pre239, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !79
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 80
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(168) %i.pp)
          to label %bb.dn unwind label %bb.dv

bb.dn:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit
  %i.pt = load i64, ptr %i.pc, align 8, !tbaa !52 ; 2 uses
  %i.pu = load i64, ptr %i.or, align 8, !tbaa !52
  %i.pv = sub i64 4611686018427387903, %i.pu
  %i.pw = icmp ult i64 %i.pv, %i.pt
  br i1 %i.pw, label %bb.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #28
          to label %.noexc127 unwind label %.loopexit.split-lp

.noexc127:                                        ; preds = %bb.do
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.dn
  %i.px = load ptr, ptr %12, align 8, !tbaa !51
  %i.py = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.px, i64 noundef %i.pt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.pz = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.pd
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.qb = load i64, ptr %i.pd, align 8, !tbaa !53
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.qd = load ptr, ptr %i.pb, align 8, !tbaa !74 ; 8 uses
  %.not.i.i132 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i132, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 4 uses
  %i.qf = load atomic i64, ptr %i.qe acquire, align 8 ; 2 uses
  %i.qg = icmp eq i64 %i.qf, 4294967297
  %i.qh = trunc i64 %i.qf to i32                  ; 2 uses
  br i1 %i.qg, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.qe, align 8, !tbaa !76
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  store i32 0, ptr %i.qi, align 4, !tbaa !77
  %i.qj = load ptr, ptr %i.qd, align 8, !tbaa !79
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #27, !inline_history !1
  %i.qm = load ptr, ptr %i.qd, align 8, !tbaa !79
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #27, !inline_history !1
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dr:                                            ; preds = %bb.dp
  %i.qp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i133 = icmp eq i8 %i.qp, 0
  br i1 %.not.i.i.i133, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qq = add nsw i32 %i.qh, -1
  store i32 %i.qq, ptr %i.qe, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.qr = atomicrmw volatile add ptr %i.qe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i = phi i32 [ %i.qh, %bb.ds ], [ %i.qr, %bb.dt ]
  %i.qs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.qs, label %bb.du, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0217.0233, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.qt, %i.pa
  br i1 %.not, label %._crit_edge.loopexit, label %bb.dj

bb.dv:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp:                               ; preds = %bb.do
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.qv = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.pd
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.dw
  %i.qx = load i64, ptr %i.pd, align 8, !tbaa !53
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.dv
  %.pn59 = phi { ptr, i32 } [ %i.qu, %bb.dv ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %lpad.phi, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.go

bb.dx:                                            ; preds = %._crit_edge
  %i.qz = load ptr, ptr %10, align 8, !tbaa !51   ; 6 uses
  %20 = icmp eq ptr %i.qz, %i.oh
  %i.ra = load ptr, ptr %13, align 8, !tbaa !51   ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb                ; 2 uses
  br i1 %20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.dx
  br i1 %i.rc, label %bb.dy, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.dx
  br i1 %i.rc, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !52 ; 3 uses
  %i.rf = icmp ult i64 %i.re, 16
  call void @llvm.assume(i1 %i.rf)
  switch i64 %i.re, label %bb.ea [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.rg = load i8, ptr %i.ra, align 1, !tbaa !53
  store i8 %i.rg, ptr %i.qz, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr align 1 %i.ra, i64 %i.re, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.rh = load i64, ptr %i.rd, align 8, !tbaa !52 ; 2 uses
  store i64 %i.rh, ptr %i.or, align 8, !tbaa !52
  %i.ri = load ptr, ptr %10, align 8, !tbaa !51
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rh
  store i8 0, ptr %i.rj, align 1, !tbaa !53
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ra, ptr %10, align 8, !tbaa !51
  %i.rk = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.rl = load <2 x i64>, ptr %i.rk, align 8, !tbaa !53
  store <2 x i64> %i.rl, ptr %i.or, align 8, !tbaa !53
  br label %bb.ec

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.rm = load i64, ptr %i.oh, align 8, !tbaa !53
  store ptr %i.ra, ptr %10, align 8, !tbaa !51
  %i.rn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ro = load <2 x i64>, ptr %i.rn, align 8, !tbaa !53
  store <2 x i64> %i.ro, ptr %i.or, align 8, !tbaa !53
  %.not.i137 = icmp eq ptr %i.qz, null
  br i1 %.not.i137, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.qz, ptr %13, align 8, !tbaa !51
  store i64 %i.rm, ptr %i.rb, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.rb, ptr %13, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.eb, %bb.ec
  %i.rp = phi ptr [ %i.qz, %bb.eb ], [ %i.rb, %bb.ec ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.rq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.rq, align 8, !tbaa !52
  store i8 0, ptr %i.rp, align 1, !tbaa !53
  %i.rr = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ru = load i64, ptr %i.rs, align 8, !tbaa !53
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ee

bb.ed:                                            ; preds = %._crit_edge
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.go

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA3_KcRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 1 dereferenceable(3) @_ZN16OpenColorIO_v2_5L7ATTR_IDE, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ef unwind label %bb.eq

bb.ef:                                            ; preds = %bb.ee
  %i.rx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !106 ; 10 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !107
  %.not.i.i141 = icmp eq ptr %i.ry, %i.sa
  br i1 %.not.i.i141, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 3 uses
  store ptr %i.sb, ptr %i.ry, align 8, !tbaa !60
  %i.sc = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %bb.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142

bb.eh:                                            ; preds = %bb.eg
  %i.sf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !52 ; 3 uses
  %i.sh = icmp ult i64 %i.sg, 16
  call void @llvm.assume(i1 %i.sh)
  %i.si = add nuw nsw i64 %i.sg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sb, ptr noundef nonnull align 8 dereferenceable(1) %i.sd, i64 %i.si, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142: ; preds = %bb.eg
  store ptr %i.sc, ptr %i.ry, align 8, !tbaa !51
  %i.sj = load i64, ptr %i.sd, align 8, !tbaa !53
  store i64 %i.sj, ptr %i.sb, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre241 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i143: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142, %bb.eh
  %i.sk = phi i64 [ %.pre241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142 ], [ %i.sg, %bb.eh ]
  %i.sl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i64 %i.sk, ptr %i.sm, align 8, !tbaa !52
  store ptr %i.sd, ptr %14, align 8, !tbaa !51
  store i64 0, ptr %i.sl, align 8, !tbaa !52
  store i8 0, ptr %i.sd, align 8, !tbaa !53
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ry, i64 32 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ry, i64 48 ; 3 uses
  store ptr %i.sp, ptr %i.sn, align 8, !tbaa !60
  %i.sq = load ptr, ptr %i.so, align 8, !tbaa !51 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 5 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %bb.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i144

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i143
  %i.st = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.su = load i64, ptr %i.st, align 8, !tbaa !52 ; 3 uses
  %i.sv = icmp ult i64 %i.su, 16
  call void @llvm.assume(i1 %i.sv)
  %i.sw = add nuw nsw i64 %i.su, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sp, ptr noundef nonnull align 8 dereferenceable(1) %i.sr, i64 %i.sw, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i143
  store ptr %i.sq, ptr %i.sn, align 8, !tbaa !51
  %i.sx = load i64, ptr %i.sr, align 8, !tbaa !53
  store i64 %i.sx, ptr %i.sp, align 8, !tbaa !53
  %.phi.trans.insert242 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.pre243 = load i64, ptr %.phi.trans.insert242, align 8, !tbaa !52
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147.thread: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i144
  %i.sy = phi i64 [ %.pre243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i144 ], [ %i.su, %bb.ei ]
  %i.sz = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  store i64 %i.sy, ptr %i.ta, align 8, !tbaa !52
  store ptr %i.sr, ptr %i.so, align 8, !tbaa !51
  store i64 0, ptr %i.sz, align 8, !tbaa !52
  store i8 0, ptr %i.sr, align 8, !tbaa !53
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  store ptr %i.tb, ptr %i.rx, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149

bb.ej:                                            ; preds = %bb.ef
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ry, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147 unwind label %bb.er

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147: ; preds = %bb.ej
  %.phi.trans.insert244 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.pre245 = load ptr, ptr %.phi.trans.insert244, align 8, !tbaa !51 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.td = icmp eq ptr %.pre245, %i.tc
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !53
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %.pre245, i64 noundef %i.tf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit147.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  %i.tg = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ti = icmp eq ptr %i.tg, %i.th
  br i1 %i.ti, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149
  %i.tj = load i64, ptr %i.th, align 8, !tbaa !53
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tk) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit153

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.tl = load ptr, ptr %i.of, align 8, !tbaa !108 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !52
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.ew, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit153
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 1 dereferenceable(5) @_ZN16OpenColorIO_v2_5L9ATTR_NAMEE, ptr noundef nonnull align 8 dereferenceable(32) %i.tp)
          to label %bb.el unwind label %bb.et

bb.el:                                            ; preds = %bb.ek
  %i.tq = load ptr, ptr %i.rx, align 8, !tbaa !106 ; 10 uses
  %i.tr = load ptr, ptr %i.rz, align 8, !tbaa !107
  %.not.i.i154 = icmp eq ptr %i.tq, %i.tr
  br i1 %.not.i.i154, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 3 uses
  store ptr %i.ts, ptr %i.tq, align 8, !tbaa !60
  %i.tt = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.tv = icmp eq ptr %i.tt, %i.tu
  br i1 %i.tv, label %bb.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155

bb.en:                                            ; preds = %bb.em
  %i.tw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !52 ; 3 uses
  %i.ty = icmp ult i64 %i.tx, 16
  call void @llvm.assume(i1 %i.ty)
  %i.tz = add nuw nsw i64 %i.tx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ts, ptr noundef nonnull align 8 dereferenceable(1) %i.tu, i64 %i.tz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i156

end_hunk_0
