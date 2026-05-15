inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.hu = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i = phi i32 [ %i.hl, %bb.bp ], [ %i.hu, %bb.bq ]
  %i.hv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hv, label %bb.br, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bn
  %i.hw = invoke i32 @unzGoToNextFile(ptr noundef nonnull %i.cf)
          to label %bb.bs unwind label %bb.bj

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hx = icmp eq i32 %i.hw, -100
  br i1 %i.hx, label %bb.bt, label %.thread431

bb.bt:                                            ; preds = %bb.bs
  %i.hy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store ptr @.str, ptr %i.p, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(44) @.str.13)
          to label %.invoke unwind label %bb.bu

.invoke:                                          ; preds = %bb.bh, %bb.bt
  %i.hz = phi ptr [ %i.hy, %bb.bt ], [ %i.gw, %bb.bh ]
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.cont unwind label %bb.bj

.cont:                                            ; preds = %.invoke
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @__cxa_free_exception(ptr nonnull %i.hy) #28
  br label %.body169

bb.bv:                                            ; preds = %bb.bl
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.thread431:                                       ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ic = invoke i32 @unzClose(ptr noundef nonnull %i.cf)
          to label %bb.ca unwind label %bb.av     ; 0 uses

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ao

.body169:                                         ; preds = %bb.bd, %bb.bv, %bb.be, %bb.bj, %bb.bu, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.aw
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.aw ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.gp, %bb.bd ], [ %i.gq, %bb.be ], [ %i.ib, %bb.bv ], [ %i.gx, %bb.bi ], [ %i.gy, %bb.bj ], [ %i.ia, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body176

bb.bx:                                            ; preds = %bb.an
  %i.id = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store ptr @.str, ptr %i.o, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(44) @.str.14)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.id, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc175 unwind label %bb.av

.noexc175:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @__cxa_free_exception(ptr nonnull %i.id) #28
  br label %.body176

bb.ca:                                            ; preds = %.thread431
  %i.if = load ptr, ptr %15, align 8              ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.co
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ca
  %i.ih = load i64, ptr %i.co, align 8
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %.pre591 = load ptr, ptr %12, align 8
  %.pre592 = load ptr, ptr %i.ak, align 8
  br label %bb.cb

.body176:                                         ; preds = %bb.av, %bb.bz, %.body169, %bb.al
  %.pn103 = phi { ptr, i32 } [ %i.ek, %bb.al ], [ %.pn98.pn.pn.pn, %.body169 ], [ %i.fv, %bb.av ], [ %i.ie, %bb.bz ] ; 2 uses
  %i.ij = load ptr, ptr %15, align 8              ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.co
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %.body176
  %i.il = load i64, ptr %i.co, align 8
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %.body176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.aa
  %.pn103.pn = phi { ptr, i32 } [ %i.db, %bb.aa ], [ %.pn103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn103, %.body176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.body131

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.in = phi ptr [ %.pre592, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %i.io = phi ptr [ %.pre591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr %i.io, ptr %21, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8
  store ptr %i.in, ptr %i.ip, align 8
  store ptr null, ptr %12, align 8
  %i.iq = invoke noundef ptr @_ZN6Assimp4STEP14ReadFileHeaderESt10shared_ptrINS_8IOStreamEE(ptr noundef nonnull %21)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.iq, ptr %20, align 8
  %i.ir = load ptr, ptr %i.ip, align 8            ; 8 uses
  %.not.i.i185 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i185, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.is, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4
  %i.ix = load ptr, ptr %i.ir, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !18
  %i.ja = load ptr, ptr %i.ir, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !18
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cf:                                            ; preds = %bb.cd
  %i.jd = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i186 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i186, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187

bb.ch:                                            ; preds = %bb.cf
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i188 = phi i32 [ %i.iv, %bb.cg ], [ %i.jf, %bb.ch ]
  %i.jg = icmp eq i32 %.0.i.i.i.i188, 1
  br i1 %i.jg, label %bb.ci, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cc, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187, %bb.ci
  %i.jh = load ptr, ptr %20, align 8              ; 10 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 72 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8            ; 4 uses
  %.not107.not = icmp eq i64 %i.jk, 0
  %.pre595 = load ptr, ptr %i.ji, align 8, !noalias !19 ; 2 uses
  br i1 %.not107.not, label %.critedge.thread, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.jl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %spec.select.i.i.i190 = call noundef i64 @llvm.umin.i64(i64 %i.jk, i64 4) ; 4 uses
  %cond = icmp eq i64 %i.jk, 1
  br i1 %cond, label %.critedge.thread708, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jl, ptr align 1 %.pre595, i64 %spec.select.i.i.i190, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %spec.select.i.i.i190, ptr %i.jm, align 8, !alias.scope !20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %spec.select.i.i.i190
  store i8 0, ptr %i.jn, align 1
  %i.jo = icmp ugt i64 %i.jk, 3
  br i1 %i.jo, label %.critedge, label %.critedge.thread708

.critedge.thread708:                              ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.critedge..critedge.thread_crit_edge

.critedge:                                        ; preds = %bb.ck
  %bcmp.i.i194 = call i32 @bcmp(ptr nonnull %i.jl, ptr nonnull @.str.15, i64 %spec.select.i.i.i190)
  %.not785 = icmp eq i32 %bcmp.i.i194, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br i1 %.not785, label %bb.cs, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge.thread708, %.critedge
  %.pre594 = load ptr, ptr %i.ji, align 8, !noalias !23
  %.pre596 = load i64, ptr %i.jj, align 8, !noalias !23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jp = phi i64 [ %.pre596, %.critedge..critedge.thread_crit_edge ], [ 0, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.jq = phi ptr [ %.pre594, %.critedge..critedge.thread_crit_edge ], [ %.pre595, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  store ptr %i.jr, ptr %23, align 8, !alias.scope !26
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 0, ptr %i.js, align 8, !alias.scope !26
  store i8 0, ptr %i.jr, align 8, !alias.scope !26
  %i.jt = add i64 %i.jp, 26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.jt)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.critedge.thread
  %i.ju = load i64, ptr %i.js, align 8, !alias.scope !26
  %i.jv = add i64 %i.ju, -4611686018427387878
  %i.jw = icmp ult i64 %i.jv, 26
  br i1 %i.jw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.cl
  %i.jx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.16, i64 noundef 26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cm ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jy = load i64, ptr %i.js, align 8, !alias.scope !26
  %i.jz = sub i64 4611686018427387903, %i.jy
  %i.ka = icmp ult i64 %i.jz, %i.jp
  br i1 %i.ka, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.cont.i.i unwind label %bb.cm

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.kb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.jq, i64 noundef %i.jp)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.critedge.thread
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %23, align 8, !alias.scope !26 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jr
  br i1 %i.ke, label %.body199, label %.body199.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.kf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store ptr @.str, ptr %i.n, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @__cxa_throw(ptr nonnull %i.kf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc201 unwind label %bb.cr

.noexc201:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @__cxa_free_exception(ptr nonnull %i.kf) #28
  br label %.body202

bb.cp:                                            ; preds = %bb.cb
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #28
  br label %bb.hp

bb.cq:                                            ; preds = %bb.cs
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.cr:                                            ; preds = %bb.cn
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.body202

.body202:                                         ; preds = %bb.co, %bb.cr
  %eh.lpad-body203 = phi { ptr, i32 } [ %i.kj, %bb.cr ], [ %i.kg, %bb.co ] ; 2 uses
  %i.kk = load ptr, ptr %23, align 8              ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.jr
  br i1 %i.kl, label %.body199, label %.body199.sink.split

.body199.sink.split:                              ; preds = %.body202, %bb.cm
  %.sink = phi ptr [ %i.kd, %bb.cm ], [ %i.kk, %.body202 ]
  %.pn108.ph = phi { ptr, i32 } [ %i.kc, %bb.cm ], [ %eh.lpad-body203, %.body202 ]
  %i.km = load i64, ptr %i.jr, align 8
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kn) #32
  br label %.body199

.body199:                                         ; preds = %.body199.sink.split, %.body202, %bb.cm
  %.pn108 = phi { ptr, i32 } [ %i.kc, %bb.cm ], [ %eh.lpad-body203, %.body202 ], [ %.pn108.ph, %.body199.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ho

bb.cs:                                            ; preds = %.critedge
  %i.ko = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.ko, label %bb.de, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  store i8 39, ptr %i.y, align 1
  %i.kp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc210 unwind label %bb.cy

.noexc210:                                        ; preds = %bb.cu
  br i1 %i.kp, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, label %bb.cv

bb.cv:                                            ; preds = %.noexc210
  %i.kq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc211 unwind label %bb.cy

.noexc211:                                        ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store ptr @.str, ptr %i.m, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA17_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.kq, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(17) @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
          to label %.noexc212 unwind label %bb.cy

.noexc212:                                        ; preds = %.noexc211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit: ; preds = %.noexc212, %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ks = load i64, ptr %i.kr, align 8
  %.not110 = icmp eq i64 %i.ks, 0
  br i1 %.not110, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  store i8 39, ptr %i.z, align 1
  %i.kt = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc213 unwind label %bb.cz

.noexc213:                                        ; preds = %bb.cw
  br i1 %i.kt, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, label %bb.cx

bb.cx:                                            ; preds = %.noexc213
  %i.ku = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc214 unwind label %bb.cz

.noexc214:                                        ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store ptr @.str, ptr %i.l, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA12_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(12) @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr noundef nonnull align 1 dereferenceable(1) %i.z)
          to label %.noexc215 unwind label %bb.cz

.noexc215:                                        ; preds = %.noexc214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit: ; preds = %.noexc215, %.noexc213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  br label %bb.da

bb.cy:                                            ; preds = %.noexc211, %bb.cv, %bb.cu
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  br label %bb.ho

bb.cz:                                            ; preds = %.noexc214, %bb.cx, %bb.cw
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  br label %bb.ho

bb.da:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.kz = load i64, ptr %i.ky, align 8
  %.not111 = icmp eq i64 %i.kz, 0
  br i1 %.not111, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #28
  store i8 39, ptr %i.aa, align 1
  %i.la = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc216 unwind label %bb.dd

.noexc216:                                        ; preds = %bb.db
  br i1 %i.la, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, label %bb.dc

bb.dc:                                            ; preds = %.noexc216
  %i.lb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc217 unwind label %bb.dd

.noexc217:                                        ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store ptr @.str, ptr %i.k, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA36_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.lb, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 1 dereferenceable(36) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %i.kx, ptr noundef nonnull align 1 dereferenceable(1) %i.aa)
          to label %.noexc218 unwind label %bb.dd

.noexc218:                                        ; preds = %.noexc217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit: ; preds = %.noexc218, %.noexc216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #28
  br label %bb.de

bb.dd:                                            ; preds = %.noexc217, %bb.dc, %bb.db
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #28
  br label %bb.ho

bb.de:                                            ; preds = %bb.da, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.ld = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store i32 0, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr null, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.ld, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.ld, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 0, ptr %i.lh, align 8
  invoke void @_ZN6Assimp3IFC10Schema_2x39GetSchemaERNS_4STEP7EXPRESS16ConversionSchemaE(ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %bb.df unwind label %bb.dl

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN6Assimp4STEP8ReadFileERNS0_2DBERKNS0_7EXPRESS16ConversionSchemaEPKPKcmSA_m(ptr noundef nonnull align 8 dereferenceable(392) %i.jh, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @_ZZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE14types_to_track, i64 noundef 3, ptr noundef nonnull @_ZZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE24inverse_indices_to_track, i64 noundef 6)
          to label %_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit unwind label %bb.dl

_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit: ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.li = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.li, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.li, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 10, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %25, i64 26
  store i8 0, ptr %i.lk, align 2
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jh, i64 160
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jh, i64 152 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.lm, %_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.ln, %_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.lp = load i64, ptr %i.lo, align 8            ; 3 uses
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.lp, i64 10)
  %i.lr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call i32 @memcmp(ptr noundef %i.ls, ptr noundef nonnull %i.li, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.lu = add i64 %i.lp, -10
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.lu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.lt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.lv = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.lv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.lv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i224 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i224, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.lw = icmp eq ptr %.19.i.i.i.i, %i.ln
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ly = load i64, ptr %i.lx, align 8            ; 3 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.dg
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ly, i64 10)
  %i.ma = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call i32 @memcmp(ptr noundef nonnull %i.li, ptr noundef %i.mb, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEE4findERSI_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.dg
  %i.md = sub i64 10, %i.ly
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.md, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEE4findERSI_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEE4findERSI_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i225 = phi i32 [ %i.mc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.me = icmp slt i32 %.0.i.i.i.i.i.i225, 0
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEE4findERSI_.exit.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 104
  %i.mg = load i64, ptr %i.mf, align 8
  %.not.i226 = icmp eq i64 %i.mg, 0
  br i1 %.not.i226, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread: ; preds = %bb.dh, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEE4findERSI_.exit.i, %_ZN6Assimp4STEP8ReadFileILm3ELm6EEEvRNS0_2DBERKNS0_7EXPRESS16ConversionSchemaERAT__KPKcRAT0__SA_.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.dh
  %i.mh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 88
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %.not114 = icmp eq ptr %i.mk, null
  br i1 %.not114, label %bb.di, label %bb.dn

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.ml = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store ptr @.str, ptr %i.j, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA26_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(26) @.str.29)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @__cxa_throw(ptr nonnull %i.ml, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc230 unwind label %bb.dm

.noexc230:                                        ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @__cxa_free_exception(ptr nonnull %i.ml) #28
  br label %.body231

bb.dl:                                            ; preds = %bb.df, %bb.de
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.dm:                                            ; preds = %bb.dj
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 32 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8            ; 2 uses
  %.not.i.i236 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i236, label %bb.do, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mk)
          to label %.noexc237 unwind label %bb.gt

.noexc237:                                        ; preds = %bb.do
  %.pre.i.i = load ptr, ptr %i.mp, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %.noexc237, %bb.dn
  %i.mr = phi ptr [ %.pre.i.i, %.noexc237 ], [ %i.mq, %bb.dn ]
  %i.ms = call ptr @__dynamic_cast(ptr nonnull %i.mr, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProjectE, i64 -1) #28 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.dp, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit

bb.dp:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc238 unwind label %bb.gt

.noexc238:                                        ; preds = %bb.dp
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %26, align 16
  %i.mv = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 4 uses
  store ptr %i.jh, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 6 uses
  store ptr %i.ms, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 8 uses
  store ptr %2, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 3 uses
  store double 1.000000e+00, ptr %i.my, align 16
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mz, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.nb, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.nc, align 16
  %i.nd = getelementptr inbounds nuw i8, ptr %26, i64 136 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %26, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nd, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %26, i64 176 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %26, i64 232 ; 3 uses
  store i32 0, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 240
  store ptr null, ptr %i.nh, align 16
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.nf, i8 0, i64 48, i1 false)
  store ptr %i.ng, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 256
  store ptr %i.ng, ptr %i.nj, align 16
  %i.nk = getelementptr inbounds nuw i8, ptr %26, i64 264
  store i64 0, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 280 ; 3 uses
  store i32 0, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %26, i64 288
  store ptr null, ptr %i.nm, align 16
  %i.nn = getelementptr inbounds nuw i8, ptr %26, i64 296
  store ptr %i.nl, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %26, i64 304
  store ptr %i.nl, ptr %i.no, align 16
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 312
  store i64 0, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 320
  store ptr %i.mu, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 328
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 352 ; 3 uses
  store i32 0, ptr %i.ns, align 16
  %i.nt = getelementptr inbounds nuw i8, ptr %26, i64 360
  store ptr null, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %26, i64 368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  store ptr %i.ns, ptr %i.nu, align 16
  %i.nv = getelementptr inbounds nuw i8, ptr %26, i64 376
  store ptr %i.ns, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %26, i64 384
  store i64 0, ptr %i.nw, align 16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ms, i64 328
  %i.ny = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.dq, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc240
  %i.oa = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 328
  %i.oc = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ob)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc241:                                        ; preds = %.preheader.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = load ptr, ptr %i.od, align 8
  %.not.i239 = icmp eq ptr %i.of, %i.og
  br i1 %.not.i239, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, label %.lr.ph.i

bb.dq:                                            ; preds = %.noexc240
  %i.oh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %bb.dq
  br i1 %i.oh, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, label %bb.dr

bb.dr:                                            ; preds = %.noexc242
  %i.oi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store ptr @.str, ptr %i.i, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA35_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.35)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %.noexc243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  br label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit

.lr.ph.i:                                         ; preds = %.noexc241, %.noexc247
  %.06.i = phi i64 [ %i.ot, %.noexc247 ], [ 0, %.noexc241 ] ; 2 uses
  %i.oj = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 328
  %i.ol = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ok)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit

.noexc245:                                        ; preds = %.lr.ph.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %.06.i
  %i.op = load ptr, ptr %i.oo, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp4STEP7EXPRESS8DataTypeERNS0_3IFC14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull align 8 dereferenceable(392) %26)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit

.noexc246:                                        ; preds = %.noexc245
  %i.oq = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 328
  %i.os = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.or)
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc247:                                        ; preds = %.noexc246
  %i.ot = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = load ptr, ptr %i.ou, align 8
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = ashr exact i64 %i.pa, 4
  %i.pc = icmp ult i64 %i.ot, %i.pb
  br i1 %i.pc, label %.lr.ph.i, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, !llvm.loop !31

_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit: ; preds = %.noexc247, %.noexc244, %.noexc242, %.noexc241
  %i.pd = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 304
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 312
  %i.ph = load ptr, ptr %i.pg, align 8            ; 3 uses
  %.not2224.i = icmp eq ptr %i.pf, %i.ph
  br i1 %.not2224.i, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, %.lr.ph.i248.backedge
  %.sroa.015.025.i = phi ptr [ %.sroa.015.025.i.be, %.lr.ph.i248.backedge ], [ %i.pf, %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit ] ; 3 uses
  %i.pi = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.025.i)
          to label %.noexc251 unwind label %.loopexit ; 5 uses

.noexc251:                                        ; preds = %.lr.ph.i248
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 56
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 88
  %i.pl = load i8, ptr %i.pk, align 8, !range !32, !noundef !19
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.ds, label %.critedge.i

bb.ds:                                            ; preds = %.noexc251
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 64
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = icmp eq i64 %i.po, 5
  br i1 %i.pp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.ds
  %i.pq = load ptr, ptr %i.pj, align 8            ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 1
  %i.ps = xor i32 %i.pr, 1701080909
  %i.pt = getelementptr i8, ptr %i.pq, i64 4
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = zext i8 %i.pu to i32
  %i.pw = xor i32 %i.pv, 108
  %i.px = or i32 %i.ps, %i.pw
  %i.py = icmp ne i32 %i.px, 0
  %i.pz = zext i1 %i.py to i32
  %i.qa = icmp eq i32 %i.pz, 0
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.qb, %i.ph
  %or.cond.i = select i1 %i.qa, i1 true, i1 %.not22.i
  br i1 %or.cond.i, label %.thread.i249, label %.lr.ph.i248.backedge

.lr.ph.i248.backedge:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.critedge.i
  %.sroa.015.025.i.be = phi ptr [ %i.qb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.old.i, %.critedge.i ]
  br label %.lr.ph.i248

.critedge.i:                                      ; preds = %bb.ds, %.noexc251
  %.old.i = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8 ; 2 uses
  %.not22.old.i = icmp eq ptr %.old.i, %i.ph
  br i1 %.not22.old.i, label %.thread.i249, label %.lr.ph.i248.backedge

.thread.i249:                                     ; preds = %.critedge.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.qc = load ptr, ptr %i.pi, align 8
  %i.qd = getelementptr i8, ptr %i.qc, i64 -24
  %i.qe = load i64, ptr %i.qd, align 8
  %i.qf = getelementptr inbounds i8, ptr %i.pi, i64 %i.qe
  %i.qg = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.qf, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x333IfcGeometricRepresentationContextE, i64 -1) #28 ; 2 uses
  %.not14.i = icmp eq ptr %i.qg, null
  br i1 %.not14.i, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %bb.dt

bb.dt:                                            ; preds = %.thread.i249
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 136
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(128) %i.my, ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull align 8 dereferenceable(392) %26)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.dt
  %i.qj = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc253 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc253:                                        ; preds = %.noexc252
  br i1 %i.qj, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %bb.du

bb.du:                                            ; preds = %.noexc253
  %i.qk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc254 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc254:                                        ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store ptr @.str, ptr %i.h, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA28_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qk, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(28) @.str.49)
          to label %.noexc255 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc255:                                        ; preds = %.noexc254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit

_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit: ; preds = %.noexc255, %.noexc253, %.thread.i249, %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit
  %i.ql = load ptr, ptr %i.mv, align 8, !nonnull !19, !align !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.qm, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.qm, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.qo, align 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ql, i64 160
  %i.qq = load ptr, ptr %i.qp, align 8            ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 152 ; 10 uses
  %.not10.i.i.i.i257 = icmp eq ptr %i.qq, null    ; 2 uses
  br i1 %.not10.i.i.i.i257, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264
  %.012.i.i.i.i259 = phi ptr [ %.1.i.i.i.i269, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264 ], [ %i.qq, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ] ; 4 uses
  %.0811.i.i.i.i260 = phi ptr [ %.19.i.i.i.i266, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264 ], [ %i.qr, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 40
  %i.qt = load i64, ptr %i.qs, align 8            ; 3 uses
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261: ; preds = %.lr.ph.i.i.i.i258
  %.sroa.speculated.i.i.i.i.i.i.i262 = call i64 @llvm.umin.i64(i64 %i.qt, i64 7)
  %i.qv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call i32 @memcmp(ptr noundef %i.qw, ptr noundef nonnull %i.qm, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i262) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i263 = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i.i.i.i.i.i263, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261, %.lr.ph.i.i.i.i258
  %i.qy = add i64 %i.qt, -7
  %spec.select7.i.i.i.i.i.i.i.i290 = call i64 @llvm.smax.i64(i64 %i.qy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i291 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i290, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i292 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i291 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261
  %.0.i.i.i.i.i.i.i265 = phi i32 [ %i.qx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261 ], [ %.0.i6.i.i.i.i.i.i.i292, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289 ]
  %i.qz = icmp slt i32 %.0.i.i.i.i.i.i.i265, 0    ; 2 uses
  %.19.i.i.i.i266 = select i1 %i.qz, ptr %.0811.i.i.i.i260, ptr %.012.i.i.i.i259 ; 5 uses
  %.1.in.v.i.i.i.i267 = select i1 %i.qz, i64 24, i64 16
  %.1.in.i.i.i.i268 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 %.1.in.v.i.i.i.i267
  %.1.i.i.i.i269 = load ptr, ptr %.1.in.i.i.i.i268, align 8 ; 2 uses
  %.not.i.i.i.i270 = icmp eq ptr %.1.i.i.i.i269, null
  br i1 %.not.i.i.i.i270, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271, label %.lr.ph.i.i.i.i258, !llvm.loop !29

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264
  %i.ra = icmp eq ptr %.19.i.i.i.i266, %i.qr
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271
  %i.rb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i266, i64 40
  %i.rc = load i64, ptr %i.rb, align 8            ; 3 uses
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272: ; preds = %bb.dv
  %.sroa.speculated.i.i.i.i.i.i273 = call i64 @llvm.umin.i64(i64 %i.rc, i64 7)
  %i.re = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i266, i64 32
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = call i32 @memcmp(ptr noundef nonnull %i.qm, ptr noundef %i.rf, i64 noundef %.sroa.speculated.i.i.i.i.i.i273) #28 ; 2 uses
  %.not.i.i.i.i.i.i274 = icmp eq i32 %i.rg, 0
  br i1 %.not.i.i.i.i.i.i274, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272, %bb.dv
  %i.rh = sub i64 7, %i.rc
  %spec.select7.i.i.i.i.i.i.i286 = call i64 @llvm.smax.i64(i64 %i.rh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i287 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i286, i64 2147483647)
  %.0.i6.i.i.i.i.i.i288 = trunc nsw i64 %.08.i.i.i.i.i.i.i287 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272
  %.0.i.i.i.i.i.i275 = phi i32 [ %i.rg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272 ], [ %.0.i6.i.i.i.i.i.i288, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285 ]
  %i.ri = icmp slt i32 %.0.i.i.i.i.i.i275, 0
  %spec.select.i.i.i276 = select i1 %i.ri, ptr %i.qr, ptr %.19.i.i.i.i266
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit
  %.sroa.0.0.i.i.i = phi ptr [ %i.qr, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ], [ %i.qr, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271 ], [ %spec.select.i.i.i276, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 104
  %.pre.i277 = load i64, ptr %.phi.trans.insert.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.rj = icmp eq i64 %.pre.i277, 0
  br i1 %i.rj, label %._crit_edge.i.i127.i, label %bb.ea

._crit_edge.i.i127.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.rk, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.rk, ptr noundef nonnull align 1 dereferenceable(11) @.str.21, i64 11, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.rl, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.rm, align 1
  br i1 %.not10.i.i.i.i257, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %.lr.ph.i.i.i132.i

.lr.ph.i.i.i132.i:                                ; preds = %._crit_edge.i.i127.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i
  %.012.i.i.i133.i = phi ptr [ %.1.i.i.i143.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i ], [ %i.qq, %._crit_edge.i.i127.i ] ; 4 uses
  %.0811.i.i.i134.i = phi ptr [ %.19.i.i.i140.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i ], [ %i.qr, %._crit_edge.i.i127.i ]
  %i.rn = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 40
  %i.ro = load i64, ptr %i.rn, align 8            ; 3 uses
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i: ; preds = %.lr.ph.i.i.i132.i
  %.sroa.speculated.i.i.i.i.i.i135.i = call i64 @llvm.umin.i64(i64 %i.ro, i64 11)
  %i.rq = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call i32 @memcmp(ptr noundef %i.rr, ptr noundef nonnull %i.rk, i64 noundef %.sroa.speculated.i.i.i.i.i.i135.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i137.i = icmp eq i32 %i.rs, 0
  br i1 %.not.i.i.i.i.i.i137.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i, %.lr.ph.i.i.i132.i
  %i.rt = add i64 %i.ro, -11
  %spec.select7.i.i.i.i.i.i.i158.i = call i64 @llvm.smax.i64(i64 %i.rt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i159.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i158.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i160.i = trunc nsw i64 %.08.i.i.i.i.i.i.i159.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i
  %.0.i.i.i.i.i.i139.i = phi i32 [ %i.rs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i ], [ %.0.i6.i.i.i.i.i.i160.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i ]
  %i.ru = icmp slt i32 %.0.i.i.i.i.i.i139.i, 0    ; 2 uses
  %.19.i.i.i140.i = select i1 %i.ru, ptr %.0811.i.i.i134.i, ptr %.012.i.i.i133.i ; 5 uses
  %.1.in.v.i.i.i141.i = select i1 %i.ru, i64 24, i64 16
  %.1.in.i.i.i142.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 %.1.in.v.i.i.i141.i
  %.1.i.i.i143.i = load ptr, ptr %.1.in.i.i.i142.i, align 8 ; 2 uses
  %.not.i.i.i144.i = icmp eq ptr %.1.i.i.i143.i, null
  br i1 %.not.i.i.i144.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i, label %.lr.ph.i.i.i132.i, !llvm.loop !29

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i
  %i.rv = icmp eq ptr %.19.i.i.i140.i, %i.qr
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i
  %i.rw = getelementptr inbounds nuw i8, ptr %.19.i.i.i140.i, i64 40
  %i.rx = load i64, ptr %i.rw, align 8            ; 3 uses
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i: ; preds = %bb.dw
  %.sroa.speculated.i.i.i.i.i146.i = call i64 @llvm.umin.i64(i64 %i.rx, i64 11)
  %i.rz = getelementptr inbounds nuw i8, ptr %.19.i.i.i140.i, i64 32
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = call i32 @memcmp(ptr noundef nonnull %i.rk, ptr noundef %i.sa, i64 noundef %.sroa.speculated.i.i.i.i.i146.i) #28 ; 2 uses
  %.not.i.i.i.i.i148.i = icmp eq i32 %i.sb, 0
  br i1 %.not.i.i.i.i.i148.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i, %bb.dw
  %i.sc = sub i64 11, %i.rx
  %spec.select7.i.i.i.i.i.i154.i = call i64 @llvm.smax.i64(i64 %i.sc, i64 -2147483648)
  %.08.i.i.i.i.i.i155.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i154.i, i64 2147483647)
  %.0.i6.i.i.i.i.i156.i = trunc nsw i64 %.08.i.i.i.i.i.i155.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i
  %.0.i.i.i.i.i150.i = phi i32 [ %i.sb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i ], [ %.0.i6.i.i.i.i.i156.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i ]
  %i.sd = icmp slt i32 %.0.i.i.i.i.i150.i, 0
  %spec.select.i.i151.i = select i1 %i.sd, ptr %i.qr, ptr %.19.i.i.i140.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i, %._crit_edge.i.i127.i
  %.sroa.0.0.i.i152.i = phi ptr [ %i.qr, %._crit_edge.i.i127.i ], [ %i.qr, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i ], [ %spec.select.i.i151.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i ] ; 2 uses
  %.phi.trans.insert524.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i152.i, i64 104
  %.pre525.i = load i64, ptr %.phi.trans.insert524.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.se = icmp eq i64 %.pre525.i, 0
  br i1 %i.se, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i
  %i.sf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr @.str, ptr %i.g, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA67_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(67) @.str.50)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.sf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc293 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @__cxa_free_exception(ptr nonnull %i.sf) #28
  br label %.body294

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.0.0.i.i.pn.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0.0.i.i152.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.pn.i, i64 88 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8            ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.pn.i, i64 72 ; 4 uses
  %.not438.i = icmp eq ptr %i.si, %i.sj
  br i1 %.not438.i, label %._crit_edge.thread.i, label %.lr.ph443.i

.lr.ph443.i:                                      ; preds = %bb.ea
  %i.sk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %9, i64 23
  br label %bb.eb

._crit_edge.i:                                    ; preds = %.loopexit319.i
  %i.sp = ptrtoint ptr %.sroa.14.5.i to i64
  %i.sq = ptrtoint ptr %.sroa.0270.5.i to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = icmp eq ptr %.sroa.14.5.i, %.sroa.0270.5.i
  br i1 %i.ss, label %._crit_edge.thread.i, label %._crit_edge453.i

bb.eb:                                            ; preds = %.loopexit319.i, %.lr.ph443.i
  %.sroa.0270.0442.i = phi ptr [ null, %.lr.ph443.i ], [ %.sroa.0270.5.i, %.loopexit319.i ] ; 9 uses
  %.sroa.14.0441.i = phi ptr [ null, %.lr.ph443.i ], [ %.sroa.14.5.i, %.loopexit319.i ] ; 7 uses
  %.sroa.24.0440.i = phi ptr [ null, %.lr.ph443.i ], [ %.sroa.24.5.i, %.loopexit319.i ] ; 9 uses
  %.sroa.0267.0439.i = phi ptr [ %i.si, %.lr.ph443.i ], [ %i.zd, %.loopexit319.i ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0267.0439.i, i64 32
  %i.su = load ptr, ptr %i.st, align 8            ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 32 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8            ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i.i278, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.su)
          to label %.noexc171.i unwind label %bb.ee

.noexc171.i:                                      ; preds = %bb.ec
  %.pre.i.i.i = load ptr, ptr %i.sv, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc171.i, %bb.eb
  %i.sx = phi ptr [ %.pre.i.i.i, %.noexc171.i ], [ %i.sw, %bb.eb ]
  %i.sy = call noundef ptr @__dynamic_cast(ptr nonnull %i.sx, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x326IfcSpatialStructureElementE, i64 -1) #28 ; 10 uses
  %.not107.i = icmp eq ptr %i.sy, null
  br i1 %.not107.i, label %.loopexit319.i, label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 88
  %i.tb = load i8, ptr %i.ta, align 8, !range !32, !noundef !19
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.eg, label %._crit_edge.i.i175.i

bb.eg:                                            ; preds = %bb.ef
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 56
  store ptr %i.sk, ptr %9, align 8
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 64
  %i.tg = load i64, ptr %i.tf, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 %i.tg, ptr %i.f, align 8
  %i.th = icmp ugt i64 %i.tg, 15
  br i1 %i.th, label %.noexc.i173.i, label %._crit_edge.i.i172.i

.noexc.i173.i:                                    ; preds = %bb.eg
  %i.ti = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc174.i unwind label %bb.fb ; 2 uses

.noexc174.i:                                      ; preds = %.noexc.i173.i
  store ptr %i.ti, ptr %9, align 8
  %i.tj = load i64, ptr %i.f, align 8
  store i64 %i.tj, ptr %i.sk, align 8
  br label %._crit_edge.i.i172.i

._crit_edge.i.i172.i:                             ; preds = %.noexc174.i, %bb.eg
  %i.tk = phi ptr [ %i.ti, %.noexc174.i ], [ %i.sk, %bb.eg ] ; 2 uses
  switch i64 %i.tg, label %bb.ei [
    i64 1, label %bb.eh
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.eh:                                            ; preds = %._crit_edge.i.i172.i
  %i.tl = load i8, ptr %i.te, align 1
  store i8 %i.tl, ptr %i.tk, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ei:                                            ; preds = %._crit_edge.i.i172.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tk, ptr align 1 %i.te, i64 %i.tg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ei, %bb.eh, %._crit_edge.i.i172.i
  %i.tm = load i64, ptr %i.f, align 8             ; 2 uses
  store i64 %i.tm, ptr %i.sl, align 8
  %i.tn = load ptr, ptr %9, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tm
  store i8 0, ptr %i.to, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bb.ej

._crit_edge.i.i175.i:                             ; preds = %bb.ef
  store ptr %i.sk, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.sk, ptr noundef nonnull align 1 dereferenceable(7) @.str.52, i64 7, i1 false)
  store i64 7, ptr %i.sl, align 8
  store i8 0, ptr %i.so, align 1
  br label %bb.ej

bb.ej:                                            ; preds = %._crit_edge.i.i175.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sy, i64 200
  %i.tq = load i8, ptr %i.tp, align 8, !range !32, !noundef !19
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %bb.ek, label %._crit_edge.i.i179.i

bb.ek:                                            ; preds = %bb.ej
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sy, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !33
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sy, i64 176
  %i.tv = load i64, ptr %i.tu, align 8, !noalias !33 ; 3 uses
  store ptr %i.sm, ptr %10, align 8, !alias.scope !36
  store i64 0, ptr %i.sn, align 8, !alias.scope !36
  store i8 0, ptr %i.sm, align 8, !alias.scope !36
  %i.tw = add i64 %i.tv, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.tw)
          to label %bb.el unwind label %.loopexit324.i

bb.el:                                            ; preds = %bb.ek
  %i.tx = load i64, ptr %i.sn, align 8, !alias.scope !36
  %i.ty = add i64 %i.tx, -4611686018427387886
  %i.tz = icmp ult i64 %i.ty, 18
  br i1 %i.tz, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.el
  %i.ua = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.54, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit324.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ub = load i64, ptr %i.sn, align 8, !alias.scope !36
  %i.uc = sub i64 4611686018427387903, %i.ub
  %i.ud = icmp ult i64 %i.uc, %i.tv
  br i1 %i.ud, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.el
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.cont.i.i.i unwind label %.loopexit.split-lp325.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.ue = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.tt, i64 noundef %i.tv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i unwind label %.loopexit324.i ; 0 uses

.loopexit324.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %bb.ek
  %lpad.loopexit326.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.loopexit.split-lp325.i:                          ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp327.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.em:                                            ; preds = %.loopexit.split-lp325.i, %.loopexit324.i
  %lpad.phi328.i = phi { ptr, i32 } [ %lpad.loopexit326.i, %.loopexit324.i ], [ %lpad.loopexit.split-lp327.i, %.loopexit.split-lp325.i ] ; 2 uses
  %i.uf = load ptr, ptr %10, align 8, !alias.scope !36 ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.sm
  br i1 %i.ug, label %.critedge124.i, label %.critedge124.i.sink.split

._crit_edge.i.i179.i:                             ; preds = %bb.ej
  store ptr %i.sm, ptr %10, align 8
  store i64 0, ptr %i.sn, align 8
  store i8 0, ptr %i.sm, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %._crit_edge.i.i179.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %i.uh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc183.i unwind label %bb.fc

.noexc183.i:                                      ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  br i1 %i.uh, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i, label %bb.en

bb.en:                                            ; preds = %.noexc183.i
  %i.ui = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc184.i unwind label %bb.fc

.noexc184.i:                                      ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr @.str, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA31_S2_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(31) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(2) @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc185.i unwind label %bb.fc

.noexc185.i:                                      ; preds = %.noexc184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i: ; preds = %.noexc185.i, %.noexc183.i
  %i.uj = load ptr, ptr %10, align 8              ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.sm
  br i1 %i.uk, label %.critedge.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i
  %i.ul = load i64, ptr %i.sm, align 8
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #32
  br label %.critedge.i279

.critedge.i279:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.un = load ptr, ptr %9, align 8               ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.sk
  br i1 %i.uo, label %.critedge122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i: ; preds = %.critedge.i279
  %i.up = load i64, ptr %i.sk, align 8
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #32
  br label %.critedge122.i

.critedge122.i:                                   ; preds = %.critedge.i279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ur = load ptr, ptr %i.mv, align 8, !nonnull !19, !align !30 ; 4 uses
  %i.us = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = getelementptr i8, ptr %i.ut, i64 -24
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = getelementptr inbounds i8, ptr %i.us, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8            ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 216
  %i.va = load i64, ptr %i.uz, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.va, 0
  br i1 %.not.not.i.i.i.i, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %.critedge122.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ur, i64 208
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eq, %bb.eo
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.vb, %bb.eo ], [ %.sroa.06.0.i.i.i.i, %bb.eq ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %.not.i.i.i193.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i193.i, label %.loopexit319.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.vd = load i64, ptr %i.vc, align 8
  %i.ve = icmp eq i64 %i.uy, %i.vd
  br i1 %i.ve, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %bb.ep, !llvm.loop !39

bb.er:                                            ; preds = %.critedge122.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ur, i64 192
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ur, i64 200
  %i.vh = load i64, ptr %i.vg, align 8            ; 2 uses
  %i.vi = urem i64 %i.uy, %i.vh                   ; 2 uses
  %i.vj = load ptr, ptr %i.vf, align 8
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vi
  %i.vl = load ptr, ptr %i.vk, align 8            ; 2 uses
  %.not.i.i.i.i.i192.i = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i.i.i192.i, label %.loopexit319.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.vm = load ptr, ptr %i.vl, align 8            ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load i64, ptr %i.vn, align 8
  %i.vp = icmp eq i64 %i.uy, %i.vo
  br i1 %i.vp, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.et:                                            ; preds = %bb.eu
  %i.vq = icmp eq i64 %i.uy, %i.vt
  br i1 %i.vq, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !40

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.es, %bb.et
  %.020.i.i.i.i.i.i = phi ptr [ %i.vr, %bb.et ], [ %i.vm, %bb.es ]
  %i.vr = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.vr, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit319.i, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load i64, ptr %i.vs, align 8            ; 2 uses
  %i.vu = urem i64 %i.vt, %i.vh
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.vu, %i.vi
  br i1 %.not19.i.i.i.i.i.i, label %bb.et, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !40

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.eu
  br label %.loopexit319.i, !llvm.loop !40

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i: ; preds = %bb.et, %bb.eq, %bb.es
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.eq ], [ %i.vm, %bb.es ], [ %i.vr, %bb.et ] ; 3 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ew, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i
  %.sroa.03.0.in.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %bb.ew ]
  %.sroa.03.0.i.i.i = load ptr, ptr %.sroa.03.0.in.i.i.i, align 8 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i, null
  br i1 %.not2.i.i.i, label %.loopexit320.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = icmp eq i64 %i.uy, %i.vw
  br i1 %i.vx, label %bb.ev, label %.loopexit320.i, !llvm.loop !41

.loopexit320.i:                                   ; preds = %bb.ew, %bb.ev
  %.not306429.i = icmp eq ptr %.sroa.06.1.i.i.i.i, %.sroa.03.0.i.i.i
  br i1 %.not306429.i, label %.loopexit319.i, label %.lr.ph434.i

.lr.ph434.i:                                      ; preds = %.loopexit320.i, %.loopexit308.i
  %.sroa.0270.1433.i = phi ptr [ %.sroa.0270.4.i, %.loopexit308.i ], [ %.sroa.0270.0442.i, %.loopexit320.i ] ; 4 uses
  %.sroa.14.1432.i = phi ptr [ %.sroa.14.4.i, %.loopexit308.i ], [ %.sroa.14.0441.i, %.loopexit320.i ] ; 3 uses
  %.sroa.24.1431.i = phi ptr [ %.sroa.24.4.i, %.loopexit308.i ], [ %.sroa.24.0440.i, %.loopexit320.i ] ; 4 uses
  %.sroa.0261.0430.i = phi ptr [ %i.zc, %.loopexit308.i ], [ %.sroa.06.1.i.i.i.i, %.loopexit320.i ] ; 2 uses
  %i.vy = load ptr, ptr %i.mv, align 8, !nonnull !19, !align !30 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0261.0430.i, i64 16
  %i.wa = load i64, ptr %i.vz, align 8            ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 112
  %i.wc = load ptr, ptr %i.wb, align 8            ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 104 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.wc, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph434.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.wc, %.lr.ph434.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.wd, %.lr.ph434.i ]
  %i.we = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.wf = load i64, ptr %i.we, align 8
  %i.wg = icmp ult i64 %i.wf, %i.wa               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.wg, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.wg, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i282 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i282, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.wh = icmp eq ptr %.19.i.i.i.i.i, %i.wd
  br i1 %i.wh, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.wj = load i64, ptr %i.wi, align 8
  %i.wk = icmp ult i64 %i.wa, %i.wj
  br i1 %i.wk, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.wm = load ptr, ptr %i.wl, align 8
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i

_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i:           ; preds = %bb.ex, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i.i, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph434.i
  %.0.i.i = phi ptr [ %i.wm, %bb.ex ], [ null, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i.i ], [ null, %.lr.ph434.i ], [ null, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8            ; 2 uses
  %.not.i.i194.i = icmp eq ptr %i.wo, null
  br i1 %.not.i.i194.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i)
          to label %.noexc196.i unwind label %bb.fd

.noexc196.i:                                      ; preds = %bb.ey
  %.pre.i.i195.i = load ptr, ptr %i.wn, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %.noexc196.i, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i
  %i.wp = phi ptr [ %.pre.i.i195.i, %.noexc196.i ], [ %i.wo, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.i ]
  %i.wq = call noundef ptr @__dynamic_cast(ptr nonnull %i.wp, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcRelAggregatesE, i64 -1) #28 ; 3 uses
  %.not113.i = icmp eq ptr %i.wq, null
  br i1 %.not113.i, label %.loopexit308.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 176
  %i.ws = load ptr, ptr %i.wr, align 8            ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 184
  %i.wu = load ptr, ptr %i.wt, align 8            ; 2 uses
  %.not307422.i = icmp eq ptr %i.ws, %i.wu
  br i1 %.not307422.i, label %.loopexit308.i, label %.lr.ph.i283

bb.fb:                                            ; preds = %.noexc.i173.i
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %.critedge126.i

bb.fc:                                            ; preds = %.noexc184.i, %bb.en, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = load ptr, ptr %10, align 8              ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.sm
  br i1 %i.wy, label %.critedge124.i, label %.critedge124.i.sink.split

.critedge124.i.sink.split:                        ; preds = %bb.fc, %bb.em
  %.sink861 = phi ptr [ %i.uf, %bb.em ], [ %i.wx, %bb.fc ]
  %.pn108.pn.i.ph = phi { ptr, i32 } [ %lpad.phi328.i, %bb.em ], [ %i.ww, %bb.fc ]
  %i.wz = load i64, ptr %i.sm, align 8
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %.sink861, i64 noundef %i.xa) #32
  br label %.critedge124.i

.critedge124.i:                                   ; preds = %.critedge124.i.sink.split, %bb.fc, %bb.em
  %.pn108.pn.i = phi { ptr, i32 } [ %i.ww, %bb.fc ], [ %lpad.phi328.i, %bb.em ], [ %.pn108.pn.i.ph, %.critedge124.i.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.xb = load ptr, ptr %9, align 8               ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.sk
  br i1 %i.xc, label %.critedge126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i: ; preds = %.critedge124.i
  %i.xd = load i64, ptr %i.sk, align 8
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xe) #32
  br label %.critedge126.i

.critedge126.i:                                   ; preds = %.critedge124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i, %bb.fb
  %.pn108.pn.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i ], [ %i.wv, %bb.fb ], [ %.pn108.pn.i, %.critedge124.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body207.i

bb.fd:                                            ; preds = %bb.ey
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

.lr.ph.i283:                                      ; preds = %bb.fa, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i
  %.sroa.0270.2426.i = phi ptr [ %.sroa.0270.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.0270.1433.i, %bb.fa ] ; 13 uses
  %.sroa.14.2425.i = phi ptr [ %.sroa.14.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.14.1432.i, %bb.fa ] ; 7 uses
  %.sroa.24.2424.i = phi ptr [ %.sroa.24.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.24.1431.i, %bb.fa ] ; 9 uses
  %.sroa.0257.0423.i = phi ptr [ %i.zb, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %i.ws, %bb.fa ] ; 2 uses
  %i.xg = load ptr, ptr %.sroa.0257.0423.i, align 8 ; 3 uses
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %bb.fe, label %bb.fj

bb.fe:                                            ; preds = %.lr.ph.i283
  %i.xi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ff unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.xi, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  invoke void @__cxa_throw(ptr nonnull %i.xi, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fm unwind label %bb.fh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.fe
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.0.i204.i = phi i1 [ false, %bb.fg ], [ true, %bb.ff ] ; 2 uses
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xl = load ptr, ptr %5, align 8               ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.xn = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %bb.fh
  %i.xo = load i64, ptr %i.xm, align 8
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xp) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i204.i, label %bb.fi, label %.body207.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i204.i, label %bb.fi, label %.body207.i

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn10.i.i = phi { ptr, i32 } [ %i.xj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.xk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.xk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ]
  call void @__cxa_free_exception(ptr %i.xi) #28
  br label %.body207.i

bb.fj:                                            ; preds = %.lr.ph.i283
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xg, i64 32 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8            ; 2 uses
  %.not.i.i.i203.i = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i203.i, label %bb.fk, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xg)
          to label %.noexc205.i unwind label %.loopexit309.i

.noexc205.i:                                      ; preds = %bb.fk
  %.pre.i.i.i.i = load ptr, ptr %i.xq, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i:      ; preds = %.noexc205.i, %bb.fj
  %i.xs = phi ptr [ %.pre.i.i.i.i, %.noexc205.i ], [ %i.xr, %bb.fj ]
  %i.xt = call ptr @__dynamic_cast(ptr nonnull %i.xs, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcObjectDefinitionE, i64 -1) #28 ; 3 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %bb.fl, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i

bb.fl:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc206.i unwind label %.loopexit.split-lp310.i

.noexc206.i:                                      ; preds = %bb.fl
  unreachable

bb.fm:                                            ; preds = %bb.fg
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  %i.xv = load ptr, ptr %i.xt, align 8
  %i.xw = getelementptr i8, ptr %i.xv, i64 -24
  %i.xx = load i64, ptr %i.xw, align 8
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E:bb.a
._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit: ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcUnitAssignmentE, i64 -1) #28
  ret ptr %i.n

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcUnitAssignmentE, i64 -1) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcUnitAssignmentEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #30
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcUnitAssignmentEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp4STEP7EXPRESS8DataTypeERNS0_3IFC14ConversionDataE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(392) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %0, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #28 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_bad_cast() #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit: ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.d, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #28 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.invoke, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.i, i64 noundef %i.k)
          to label %.noexc14 unwind label %bb.e   ; 2 uses

.noexc14:                                         ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i

bb.c:                                             ; preds = %.noexc14
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.c
  %.pre.i.i.i = load ptr, ptr %i.m, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i

_ZNK6Assimp4STEP10LazyObjectptEv.exit.i:          ; preds = %.noexc15, %.noexc14
  %i.o = phi ptr [ %.pre.i.i.i, %.noexc15 ], [ %i.n, %.noexc14 ]
  %i.p = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.o, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x312IfcNamedUnitE, i64 -1) #28 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.invoke, label %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit

.invoke:                                          ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  invoke void @__cxa_bad_cast() #30
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i64, ptr %i.s, align 8
  switch i64 %i.t, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit [
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 14, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 5644497234789549388
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i64
  %i.aa = xor i64 %i.z, 21577
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit
  %i.ae = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 5138115990797765712
  %i.ah = getelementptr i8, ptr %i.ae, i64 6
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 6073471700627638094
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

bb.d:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %.body

bb.e:                                             ; preds = %.invoke, %.noexc36, %bb.g, %.noexc20, %.noexc29, %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, %bb.r, %.noexc19, %bb.c, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %.body

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = load ptr, ptr %i.p, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.p, i64 %i.ar ; 2 uses
  %i.at = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.as, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x39IfcSIUnitE, i64 -1) #28 ; 7 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 10
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, label %.noexc21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39: ; preds = %bb.f
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 5644497234789549388
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i64
  %i.be = xor i64 %i.bd, 21577
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread, label %.noexc21thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.bk = load i8, ptr %i.bj, align 8, !range !32, !noundef !19
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.noexc19, label %.noexc20

.noexc19:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.bn = invoke noundef double @_ZN6Assimp3IFC15ConvertSIPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %.noexc20 unwind label %bb.e, !inline_history !66

.noexc20:                                         ; preds = %.noexc19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread
  %i.bo = phi double [ 1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread ], [ %i.bn, %.noexc19 ]
  store double %i.bo, ptr %1, align 8
  %i.bp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc35 unwind label %bb.e

.noexc35:                                         ; preds = %.noexc20
  br i1 %i.bp, label %.noexc21thread-pre-split, label %bb.g

bb.g:                                             ; preds = %.noexc35
  %i.bq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc36 unwind label %bb.e

.noexc36:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA27_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.43)
          to label %.noexc37 unwind label %bb.e

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.noexc21thread-pre-split

.noexc21thread-pre-split:                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, %.noexc37, %.noexc35
  %.pr = load i64, ptr %i.av, align 8
  br label %.noexc21

.noexc21:                                         ; preds = %bb.f, %.noexc21thread-pre-split
  %i.br = phi i64 [ %.pr, %.noexc21thread-pre-split ], [ %i.aw, %bb.f ]
  %i.bs = icmp eq i64 %i.br, 14
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %.noexc21
  %i.bt = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 5138115990797765712
  %i.bw = getelementptr i8, ptr %i.bt, i64 6
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 6073471700627638094
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1229209938
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = zext i16 %i.cl to i32
  %i.cn = xor i32 %i.cm, 20033
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not47 = icmp eq i32 %i.cq, 0
  br i1 %.not47, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  %i.cr = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc28 unwind label %bb.e

.noexc28:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread
  br i1 %i.cr, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit, label %bb.h

bb.h:                                             ; preds = %.noexc28
  %i.cs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA43_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) @.str.45)
          to label %.noexc30 unwind label %bb.e

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40
  %i.ct = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.as, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x322IfcConversionBasedUnitE, i64 -1) #28 ; 4 uses
  %.not22.i = icmp eq ptr %i.ct, null
  br i1 %.not22.i, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = icmp eq i64 %i.cv, 14
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 1
  %i.da = xor i64 %i.cz, 5138115990797765712
  %i.db = getelementptr i8, ptr %i.cy, i64 6
  %i.dc = load i64, ptr %i.db, align 1
  %i.dd = xor i64 %i.dc, 6073471700627638094
  %i.de = or i64 %i.da, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 104 ; 2 uses
  %i.dj = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x318IfcMeasureWithUnitEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.k unwind label %bb.p, !inline_history !66

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.dl, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS17PrimitiveDataTypeIdEE, i64 0) #28 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.l, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_17PrimitiveDataTypeIdEEEERKT_v.exit

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_bad_cast() #30
          to label %.noexc27 unwind label %bb.p

.noexc27:                                         ; preds = %bb.l
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_17PrimitiveDataTypeIdEEEERKT_v.exit: ; preds = %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load double, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.dp, ptr %i.dq, align 8
  %i.dr = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x318IfcMeasureWithUnitEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.m unwind label %bb.p, !inline_history !66

bb.m:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_17PrimitiveDataTypeIdEEEERKT_v.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp4STEP7EXPRESS8DataTypeERNS0_3IFC14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(392) %1)
          to label %bb.n unwind label %bb.p, !inline_history !66

bb.n:                                             ; preds = %bb.m
  %i.du = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc24 unwind label %bb.p

.noexc24:                                         ; preds = %bb.n
  br i1 %i.du, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit, label %bb.o

bb.o:                                             ; preds = %.noexc24
  %i.dv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc25 unwind label %bb.p

.noexc25:                                         ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(26) @.str.46)
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

bb.p:                                             ; preds = %bb.l, %.noexc25, %bb.o, %bb.n, %bb.m, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_17PrimitiveDataTypeIdEEEERKT_v.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast              ; 3 uses
  %i.dx = extractvalue { ptr, i32 } %i.dw, 1
  %i.dy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt8bad_cast) #28
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  %i.ea = extractvalue { ptr, i32 } %i.dw, 0
  %i.eb = call ptr @__cxa_begin_catch(ptr %i.ea) #28, !inline_history !66 ; 0 uses
  invoke void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA77_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(77) @.str.47)
          to label %bb.r unwind label %bb.s, !inline_history !66

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit unwind label %bb.e, !inline_history !66

bb.s:                                             ; preds = %bb.q
  %i.ec = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t, !inline_history !66

end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger5debugIJPKcRA28_S2_EEEvDpOT_:bb.a
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA28_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(28) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !167
  store i8 0, ptr %i.c, align 8, !alias.scope !167
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !167 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !167 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !167 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !167 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !167
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %15 = alloca %class.aiMatrix4x4t, align 16      ; 21 uses
  %16 = alloca %class.aiMatrix4x4t, align 8       ; 19 uses
  %17 = alloca %"class.std::set.131", align 8     ; 12 uses
  %18 = alloca %class.aiMatrix4x4t, align 8       ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::set.131", align 8     ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %33 = alloca %"class.std::map.231", align 8     ; 12 uses
  %34 = alloca %struct.aiString, align 4          ; 6 uses
  %35 = alloca %"class.std::vector.240", align 8  ; 13 uses
  %36 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector.240", align 8  ; 12 uses
  %39 = alloca %class.aiMatrix4x4t.76, align 4    ; 5 uses
  %40 = alloca %class.aiMatrix4x4t, align 16      ; 12 uses
  %41 = alloca %"class.std::unique_ptr.268", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !19, !align !168
  %i.m = load i8, ptr %i.l, align 4, !range !32, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.r, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcSpaceE, i64 -1) #28
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.t, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr @.str, ptr %i.g, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA50_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(50) @.str.60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0116 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ]
  %i.v = load ptr, ptr %i.k, align 8, !nonnull !19, !align !168
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 2, !range !32, !noundef !19
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.ac, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcAnnotationE, i64 -1) #28
  %.not148 = icmp eq ptr %i.ad, null
  br i1 %.not148, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ae, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr @.str, ptr %i.f, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(55) @.str.61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.ag = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29 ; 33 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ag)
          to label %bb.i unwind label %bb.ar

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !169 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  store ptr %i.an, ptr %31, align 8, !alias.scope !169
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28, !noalias !169
  store i64 %i.ap, ptr %i.e, align 8, !noalias !169
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %31, align 8, !alias.scope !169
  %i.as = load i64, ptr %i.e, align 8, !noalias !169
  store i64 %i.as, ptr %i.an, align 8, !alias.scope !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.j
  %i.at = phi ptr [ %i.ar, %.noexc.i.i ], [ %i.an, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i8, ptr %i.am, align 1
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.am, i64 %i.ap, i1 false)
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.av = load i64, ptr %i.e, align 8, !noalias !169 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !169
  %i.ax = load ptr, ptr %31, align 8, !alias.scope !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28, !noalias !169
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.az = load i64, ptr %i.aw, align 8, !noalias !172
  %i.ba = icmp eq i64 %i.az, 4611686018427387903
  br i1 %i.ba, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.62, i64 noundef 1)
          to label %.noexc179 unwind label %bb.as ; 6 uses

.noexc179:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.bc, ptr %30, align 8, !alias.scope !172
  %i.bd = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc179
  store ptr %i.bd, ptr %30, align 8, !alias.scope !172
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bc, align 8, !alias.scope !172
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bn, align 8, !alias.scope !172
  store ptr %i.be, ptr %i.bb, align 8
  store i64 0, ptr %i.bm, align 8
  store i8 0, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bp = load i8, ptr %i.bo, align 8, !range !32, !noundef !19
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.p, label %._crit_edge.i.i182

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.bs, ptr %32, align 8
  %i.bt = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bv = load i64, ptr %i.bu, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.bv, ptr %i.d, align 8
  %i.bw = icmp ugt i64 %i.bv, 15
  br i1 %i.bw, label %.noexc.i180, label %._crit_edge.i.i

.noexc.i180:                                      ; preds = %bb.p
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc181 unwind label %bb.at ; 2 uses

.noexc181:                                        ; preds = %.noexc.i180
  store ptr %i.bx, ptr %32, align 8
  %i.by = load i64, ptr %i.d, align 8
  store i64 %i.by, ptr %i.bs, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc181, %bb.p
  %i.bz = phi ptr [ %i.bx, %.noexc181 ], [ %i.bs, %bb.p ] ; 2 uses
  switch i64 %i.bv, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ca = load i8, ptr %i.bt, align 1
  store i8 %i.ca, ptr %i.bz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.cb = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = load ptr, ptr %32, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %.pre = load i64, ptr %i.cc, align 8, !noalias !175
  br label %bb.s

._crit_edge.i.i182:                               ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.cf, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cf, ptr noundef nonnull align 1 dereferenceable(7) @.str.63, i64 7, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 7, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %32, i64 23
  store i8 0, ptr %i.ch, align 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ci = phi i64 [ 7, %._crit_edge.i.i182 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.cj = load i64, ptr %i.bn, align 8, !noalias !175
  %i.ck = sub i64 4611686018427387903, %i.cj
  %i.cl = icmp ult i64 %i.ck, %i.ci
  br i1 %i.cl, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc188 unwind label %bb.au

.noexc188:                                        ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.s
  %i.cm = load ptr, ptr %32, align 8, !noalias !175
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.cm, i64 noundef %i.ci)
          to label %.noexc189 unwind label %bb.au ; 6 uses

.noexc189:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.co, ptr %29, align 8, !alias.scope !175
  %i.cp = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 5 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

bb.u:                                             ; preds = %.noexc189
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %.noexc189
  store ptr %i.cp, ptr %29, align 8, !alias.scope !175
  %i.cw = load i64, ptr %i.cq, align 8
  store i64 %i.cw, ptr %i.co, align 8, !alias.scope !175
  %.phi.trans.insert.i186 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.pre.i187 = load i64, ptr %.phi.trans.insert.i186, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.u
  %i.cx = phi i64 [ %i.ct, %bb.u ], [ %.pre.i187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.cx, ptr %i.cz, align 8, !alias.scope !175
  store ptr %i.cq, ptr %i.cn, align 8
  store i64 0, ptr %i.cy, align 8
  store i8 0, ptr %i.cq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.da = load i64, ptr %i.cz, align 8, !noalias !178
  %i.db = icmp eq i64 %i.da, 4611686018427387903
  br i1 %i.db, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc194 unwind label %bb.av

.noexc194:                                        ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190: ; preds = %bb.v
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.62, i64 noundef 1)
          to label %.noexc195 unwind label %bb.av ; 6 uses

.noexc195:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190
  %i.dd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.dd, ptr %28, align 8, !alias.scope !178
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 5 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

bb.x:                                             ; preds = %.noexc195
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load i64, ptr %i.dh, align 8            ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %.noexc195
  store ptr %i.de, ptr %28, align 8, !alias.scope !178
  %i.dl = load i64, ptr %i.df, align 8
  store i64 %i.dl, ptr %i.dd, align 8, !alias.scope !178
  %.phi.trans.insert.i192 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.pre.i193 = load i64, ptr %.phi.trans.insert.i192, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.x
  %i.dm = phi i64 [ %i.di, %bb.x ], [ %.pre.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 %i.dm, ptr %i.do, align 8, !alias.scope !178
  store ptr %i.df, ptr %i.dc, align 8
  store i64 0, ptr %i.dn, align 8
  store i8 0, ptr %i.df, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !181 ; 2 uses
  %i.dr = load i64, ptr %i.do, align 8, !noalias !181
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc201 unwind label %bb.aw

.noexc201:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197: ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !181
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %i.dv, i64 noundef %i.dq)
          to label %.noexc202 unwind label %bb.aw ; 6 uses

.noexc202:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197
  %i.dx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  store ptr %i.dx, ptr %27, align 8, !alias.scope !181
  %i.dy = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

bb.aa:                                            ; preds = %.noexc202
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8            ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  store ptr null, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !186

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc242
  %.unr = phi ptr [ %i.jp, %.noexc242 ], [ %i.jv, %.prol.preheader ]
  %i.jw = icmp samesign ult i64 %i.js, 7
  br i1 %i.jw, label %.unr-lcssa, label %.noexc242.new

.noexc242.new:                                    ; preds = %.prol.loopexit, %.noexc242.new
  %i.jx = phi ptr [ %i.kn, %.noexc242.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i32 10, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  store ptr null, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  store i32 10, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  store i32 10, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 56
  store ptr null, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  store i32 10, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  store ptr null, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 80
  store i32 10, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 88
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store i32 10, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  store ptr null, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  store i32 10, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 120
  store ptr null, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 128 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jq
  br i1 %i.ko, label %.unr-lcssa, label %.noexc242.new

.unr-lcssa:                                       ; preds = %.noexc242.new, %.prol.loopexit
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jp, ptr %i.kp, align 8
  br label %_ZN10aiMetadata5AllocEj.exit

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %.unr-lcssa, %bb.ba
  %.0.i = phi ptr [ %i.jg, %.unr-lcssa ], [ null, %bb.ba ] ; 4 uses
  %i.kq = load ptr, ptr %i.hq, align 8            ; 2 uses
  %.not507944 = icmp eq ptr %i.kq, %i.ho
  br i1 %.not507944, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10aiMetadata5AllocEj.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %34, i64 4 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  br label %bb.bd

._crit_edge:                                      ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZN10aiMetadata5AllocEj.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ag, i64 1136
  store ptr %.0.i, ptr %i.ku, align 8
  br label %bb.bl

bb.bc:                                            ; preds = %.noexc241, %.noexc240, %bb.bb
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bd:                                            ; preds = %.lr.ph, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.0133946 = phi i32 [ 0, %.lr.ph ], [ %i.md, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 3 uses
  %.sroa.0480.0945 = phi ptr [ %i.kq, %.lr.ph ], [ %i.me, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0480.0945, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0480.0945, i64 64
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0480.0945, i64 72
  %i.kz = load i64, ptr %i.ky, align 8            ; 2 uses
  %i.la = trunc i64 %i.kz to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.kr, i8 0, i64 1024, i1 false)
  %i.lb = and i64 %i.kz, 4294966272
  %.not.i = icmp eq i64 %i.lb, 0
  %spec.select.i = select i1 %.not.i, i32 %i.la, i32 1023 ; 4 uses
  store i32 %spec.select.i, ptr %34, align 4
  %i.lc = load ptr, ptr %i.kx, align 8
  %i.ld = zext i32 %spec.select.i to i64          ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kr, ptr align 1 %i.lc, i64 %i.ld, i1 false)
  %i.le = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ld
  store i8 0, ptr %i.le, align 1
  %i.lf = load i32, ptr %.0.i, align 8
  %.not.i243 = icmp ult i32 %.0133946, %i.lf
  br i1 %.not.i243, label %bb.be, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.be:                                            ; preds = %bb.bd
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0480.0945, i64 40
  %i.lh = load i64, ptr %i.lg, align 8            ; 5 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lj = zext i32 %.0133946 to i64               ; 3 uses
  %i.lk = icmp ugt i64 %i.lh, 1023
  br i1 %i.lk, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ll = load ptr, ptr %i.ks, align 8
  %i.lm = getelementptr inbounds nuw [1028 x i8], ptr %i.ll, i64 %i.lj ; 2 uses
  %i.ln = trunc nuw nsw i64 %i.lh to i32
  store i32 %i.ln, ptr %i.lm, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.lp = load ptr, ptr %i.kw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lo, ptr align 1 %i.lp, i64 %i.lh, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lh
  store i8 0, ptr %i.lq, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.bg, %bb.bf
  %i.lr = load ptr, ptr %i.kt, align 8
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.lj
  store i32 5, ptr %i.ls, align 8
  %i.lt = load ptr, ptr %i.kt, align 8
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8            ; 4 uses
  %.not24.i = icmp eq ptr %i.lw, null
  br i1 %.not24.i, label %.thread29.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.lx = load i32, ptr %i.lu, align 8
  %.not25.i = icmp eq i32 %i.lx, 7
  br i1 %.not25.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.lw, ptr noundef nonnull align 4 dereferenceable(1028) %34, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.bj:                                            ; preds = %bb.bh
  store i32 %spec.select.i, ptr %i.lw, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ly, ptr nonnull align 4 %i.kr, i64 %i.ld, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.ld
  store i8 0, ptr %i.lz, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ma = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #29
          to label %.noexc246 unwind label %bb.bk ; 3 uses

.noexc246:                                        ; preds = %.thread29.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.mb, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.ma, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mb, ptr nonnull align 4 %i.kr, i64 %i.ld, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ld
  store i8 0, ptr %i.mc, align 1
  store ptr %i.ma, ptr %i.lv, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc246, %bb.bj, %bb.bi, %bb.be, %bb.bd
  %i.md = add i32 %.0133946, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.me = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0480.0945) #34 ; 2 uses
  %.not507 = icmp eq ptr %i.me, %i.ho
  br i1 %.not507, label %._crit_edge, label %bb.bd

bb.bk:                                            ; preds = %.thread29.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.bn

bb.bl:                                            ; preds = %._crit_edge, %.loopexit546
  %i.mg = load ptr, ptr %i.hp, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef %i.mg)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread

bb.bn:                                            ; preds = %bb.bc, %bb.bk, %bb.az, %bb.ax
  %.pn154.pn = phi { ptr, i32 } [ %i.jb, %bb.az ], [ %i.ix, %bb.ax ], [ %i.mf, %bb.bk ], [ %i.kv, %bb.bc ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.kg

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.ah, %bb.aj, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.mk = load i8, ptr %i.mj, align 8, !range !32, !noundef !19
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028
  %i.mo = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.mm)
  call fastcc void @_ZN12_GLOBAL__N_122ResolveObjectPlacementER12aiMatrix4x4tIfERKN6Assimp3IFC10Schema_2x318IfcObjectPlacementERNS4_14ConversionDataE(ptr noundef nonnull align 4 dereferenceable(64) %i.mn, ptr noundef nonnull align 8 dereferenceable(9) %i.mo, ptr noundef nonnull align 8 dereferenceable(392) %2)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.mp = load ptr, ptr %1, align 8
  %i.mq = getelementptr i8, ptr %i.mp, i64 -24
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds i8, ptr %1, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i64, ptr %i.mt, align 8            ; 5 uses
  %i.mv = load i64, ptr %i.gq, align 8
  %.not.not.i.i.i247 = icmp eq i64 %i.mv, 0
  br i1 %.not.not.i.i.i247, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.mw = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.sroa.06.0.in.i.i.i263 = phi ptr [ %i.mw, %bb.bq ], [ %.sroa.06.0.i.i.i264, %bb.bs ]
  %.sroa.06.0.i.i.i264 = load ptr, ptr %.sroa.06.0.in.i.i.i263, align 8 ; 4 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.06.0.i.i.i264, null
  br i1 %.not.i.i.i265, label %._crit_edge998, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i264, i64 8
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = icmp eq i64 %i.mu, %i.my
  br i1 %i.mz, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258, label %bb.br, !llvm.loop !39

bb.bt:                                            ; preds = %bb.bp
  %i.na = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.nb = load i64, ptr %i.na, align 8            ; 2 uses
  %i.nc = urem i64 %i.mu, %i.nb                   ; 2 uses
  %i.nd = load ptr, ptr %i.j, align 8
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nc
  %i.nf = load ptr, ptr %i.ne, align 8            ; 2 uses
  %.not.i.i.i.i.i248 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i.i248, label %._crit_edge998, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ng = load ptr, ptr %i.nf, align 8            ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = icmp eq i64 %i.mu, %i.ni
  br i1 %i.nj, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258, label %.lr.ph.i.i.i.i.i249

bb.bv:                                            ; preds = %bb.bw
  %i.nk = icmp eq i64 %i.mu, %i.nn
  br i1 %i.nk, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258, label %.lr.ph.i.i.i.i.i249, !llvm.loop !40

.lr.ph.i.i.i.i.i249:                              ; preds = %bb.bu, %bb.bv
  %.020.i.i.i.i.i250 = phi ptr [ %i.nl, %bb.bv ], [ %i.ng, %bb.bu ]
  %i.nl = load ptr, ptr %.020.i.i.i.i.i250, align 8 ; 4 uses
  %.not18.i.i.i.i.i251 = icmp eq ptr %i.nl, null
  br i1 %.not18.i.i.i.i.i251, label %._crit_edge998, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i249
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  %i.no = urem i64 %i.nn, %i.nb
  %.not19.i.i.i.i.i252 = icmp eq i64 %i.no, %i.nc
  br i1 %.not19.i.i.i.i.i252, label %bb.bv, label %..loopexit_crit_edge21.i.i.i.i.i253, !llvm.loop !40

..loopexit_crit_edge21.i.i.i.i.i253:              ; preds = %bb.bw
  br label %._crit_edge998, !llvm.loop !40

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258: ; preds = %bb.bv, %bb.bs, %bb.bu
  %.sroa.06.1.i.i.i259 = phi ptr [ %.sroa.06.0.i.i.i264, %bb.bs ], [ %i.ng, %bb.bu ], [ %i.nl, %bb.bv ] ; 4 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258
  %.sroa.03.0.in.i.i260 = phi ptr [ %.sroa.06.1.i.i.i259, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i258 ], [ %.sroa.03.0.i.i261, %bb.by ]
  %.sroa.03.0.i.i261 = load ptr, ptr %.sroa.03.0.in.i.i260, align 8 ; 6 uses
  %.not2.i.i262 = icmp eq ptr %.sroa.03.0.i.i261, null
  br i1 %.not2.i.i262, label %.loopexit541, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i261, i64 8
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = icmp eq i64 %i.mu, %i.nq
  br i1 %i.nr, label %bb.bx, label %.loopexit541, !llvm.loop !41

.loopexit541:                                     ; preds = %bb.by, %bb.bx
  %.not508960 = icmp eq ptr %.sroa.06.1.i.i.i259, %.sroa.03.0.i.i261
  br i1 %.not508960, label %._crit_edge998, label %.lr.ph983

.lr.ph983:                                        ; preds = %.loopexit541
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.sroa.8468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.10470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 32
  %.sroa.13472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 48
  %.sroa.16474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 64
  %.sroa.18476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 80
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 96
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.nw = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %38, i64 16
  br label %bb.bz

.lr.ph997:                                        ; preds = %.loopexit525
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028
  br label %bb.eg

bb.bz:                                            ; preds = %.lr.ph983, %.loopexit525
  %.0134981 = phi i1 [ false, %.lr.ph983 ], [ %.7141, %.loopexit525 ] ; 9 uses
  %.sroa.0439.0964 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.0439.5, %.loopexit525 ] ; 17 uses
  %.sroa.18449.0963 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.18449.5, %.loopexit525 ] ; 18 uses
  %.sroa.38.0962 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.38.5, %.loopexit525 ] ; 20 uses
  %.sroa.0426.0961 = phi ptr [ %.sroa.06.1.i.i.i259, %.lr.ph983 ], [ %i.xf, %.loopexit525 ] ; 2 uses
  %i.oa = phi <16 x double> [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %.lr.ph983 ], [ %i.xe, %.loopexit525 ] ; 9 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0426.0961, i64 16
  %i.oc = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.oc, null
  %.pre1398 = load i64, ptr %i.ob, align 8        ; 3 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %.lr.ph.i.i.i267

.lr.ph.i.i.i267:                                  ; preds = %bb.bz, %.lr.ph.i.i.i267
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i267 ], [ %i.oc, %bb.bz ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i267 ], [ %i.fv, %bb.bz ]
  %i.od = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = icmp ult i64 %i.oe, %.pre1398           ; 2 uses
  %.19.i.i.i = select i1 %i.of, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.of, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i268, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, label %.lr.ph.i.i.i267, !llvm.loop !188

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i: ; preds = %.lr.ph.i.i.i267
  %i.og = icmp eq ptr %.19.i.i.i, %i.fv
  br i1 %i.og, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit

_ZNSt3setImSt4lessImESaImEE4findERKm.exit:        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = icmp ult i64 %.pre1398, %i.oi
  br i1 %i.oj, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %.loopexit525

_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, %bb.bz, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %i.ok = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30
  %i.ol = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.ok, i64 noundef %.pre1398)
          to label %bb.ca unwind label %bb.ce     ; 2 uses

bb.ca:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i, label %bb.cb, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ol)
          to label %.noexc271 unwind label %bb.cf

.noexc271:                                        ; preds = %bb.cb
  %.pre.i.i270 = load ptr, ptr %i.om, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectptEv.exit

_ZNK6Assimp4STEP10LazyObjectptEv.exit:            ; preds = %.noexc271, %bb.ca
  %i.oo = phi ptr [ %.pre.i.i270, %.noexc271 ], [ %i.on, %bb.ca ] ; 2 uses
  %i.op = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.oo, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x333IfcRelContainedInSpatialStructureE, i64 -1) #28 ; 4 uses
  %.not164 = icmp eq ptr %i.op, null
  br i1 %.not164, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit283, label %bb.cc

bb.cc:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 208
  %i.or = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x326IfcSpatialStructureElementEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %bb.cd unwind label %bb.cf     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr i8, ptr %i.os, i64 -24
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = getelementptr inbounds i8, ptr %i.or, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = load ptr, ptr %1, align 8
  %i.oz = getelementptr i8, ptr %i.oy, i64 -24
  %i.pa = load i64, ptr %i.oz, align 8
  %i.pb = getelementptr inbounds i8, ptr %1, i64 %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i64, ptr %i.pc, align 8
  %.not169 = icmp eq i64 %i.ox, %i.pd
  br i1 %.not169, label %bb.cg, label %.loopexit525

bb.ce:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.cf:                                            ; preds = %bb.cb, %bb.cc
  %i.pf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.cg:                                            ; preds = %bb.cd
  %i.pg = getelementptr inbounds nuw i8, ptr %i.op, i64 184
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.op, i64 192
  %i.pj = load ptr, ptr %i.pi, align 8            ; 2 uses
  %.not515947 = icmp eq ptr %i.ph, %i.pj
  br i1 %.not515947, label %.loopexit525, label %.lr.ph953

.lr.ph953:                                        ; preds = %bb.cg, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.sroa.0439.1951 = phi ptr [ %.sroa.0439.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0439.0964, %bb.cg ] ; 14 uses
  %.sroa.18449.1950 = phi ptr [ %.sroa.18449.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.18449.0963, %bb.cg ] ; 15 uses
  %.sroa.38.1949 = phi ptr [ %.sroa.38.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.38.0962, %bb.cg ] ; 10 uses
  %.sroa.0421.0948 = phi ptr [ %i.qv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.ph, %bb.cg ] ; 2 uses
  %i.pk = load ptr, ptr %.sroa.0421.0948, align 8 ; 3 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %.lr.ph953
  %i.pm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ci unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  invoke void @__cxa_throw(ptr nonnull %i.pm, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.cp unwind label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ch
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.0.i273 = phi i1 [ false, %bb.cj ], [ true, %bb.ci ] ; 2 uses
  %i.po = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.pp = load ptr, ptr %25, align 8              ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ck
  %i.ps = load i64, ptr %i.pq, align 8
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br i1 %.0.i273, label %bb.cl, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br i1 %.0.i273, label %bb.cl, label %.body

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.pm) #28
  br label %.body

bb.cm:                                            ; preds = %.lr.ph953
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 32 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8            ; 2 uses
  %.not.i.i.i272 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i272, label %bb.cn, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %.noexc274 unwind label %.loopexit526

.noexc274:                                        ; preds = %bb.cn
  %.pre.i.i.i = load ptr, ptr %i.pu, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i:        ; preds = %.noexc274, %bb.cm
  %i.pw = phi ptr [ %.pre.i.i.i, %.noexc274 ], [ %i.pv, %bb.cm ]
  %i.px = call ptr @__dynamic_cast(ptr nonnull %i.pw, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProductE, i64 -1) #28 ; 4 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.co, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcProductEEcvRKS4_Ev.exit

bb.co:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc275 unwind label %.loopexit.split-lp527

.noexc275:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cj
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcProductEEcvRKS4_Ev.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i
  %i.pz = load ptr, ptr %i.px, align 8
  %i.qa = getelementptr i8, ptr %i.pz, i64 -24
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = getelementptr inbounds i8, ptr %i.px, i64 %i.qb
  %i.qd = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.qc, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcOpeningElementE, i64 -1) #28
  %.not170 = icmp eq ptr %i.qd, null
  br i1 %.not170, label %bb.cq, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

.loopexit526:                                     ; preds = %bb.cn
  %lpad.loopexit528 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp527:                            ; preds = %bb.co
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.cq:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcProductEEcvRKS4_Ev.exit
  %i.qe = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(256) %i.px, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef null)
          to label %bb.cr unwind label %.loopexit531 ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  %.not171 = icmp eq ptr %i.qe, null
  br i1 %.not171, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not.i276 = icmp eq ptr %.sroa.18449.1950, %.sroa.38.1949
  br i1 %.not.i276, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.qe, ptr %.sroa.18449.1950, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.18449.1950, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.qg = ptrtoint ptr %.sroa.18449.1950 to i64
  %i.qh = ptrtoint ptr %.sroa.0439.1951 to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 6 uses
  %i.qj = icmp eq i64 %i.qi, 9223372036854775800
  br i1 %i.qj, label %bb.cv, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc278 unwind label %.loopexit.split-lp532

.noexc278:                                        ; preds = %bb.cv
  unreachable

end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.ed

bb.dw:                                            ; preds = %bb.du, %bb.dt
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ed

.loopexit524.loopexit:                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit
  %.pre1402 = load ptr, ptr %36, align 8
  br label %.loopexit524

.loopexit524:                                     ; preds = %.loopexit524.loopexit, %bb.dr, %bb.dg
  %i.wc = phi ptr [ %i.ro, %bb.dg ], [ %i.ro, %bb.dr ], [ %.pre1402, %.loopexit524.loopexit ] ; 2 uses
  %.2136 = phi i1 [ %.0134981, %bb.dg ], [ true, %bb.dr ], [ true, %.loopexit524.loopexit ] ; 2 uses
  %i.wd = phi <16 x double> [ %i.oa, %bb.dg ], [ %i.sw, %bb.dr ], [ %i.sw, %.loopexit524.loopexit ] ; 2 uses
  store ptr null, ptr %36, align 8
  %.not.i.i296 = icmp eq ptr %.sroa.18449.0963, %.sroa.38.0962
  br i1 %.not.i.i296, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.loopexit524
  store ptr %i.wc, ptr %.sroa.18449.0963, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.18449.0963, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

bb.dy:                                            ; preds = %.loopexit524
  %i.wf = ptrtoint ptr %.sroa.18449.0963 to i64
  %i.wg = ptrtoint ptr %.sroa.0439.0964 to i64
  %i.wh = sub i64 %i.wf, %i.wg                    ; 6 uses
  %i.wi = icmp eq i64 %i.wh, 9223372036854775800
  br i1 %i.wi, label %bb.dz, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc297 unwind label %.loopexit.split-lp537

.noexc297:                                        ; preds = %bb.dz
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dy
  %i.wj = ashr exact i64 %i.wh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wj, i64 1)
  %i.wk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.wj ; 2 uses
  %i.wl = icmp ult i64 %i.wk, %i.wj
  %i.wm = call i64 @llvm.umin.i64(i64 %i.wk, i64 1152921504606846975)
  %i.wn = select i1 %i.wl, i64 1152921504606846975, i64 %i.wm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.wn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.wo = shl nuw nsw i64 %i.wn, 3
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #29
          to label %.noexc298 unwind label %.loopexit536 ; 4 uses

.noexc298:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wq = getelementptr inbounds i8, ptr %i.wp, i64 %i.wh ; 2 uses
  store ptr %i.wc, ptr %i.wq, align 8
  %i.wr = icmp sgt i64 %i.wh, 0
  br i1 %i.wr, label %bb.ea, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ea:                                            ; preds = %.noexc298
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wp, ptr align 8 %.sroa.0439.0964, i64 %i.wh, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ea, %.noexc298
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0439.0964, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.0964, i64 noundef %i.wh) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eb, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wn
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

.loopexit536:                                     ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit538 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ed

.loopexit.split-lp537:                            ; preds = %bb.dz
  %lpad.loopexit.split-lp539 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ed

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.dx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.de
  %.sroa.38.4 = phi ptr [ %.sroa.38.0962, %bb.de ], [ %i.wt, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.38.0962, %bb.dx ]
  %.sroa.18449.4 = phi ptr [ %.sroa.18449.0963, %bb.de ], [ %i.ws, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.we, %bb.dx ]
  %.sroa.0439.4 = phi ptr [ %.sroa.0439.0964, %bb.de ], [ %i.wp, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0439.0964, %bb.dx ]
  %.3137 = phi i1 [ %.0134981, %bb.de ], [ %.2136, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.2136, %bb.dx ]
  %i.wu = phi <16 x double> [ %i.oa, %bb.de ], [ %i.wd, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.wd, %bb.dx ]
  %i.wv = load ptr, ptr %38, align 8              ; 3 uses
  %i.ww = load ptr, ptr %i.nv, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wv, %i.ww
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

.lr.ph.i.i.i299:                                  ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i.i299
  %.05.i.i.i = phi ptr [ %i.wx, %.lr.ph.i.i.i299 ], [ %i.wv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #28
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %i.wx, %i.ww
  br i1 %.not.i.i.i300, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i299, !llvm.loop !195

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i299
  %.pr.i = load ptr, ptr %38, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit
  %i.wy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.wv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i
  %i.wz = load ptr, ptr %i.ny, align 8
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xc) #32
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  %i.xd = load ptr, ptr %36, align 8              ; 3 uses
  %.not.i301 = icmp eq ptr %i.xd, null
  br i1 %.not.i301, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i:    ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.xd) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.xd, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.loopexit525

bb.ed:                                            ; preds = %.loopexit536, %.loopexit.split-lp537, %bb.dv, %bb.dw, %bb.dq, %bb.dp
  %.sroa.38.09621338 = phi ptr [ %.sroa.38.0962, %bb.dp ], [ %.sroa.38.0962, %bb.dv ], [ %.sroa.38.0962, %bb.dq ], [ %.sroa.38.0962, %bb.dw ], [ %.sroa.18449.0963, %.loopexit536 ], [ %.sroa.18449.0963, %.loopexit.split-lp537 ]
  %.pn168.pn = phi { ptr, i32 } [ %i.ss, %bb.dp ], [ %i.wa, %bb.dv ], [ %i.st, %bb.dq ], [ %i.wb, %bb.dw ], [ %lpad.loopexit538, %.loopexit536 ], [ %lpad.loopexit.split-lp539, %.loopexit.split-lp537 ]
  call void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.do
  %.sroa.38.09621337 = phi ptr [ %.sroa.38.09621338, %bb.ed ], [ %.sroa.38.0962, %bb.do ]
  %.pn168.pn.pn = phi { ptr, i32 } [ %.pn168.pn, %bb.ed ], [ %i.sr, %bb.do ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dn, %bb.dm
  %.sroa.38.09621336 = phi ptr [ %.sroa.38.09621337, %bb.ee ], [ %.sroa.38.0962, %bb.dn ], [ %.sroa.38.0962, %bb.dm ]
  %.pn168.pn.pn.pn = phi { ptr, i32 } [ %.pn168.pn.pn, %bb.ee ], [ %i.sq, %bb.dn ], [ %i.sp, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.body

.loopexit525:                                     ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.cg, %bb.cd, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, %bb.cz, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %.sroa.38.5 = phi ptr [ %.sroa.38.0962, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.38.0962, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.38.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.38.0962, %bb.cz ], [ %.sroa.38.0962, %bb.cd ], [ %.sroa.38.0962, %bb.cg ], [ %.sroa.38.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18449.5 = phi ptr [ %.sroa.18449.0963, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.18449.0963, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.18449.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.18449.0963, %bb.cz ], [ %.sroa.18449.0963, %bb.cd ], [ %.sroa.18449.0963, %bb.cg ], [ %.sroa.18449.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0439.5 = phi ptr [ %.sroa.0439.0964, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.0439.0964, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.0439.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0439.0964, %bb.cz ], [ %.sroa.0439.0964, %bb.cd ], [ %.sroa.0439.0964, %bb.cg ], [ %.sroa.0439.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.7141 = phi i1 [ %.0134981, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.0134981, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.3137, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.0134981, %bb.cz ], [ %.0134981, %bb.cd ], [ %.0134981, %bb.cg ], [ %.0134981, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.xe = phi <16 x double> [ %i.oa, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %i.oa, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %i.wu, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %i.oa, %bb.cz ], [ %i.oa, %bb.cd ], [ %i.oa, %bb.cg ], [ %i.oa, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.xf = load ptr, ptr %.sroa.0426.0961, align 8 ; 2 uses
  %.not508 = icmp eq ptr %i.xf, %.sroa.03.0.i.i261
  br i1 %.not508, label %.lr.ph997, label %bb.bz, !llvm.loop !196

bb.eg:                                            ; preds = %.lr.ph997, %bb.fn
  %.sroa.0439.7996 = phi ptr [ %.sroa.0439.5, %.lr.ph997 ], [ %.sroa.0439.8, %bb.fn ] ; 10 uses
  %.sroa.18449.7995 = phi ptr [ %.sroa.18449.5, %.lr.ph997 ], [ %.sroa.18449.8, %bb.fn ] ; 11 uses
  %.sroa.38.7994 = phi ptr [ %.sroa.38.5, %.lr.ph997 ], [ %.sroa.38.8, %bb.fn ] ; 15 uses
  %.sroa.0433.0993 = phi ptr [ %.sroa.06.1.i.i.i259, %.lr.ph997 ], [ %i.abh, %bb.fn ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0433.0993, i64 16
  %i.xh = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i302 = icmp eq ptr %i.xh, null
  %.pre1403 = load i64, ptr %i.xg, align 8        ; 4 uses
  br i1 %.not10.i.i.i302, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %.lr.ph.i.i.i303

.lr.ph.i.i.i303:                                  ; preds = %bb.eg, %.lr.ph.i.i.i303
  %.012.i.i.i304 = phi ptr [ %.1.i.i.i309, %.lr.ph.i.i.i303 ], [ %i.xh, %bb.eg ] ; 3 uses
  %.0811.i.i.i305 = phi ptr [ %.19.i.i.i306, %.lr.ph.i.i.i303 ], [ %i.fv, %bb.eg ]
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i.i304, i64 32
  %i.xj = load i64, ptr %i.xi, align 8
  %i.xk = icmp ult i64 %i.xj, %.pre1403           ; 2 uses
  %.19.i.i.i306 = select i1 %i.xk, ptr %.0811.i.i.i305, ptr %.012.i.i.i304 ; 3 uses
  %.1.in.v.i.i.i307 = select i1 %i.xk, i64 24, i64 16
  %.1.in.i.i.i308 = getelementptr inbounds nuw i8, ptr %.012.i.i.i304, i64 %.1.in.v.i.i.i307
  %.1.i.i.i309 = load ptr, ptr %.1.in.i.i.i308, align 8 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %.1.i.i.i309, null
  br i1 %.not.i.i.i310, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311, label %.lr.ph.i.i.i303, !llvm.loop !188

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311: ; preds = %.lr.ph.i.i.i303
  %i.xl = icmp eq ptr %.19.i.i.i306, %i.fv
  br i1 %i.xl, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314

_ZNSt3setImSt4lessImESaImEE4findERKm.exit314:     ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311
  %i.xm = getelementptr inbounds nuw i8, ptr %.19.i.i.i306, i64 32
  %i.xn = load i64, ptr %i.xm, align 8
  %i.xo = icmp ult i64 %.pre1403, %i.xn
  br i1 %i.xo, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %bb.fn

_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311, %bb.eg, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314
  %i.xp = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 112
  %i.xr = load ptr, ptr %i.xq, align 8            ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.xr, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xr, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xs, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.xu = load i64, ptr %i.xt, align 8
  %i.xv = icmp ult i64 %i.xu, %.pre1403           ; 2 uses
  %.19.i.i.i.i = select i1 %i.xv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.xv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i315 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i315, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.xw = icmp eq ptr %.19.i.i.i.i, %i.xs
  br i1 %i.xw, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.xy = load i64, ptr %i.xx, align 8
  %i.xz = icmp ult i64 %.pre1403, %i.xy
  br i1 %i.xz, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.ya = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.yb = load ptr, ptr %i.ya, align 8
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.eh, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread
  %.0.i316 = phi ptr [ %i.yb, %bb.eh ], [ null, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ null, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ], [ null, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0.i316, i64 32 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8            ; 2 uses
  %.not.i.i317 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i317, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i316)
          to label %.noexc319 unwind label %bb.em

.noexc319:                                        ; preds = %bb.ei
  %.pre.i.i318 = load ptr, ptr %i.yc, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %.noexc319, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  %i.ye = phi ptr [ %.pre.i.i318, %.noexc319 ], [ %i.yd, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit ]
  %i.yf = call noundef ptr @__dynamic_cast(ptr nonnull %i.ye, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcRelAggregatesE, i64 -1) #28 ; 4 uses
  %.not159 = icmp eq ptr %i.yf, null
  br i1 %.not159, label %bb.fn, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 168
  %i.yh = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yg)
          to label %bb.el unwind label %bb.em     ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = load i64, ptr %i.yj, align 8
  %i.yl = getelementptr inbounds i8, ptr %i.yh, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i64, ptr %i.ym, align 8
  %i.yo = load ptr, ptr %1, align 8
  %i.yp = getelementptr i8, ptr %i.yo, i64 -24
  %i.yq = load i64, ptr %i.yp, align 8
  %i.yr = getelementptr inbounds i8, ptr %1, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load i64, ptr %i.ys, align 8
  %.not160 = icmp eq i64 %i.yn, %i.yt
  br i1 %.not160, label %bb.en, label %bb.fn

bb.em:                                            ; preds = %bb.ei, %bb.ek
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.yv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %bb.eo unwind label %bb.ev     ; 13 uses

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 unwind label %bb.ew

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.eo
  store ptr %i.yv, ptr %41, align 8
  store i32 14, ptr %i.yv, align 4
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.yw, ptr noundef nonnull align 1 dereferenceable(14) @.str.65, i64 14, i1 false)
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 18
  store i8 0, ptr %i.yx, align 2
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 1096
  store ptr %i.ag, ptr %i.yy, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.yz, ptr noundef nonnull align 4 dereferenceable(64) %i.nz, i64 64, i1 false)
  %i.za = getelementptr inbounds nuw i8, ptr %i.yf, i64 176 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yf, i64 184 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = load ptr, ptr %i.za, align 8
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = call i64 @llvm.smax.i64(i64 %i.zg, i64 -1) ; 2 uses
  %i.zi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zh) #29
          to label %bb.ep unwind label %bb.ex     ; 2 uses

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zi, i8 0, i64 %i.zh, i1 false)
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yv, i64 1112 ; 2 uses
  store ptr %i.zi, ptr %i.zj, align 8
  %i.zk = load ptr, ptr %i.za, align 8            ; 2 uses
  %i.zl = load ptr, ptr %i.zb, align 8            ; 2 uses
  %.not512987 = icmp eq ptr %i.zk, %i.zl
  br i1 %.not512987, label %._crit_edge991, label %.lr.ph990.preheader

.lr.ph990.preheader:                              ; preds = %bb.ep
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yv, i64 1104 ; 2 uses
  br label %.lr.ph990

._crit_edge991:                                   ; preds = %bb.fl, %bb.ep
  store ptr null, ptr %41, align 8
  %.not.i.i328 = icmp eq ptr %.sroa.18449.7995, %.sroa.38.7994
  br i1 %.not.i.i328, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge991
  store ptr %i.yv, ptr %.sroa.18449.7995, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337

bb.er:                                            ; preds = %._crit_edge991
  %i.zn = ptrtoint ptr %.sroa.18449.7995 to i64
  %i.zo = ptrtoint ptr %.sroa.0439.7996 to i64
  %i.zp = sub i64 %i.zn, %i.zo                    ; 6 uses
  %i.zq = icmp eq i64 %i.zp, 9223372036854775800
  br i1 %i.zq, label %bb.es, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc335 unwind label %.loopexit.split-lp520

.noexc335:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329: ; preds = %bb.er
  %i.zr = ashr exact i64 %i.zp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i330 = call i64 @llvm.umax.i64(i64 %i.zr, i64 1)
  %i.zs = add nsw i64 %.sroa.speculated.i.i.i.i330, %i.zr ; 2 uses
  %i.zt = icmp ult i64 %i.zs, %i.zr
  %i.zu = call i64 @llvm.umin.i64(i64 %i.zs, i64 1152921504606846975)
  %i.zv = select i1 %i.zt, i64 1152921504606846975, i64 %i.zu ; 3 uses
  %.not.i.i.i.i331 = icmp ne i64 %i.zv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i331)
  %i.zw = shl nuw nsw i64 %i.zv, 3
  %i.zx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zw) #29
          to label %.noexc336 unwind label %.loopexit519 ; 4 uses

.noexc336:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329
  %i.zy = getelementptr inbounds i8, ptr %i.zx, i64 %i.zp ; 2 uses
  store ptr %i.yv, ptr %i.zy, align 8
  %i.zz = icmp sgt i64 %i.zp, 0
  br i1 %i.zz, label %bb.et, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332

bb.et:                                            ; preds = %.noexc336
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zx, ptr align 8 %.sroa.0439.7996, i64 %i.zp, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332: ; preds = %bb.et, %.noexc336
  %.not.i17.i.i.i333 = icmp eq ptr %.sroa.0439.7996, null
  br i1 %.not.i17.i.i.i333, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.7996, i64 noundef %i.zp) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334: ; preds = %bb.eu, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zv
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337

bb.ev:                                            ; preds = %bb.en
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fm

bb.ew:                                            ; preds = %bb.eo
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef 1144) #32
  br label %bb.fm

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.aad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.lr.ph990:                                        ; preds = %.lr.ph990.preheader, %bb.fl
  %.sroa.0395.0988 = phi ptr [ %i.abf, %bb.fl ], [ %i.zk, %.lr.ph990.preheader ] ; 2 uses
  %i.aae = load ptr, ptr %.sroa.0395.0988, align 8 ; 3 uses
  %i.aaf = icmp eq ptr %i.aae, null
  br i1 %i.aaf, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %.lr.ph990
  %i.aag = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ez unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aag, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  invoke void @__cxa_throw(ptr nonnull %i.aag, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fg unwind label %bb.fb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341: ; preds = %bb.ey
  %i.aah = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.0.i344 = phi i1 [ false, %bb.fa ], [ true, %bb.ez ] ; 2 uses
  %i.aai = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aaj = load ptr, ptr %23, align 8             ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aal = icmp eq ptr %i.aaj, %i.aak
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345: ; preds = %bb.fb
  %i.aam = load i64, ptr %i.aak, align 8
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aan) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i344, label %bb.fc, label %.body349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i344, label %bb.fc, label %.body349

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341
  %.pn10.i342 = phi { ptr, i32 } [ %i.aah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341 ], [ %i.aai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %i.aai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ]
  call void @__cxa_free_exception(ptr %i.aag) #28
  br label %.body349

bb.fd:                                            ; preds = %.lr.ph990
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aae, i64 32 ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8          ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i338, label %bb.fe, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aae)
          to label %.noexc347 unwind label %.loopexit518

.noexc347:                                        ; preds = %bb.fe
  %.pre.i.i.i340 = load ptr, ptr %i.aao, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339:     ; preds = %.noexc347, %bb.fd
  %i.aaq = phi ptr [ %.pre.i.i.i340, %.noexc347 ], [ %i.aap, %bb.fd ]
  %i.aar = call ptr @__dynamic_cast(ptr nonnull %i.aaq, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcObjectDefinitionE, i64 -1) #28 ; 3 uses
  %i.aas = icmp eq ptr %i.aar, null
  br i1 %i.aas, label %bb.ff, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit

bb.ff:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339
  invoke void @__cxa_bad_cast() #30
          to label %.noexc348 unwind label %.loopexit.split-lp

.noexc348:                                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fa
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339
  %i.aat = load ptr, ptr %i.aar, align 8
  %i.aau = getelementptr i8, ptr %i.aat, i64 -24
  %i.aav = load i64, ptr %i.aau, align 8
  %i.aaw = getelementptr inbounds i8, ptr %i.aar, i64 %i.aav
  %i.aax = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.aaw, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProductE, i64 -1) #28 ; 2 uses
  %.not161 = icmp eq ptr %i.aax, null
  br i1 %.not161, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %i.aay = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef nonnull %i.yv, ptr noundef nonnull align 8 dereferenceable(256) %i.aax, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef null)
          to label %bb.fi unwind label %bb.fk     ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %.not163 = icmp eq ptr %i.aay, null
  br i1 %.not163, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aaz = load ptr, ptr %i.zj, align 8
  %i.aba = load i32, ptr %i.zm, align 8           ; 2 uses
  %i.abb = add i32 %i.aba, 1
  store i32 %i.abb, ptr %i.zm, align 8
  %i.abc = zext i32 %i.aba to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abc
  store ptr %i.aay, ptr %i.abd, align 8
  br label %bb.fl

.loopexit518:                                     ; preds = %bb.fe
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.loopexit.split-lp:                               ; preds = %bb.ff
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

bb.fk:                                            ; preds = %bb.fh
  %i.abe = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

bb.fl:                                            ; preds = %bb.fi, %bb.fj, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0395.0988, i64 8 ; 2 uses
  %.not512 = icmp eq ptr %i.abf, %i.zl
  br i1 %.not512, label %._crit_edge991, label %.lr.ph990

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334, %bb.eq
  %.sroa.38.14 = phi ptr [ %i.aaa, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.38.7994, %bb.eq ]
  %.pn513 = phi ptr [ %i.zy, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.18449.7995, %bb.eq ]
  %.sroa.0439.14 = phi ptr [ %i.zx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.0439.7996, %bb.eq ]
  %.sroa.18449.14 = getelementptr inbounds nuw i8, ptr %.pn513, i64 8
  %i.abg = load ptr, ptr %41, align 8             ; 3 uses
  %.not.i351 = icmp eq ptr %i.abg, null
  br i1 %.not.i351, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.abg) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.fn

.loopexit519:                                     ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329
  %lpad.loopexit521 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.loopexit.split-lp520:                            ; preds = %bb.es
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.body349:                                         ; preds = %.loopexit519, %.loopexit.split-lp520, %.loopexit518, %.loopexit.split-lp, %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, %bb.fc, %bb.ex
  %.sroa.38.79941270 = phi ptr [ %.sroa.38.7994, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ], [ %.sroa.38.7994, %.loopexit.split-lp ], [ %.sroa.38.7994, %bb.ex ], [ %.sroa.38.7994, %bb.fk ], [ %.sroa.38.7994, %bb.fc ], [ %.sroa.38.7994, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %.sroa.38.7994, %.loopexit518 ], [ %.sroa.18449.7995, %.loopexit519 ], [ %.sroa.18449.7995, %.loopexit.split-lp520 ]
  %.pn162.pn = phi { ptr, i32 } [ %i.aai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aad, %bb.ex ], [ %i.abe, %bb.fk ], [ %.pn10.i342, %bb.fc ], [ %i.aai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %lpad.loopexit, %.loopexit518 ], [ %lpad.loopexit521, %.loopexit519 ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp520 ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #28
  br label %bb.fm

bb.fm:                                            ; preds = %.body349, %bb.ew, %bb.ev
  %.sroa.38.79941269 = phi ptr [ %.sroa.38.79941270, %.body349 ], [ %.sroa.38.7994, %bb.ew ], [ %.sroa.38.7994, %bb.ev ]
  %.pn162.pn.pn = phi { ptr, i32 } [ %.pn162.pn, %.body349 ], [ %i.aac, %bb.ew ], [ %i.aab, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %.body

bb.fn:                                            ; preds = %bb.el, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353, %bb.ej, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314
  %.sroa.38.8 = phi ptr [ %.sroa.38.7994, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.38.7994, %bb.ej ], [ %.sroa.38.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.38.7994, %bb.el ] ; 2 uses
  %.sroa.18449.8 = phi ptr [ %.sroa.18449.7995, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.18449.7995, %bb.ej ], [ %.sroa.18449.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.18449.7995, %bb.el ] ; 2 uses
  %.sroa.0439.8 = phi ptr [ %.sroa.0439.7996, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.0439.7996, %bb.ej ], [ %.sroa.0439.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.0439.7996, %bb.el ] ; 2 uses
  %i.abh = load ptr, ptr %.sroa.0433.0993, align 8 ; 2 uses
  %.not509 = icmp eq ptr %i.abh, %.sroa.03.0.i.i261
  br i1 %.not509, label %._crit_edge998, label %bb.eg, !llvm.loop !197

._crit_edge998:                                   ; preds = %.lr.ph.i.i.i.i.i249, %bb.br, %bb.fn, %bb.bt, %..loopexit_crit_edge21.i.i.i.i.i253, %.loopexit541
  %.sroa.38.7.lcssa = phi ptr [ %.sroa.38.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %.sroa.18449.7.lcssa = phi ptr [ %.sroa.18449.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %.sroa.0439.7.lcssa = phi ptr [ %.sroa.0439.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 4 uses
  store ptr %3, ptr %i.abi, align 8
  %.not157 = icmp eq ptr %3, null
  br i1 %.not157, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %._crit_edge998
  %i.abj = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %35, ptr %i.abj, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge998
  br i1 %.0116, label %bb.jv, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.abl = load i8, ptr %i.abk, align 8, !range !32, !noundef !19
  %i.abm = trunc nuw i8 %i.abl to i1
  br i1 %i.abm, label %bb.fr, label %_ZN12_GLOBAL__N_128ProcessProductRepresentationERKN6Assimp3IFC10Schema_2x310IfcProductEP6aiNodeRSt6vectorIS7_SaIS7_EERNS1_14ConversionDataE.exit

bb.fr:                                            ; preds = %bb.fq
  %i.abn = load ptr, ptr %1, align 8
  %i.abo = getelementptr i8, ptr %i.abn, i64 -24
  %i.abp = load i64, ptr %i.abo, align 8
  %i.abq = getelementptr inbounds i8, ptr %1, i64 %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load i64, ptr %i.abr, align 8
  %i.abt = invoke noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef %i.abs, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext false)
          to label %.noexc362 unwind label %bb.ju ; 2 uses

.noexc362:                                        ; preds = %bb.fr
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.abv = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 0, ptr %i.abv, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr null, ptr %i.abw, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.abv, ptr %i.abx, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.abv, ptr %i.aby, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.abz, align 8
  %i.aca = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abu)
          to label %bb.fs unwind label %bb.fy     ; 2 uses

bb.fs:                                            ; preds = %.noexc362
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 96 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 104 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8          ; 2 uses
  %i.ace = load ptr, ptr %i.acb, align 8          ; 2 uses
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = ptrtoint ptr %i.ace to i64
  %i.ach = sub i64 %i.acf, %i.acg                 ; 3 uses
  %i.aci = ashr exact i64 %i.ach, 3               ; 2 uses
  %i.acj = icmp ugt i64 %i.aci, 1152921504606846975
  br i1 %i.acj, label %bb.ft, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #30
          to label %.noexc.i361 unwind label %bb.fz

.noexc.i361:                                      ; preds = %bb.ft
  unreachable

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.fs
  %.not.i.i.i.i.i354 = icmp eq ptr %i.acd, %i.ace
  br i1 %.not.i.i.i.i.i354, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ack = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ach) #29
          to label %.noexc48.i unwind label %bb.fz ; 5 uses

.noexc48.i:                                       ; preds = %bb.fu
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.ach ; 2 uses
  store ptr null, ptr %i.ack, align 8
  %i.acm = getelementptr i8, ptr %i.ack, i64 8    ; 3 uses
  %i.acn = add nsw i64 %i.aci, -1                 ; 2 uses
  %i.aco = icmp eq i64 %i.acn, 0
  br i1 %i.aco, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc48.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.acn, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.acm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc48.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.sroa.14.0.i = phi ptr [ %i.acl, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acl, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 2 uses
  %.sroa.0145.0.i = phi ptr [ %i.ack, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ack, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 13 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.acp, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acm, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 8 uses
  %i.acq = load ptr, ptr %i.acb, align 8          ; 2 uses
  %i.acr = load ptr, ptr %i.acc, align 8
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.acs, %i.act
  %i.acv = ashr exact i64 %i.acu, 3               ; 2 uses
  %i.acw = icmp sgt i64 %i.acv, 0
  br i1 %i.acw, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, %.noexc49.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ada, %.noexc49.i ], [ %i.acv, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.acz, %.noexc49.i ], [ %.sroa.0145.0.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.acy, %.noexc49.i ], [ %i.acq, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %i.acx = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i)
          to label %.noexc49.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.i

.noexc49.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.acx, ptr %.0811.i.i.i.i.i.i, align 8
  %i.acy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.acz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ada = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.adb = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.adb, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i, !llvm.loop !198

.loopexit194.i:                                   ; preds = %.noexc49.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i
  %i.adc = ptrtoint ptr %.sroa.0145.0.i to i64    ; 2 uses
  %.not.i.i.i355 = icmp eq ptr %.sroa.0145.0.i, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i355, label %._crit_edge291.i, label %bb.fv

bb.fv:                                            ; preds = %.loopexit194.i
  %i.add = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ade = sub i64 %i.add, %i.adc                 ; 2 uses
  %i.adf = ashr exact i64 %i.ade, 3
  %i.adg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adf, i1 true)
  %i.adh = shl nuw nsw i64 %i.adg, 1
  %i.adi = xor i64 %i.adh, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_(ptr %.sroa.0145.0.i, ptr %.0.i.i.i.i.i.i, i64 noundef %i.adi)
          to label %.noexc52.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc52.i:                                       ; preds = %bb.fv
  %i.adj = icmp sgt i64 %i.ade, 128
  br i1 %i.adj, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.noexc52.i
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0145.0.i, ptr nonnull %i.adk)
          to label %.noexc53.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc53.i:                                       ; preds = %bb.fw
  %.not6.i.i.i.i.i = icmp eq ptr %i.adk, %.0.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %.lr.ph290.i, label %.lr.ph.i.i.i.i.i360

.lr.ph.i.i.i.i.i360:                              ; preds = %.noexc53.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.adv, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i ], [ %i.adk, %.noexc53.i ] ; 5 uses
  %i.adl = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adm = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.adn = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adl)
          to label %.noexc54.i unwind label %.loopexit.split-lp184.loopexit.i

.noexc54.i:                                       ; preds = %.lr.ph.i.i.i.i.i360
  %i.ado = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adm)
          to label %.noexc55.i unwind label %.loopexit.split-lp184.loopexit.i

.noexc55.i:                                       ; preds = %.noexc54.i
  %i.adp = icmp slt i32 %i.adn, %i.ado
  br i1 %i.adp, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i51.i:                             ; preds = %.noexc55.i, %.noexc57.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.06.i.i.i.i.i.i, %.noexc55.i ] ; 4 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ]
  %i.adq = load ptr, ptr %.sroa.0.08.i.i.i.i.i.i, align 8
  store ptr %i.adq, ptr %.sroa.03.07.i.i.i.i.i.i, align 8
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adr = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %i.ads = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adl)
          to label %.noexc56.i unwind label %.loopexit183.i

.noexc56.i:                                       ; preds = %.lr.ph.i.i.i.i.i51.i
  %i.adt = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adr)
          to label %.noexc57.i unwind label %.loopexit183.i

.noexc57.i:                                       ; preds = %.noexc56.i
  %i.adu = icmp slt i32 %i.ads, %i.adt
  br i1 %i.adu, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !199

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i: ; preds = %.noexc57.i, %.noexc55.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ], [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ]
  store ptr %i.adl, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i50.i = icmp eq ptr %i.adv, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i.i50.i, label %.lr.ph290.i, label %.lr.ph.i.i.i.i.i360, !llvm.loop !200

bb.fx:                                            ; preds = %.noexc52.i
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0145.0.i, ptr %.0.i.i.i.i.i.i)
          to label %.lr.ph290.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.lr.ph290.i:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, %bb.fx, %.noexc53.i
  %i.adw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.aee = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.aef = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.aeg = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.aeh = getelementptr inbounds nuw i8, ptr %16, i64 120
  %.sroa.9146.0..sroa_idx147.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.11149.0..sroa_idx150.i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.13152.0..sroa_idx153.i.i = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.19161.0..sroa_idx162.i.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.sroa.21164.0..sroa_idx165.i.i = getelementptr inbounds nuw i8, ptr %15, i64 64
  %.sroa.23167.0..sroa_idx168.i.i = getelementptr inbounds nuw i8, ptr %15, i64 72
  %.sroa.29176.0..sroa_idx177.i.i = getelementptr inbounds nuw i8, ptr %15, i64 96
  %.sroa.31179.0..sroa_idx180.i.i = getelementptr inbounds nuw i8, ptr %15, i64 104
  %.sroa.33182.0..sroa_idx183.i.i = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.aei = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.aeo = getelementptr inbounds nuw i8, ptr %17, i64 32
end_hunk_4
begin_hunk_5_@_ZN6Assimp6Logger12verboseDebugIJPKcRA51_S2_EEEvDpOT_:bb.a
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA51_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(51) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA51_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(51) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(51) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(51) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !233
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !233
  store i8 0, ptr %i.c, align 8, !alias.scope !233
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !233 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !233 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !233 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !233 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !233
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115ProcessMetadataEmRN6Assimp3IFC14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE(i64 noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !19, !align !30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ult i64 %i.g, %0                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.h, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.a, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.c, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEPKT_v.exit

bb.c:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i)
  %.pre.i.i = load ptr, ptr %i.o, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEPKT_v.exit: ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %bb.c ], [ %i.p, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit ]
  %i.r = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.q, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x325IfcRelDefinesByPropertiesE, i64 -1) #28 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEPKT_v.exit
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !19, !align !30 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  %i.u = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcPropertySetDefinitionEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %.not10.i.i.i.i12 = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i12, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24, label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i13
  %.012.i.i.i.i14 = phi ptr [ %.1.i.i.i.i19, %.lr.ph.i.i.i.i13 ], [ %i.ac, %bb.d ] ; 3 uses
  %.0811.i.i.i.i15 = phi ptr [ %.19.i.i.i.i16, %.lr.ph.i.i.i.i13 ], [ %i.ad, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i14, i64 32
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ult i64 %i.af, %i.aa               ; 2 uses
  %.19.i.i.i.i16 = select i1 %i.ag, ptr %.0811.i.i.i.i15, ptr %.012.i.i.i.i14 ; 4 uses
  %.1.in.v.i.i.i.i17 = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i14, i64 %.1.in.v.i.i.i.i17
  %.1.i.i.i.i19 = load ptr, ptr %.1.in.i.i.i.i18, align 8 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %.1.i.i.i.i19, null
  br i1 %.not.i.i.i.i20, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i21, label %.lr.ph.i.i.i.i13, !llvm.loop !42

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i21: ; preds = %.lr.ph.i.i.i.i13
  %i.ah = icmp eq ptr %.19.i.i.i.i16, %i.ad
  br i1 %i.ah, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i22

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i22: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i21
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i16, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ult i64 %i.aa, %i.aj
  br i1 %i.ak, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i22
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i16, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24

_ZNK6Assimp4STEP2DB9GetObjectEm.exit24:           ; preds = %bb.d, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i21, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i22, %bb.e
  %.0.i23 = phi ptr [ %i.am, %bb.e ], [ null, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i22 ], [ null, %bb.d ], [ null, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i21 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i23, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i25, label %bb.f, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x314IfcPropertySetEEEPKT_v.exit

bb.f:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i23)
  %.pre.i.i26 = load ptr, ptr %i.an, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x314IfcPropertySetEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x314IfcPropertySetEEEPKT_v.exit: ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24, %bb.f
  %i.ap = phi ptr [ %.pre.i.i26, %bb.f ], [ %i.ao, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit24 ]
  %i.aq = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.ap, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x314IfcPropertySetE, i64 -1) #28 ; 2 uses
  %.not11 = icmp eq ptr %i.aq, null
  br i1 %.not11, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x314IfcPropertySetEEEPKT_v.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.as, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8
  store i8 0, ptr %i.as, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115ProcessMetadataERKN6Assimp4STEP6ListOfINS1_4LazyINS0_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEERNS4_14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_St4lessISJ_ESaISt4pairIKSJ_SJ_EEERSN_j(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.as
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.as, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8               ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.as
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.bb = load i64, ptr %i.as, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.ay

bb.j:                                             ; preds = %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x314IfcPropertySetEEEPKT_v.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEPKT_v.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122ResolveObjectPlacementER12aiMatrix4x4tIfERKN6Assimp3IFC10Schema_2x318IfcObjectPlacementERNS4_14ConversionDataE(ptr noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(392) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.aiMatrix4x4t, align 8        ; 14 uses
  %4 = alloca %class.aiMatrix4x4t.76, align 16    ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.f, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcLocalPlacementE, i64 -1) #28 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store double 1.000000e+00, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  call void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.s = load <4 x double>, ptr %3, align 8, !noalias !234
  %i.t = fptrunc <4 x double> %i.s to <4 x float>
  store <4 x float> %i.t, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load <4 x double>, ptr %i.p, align 8, !noalias !234
  %i.v = fptrunc <4 x double> %i.u to <4 x float>
  store <4 x float> %i.v, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load <4 x double>, ptr %i.q, align 8, !noalias !234
  %i.x = fptrunc <4 x double> %i.w to <4 x float>
  store <4 x float> %i.x, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = load <4 x double>, ptr %i.r, align 8, !noalias !234
  %i.z = fptrunc <4 x double> %i.y to <4 x float>
  store <4 x float> %i.z, ptr %.sroa.15.0..sroa_idx, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !range !32, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store float 1.000000e+00, ptr %4, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 4
  %i.ak = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  call fastcc void @_ZN12_GLOBAL__N_122ResolveObjectPlacementER12aiMatrix4x4tIfERKN6Assimp3IFC10Schema_2x318IfcObjectPlacementERNS4_14ConversionDataE(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(9) %i.ak, ptr noundef nonnull align 8 dereferenceable(392) %2)
  %i.al = load <4 x float>, ptr %4, align 16
  %i.am = load <4 x float>, ptr %i.ae, align 4
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load <4 x float>, ptr %.sroa.8.0..sroa_idx20, align 8
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ao = load <4 x float>, ptr %.sroa.10.0..sroa_idx22, align 4
  %.sroa.12.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load <4 x float>, ptr %.sroa.12.0..sroa_idx24, align 16
  %i.aq = load <4 x float>, ptr %i.af, align 4
  %i.ar = load <4 x float>, ptr %i.ag, align 8
  %.sroa.18.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.as = load <4 x float>, ptr %.sroa.18.0..sroa_idx30, align 4
  %.sroa.20.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.at = load <4 x float>, ptr %.sroa.20.0..sroa_idx32, align 16
  %.sroa.22.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.au = load <4 x float>, ptr %.sroa.22.0..sroa_idx34, align 4
  %i.av = load <4 x float>, ptr %i.ah, align 8
  %i.aw = load <4 x float>, ptr %i.ai, align 4
  %.sroa.28.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ax = load <4 x float>, ptr %.sroa.28.0..sroa_idx40, align 16
  %.sroa.30.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.30.0.copyload43 = load float, ptr %.sroa.30.0..sroa_idx42, align 4
  %.sroa.32.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.32.0.copyload45 = load float, ptr %.sroa.32.0..sroa_idx44, align 8
  %.sroa.34.0.copyload47 = load float, ptr %i.aj, align 4
  %i.ay = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.az = load <4 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 4 uses
  %i.ba = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = fmul <4 x float> %i.ba, %i.az
  %i.bc = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bc, <4 x float> %i.bb)
  %i.be = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 4 ; 4 uses
  %i.bf = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bf, <4 x float> %i.bd)
  %i.bh = load <4 x float>, ptr %.sroa.15.0..sroa_idx, align 4 ; 4 uses
  %i.bi = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bi, <4 x float> %i.bg)
  store <4 x float> %i.bj, ptr %0, align 4
  %i.bk = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = fmul <4 x float> %i.bk, %i.az
  %i.bm = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bm, <4 x float> %i.bl)
  %i.bo = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bo, <4 x float> %i.bn)
  %i.bq = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bq, <4 x float> %i.bp)
  store <4 x float> %i.br, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bs = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.bs, %i.az
  %i.bu = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bu, <4 x float> %i.bt)
  %i.bw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bw, <4 x float> %i.bv)
  %i.by = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.by, <4 x float> %i.bx)
  store <4 x float> %i.bz, ptr %.sroa.11.0..sroa_idx, align 4
  %i.ca = insertelement <4 x float> poison, float %.sroa.30.0.copyload43, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fmul <4 x float> %i.cb, %i.az
  %i.cd = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.cd, <4 x float> %i.cc)
  %i.cf = insertelement <4 x float> poison, float %.sroa.32.0.copyload45, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.cg, <4 x float> %i.ce)
  %i.ci = insertelement <4 x float> poison, float %.sroa.34.0.copyload47, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.cj, <4 x float> %i.ch)
  store <4 x float> %i.ck, ptr %.sroa.15.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !237 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.cn, ptr %5, align 8, !alias.scope !237
  %i.co = icmp eq ptr %i.cm, null
  br i1 %i.co, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !237
  store i64 %i.cp, ptr %i.b, align 8, !noalias !237
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %5, align 8, !alias.scope !237
  %i.cs = load i64, ptr %i.b, align 8, !noalias !237
  store i64 %i.cs, ptr %i.cn, align 8, !alias.scope !237
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.ct = phi ptr [ %i.cr, %.noexc.i.i ], [ %i.cn, %bb.f ] ; 2 uses
  switch i64 %i.cp, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i8, ptr %i.cm, align 1
  store i8 %i.cu, ptr %i.ct, align 1
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.cv = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !alias.scope !237
  %i.cx = load ptr, ptr %5, align 8, !alias.scope !237
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !237
  %i.cz = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  br i1 %i.cz, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA53_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.da = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA53_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(53) @.str.73, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc13 unwind label %bb.j

.noexc13:                                         ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA53_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA53_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc13, %.noexc
  %i.db = load ptr, ptr %5, align 8               ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cn
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA53_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.dd = load i64, ptr %i.cn, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA53_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.k

bb.j:                                             ; preds = %.noexc12, %bb.i, %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %5, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cn
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.j
  %i.di = load i64, ptr %i.cn, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.df

end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_115ProcessMetadataERKN6Assimp4STEP6ListOfINS1_4LazyINS0_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEERNS4_14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_St4lessISJ_ESaISt4pairIKSJ_SJ_EEERSN_j:bb.a
  %i.bi = add nuw nsw i32 %3, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  br label %bb.b

._crit_edge52:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %.sroa.05.049 = phi ptr [ %i.e, %.lr.ph51 ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ] ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x311IfcPropertyEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.049) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bm = load i64, ptr %i.h, align 8             ; 4 uses
  %.not.not.not = icmp eq i64 %i.bm, 0
  br i1 %.not.not.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.bn = load ptr, ptr %2, align 8, !noalias !267
  store ptr %i.i, ptr %5, align 8, !alias.scope !270
  store i64 0, ptr %i.j, align 8, !alias.scope !270
  store i8 0, ptr %i.i, align 8, !alias.scope !270
  %i.bo = add i64 %i.bm, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bo)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bp = load i64, ptr %i.j, align 8, !alias.scope !270
  %i.bq = sub i64 4611686018427387903, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.bm
  br i1 %i.br, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bn, i64 noundef %i.bm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bt = load i64, ptr %i.j, align 8, !alias.scope !270
  %i.bu = icmp eq i64 %i.bt, 4611686018427387903
  br i1 %i.bu, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.67, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !alias.scope !270 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.by = load i64, ptr %i.i, align 8, !alias.scope !270
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #32
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn132.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ], [ %lpad.phi, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !273 ; 2 uses
  %i.cc = load i64, ptr %i.j, align 8, !noalias !273
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc unwind label %.loopexit.split-lp15

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !273
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.cg, i64 noundef %i.cb)
          to label %.noexc139 unwind label %.loopexit14 ; 6 uses

.noexc139:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.k, ptr %4, align 8, !alias.scope !273
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc139
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = load i64, ptr %i.cl, align 8            ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc139
  store ptr %i.ci, ptr %4, align 8, !alias.scope !273
  %i.cp = load i64, ptr %i.cj, align 8
  store i64 %i.cp, ptr %i.k, align 8, !alias.scope !273
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.k, ptr %4, align 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ct = load i64, ptr %i.cs, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.ct, ptr %i.d, align 8
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.cv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cv, ptr %4, align 8
  %i.cw = load i64, ptr %i.d, align 8
  store i64 %i.cw, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.cx = phi ptr [ %i.cv, %.noexc.i ], [ %i.k, %bb.h ] ; 2 uses
  switch i64 %i.ct, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %.thread
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.cy = load i8, ptr %i.cr, align 1
  store i8 %i.cy, ptr %i.cx, align 1
  br label %.thread

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.cz = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.cz, ptr %i.l, align 8
  %i.da = load ptr, ptr %4, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.critedge

bb.k:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dc = phi i64 [ %i.cm, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.dc, ptr %i.l, align 8, !alias.scope !273
  store ptr %i.cj, ptr %i.ch, align 8
  store i64 0, ptr %i.dd, align 8
  store i8 0, ptr %i.cj, align 8
  %i.de = load ptr, ptr %5, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.i
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.k
  %i.dg = load i64, ptr %i.i, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.di = load ptr, ptr %i.bl, align 8
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %i.bl, i64 %i.dk ; 3 uses
  %i.dm = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.dl, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x322IfcPropertySingleValueE, i64 -1) #28 ; 3 uses
  %.not = icmp eq ptr %i.dm, null
  br i1 %.not, label %bb.bf, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %i.do = load i8, ptr %i.dn, align 8, !range !32, !noundef !19
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.m, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA78_KcEEEvDpOT_.exit

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 120
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  %i.ds = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.dr, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #28 ; 3 uses
  %.not120 = icmp eq ptr %i.ds, null
  br i1 %.not120, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.m, ptr %6, align 8
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = load i64, ptr %i.dv, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.dw, ptr %i.c, align 8
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %.noexc.i143, label %._crit_edge.i.i142

.noexc.i143:                                      ; preds = %bb.n
  %i.dy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc144 unwind label %bb.t  ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.dy, ptr %6, align 8
  %i.dz = load i64, ptr %i.c, align 8
  store i64 %i.dz, ptr %i.m, align 8
  br label %._crit_edge.i.i142

._crit_edge.i.i142:                               ; preds = %.noexc144, %bb.n
  %i.ea = phi ptr [ %i.dy, %.noexc144 ], [ %i.m, %bb.n ] ; 2 uses
  switch i64 %i.dw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i142
  %i.eb = load i8, ptr %i.du, align 1
  store i8 %i.eb, ptr %i.ea, align 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %i.du, i64 %i.dw, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i142
  %i.ec = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.ec, ptr %i.n, align 8
  %i.ed = load ptr, ptr %6, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store i8 0, ptr %i.ee, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.r
  %i.eg = load ptr, ptr %6, align 8               ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.m
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ei = load i64, ptr %i.m, align 8
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA78_KcEEEvDpOT_.exit

.loopexit14:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp15:                             ; preds = %bb.f
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp15, %.loopexit14
  %lpad.phi18 = phi { ptr, i32 } [ %lpad.loopexit16, %.loopexit14 ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp15 ]
  %i.ek = load ptr, ptr %5, align 8               ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.i
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.s
  %i.em = load i64, ptr %i.i, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

bb.t:                                             ; preds = %.noexc.i143
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %6, align 8               ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.m
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.u
  %i.es = load i64, ptr %i.m, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.t
  %.pn132 = phi { ptr, i32 } [ %i.eo, %bb.t ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.ep, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.dc

bb.v:                                             ; preds = %bb.m
  %i.eu = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.dr, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS17PrimitiveDataTypeIdEE, i64 0) #28 ; 2 uses
  %.not121 = icmp eq ptr %i.eu, null
  br i1 %.not121, label %bb.an, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load double, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.ex = fptrunc double %i.ew to float
  %i.ey = fpext float %i.ex to double
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, double noundef %i.ey)
          to label %_ZNSolsEf.exit unwind label %bb.aj ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  store ptr %i.p, ptr %8, align 8, !alias.scope !282
  store i64 0, ptr %i.q, align 8, !alias.scope !282
  store i8 0, ptr %i.p, align 8, !alias.scope !282
  %i.fa = load ptr, ptr %i.r, align 8, !noalias !282 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fa, null
  %i.fb = load ptr, ptr %i.s, align 8, !noalias !282 ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %.08.i.i.i = select i1 %i.fc, ptr %i.fa, ptr %i.fb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNSolsEf.exit
  %i.fd = load ptr, ptr %i.t, align 8, !noalias !282 ; 2 uses
  %i.fe = ptrtoint ptr %.08.i.i.i to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.fd, i64 noundef %i.fg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %8, align 8, !alias.scope !282 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.p
  br i1 %i.fk, label %.body, label %.body.sink.split

bb.aa:                                            ; preds = %_ZNSolsEf.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ab unwind label %bb.ak     ; 9 uses

bb.ab:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fm = load ptr, ptr %i.fl, align 8            ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 4 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  %i.fp = load ptr, ptr %8, align 8               ; 6 uses
  %i.fq = icmp eq ptr %i.fp, %i.p                 ; 2 uses
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ab
  br i1 %i.fq, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ab
  br i1 %i.fq, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fr = load i64, ptr %i.q, align 8             ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 16
end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_:bb.a
  %i.ah = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ae)
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = load ptr, ptr %i.x, align 8
  store ptr %i.ak, ptr %0, align 8
  store ptr %i.aj, ptr %i.x, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.y, align 8
  %i.an = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.al)
  %i.ao = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.am)
  %i.ap = icmp slt i32 %i.an, %i.ao
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.y, align 8
  store ptr %i.ar, ptr %0, align 8
  store ptr %i.aq, ptr %i.y, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.f, align 8
  store ptr %i.as, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.i:                                             ; preds = %.lr.ph40
  %i.at = load ptr, ptr %i.f, align 8
  %i.au = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.at)
  %i.av = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ae)
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = load <2 x ptr>, ptr %0, align 8
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ay, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.x, align 8
  %i.ba = load ptr, ptr %i.y, align 8
  %i.bb = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.az)
  %i.bc = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ba)
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.y, align 8
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.be, ptr %i.y, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.x, align 8
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.be, ptr %i.x, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.p
  %.sroa.010.0.i.i = phi ptr [ %i.bm, %bb.p ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.p ], [ %storemerge2339, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.bm, %bb.n ] ; 9 uses
  %i.bh = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.bh)
  %i.bk = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.bi)
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.n, label %.preheader.i.i, !llvm.loop !332

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.n ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = load ptr, ptr %.sroa.0.1.i.i, align 8
  %i.bp = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.bn)
  %i.bq = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.bo)
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.preheader.i.i, label %bb.o, !llvm.loop !333

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bs, label %bb.p, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEET_SI_SI_T0_.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.bu = load ptr, ptr %.sroa.0.1.i.i, align 8
  store ptr %i.bu, ptr %.sroa.010.1.i.i, align 8
  store ptr %i.bt, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !334

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEET_SI_SI_T0_.exit: ; preds = %bb.o
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2339, i64 noundef %i.v)
  %i.bv = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bw = sub i64 %i.bv, %i.a
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp sgt i64 %i.bx, 16
  br i1 %i.by, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_T0_.exit, !llvm.loop !329

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_SJ_T1_T2_(ptr captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.034 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.034, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.i)
  %i.l = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.j)
  %i.m = icmp slt i32 %i.k, %i.l
  %spec.select = select i1 %i.m, i64 %i.g, i64 %i.e ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.034
  store ptr %i.o, ptr %i.p, align 8
  %i.q = icmp slt i64 %spec.select, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !335

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.r = and i64 %2, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.t = add nsw i64 %2, -2
  %i.u = ashr exact i64 %i.t, 1
  %i.v = icmp eq i64 %.0.lcssa, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = shl nsw i64 %.0.lcssa, 1
  %i.x = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.x, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ab = icmp sgt i64 %.1, %1
  br i1 %i.ab, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_SJ_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ad)
  %i.af = tail call fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %3)
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_SJ_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = load ptr, ptr %i.ac, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = icmp sgt i64 %.0911.i, %1
  br i1 %i.aj, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_SJ_T1_RT2_.exit, !llvm.loop !336

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_SJ_T1_RT2_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %bb.e ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -10, 101) i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr5 = phi ptr [ %i.ae, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr5, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.tr5, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %.val.pre = load ptr, ptr %i.d, align 8         ; 12 uses
  switch i64 %i.f, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.i
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.g = load i128, ptr %.val.pre, align 1
  %i.h = xor i128 %i.g, 129539661129541113361374705744744571213
  %i.i = getelementptr i8, ptr %.val.pre, i64 16
  %i.j = load i32, ptr %i.i, align 1
  %i.k = zext i32 %i.j to i128
  %i.l = xor i128 %i.k, 1852795252
  %i.m = or i128 %i.h, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.tr5, i64 104
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr5, i64 112
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.v = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.z, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcMappedItemE, i64 -1) #28 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !range !32, !noundef !19
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph
  %i.ai = load i64, ptr %.val.pre, align 1
  %i.aj = xor i64 %i.ai, 7237088219868458835
  %i.ak = getelementptr i8, ptr %.val.pre, i64 8
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i64
  %i.an = xor i64 %i.am, 27749
  %i.ao = or i64 %i.aj, %i.an
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.as = load i64, ptr %.val.pre, align 1
  %i.at = xor i64 %i.as, 7813555638078109523
  %i.au = getelementptr i8, ptr %.val.pre, i64 8
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i64
  %i.ax = xor i64 %i.aw, 25705
  %i.ay = or i64 %i.at, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  %spec.select9.i = select i1 %i.bb, i32 -10, i32 0
  br label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.i: ; preds = %.lr.ph
  %i.bc = load i64, ptr %.val.pre, align 1
  %i.bd = icmp ne i64 %i.bc, 7453010364987960387
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  %spec.select10.i = select i1 %i.bf, i32 -5, i32 0
  br label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.i: ; preds = %.lr.ph
  %i.bg = load i32, ptr %.val.pre, align 1
  %i.bh = icmp ne i32 %i.bg, 1885696578
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  %spec.select11.i = select i1 %i.bj, i32 -2, i32 0
  br label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i: ; preds = %.lr.ph
  %i.bk = load i64, ptr %.val.pre, align 1
  %i.bl = xor i64 %i.bk, 7453010313415585602
  %i.bm = getelementptr i8, ptr %.val.pre, i64 3
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 8678228018967700590
  %i.bp = or i64 %i.bl, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  %spec.select12.i = select i1 %i.bs, i32 100, i32 0
  br label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %.lr.ph
  %i.bt = load i32, ptr %.val.pre, align 1
  %i.bu = xor i32 %i.bt, 1987212611
  %i.bv = getelementptr i8, ptr %.val.pre, i64 3
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = xor i32 %i.bw, 1144153462
  %i.by = or i32 %i.bu, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %bcmp.i14.fr.i = freeze i32 %i.ca
  %i.cb = icmp eq i32 %bcmp.i14.fr.i, 0
  %spec.select.i = select i1 %i.cb, i32 100, i32 0
  br label %_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %tailrecurse, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.b, %.lr.ph, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %.2 = phi i32 [ %spec.select9.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i ], [ %spec.select10.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.i ], [ %spec.select.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ], [ %spec.select11.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.i ], [ 0, %bb.a ], [ -3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %spec.select12.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %tailrecurse ], [ 100, %bb.b ], [ 100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x321IfcRepresentationItemE, i64 -1) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x321IfcRepresentationItemEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #30
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x321IfcRepresentationItemEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_7
begin_hunk_8_@_ZN17DeadlyImportErrorC2IJPKcRA34_S1_EEEDpOT_:bb.a
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA34_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(34) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA34_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(34) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #28
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA34_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(34) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(34) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(33) %i.a) #28, !inline_history !365
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32, !inline_history !366
  br label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

_ZN6Assimp14MemoryIOStreamD2Ev.exit:              ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream4ReadEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = udiv i64 %i.e, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 2 uses
  %i.g = mul i64 %.sroa.speculated, %2            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %i.g, i1 false)
  %i.k = load i64, ptr %i.c, align 8
  %i.l = add i64 %i.k, %i.g
  store i64 %i.l, ptr %i.c, align 8
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6Assimp14MemoryIOStream4SeekEm8aiOrigin(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.d, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw i64 %i.f, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.l, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream4TellEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream8FileSizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(44) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA44_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(44) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
end_hunk_8
begin_hunk_9_@_ZN6Assimp6Logger13formatMessageIJRA16_KcEmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA16_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !398
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !398
  store i8 0, ptr %i.c, align 8, !alias.scope !398
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !398 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !398 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !398 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !398 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !398
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{null, null, null, null}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!7 = distinct !{!7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!10 = distinct !{!10, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJRPhRmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!15 = distinct !{!15, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJRPhRmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!16 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = !{}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!22 = distinct !{!22, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!26 = !{!27, !24}
!27 = distinct !{!27, !28, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!28 = distinct !{!28, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!29 = distinct !{!29, !12}
!30 = !{i64 8}
!31 = distinct !{!31, !12}
!32 = !{i8 0, i8 2}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!35 = distinct !{!35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!36 = !{!37, !34}
!37 = distinct !{!37, !38, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!38 = distinct !{!38, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv: argument 0"}
!47 = distinct !{!47, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv"}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv: argument 0"}
!51 = distinct !{!51, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv"}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{null}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{null}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!69 = distinct !{!69, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!72 = distinct !{!72, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!79 = !{!77, !74, !71, !68}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!82 = distinct !{!82, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!85 = distinct !{!85, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!88 = distinct !{!88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!89 = !{!87, !84, !81}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!92 = distinct !{!92, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!95 = distinct !{!95, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!102 = !{!100, !97, !94, !91}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!105 = distinct !{!105, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!108 = distinct !{!108, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!111 = distinct !{!111, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!115 = !{!113, !110, !107, !104}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!118 = distinct !{!118, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!121 = distinct !{!121, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!124 = distinct !{!124, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!127 = distinct !{!127, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!128 = !{!126, !123, !120, !117}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!131 = distinct !{!131, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!134 = distinct !{!134, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = distinct !{!137, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!139, !136, !133, !130}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!144 = distinct !{!144, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!147 = distinct !{!147, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!150 = distinct !{!150, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!154 = !{!152, !149, !146, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!157 = distinct !{!157, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!160 = distinct !{!160, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!163 = distinct !{!163, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = distinct !{!166, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!167 = !{!165, !162, !159, !156}
!168 = !{i64 4}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!171 = distinct !{!171, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!174 = distinct !{!174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!177 = distinct !{!177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!180 = distinct !{!180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!183 = distinct !{!183, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!184 = distinct !{!184, !12}
!185 = distinct !{!185, !12}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.unroll.disable"}
!188 = distinct !{!188, !12}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK12aiMatrix4x4tIfEcvS_IT_EIdEEv: argument 0"}
!191 = distinct !{!191, !"_ZNK12aiMatrix4x4tIfEcvS_IT_EIdEEv"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNK12aiMatrix4x4tIfEcvS_IT_EIdEEv: argument 0"}
!194 = distinct !{!194, !"_ZNK12aiMatrix4x4tIfEcvS_IT_EIdEEv"}
!195 = distinct !{!195, !12}
!196 = distinct !{!196, !12}
!197 = distinct !{!197, !12}
!198 = distinct !{!198, !12}
!199 = distinct !{!199, !12}
!200 = distinct !{!200, !12}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!203 = distinct !{!203, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!204 = distinct !{!204, !12}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv: argument 0"}
!207 = distinct !{!207, !"_ZNK12aiMatrix4x4tIdEcvS_IT_EIfEEv"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!210 = distinct !{!210, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!213 = distinct !{!213, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!216 = distinct !{!216, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!219 = distinct !{!219, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!220 = !{!218, !215, !212, !209}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!223 = distinct !{!223, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!226 = distinct !{!226, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!229 = distinct !{!229, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_9
