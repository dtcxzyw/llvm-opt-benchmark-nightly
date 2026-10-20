Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7cinatra10radix_tree6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvRNS_17coro_http_requestERNS_18coro_http_responseEEES8_:bb.a
_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit323: ; preds = %bb.es, %bb.eq
  %i.sy = invoke noundef i32 @_ZN7cinatra15radix_tree_node11add_handlerESt8functionIFvRNS_17coro_http_requestERNS_18coro_http_responseEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %i.sp, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ew unwind label %bb.fd     ; 2 uses

bb.ew:                                            ; preds = %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit323
  %i.sz = load ptr, ptr %i.am, align 8, !tbaa !314 ; 2 uses
  %.not.i324 = icmp eq ptr %i.sz, null
  br i1 %.not.i324, label %_ZNSt14_Function_baseD2Ev.exit343, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ta = invoke noundef zeroext i1 %i.sz(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit343 unwind label %bb.ey ; 0 uses

bb.ey:                                            ; preds = %bb.ex
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #52
  unreachable

.loopexit.split-lp454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i248, %.noexc11.i.i249, %.noexc10.i.i250, %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.ez:                                            ; preds = %bb.cv
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.fa:                                            ; preds = %bb.cw
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #43
  br label %.body258

.body258:                                         ; preds = %bb.ez, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i256, %bb.fa
  %.pn = phi { ptr, i32 } [ %i.te, %bb.fa ], [ %i.td, %bb.ez ], [ %i.nc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i256 ] ; 2 uses
  %i.tf = load ptr, ptr %17, align 8, !tbaa !287  ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.ae
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %.body258
  %i.th = load i64, ptr %i.ae, align 8, !tbaa !279
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %.body258, %.loopexit.split-lp454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %.body258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %_ZNSt14_Function_baseD2Ev.exit244

.loopexit.split-lp459.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i287, %.noexc11.i.i288, %.noexc10.i.i289, %bb.dq
  %lpad.loopexit.split-lp1614 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.fb:                                            ; preds = %bb.dv
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body297

bb.fc:                                            ; preds = %bb.dw
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  br label %.body297

.body297:                                         ; preds = %bb.fb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i295, %bb.fc
  %.pn136 = phi { ptr, i32 } [ %i.tk, %bb.fc ], [ %i.tj, %bb.fb ], [ %i.qm, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i295 ] ; 2 uses
  %i.tl = load ptr, ptr %20, align 8, !tbaa !287  ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.ai
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %.body297
  %i.tn = load i64, ptr %i.ai, align 8, !tbaa !279
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %.body297, %.loopexit.split-lp459.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %lpad.loopexit.split-lp1614, %.loopexit.split-lp459.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn136, %.body297 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %_ZNSt14_Function_baseD2Ev.exit244

bb.fd:                                            ; preds = %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit323
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tq = load ptr, ptr %i.am, align 8, !tbaa !314 ; 2 uses
  %.not.i332 = icmp eq ptr %i.tq, null
  br i1 %.not.i332, label %_ZNSt14_Function_baseD2Ev.exit244, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.tr = invoke noundef zeroext i1 %i.tq(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit244 unwind label %bb.ff ; 0 uses

bb.ff:                                            ; preds = %bb.fe
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  call void @__clang_call_terminate(ptr %i.tt) #52
  unreachable

bb.fg:                                            ; preds = %_ZN7cinatra15radix_tree_node9get_childEc.exit
  store ptr %i.eo, ptr %5, align 16, !tbaa !2956
  %i.tu = load ptr, ptr %i.o, align 8, !tbaa !328 ; 4 uses
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !328 ; 3 uses
  %.not.i.i.i334 = icmp eq ptr %i.tu, %i.tv
  br i1 %.not.i.i.i334, label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not7.i.i.i = icmp eq ptr %i.tu, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 3 uses
  %i.tx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i335 = icmp eq i8 %i.tx, 0
  br i1 %.not.i.i.i.i335, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ty = load i32, ptr %i.tw, align 4, !tbaa !280
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.tw, align 4, !tbaa !280
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.ua = atomicrmw volatile add ptr %i.tw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !328
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.fk, %bb.fj, %bb.fh
  %i.ub = phi ptr [ %i.tv, %bb.fh ], [ %i.tv, %bb.fj ], [ %.pr.pre.i.i.i, %bb.fk ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ub, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i32 0, ptr %i.uc, align 8, !tbaa !331
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !332
  %i.uh = load ptr, ptr %i.ub, align 8, !tbaa !263
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43, !inline_history !161
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !263
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43, !inline_history !161
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.fn:                                            ; preds = %bb.fl
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i9.i.i.i = icmp eq i8 %i.un, 0
  br i1 %.not.i9.i.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.fp, %bb.fo
  %.0.i.i.i.i.i = phi i32 [ %i.uf, %bb.fo ], [ %i.up, %bb.fp ]
  %i.uq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.uq, label %bb.fq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !284

bb.fq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fm, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.tu, ptr %i.a, align 8, !tbaa !328
  br label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit

_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit: ; preds = %bb.fg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ur = load ptr, ptr %1, align 8, !tbaa !287   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.pre-phi1167
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !279
  %i.uu = icmp eq i8 %i.ut, 58
  br i1 %i.uu, label %bb.fr, label %bb.ge

bb.fr:                                            ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit
  %i.uv = add nsw i32 %.0120, 1                   ; 3 uses
  %i.uw = load ptr, ptr %5, align 16, !tbaa !2956 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !288
  %i.uz = trunc i64 %i.uy to i32
  %i.va = add i32 %.0, 1
  %i.vb = add i32 %i.va, %i.uz                    ; 2 uses
  %i.vc = icmp eq i32 %i.vb, %i.l
  br i1 %i.vc, label %bb.fs, label %_ZNSt14_Function_baseD2Ev.exit343

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false)
  %i.vd = load ptr, ptr %i.ac, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.not.i336 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.not.i336, label %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit341, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ve = invoke noundef zeroext i1 %i.vd(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.fu unwind label %bb.fv     ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.vf = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !306
  store <2 x ptr> %i.vf, ptr %i.ad, align 8, !tbaa !306
  br label %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit341

bb.fv:                                            ; preds = %bb.ft
  %i.vg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vh = load ptr, ptr %i.ad, align 8, !tbaa !314 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i337, label %_ZNSt14_Function_baseD2Ev.exit244, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.vi = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit244 unwind label %bb.fx ; 0 uses

bb.fx:                                            ; preds = %bb.fw
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #52
  unreachable

_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit341: ; preds = %bb.fu, %bb.fs
  %i.vl = invoke noundef i32 @_ZN7cinatra15radix_tree_node11add_handlerESt8functionIFvRNS_17coro_http_requestERNS_18coro_http_responseEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %i.uw, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.fy unwind label %bb.gb     ; 2 uses

bb.fy:                                            ; preds = %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit341
  %i.vm = load ptr, ptr %i.ad, align 8, !tbaa !314 ; 2 uses
  %.not.i342 = icmp eq ptr %i.vm, null
  br i1 %.not.i342, label %_ZNSt14_Function_baseD2Ev.exit343, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.vn = invoke noundef zeroext i1 %i.vm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit343 unwind label %bb.ga ; 0 uses

bb.ga:                                            ; preds = %bb.fz
  %i.vo = landingpad { ptr, i32 }
          catch ptr null
  %i.vp = extractvalue { ptr, i32 } %i.vo, 0
  call void @__clang_call_terminate(ptr %i.vp) #52
  unreachable

bb.gb:                                            ; preds = %_ZNSt8functionIFvRN7cinatra17coro_http_requestERNS0_18coro_http_responseEEEC2ERKS6_.exit341
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load ptr, ptr %i.ad, align 8, !tbaa !314 ; 2 uses
  %.not.i344 = icmp eq ptr %i.vr, null
  br i1 %.not.i344, label %_ZNSt14_Function_baseD2Ev.exit244, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vs = invoke noundef zeroext i1 %i.vr(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit244 unwind label %bb.gd ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.vt = landingpad { ptr, i32 }
          catch ptr null
  %i.vu = extractvalue { ptr, i32 } %i.vt, 0
  call void @__clang_call_terminate(ptr %i.vu) #52
  unreachable

bb.ge:                                            ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit
  %i.vv = load ptr, ptr %5, align 16, !tbaa !2956 ; 15 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 6 uses
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !288 ; 2 uses
  %.not1164 = icmp eq i64 %i.vx, 0
  br i1 %.not1164, label %.critedge.thread1181, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ge
  %i.vy = load ptr, ptr %i.vv, align 8, !tbaa !287
  br label %bb.gf

bb.gf:                                            ; preds = %.lr.ph, %bb.gg
  %indvars.iv = phi i64 [ %.pre-phi1167, %.lr.ph ], [ %indvars.iv.next, %bb.gg ] ; 3 uses
  %.2800 = phi i32 [ %.0, %.lr.ph ], [ %i.we, %bb.gg ]
  %.087799 = phi i64 [ 0, %.lr.ph ], [ %i.wf, %bb.gg ] ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ur, i64 %indvars.iv
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !279
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.087799
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !279
  %i.wd = icmp eq i8 %i.wa, %i.wc
  br i1 %i.wd, label %bb.gg, label %.critedge.thread.loopexit

bb.gg:                                            ; preds = %bb.gf
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.we = add nsw i32 %.2800, 1                   ; 3 uses
  %i.wf = add nuw nsw i64 %.087799, 1             ; 3 uses
  %i.wg = icmp slt i64 %indvars.iv.next, %i.aw
  %i.wh = icmp ult i64 %i.wf, %i.vx               ; 2 uses
  %or.cond = select i1 %i.wg, i1 %i.wh, i1 false
  br i1 %or.cond, label %bb.gf, label %.critedge, !llvm.loop !8440

.critedge:                                        ; preds = %bb.gg
  br i1 %i.wh, label %.critedge.thread, label %.critedge.thread1181

.critedge.thread.loopexit:                        ; preds = %bb.gf
  %i.wi = trunc nsw i64 %indvars.iv to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.2.lcssa1180 = phi i32 [ %i.we, %.critedge ], [ %i.wi, %.critedge.thread.loopexit ]
  %.087.lcssa1178 = phi i64 [ %i.wf, %.critedge ], [ %.087799, %.critedge.thread.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !8458)
  %i.wj = load i64, ptr %i.vw, align 8, !tbaa !288, !noalias !8458 ; 3 uses
  %i.wk = icmp ugt i64 %.087.lcssa1178, %i.wj
  br i1 %i.wk, label %bb.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346

bb.gh:                                            ; preds = %.critedge.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.931, ptr noundef nonnull @.str.1012, i64 noundef %.087.lcssa1178, i64 noundef %i.wj) #54
          to label %.noexc352 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc352:                                        ; preds = %bb.gh
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346: ; preds = %.critedge.thread
  store ptr %i.p, ptr %24, align 8, !tbaa !283, !alias.scope !8458
  %i.wl = load ptr, ptr %i.vv, align 8, !tbaa !287, !noalias !8458
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %.087.lcssa1178 ; 2 uses
  %i.wn = sub nuw i64 %i.wj, %.087.lcssa1178      ; 8 uses
  %i.wo = icmp ugt i64 %i.wn, 15
  br i1 %i.wo, label %bb.gi, label %._crit_edge.i.i.i348

bb.gi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346
  %i.wp = icmp slt i64 %i.wn, 0
  br i1 %i.wp, label %.noexc10.i.i351, label %bb.gj

.noexc10.i.i351:                                  ; preds = %bb.gi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
          to label %.noexc353 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc353:                                        ; preds = %.noexc10.i.i351
  unreachable

bb.gj:                                            ; preds = %bb.gi
  %i.wq = add nuw i64 %i.wn, 1                    ; 2 uses
  %i.wr = icmp slt i64 %i.wq, 0
  br i1 %i.wr, label %.noexc11.i.i350, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349, !prof !284

.noexc11.i.i350:                                  ; preds = %bb.gj
  invoke void @_ZSt17__throw_bad_allocv() #54
          to label %.noexc354 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc354:                                        ; preds = %.noexc11.i.i350
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349: ; preds = %bb.gj
  %i.ws = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wq) #55
          to label %.noexc355 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc355:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349
  store ptr %i.ws, ptr %24, align 8, !tbaa !287, !alias.scope !8458
  store i64 %i.wn, ptr %i.p, align 8, !tbaa !279, !alias.scope !8458
  br label %._crit_edge.i.i.i348

._crit_edge.i.i.i348:                             ; preds = %.noexc355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346
  %i.wt = phi ptr [ %i.ws, %.noexc355 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346 ] ; 3 uses
  switch i64 %i.wn, label %bb.gl [
    i64 1, label %bb.gk
    i64 0, label %bb.gm
  ]

bb.gk:                                            ; preds = %._crit_edge.i.i.i348
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !279
  store i8 %i.wu, ptr %i.wt, align 1, !tbaa !279
  br label %bb.gm

bb.gl:                                            ; preds = %._crit_edge.i.i.i348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.wm, i64 %i.wn, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %._crit_edge.i.i.i348
  store i64 %i.wn, ptr %i.q, align 8, !tbaa !288, !alias.scope !8458
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wn
  store i8 0, ptr %i.wv, align 1, !tbaa !279
  call void @llvm.experimental.noalias.scope.decl(metadata !8459)
  %i.ww = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #55
          to label %.noexc358 unwind label %bb.hz ; 11 uses

.noexc358:                                        ; preds = %bb.gm
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store i32 1, ptr %i.wx, align 8, !tbaa !331, !noalias !8459
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  store i32 1, ptr %i.wy, align 4, !tbaa !332, !noalias !8459
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ww, align 8, !tbaa !263, !noalias !8459
end_hunk_0
begin_hunk_1_@_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm:bb.a
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub i64 %i.p, %i.q
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.l, %i.t                       ; 2 uses
  %.not25.i = icmp ult i64 %i.u, %i.a
  br i1 %.not25.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit, label %bb.e, !llvm.loop !193

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit: ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.g, %bb.b, %bb.c, %bb.d, %bb.f
  %.1.i = phi i64 [ %i.d, %bb.b ], [ -1, %bb.c ], [ %i.r, %bb.f ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %bb.e ]
  ret i64 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #31

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cinatra8split_svESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.4356") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp ne i64 %3, 0                   ; 2 uses
  %i.a = icmp ne i64 %1, 0
  %or.cond15.i.i = select i1 %.not.i.i, i1 %i.a, i1 false
  br i1 %or.cond15.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.01116.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.01116.i.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !279
  %i.d = sext i8 %i.c to i32
  %i.e = tail call ptr @memchr(ptr noundef %4, i32 noundef %i.d, i64 noundef %3) #43
  %.not13.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not13.not.i.i, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.f = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !9432

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.b, %bb.a
  %.2.i.i = phi i64 [ -1, %bb.a ], [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25
  store ptr %i.af, ptr %i.g, align 8
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.ad, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.952, ptr noundef nonnull @.str.951, i64 noundef %i.ao, i64 noundef %1) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25
  %.052 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ], [ %i.ao, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25 ] ; 3 uses
  %.01351 = phi i64 [ %.2.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ], [ %.2.i.i19, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25 ] ; 4 uses
  %i.i = phi ptr [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ], [ %i.af, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25 ] ; 11 uses
  %i.j = phi ptr [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ], [ %i.ae, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25 ] ; 4 uses
  %i.k = phi ptr [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ], [ %i.ad, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25 ] ; 10 uses
  %i.l = sub i64 %.01351, %.052
  %i.m = sub nuw i64 %1, %.052
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.052 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !333
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !515
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.g, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.g, align 8
  store ptr %i.j, ptr %i.h, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #54
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #55
          to label %.noexc15 unwind label %.loopexit ; 5 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.z, align 8, !tbaa !333
  %.sroa.6.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx27, align 8, !tbaa !515
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.k, %.noexc15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2271, !alias.scope !9438
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9436

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %.noexc15 ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.q) #53
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.e
  %i.ad = phi ptr [ %i.y, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.e ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.i, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 3 uses
  %i.ag = icmp eq i64 %.01351, -1
  br i1 %i.ag, label %bb.m, label %bb.k

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %i.g, align 8
  store ptr %i.j, ptr %i.h, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c, %bb.g
  %i.ah = phi ptr [ %i.ae, %bb.c ], [ %i.i, %bb.g ]
  %i.ai = phi ptr [ %i.ad, %bb.c ], [ %i.k, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.aj = phi ptr [ %i.i, %.loopexit ], [ %i.ah, %.loopexit.split-lp ]
  %i.ak = phi ptr [ %i.k, %.loopexit ], [ %i.ai, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i16 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #53
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.ao = add nuw i64 %.01351, 1                  ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %1
  %or.cond15.i.i18 = select i1 %.not.i.i, i1 %i.ap, i1 false
  br i1 %or.cond15.i.i18, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21:   ; preds = %bb.k, %bb.l
  %.01116.i.i22 = phi i64 [ %i.au, %bb.l ], [ %i.ao, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.01116.i.i22
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !279
  %i.as = sext i8 %i.ar to i32
  %i.at = tail call ptr @memchr(ptr noundef %4, i32 noundef %i.as, i64 noundef %3) #43
  %.not13.not.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not13.not.i.i23, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21
  %i.au = add i64 %.01116.i.i22, 1                ; 2 uses
  %exitcond.not.i.i24 = icmp eq i64 %i.au, %1
  br i1 %exitcond.not.i.i24, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21, !llvm.loop !9432

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit25: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21, %bb.l, %bb.k
  %.2.i.i19 = phi i64 [ -1, %bb.k ], [ %.01116.i.i22, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i21 ], [ -1, %bb.l ]
  %.not = icmp ult i64 %.01351, %1
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !9437

bb.m:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  store ptr %i.af, ptr %i.g, align 8
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.ad, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_SL_EEES4_INS8_14_Node_iteratorIS6_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !489
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2271
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2271
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !3266
  %.not = icmp ugt i64 %i.e, 20
  br i1 %.not, label %..critedge_crit_edge, label %bb.b

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1605
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.035.062 = load ptr, ptr %i.f, align 8, !tbaa !489 ; 3 uses
  %i.g = icmp eq ptr %.sroa.035.062, null
  %.pre74 = load i64, ptr %i.b, align 8, !tbaa !333
  %.sroa.01.0.copyload.i.i.fr = freeze i64 %.pre74 ; 6 uses
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !515
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, 0
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.sroa.035.063.us = phi ptr [ %.sroa.035.0.us, %bb.c ], [ %.sroa.035.062, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.035.063.us, i64 8
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.i, align 8, !tbaa !333
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i.us, 0
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %.sroa.035.0.us = load ptr, ptr %.sroa.035.063.us, align 8, !tbaa !489 ; 2 uses
  %i.k = icmp eq ptr %.sroa.035.0.us, null
  br i1 %i.k, label %.critedge, label %.lr.ph.split.us, !llvm.loop !9439

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.035.063 = phi ptr [ %.sroa.035.0, %bb.d ], [ %.sroa.035.062, %.lr.ph ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.035.063, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !333
  %i.m = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %.sroa.0.0.copyload.i.i
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.split
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.035.063, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !515
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.n = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.n, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.035.0 = load ptr, ptr %.sroa.035.063, align 8, !tbaa !489 ; 2 uses
  %i.o = icmp eq ptr %.sroa.035.0, null
  br i1 %i.o, label %.critedge, label %.lr.ph.split, !llvm.loop !9439

.critedge:                                        ; preds = %bb.d, %bb.c, %..critedge_crit_edge, %bb.b
  %i.p = phi i64 [ %.pre, %..critedge_crit_edge ], [ %.sroa.01.0.copyload.i.i.fr, %bb.c ], [ %.sroa.01.0.copyload.i.i.fr, %bb.b ], [ %.sroa.01.0.copyload.i.i.fr, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1604
  %i.s = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.r, i64 noundef %i.p, i64 noundef 3339675911)
          to label %bb.f unwind label %bb.e       ; 4 uses

bb.e:                                             ; preds = %.critedge
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #52
  unreachable

bb.f:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !3234 ; 3 uses
  %i.x = urem i64 %i.s, %i.w                      ; 4 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !3266
  %i.z = icmp ugt i64 %i.y, 20
  br i1 %i.z, label %bb.g, label %.critedge28

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3233
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !505 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !489 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.01.0.copyload.i.i.i.fr.i.i = freeze i64 %.sroa.01.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %i.q, align 8
  %i.ae = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !507 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.h, %bb.k
  %i.af = phi i64 [ %i.al, %bb.k ], [ %.pre26.i.i, %bb.h ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.k ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ag = icmp eq i64 %i.s, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split.us.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.us.i.i = load i64, ptr %i.ah, align 8, !tbaa !333
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.i.i, 0
  br i1 %i.ai, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8, !tbaa !489 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %.critedge28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !507 ; 2 uses
  %i.am = urem i64 %i.al, %i.w
  %.not19.us.i.i = icmp eq i64 %i.am, %i.x
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge28, !llvm.loop !9440

.split.i.i:                                       ; preds = %bb.h, %bb.n
  %i.an = phi i64 [ %i.au, %bb.n ], [ %.pre26.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.as, %bb.n ], [ %i.ad, %bb.h ] ; 4 uses
  %i.ao = icmp eq i64 %i.s, %i.an
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !333
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, label %bb.m

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !515
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.fr.i.i)
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.l, %.split.i.i
  %i.as = load ptr, ptr %.0.i.i, align 8, !tbaa !489 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.as, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !507 ; 2 uses
  %i.av = urem i64 %i.au, %i.w
  %.not19.i.i = icmp eq i64 %i.av, %i.x
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge28, !llvm.loop !9440

.critedge28:                                      ; preds = %bb.m, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f
  %i.aw = invoke ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.x, i64 noundef %i.s, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30: ; preds = %.critedge28
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #53
  resume { ptr, i32 } %i.ax

_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.split.us, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.i
  %.sroa.043.0.ph = phi ptr [ %.sroa.035.063.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.us.i.i, %bb.i ], [ %.sroa.035.063, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #53
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit
  %.sroa.444.055 = phi i8 [ 0, %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit ], [ 1, %.critedge28 ]
  %.sroa.043.053 = phi ptr [ %.sroa.043.0.ph, %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_S4_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit ], [ %i.aw, %.critedge28 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.043.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.444.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7cinatra20coro_http_connection5startEb.resume:resume.entry

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %.thread1304
  %i.yb = tail call ptr @memchr(ptr noundef %.sroa.2.0.copyload.i582, i32 noundef 37, i64 noundef %.sroa.0.0.copyload.i580) #43 ; 2 uses
  %.not.i590 = icmp eq ptr %i.yb, null
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = ptrtoint ptr %.sroa.2.0.copyload.i582 to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %.not241 = icmp eq i64 %i.ye, -1
  %or.cond1413 = select i1 %.not.i590, i1 true, i1 %.not241
  br i1 %or.cond1413, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1084: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 29 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13767)
  store ptr %i.yg, ptr %.reload.addr5122, align 8, !tbaa !283, !alias.scope !13767
  store i64 0, ptr %i.yf, align 16, !tbaa !288, !alias.scope !13767
  store i8 0, ptr %i.yg, align 8, !tbaa !279, !alias.scope !13767
  %.not.i1085 = icmp ugt i64 %i.ya, 15
  br i1 %.not.i1085, label %bb.ez, label %.preheader.i

bb.ez:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1084
  %i.yh = icmp slt i64 %i.ya, 0
  br i1 %i.yh, label %.invoke4131, label %bb.fa

.invoke4131:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1068, %bb.ez
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
          to label %.cont4132 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont4132:                                        ; preds = %.invoke4131
  unreachable

bb.fa:                                            ; preds = %bb.ez
  %.0.i1087 = tail call i64 @llvm.umax.i64(i64 %i.ya, i64 30) ; 2 uses
  %i.yi = add nuw i64 %.0.i1087, 1                ; 2 uses
  %i.yj = icmp slt i64 %i.yi, 0
  br i1 %i.yj, label %.invoke4130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1088, !prof !284

.invoke4130:                                      ; preds = %.from.4395, %.from.4387, %.from.4378, %bb.fa
  invoke void @_ZSt17__throw_bad_allocv() #54
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke4130
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1088: ; preds = %bb.fa
  %i.yk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yi) #55
          to label %.preheader.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader.i.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1088
  store i8 0, ptr %i.yk, align 1, !tbaa !279
  store ptr %i.yk, ptr %.reload.addr5122, align 8, !tbaa !287
  store i64 %.0.i1087, ptr %i.yg, align 8, !tbaa !279
  br label %.from..lr.ph.i

.preheader.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1084
  %.not.i591 = icmp eq i64 %i.ya, 0
  br i1 %.not.i591, label %_ZN10code_utilsL10url_decodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %.preheader.i.thread, %.preheader.i
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 8 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.yp = ptrtoint ptr %.reload.addr5165 to i64   ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %.from.4336, %.from..lr.ph.i
  %.018108.i = phi i64 [ 0, %.from..lr.ph.i ], [ %i.adp, %.from.4336 ] ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i572, i64 %.018108.i
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !279, !noalias !13767 ; 2 uses
  switch i8 %i.yr, label %bb.fv [
    i8 37, label %bb.fc
    i8 43, label %bb.fq
  ]

bb.fc:                                            ; preds = %bb.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %.reload.addr5165, ptr noundef nonnull align 16 dereferenceable(17) @__const._ZN10code_utilsL10url_decodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.hex, i64 17, i1 false), !noalias !13767
  %i.ys = add nuw i64 %.018108.i, 1               ; 2 uses
  %i.yt = icmp eq i64 %i.ys, %i.ya
  br i1 %i.yt, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.yu = load i64, ptr %i.yf, align 16, !tbaa !288, !alias.scope !13767 ; 4 uses
  %i.yv = add i64 %i.yu, 1                        ; 2 uses
  %i.yw = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.yg
  br i1 %i.yx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594: ; preds = %bb.fd
  %i.yy = icmp ult i64 %i.yu, 16
  tail call void @llvm.assume(i1 %i.yy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i592: ; preds = %bb.fd
  %i.yz = load i64, ptr %i.yg, align 8, !tbaa !279, !alias.scope !13767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594
  %i.za = phi i64 [ %i.yz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i592 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594 ]
  %i.zb = icmp ugt i64 %i.yv, %i.za
  br i1 %i.zb, label %bb.fe, label %.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr5122, i64 noundef %i.yu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.from..noexc.i593 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.from..noexc.i593: ; preds = %bb.fe
  %.pre.i.i = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767
  br label %.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.from..noexc.i593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.zc = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.from..noexc.i593 ], [ %i.yw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.yu
  store i8 63, ptr %i.zd, align 1, !tbaa !279
  br label %.critedge.sink.split.i

bb.ff:                                            ; preds = %bb.fc
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i572, i64 %i.ys
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !279, !noalias !13767
  %i.zg = sext i8 %i.zf to i32
  %i.zh = tail call i32 @toupper(i32 noundef %i.zg) #56
  switch i32 %i.zh, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split131.i [
    i32 48, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i
    i32 49, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i
    i32 50, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i
    i32 51, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i
    i32 52, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split.i
    i32 53, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split.i
    i32 54, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split.i
    i32 55, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split.i
    i32 56, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split124.i
    i32 57, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split125.i
    i32 65, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split126.i
    i32 66, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split127.i
    i32 67, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split128.i
    i32 68, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split129.i
    i32 69, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split130.i
    i32 70, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split132.i
  ]

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split125.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split129.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split125.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split129.i, %bb.ff
  %.02946.i.i.i.lcssa110.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split129.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split125.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.fold.split.i ], [ %.reload.addr5165, %bb.ff ]
  %i.zi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa110.i, i64 1
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split126.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split130.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split126.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split130.i, %bb.ff
  %.02946.i.i.i.lcssa111.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split130.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split126.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.fold.split.i ], [ %.reload.addr5165, %bb.ff ]
  %i.zj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa111.i, i64 2
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split127.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split132.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split127.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split132.i, %bb.ff
  %.02946.i.i.i.lcssa112.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split132.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split127.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.fold.split.i ], [ %.reload.addr5165, %bb.ff ]
  %i.zk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa112.i, i64 3
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split124.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split128.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split131.i: ; preds = %bb.ff
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit.i:              ; preds = %bb.ff, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split131.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split128.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split124.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i
  %.028.i.i.i.i = phi ptr [ %i.zj, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit92.i ], [ %i.zi, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit90.i ], [ %i.zk, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.split.loop.exit94.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split.i ], [ %i.yo, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split131.i ], [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split128.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit.fold.split124.i ], [ %.reload.addr5165, %bb.ff ]
  %i.zl = ptrtoint ptr %.028.i.i.i.i to i64
  %i.zm = sub i64 %i.zl, %i.yp
  %i.zn = trunc i64 %i.zm to i32                  ; 2 uses
  %i.zo = add i64 %.018108.i, 2                   ; 3 uses
  %i.zp = icmp eq i64 %i.zo, %i.ya
  br i1 %i.zp, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i
  %i.zq = load i64, ptr %i.yf, align 16, !tbaa !288, !alias.scope !13767 ; 4 uses
  %i.zr = add i64 %i.zq, 1                        ; 2 uses
  %i.zs = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767 ; 2 uses
  %i.zt = icmp eq ptr %i.zs, %i.yg
  br i1 %i.zt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33.i: ; preds = %bb.fg
  %i.zu = icmp ult i64 %i.zq, 16
  tail call void @llvm.assume(i1 %i.zu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %bb.fg
  %i.zv = load i64, ptr %i.yg, align 8, !tbaa !279, !alias.scope !13767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33.i
  %i.zw = phi i64 [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33.i ]
  %i.zx = icmp ugt i64 %i.zr, %i.zw
  br i1 %i.zx, label %bb.fh, label %.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i

bb.fh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr5122, i64 noundef %i.zq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i.from..noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i.from..noexc34.i: ; preds = %bb.fh
  %.pre.i32.i = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767
  br label %.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i

.critedge.sink.split.i.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i.from..noexc34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i
  %i.zy = phi ptr [ %.pre.i32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit35.i.from..noexc34.i ], [ %i.zs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i31.i ]
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zq
  store i8 63, ptr %i.zz, align 1, !tbaa !279
  br label %.critedge.sink.split.i

bb.fi:                                            ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i572, i64 %i.zo
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !279, !noalias !13767
  %i.aac = sext i8 %i.aab to i32
  %i.aad = tail call i32 @toupper(i32 noundef %i.aac) #56
  switch i32 %i.aad, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split140.i [
    i32 48, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i
    i32 49, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i
    i32 50, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i
    i32 51, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i
    i32 52, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split.i
    i32 53, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split.i
    i32 54, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split.i
    i32 55, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split.i
    i32 56, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split133.i
    i32 57, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split134.i
    i32 65, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split135.i
    i32 66, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split136.i
    i32 67, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split137.i
    i32 68, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split138.i
    i32 69, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split139.i
    i32 70, label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split141.i
  ]

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split134.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split138.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split134.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split138.i, %bb.fi
  %.02946.i.i.i45.lcssa113.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split138.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split134.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.fold.split.i ], [ %.reload.addr5165, %bb.fi ]
  %i.aae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i45.lcssa113.i, i64 1
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split135.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split139.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split135.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split139.i, %bb.fi
  %.02946.i.i.i45.lcssa114.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split139.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split135.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.fold.split.i ], [ %.reload.addr5165, %bb.fi ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i45.lcssa114.i, i64 2
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split136.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split141.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i: ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split136.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split141.i, %bb.fi
  %.02946.i.i.i45.lcssa115.i = phi ptr [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split141.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split136.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.fold.split.i ], [ %.reload.addr5165, %bb.fi ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i45.lcssa115.i, i64 3
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split133.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split137.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split140.i: ; preds = %bb.fi
  br label %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i

_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i:            ; preds = %bb.fi, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split140.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split137.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split133.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i
  %.028.i.i.i39.i = phi ptr [ %i.aaf, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit102.i ], [ %i.aae, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit100.i ], [ %i.aag, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.split.loop.exit104.i ], [ %i.yn, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split.i ], [ %i.yo, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split140.i ], [ %i.yl, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split137.i ], [ %i.ym, %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i.from._ZSt4findIPKciET_S2_S2_RKT0_.exit51.fold.split133.i ], [ %.reload.addr5165, %bb.fi ]
  %i.aah = ptrtoint ptr %.028.i.i.i39.i to i64
  %i.aai = sub i64 %i.aah, %i.yp
  %i.aaj = trunc i64 %i.aai to i32                ; 2 uses
  %i.aak = icmp slt i32 %i.zn, 16
  %i.aal = icmp slt i32 %i.aaj, 16
  %or.cond.not.i = and i1 %i.aak, %i.aal
  br i1 %or.cond.not.i, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i
  %i.aam = load i64, ptr %i.yf, align 16, !tbaa !288, !alias.scope !13767 ; 4 uses
  %i.aan = add i64 %i.aam, 1                      ; 2 uses
  %i.aao = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.yg
  br i1 %i.aap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i: ; preds = %bb.fj
  %i.aaq = icmp ult i64 %i.aam, 16
  tail call void @llvm.assume(i1 %i.aaq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.fj
  %i.aar = load i64, ptr %i.yg, align 8, !tbaa !279, !alias.scope !13767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i
  %i.aas = phi i64 [ %i.aar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i ]
  %i.aat = icmp ugt i64 %i.aan, %i.aas
  br i1 %i.aat, label %bb.fk, label %.critedge.sink.split.i.from.

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr5122, i64 noundef %i.aam, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.from..noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.from..noexc56.i:                                 ; preds = %bb.fk
  %.pre.i54.i = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767
  br label %.critedge.sink.split.i.from.

bb.fl:                                            ; preds = %_ZSt4findIPKciET_S2_S2_RKT0_.exit51.i
  %i.aau = shl i32 %i.zn, 4
  %i.aav = add nsw i32 %i.aau, %i.aaj
  %i.aaw = trunc i32 %i.aav to i8
  %i.aax = load i64, ptr %i.yf, align 16, !tbaa !288, !alias.scope !13767 ; 6 uses
  %i.aay = add i64 %i.aax, 1                      ; 8 uses
  %i.aaz = load ptr, ptr %.reload.addr5122, align 8, !tbaa !287, !alias.scope !13767 ; 6 uses
  %i.aba = icmp eq ptr %i.aaz, %i.yg              ; 2 uses
  br i1 %i.aba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i: ; preds = %bb.fl
  %i.abb = icmp samesign ult i64 %i.aax, 16
  tail call void @llvm.assume(i1 %i.abb)
  %i.abc = icmp samesign ugt i64 %i.aay, 15
  br i1 %i.abc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1068, label %.from..thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i.thread: ; preds = %bb.fl
  %i.abd = load i64, ptr %i.yg, align 8, !tbaa !279, !alias.scope !13767 ; 2 uses
  %i.abe = icmp ugt i64 %i.aay, %i.abd
  br i1 %i.abe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1068, label %.from..thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1068: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i
  %i.abf = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i ], [ %i.abd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i59.i.thread ] ; 2 uses
  %i.abg = icmp slt i64 %i.aay, 0
  br i1 %i.abg, label %.invoke4131, label %bb.fm

bb.fm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1068
  %i.abh = icmp ugt i64 %i.aay, %i.abf
  br i1 %i.abh, label %bb.fn, label %.from.4378

bb.fn:                                            ; preds = %bb.fm
  %i.abi = shl nuw i64 %i.abf, 1                  ; 2 uses
  %i.abj = icmp ult i64 %i.aay, %i.abi
  br i1 %i.abj, label %.from.4375, label %.from.4378

.from.4375:                                       ; preds = %bb.fn
  %spec.store.select.i.i1077 = tail call i64 @llvm.umin.i64(i64 %i.abi, i64 9223372036854775807)
  br label %.from.4378

.from.4378:                                       ; preds = %bb.fn, %bb.fm, %.from.4375
  %.0.i1069 = phi i64 [ %spec.store.select.i.i1077, %.from.4375 ], [ %i.aay, %bb.fm ], [ %i.aay, %bb.fn ] ; 2 uses
  %i.abk = add nuw i64 %.0.i1069, 1               ; 2 uses
  %i.abl = icmp slt i64 %i.abk, 0
  br i1 %i.abl, label %.invoke4130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1070, !prof !284

end_hunk_2
