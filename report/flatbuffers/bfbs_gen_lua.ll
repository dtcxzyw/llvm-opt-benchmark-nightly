Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/bfbs_gen_lua?download=true
inline.NumInlined: 2788
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13EmitCodeBlockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_S9_:bb.a
  %i.ud = icmp ult i64 %i.uc, %i.ua
  br i1 %i.ud, label %.invoke680, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i337

.invoke680:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit276, %._crit_edge, %_ZNK10reflection6Schema10root_tableEv.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.cont681 unwind label %bb.az

.cont681:                                         ; preds = %.invoke680
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit276
  %i.ue = load ptr, ptr %1, align 8, !tbaa !40
  %i.uf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ue, i64 noundef %i.ua)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit340 unwind label %bb.az ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i337
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.ug = load ptr, ptr %2, align 8, !tbaa !40, !noalias !424
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !16, !noalias !424 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.uj, ptr %23, align 8, !tbaa !13, !alias.scope !425
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i64 0, ptr %i.uk, align 8, !tbaa !16, !alias.scope !425
  store i8 0, ptr %i.uj, align 8, !tbaa !17, !alias.scope !425
  %i.ul = add i64 %i.ui, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.ul)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit340
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !16, !alias.scope !425
  %i.un = add i64 %i.um, -4611686018427387897
  %i.uo = icmp ult i64 %i.un, 7
  br i1 %i.uo, label %.invoke.i.i347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i344: ; preds = %bb.bv
  %i.up = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.55, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i345 unwind label %bb.bw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i345: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i344
  %i.uq = load i64, ptr %i.uk, align 8, !tbaa !16, !alias.scope !425
  %i.ur = sub i64 4611686018427387903, %i.uq
  %i.us = icmp ult i64 %i.ur, %i.ui
  br i1 %i.us, label %.invoke.i.i347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i346

.invoke.i.i347:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i345, %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.cont.i.i348 unwind label %bb.bw

.cont.i.i348:                                     ; preds = %.invoke.i.i347
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i345
  %i.ut = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.ug, i64 noundef %i.ui)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit351 unwind label %bb.bw ; 0 uses

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i346, %.invoke.i.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit340
  %i.uu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uv = load ptr, ptr %23, align 8, !tbaa !40, !alias.scope !425 ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.uj
  br i1 %i.uw, label %.body349, label %.body349.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit351: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i346
  %i.ux = load i64, ptr %i.uk, align 8, !tbaa !16 ; 2 uses
  %i.uy = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.uz = sub i64 4611686018427387903, %i.uy
  %i.va = icmp ult i64 %i.uz, %i.ux
  br i1 %i.va, label %bb.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i352

bb.bx:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit351
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.noexc353 unwind label %bb.cc

.noexc353:                                        ; preds = %bb.bx
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i352: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit351
  %i.vb = load ptr, ptr %23, align 8, !tbaa !40
  %i.vc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.vb, i64 noundef %i.ux)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit355 unwind label %bb.cc ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i352
  %i.vd = load ptr, ptr %23, align 8, !tbaa !40   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.uj
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit355
  %i.vf = load i64, ptr %i.uj, align 8, !tbaa !17
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.vh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.vh, ptr %24, align 8, !tbaa !13
  %i.vi = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.vj = load i64, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.vj, ptr %i.a, align 8, !tbaa !41
  %i.vk = icmp ugt i64 %i.vj, 15
  br i1 %i.vk, label %.noexc.i360, label %._crit_edge.i.i359

.noexc.i360:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %i.vl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc361 unwind label %bb.cd ; 2 uses

.noexc361:                                        ; preds = %.noexc.i360
  store ptr %i.vl, ptr %24, align 8, !tbaa !40
  %i.vm = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.vm, ptr %i.vh, align 8, !tbaa !17
  br label %._crit_edge.i.i359

._crit_edge.i.i359:                               ; preds = %.noexc361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %i.vn = phi ptr [ %i.vl, %.noexc361 ], [ %i.vh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ] ; 2 uses
  switch i64 %i.vj, label %bb.bz [
    i64 1, label %bb.by
    i64 0, label %bb.ca
  ]

bb.by:                                            ; preds = %._crit_edge.i.i359
  %i.vo = load i8, ptr %i.vi, align 1, !tbaa !17
  store i8 %i.vo, ptr %i.vn, align 1, !tbaa !17
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i359
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vn, ptr align 1 %i.vi, i64 %i.vj, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge.i.i359
  %i.vp = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !16
  %i.vr = load ptr, ptr %24, align 8, !tbaa !40
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vp
  store i8 0, ptr %i.vs, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.vt = load i64, ptr %i.e, align 8, !tbaa !16
  %i.vu = icmp eq i64 %i.vt, 0
  br i1 %i.vu, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.vv = load i64, ptr %i.vq, align 8, !tbaa !16
  %i.vw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef %i.vv, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ce ; 0 uses

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i352, %bb.bx
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vy = load ptr, ptr %23, align 8, !tbaa !40   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.uj
  br i1 %i.vz, label %.body349, label %.body349.sink.split

.body349.sink.split:                              ; preds = %bb.cc, %bb.bw
  %.sink821 = phi ptr [ %i.uv, %bb.bw ], [ %i.vy, %bb.cc ]
  %.pn68.ph = phi { ptr, i32 } [ %i.uu, %bb.bw ], [ %i.vx, %bb.cc ]
  %i.wa = load i64, ptr %i.uj, align 8, !tbaa !17
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %.sink821, i64 noundef %i.wb) #23
  br label %.body349

.body349:                                         ; preds = %.body349.sink.split, %bb.cc, %bb.bw
  %.pn68 = phi { ptr, i32 } [ %i.uu, %bb.bw ], [ %i.vx, %bb.cc ], [ %.pn68.ph, %.body349.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.cz

bb.cd:                                            ; preds = %.noexc.i360
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

bb.ce:                                            ; preds = %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cf:                                            ; preds = %bb.ca
  %i.we = load ptr, ptr %24, align 8, !tbaa !40   ; 44 uses
  %i.wf = load i64, ptr %i.vq, align 8, !tbaa !16 ; 9 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wf
  %.not6.i = icmp samesign eq i64 %i.wf, 0
  br i1 %.not6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %iter.check

iter.check:                                       ; preds = %bb.cf
  %min.iters.check = icmp ult i64 %i.wf, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check682 = icmp ult i64 %i.wf, 32
  br i1 %min.iters.check682, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.wh = and i64 %i.wf, 24
  %n.vec = and i64 %i.wf, -32                     ; 4 uses
  %i.wi = getelementptr i8, ptr %i.we, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue776
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue776 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.we, i64 %index ; 3 uses
  %i.wj = getelementptr i8, ptr %i.we, i64 %index
  %next.gep683 = getelementptr i8, ptr %i.wj, i64 1
  %i.wk = getelementptr i8, ptr %i.we, i64 %index
  %next.gep684 = getelementptr i8, ptr %i.wk, i64 2
  %i.wl = getelementptr i8, ptr %i.we, i64 %index
  %next.gep685 = getelementptr i8, ptr %i.wl, i64 3
  %i.wm = getelementptr i8, ptr %i.we, i64 %index
  %next.gep686 = getelementptr i8, ptr %i.wm, i64 4
  %i.wn = getelementptr i8, ptr %i.we, i64 %index
  %next.gep687 = getelementptr i8, ptr %i.wn, i64 5
  %i.wo = getelementptr i8, ptr %i.we, i64 %index
  %next.gep688 = getelementptr i8, ptr %i.wo, i64 6
  %i.wp = getelementptr i8, ptr %i.we, i64 %index
  %next.gep689 = getelementptr i8, ptr %i.wp, i64 7
  %i.wq = getelementptr i8, ptr %i.we, i64 %index
  %next.gep690 = getelementptr i8, ptr %i.wq, i64 8
  %i.wr = getelementptr i8, ptr %i.we, i64 %index
  %next.gep691 = getelementptr i8, ptr %i.wr, i64 9
  %i.ws = getelementptr i8, ptr %i.we, i64 %index
  %next.gep692 = getelementptr i8, ptr %i.ws, i64 10
  %i.wt = getelementptr i8, ptr %i.we, i64 %index
  %next.gep693 = getelementptr i8, ptr %i.wt, i64 11
  %i.wu = getelementptr i8, ptr %i.we, i64 %index
  %next.gep694 = getelementptr i8, ptr %i.wu, i64 12
  %i.wv = getelementptr i8, ptr %i.we, i64 %index
  %next.gep695 = getelementptr i8, ptr %i.wv, i64 13
  %i.ww = getelementptr i8, ptr %i.we, i64 %index
  %next.gep696 = getelementptr i8, ptr %i.ww, i64 14
  %i.wx = getelementptr i8, ptr %i.we, i64 %index
  %next.gep697 = getelementptr i8, ptr %i.wx, i64 15
  %i.wy = getelementptr i8, ptr %i.we, i64 %index
  %next.gep698 = getelementptr i8, ptr %i.wy, i64 16
  %i.wz = getelementptr i8, ptr %i.we, i64 %index
  %next.gep699 = getelementptr i8, ptr %i.wz, i64 17
  %i.xa = getelementptr i8, ptr %i.we, i64 %index
  %next.gep700 = getelementptr i8, ptr %i.xa, i64 18
  %i.xb = getelementptr i8, ptr %i.we, i64 %index
  %next.gep701 = getelementptr i8, ptr %i.xb, i64 19
  %i.xc = getelementptr i8, ptr %i.we, i64 %index
  %next.gep702 = getelementptr i8, ptr %i.xc, i64 20
  %i.xd = getelementptr i8, ptr %i.we, i64 %index
  %next.gep703 = getelementptr i8, ptr %i.xd, i64 21
  %i.xe = getelementptr i8, ptr %i.we, i64 %index
  %next.gep704 = getelementptr i8, ptr %i.xe, i64 22
  %i.xf = getelementptr i8, ptr %i.we, i64 %index
  %next.gep705 = getelementptr i8, ptr %i.xf, i64 23
  %i.xg = getelementptr i8, ptr %i.we, i64 %index
  %next.gep706 = getelementptr i8, ptr %i.xg, i64 24
  %i.xh = getelementptr i8, ptr %i.we, i64 %index
  %next.gep707 = getelementptr i8, ptr %i.xh, i64 25
  %i.xi = getelementptr i8, ptr %i.we, i64 %index
  %next.gep708 = getelementptr i8, ptr %i.xi, i64 26
  %i.xj = getelementptr i8, ptr %i.we, i64 %index
  %next.gep709 = getelementptr i8, ptr %i.xj, i64 27
  %i.xk = getelementptr i8, ptr %i.we, i64 %index
  %next.gep710 = getelementptr i8, ptr %i.xk, i64 28
  %i.xl = getelementptr i8, ptr %i.we, i64 %index
  %next.gep711 = getelementptr i8, ptr %i.xl, i64 29
  %i.xm = getelementptr i8, ptr %i.we, i64 %index
  %next.gep712 = getelementptr i8, ptr %i.xm, i64 30
  %i.xn = getelementptr i8, ptr %i.we, i64 %index
  %next.gep713 = getelementptr i8, ptr %i.xn, i64 31
  %i.xo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load714 = load <16 x i8>, ptr %i.xo, align 1, !tbaa !17
  %i.xp = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.xq = icmp eq <16 x i8> %wide.load714, splat (i8 46) ; 16 uses
  %i.xr = extractelement <16 x i1> %i.xp, i64 0
  br i1 %i.xr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.xs = extractelement <16 x i1> %i.xp, i64 1
  br i1 %i.xs, label %pred.store.if715, label %pred.store.continue716

pred.store.if715:                                 ; preds = %pred.store.continue
  store i8 47, ptr %next.gep683, align 1, !tbaa !17
  br label %pred.store.continue716

pred.store.continue716:                           ; preds = %pred.store.if715, %pred.store.continue
  %i.xt = extractelement <16 x i1> %i.xp, i64 2
  br i1 %i.xt, label %pred.store.if717, label %pred.store.continue718

pred.store.if717:                                 ; preds = %pred.store.continue716
  store i8 47, ptr %next.gep684, align 1, !tbaa !17
  br label %pred.store.continue718

pred.store.continue718:                           ; preds = %pred.store.if717, %pred.store.continue716
  %i.xu = extractelement <16 x i1> %i.xp, i64 3
  br i1 %i.xu, label %pred.store.if719, label %pred.store.continue720

pred.store.if719:                                 ; preds = %pred.store.continue718
  store i8 47, ptr %next.gep685, align 1, !tbaa !17
  br label %pred.store.continue720

pred.store.continue720:                           ; preds = %pred.store.if719, %pred.store.continue718
  %i.xv = extractelement <16 x i1> %i.xp, i64 4
  br i1 %i.xv, label %pred.store.if721, label %pred.store.continue722

pred.store.if721:                                 ; preds = %pred.store.continue720
  store i8 47, ptr %next.gep686, align 1, !tbaa !17
  br label %pred.store.continue722

pred.store.continue722:                           ; preds = %pred.store.if721, %pred.store.continue720
  %i.xw = extractelement <16 x i1> %i.xp, i64 5
  br i1 %i.xw, label %pred.store.if723, label %pred.store.continue724

pred.store.if723:                                 ; preds = %pred.store.continue722
  store i8 47, ptr %next.gep687, align 1, !tbaa !17
  br label %pred.store.continue724

pred.store.continue724:                           ; preds = %pred.store.if723, %pred.store.continue722
  %i.xx = extractelement <16 x i1> %i.xp, i64 6
  br i1 %i.xx, label %pred.store.if725, label %pred.store.continue726

pred.store.if725:                                 ; preds = %pred.store.continue724
  store i8 47, ptr %next.gep688, align 1, !tbaa !17
  br label %pred.store.continue726

pred.store.continue726:                           ; preds = %pred.store.if725, %pred.store.continue724
  %i.xy = extractelement <16 x i1> %i.xp, i64 7
  br i1 %i.xy, label %pred.store.if727, label %pred.store.continue728

pred.store.if727:                                 ; preds = %pred.store.continue726
  store i8 47, ptr %next.gep689, align 1, !tbaa !17
  br label %pred.store.continue728

pred.store.continue728:                           ; preds = %pred.store.if727, %pred.store.continue726
  %i.xz = extractelement <16 x i1> %i.xp, i64 8
  br i1 %i.xz, label %pred.store.if729, label %pred.store.continue730

pred.store.if729:                                 ; preds = %pred.store.continue728
  store i8 47, ptr %next.gep690, align 1, !tbaa !17
  br label %pred.store.continue730

pred.store.continue730:                           ; preds = %pred.store.if729, %pred.store.continue728
  %i.ya = extractelement <16 x i1> %i.xp, i64 9
  br i1 %i.ya, label %pred.store.if731, label %pred.store.continue732

pred.store.if731:                                 ; preds = %pred.store.continue730
  store i8 47, ptr %next.gep691, align 1, !tbaa !17
  br label %pred.store.continue732

pred.store.continue732:                           ; preds = %pred.store.if731, %pred.store.continue730
  %i.yb = extractelement <16 x i1> %i.xp, i64 10
  br i1 %i.yb, label %pred.store.if733, label %pred.store.continue734

pred.store.if733:                                 ; preds = %pred.store.continue732
  store i8 47, ptr %next.gep692, align 1, !tbaa !17
  br label %pred.store.continue734

pred.store.continue734:                           ; preds = %pred.store.if733, %pred.store.continue732
  %i.yc = extractelement <16 x i1> %i.xp, i64 11
  br i1 %i.yc, label %pred.store.if735, label %pred.store.continue736

pred.store.if735:                                 ; preds = %pred.store.continue734
  store i8 47, ptr %next.gep693, align 1, !tbaa !17
  br label %pred.store.continue736

pred.store.continue736:                           ; preds = %pred.store.if735, %pred.store.continue734
  %i.yd = extractelement <16 x i1> %i.xp, i64 12
  br i1 %i.yd, label %pred.store.if737, label %pred.store.continue738

pred.store.if737:                                 ; preds = %pred.store.continue736
  store i8 47, ptr %next.gep694, align 1, !tbaa !17
  br label %pred.store.continue738

pred.store.continue738:                           ; preds = %pred.store.if737, %pred.store.continue736
  %i.ye = extractelement <16 x i1> %i.xp, i64 13
  br i1 %i.ye, label %pred.store.if739, label %pred.store.continue740

pred.store.if739:                                 ; preds = %pred.store.continue738
  store i8 47, ptr %next.gep695, align 1, !tbaa !17
  br label %pred.store.continue740

pred.store.continue740:                           ; preds = %pred.store.if739, %pred.store.continue738
  %i.yf = extractelement <16 x i1> %i.xp, i64 14
  br i1 %i.yf, label %pred.store.if741, label %pred.store.continue742

pred.store.if741:                                 ; preds = %pred.store.continue740
  store i8 47, ptr %next.gep696, align 1, !tbaa !17
  br label %pred.store.continue742

pred.store.continue742:                           ; preds = %pred.store.if741, %pred.store.continue740
  %i.yg = extractelement <16 x i1> %i.xp, i64 15
  br i1 %i.yg, label %pred.store.if743, label %pred.store.continue744

pred.store.if743:                                 ; preds = %pred.store.continue742
  store i8 47, ptr %next.gep697, align 1, !tbaa !17
  br label %pred.store.continue744

pred.store.continue744:                           ; preds = %pred.store.if743, %pred.store.continue742
  %i.yh = extractelement <16 x i1> %i.xq, i64 0
  br i1 %i.yh, label %pred.store.if745, label %pred.store.continue746

end_hunk_0
begin_hunk_1_@_ZN11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator16RegisterRequiresB5cxx11EPKN10reflection5FieldEb:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !97, !noalias !911 ; 3 uses
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.fz, ptr %6, align 8, !tbaa !13, !alias.scope !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !911
  store i64 %i.fy, ptr %i.b, align 8, !tbaa !41, !noalias !911
  %i.ga = icmp ugt i32 %i.fx, 15
  br i1 %i.ga, label %.noexc.i.i62, label %._crit_edge.i.i.i61

.noexc.i.i62:                                     ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i59
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc63 unwind label %bb.w   ; 2 uses

.noexc63:                                         ; preds = %.noexc.i.i62
  store ptr %i.gb, ptr %6, align 8, !tbaa !40, !alias.scope !911
  %i.gc = load i64, ptr %i.b, align 8, !tbaa !41, !noalias !911
  store i64 %i.gc, ptr %i.fz, align 8, !tbaa !17, !alias.scope !911
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc63, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i59
  %i.gd = phi ptr [ %i.gb, %.noexc63 ], [ %i.fz, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i59 ] ; 2 uses
  switch i32 %i.fx, label %bb.p [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i61
  %i.ge = load i8, ptr %i.fw, align 4, !tbaa !17, !noalias !911
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr nonnull align 4 %i.fw, i64 %i.fy, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i61
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !41, !noalias !911 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !16, !alias.scope !911
  %i.gh = load ptr, ptr %6, align 8, !tbaa !40, !alias.scope !911
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !911
  %i.gj = load ptr, ptr %4, align 8, !tbaa !40    ; 6 uses
  %i.gk = icmp eq ptr %i.gj, %i.d
  %i.gl = load ptr, ptr %6, align 8, !tbaa !40    ; 5 uses
  %i.gm = icmp eq ptr %i.gl, %i.fz                ; 2 uses
  br i1 %i.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i70: ; preds = %bb.q
  br i1 %i.gm, label %bb.r, label %.thread.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i65: ; preds = %bb.q
  br i1 %i.gm, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i66

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i70
  %i.gn = load i64, ptr %i.gg, align 8, !tbaa !16 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  switch i64 %i.gn, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !17
  store i8 %i.gp, ptr %i.gj, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gl, i64 %i.gn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68: ; preds = %bb.t, %bb.s, %bb.r
  %i.gq = load i64, ptr %i.gg, align 8, !tbaa !16 ; 2 uses
  store i64 %i.gq, ptr %i.e, align 8, !tbaa !16
  %i.gr = load ptr, ptr %4, align 8, !tbaa !40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  store i8 0, ptr %i.gs, align 1, !tbaa !17
  %.pre.i69 = load ptr, ptr %6, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72

.thread.i71:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i70
  store ptr %i.gl, ptr %4, align 8, !tbaa !40
  %i.gt = load <2 x i64>, ptr %i.gg, align 8, !tbaa !17
  store <2 x i64> %i.gt, ptr %i.e, align 8, !tbaa !17
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i65
  %i.gu = load i64, ptr %i.d, align 8, !tbaa !17
  store ptr %i.gl, ptr %4, align 8, !tbaa !40
  %i.gv = load <2 x i64>, ptr %i.gg, align 8, !tbaa !17
  store <2 x i64> %i.gv, ptr %i.e, align 8, !tbaa !17
  %.not.i67 = icmp eq ptr %i.gj, null
  br i1 %.not.i67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i66
  store ptr %i.gj, ptr %6, align 8, !tbaa !40
  store i64 %i.gu, ptr %i.fz, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i66, %.thread.i71
  store ptr %i.fz, ptr %6, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68, %bb.u, %bb.v
  %i.gw = phi ptr [ %.pre.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i68 ], [ %i.gj, %bb.u ], [ %i.fz, %bb.v ]
  store i64 0, ptr %i.gg, align 8, !tbaa !16
  store i8 0, ptr %i.gw, align 1, !tbaa !17
  %i.gx = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fz
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72
  %i.gz = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.x

bb.w:                                             ; preds = %.noexc.i.i62
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ag

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.hc = load ptr, ptr %4, align 8, !tbaa !40, !noalias !912
  %i.hd = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !912 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.he, ptr %7, align 8, !tbaa !13, !alias.scope !913
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %i.hf, align 8, !tbaa !16, !alias.scope !913
  store i8 0, ptr %i.he, align 8, !tbaa !17, !alias.scope !913
  %i.hg = add i64 %i.hd, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.hg)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !16, !alias.scope !913
  %i.hi = and i64 %i.hh, -2
  %i.hj = icmp eq i64 %i.hi, 4611686018427387902
  br i1 %i.hj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.hk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !16, !alias.scope !913
  %i.hm = sub i64 4611686018427387903, %i.hl
  %i.hn = icmp ult i64 %i.hm, %i.hd
  br i1 %i.hn, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.cont.i.i unwind label %bb.z

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.hc, i64 noundef %i.hd)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.x
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %7, align 8, !tbaa !40, !alias.scope !913 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.he
  br i1 %i.hr, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.hs = load ptr, ptr %7, align 8, !tbaa !40    ; 44 uses
  %i.ht = load i64, ptr %i.hf, align 8, !tbaa !16 ; 9 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ht
  %.not6.i = icmp samesign eq i64 %i.ht, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %min.iters.check = icmp ult i64 %i.ht, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %i.ht, 32
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hv = and i64 %i.ht, 24
  %n.vec = and i64 %i.ht, -32                     ; 4 uses
  %i.hw = getelementptr i8, ptr %i.hs, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue231
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue231 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %index ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep138 = getelementptr i8, ptr %i.hx, i64 1
  %i.hy = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep139 = getelementptr i8, ptr %i.hy, i64 2
  %i.hz = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep140 = getelementptr i8, ptr %i.hz, i64 3
  %i.ia = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep141 = getelementptr i8, ptr %i.ia, i64 4
  %i.ib = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep142 = getelementptr i8, ptr %i.ib, i64 5
  %i.ic = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep143 = getelementptr i8, ptr %i.ic, i64 6
  %i.id = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep144 = getelementptr i8, ptr %i.id, i64 7
  %i.ie = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep145 = getelementptr i8, ptr %i.ie, i64 8
  %i.if = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep146 = getelementptr i8, ptr %i.if, i64 9
  %i.ig = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep147 = getelementptr i8, ptr %i.ig, i64 10
  %i.ih = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep148 = getelementptr i8, ptr %i.ih, i64 11
  %i.ii = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep149 = getelementptr i8, ptr %i.ii, i64 12
  %i.ij = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep150 = getelementptr i8, ptr %i.ij, i64 13
  %i.ik = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep151 = getelementptr i8, ptr %i.ik, i64 14
  %i.il = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep152 = getelementptr i8, ptr %i.il, i64 15
  %i.im = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep153 = getelementptr i8, ptr %i.im, i64 16
  %i.in = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep154 = getelementptr i8, ptr %i.in, i64 17
  %i.io = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep155 = getelementptr i8, ptr %i.io, i64 18
  %i.ip = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep156 = getelementptr i8, ptr %i.ip, i64 19
  %i.iq = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep157 = getelementptr i8, ptr %i.iq, i64 20
  %i.ir = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep158 = getelementptr i8, ptr %i.ir, i64 21
  %i.is = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep159 = getelementptr i8, ptr %i.is, i64 22
  %i.it = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep160 = getelementptr i8, ptr %i.it, i64 23
  %i.iu = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep161 = getelementptr i8, ptr %i.iu, i64 24
  %i.iv = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep162 = getelementptr i8, ptr %i.iv, i64 25
  %i.iw = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep163 = getelementptr i8, ptr %i.iw, i64 26
  %i.ix = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep164 = getelementptr i8, ptr %i.ix, i64 27
  %i.iy = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep165 = getelementptr i8, ptr %i.iy, i64 28
  %i.iz = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep166 = getelementptr i8, ptr %i.iz, i64 29
  %i.ja = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep167 = getelementptr i8, ptr %i.ja, i64 30
  %i.jb = getelementptr i8, ptr %i.hs, i64 %index
  %next.gep168 = getelementptr i8, ptr %i.jb, i64 31
  %i.jc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load169 = load <16 x i8>, ptr %i.jc, align 1, !tbaa !17
  %i.jd = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.je = icmp eq <16 x i8> %wide.load169, splat (i8 46) ; 16 uses
  %i.jf = extractelement <16 x i1> %i.jd, i64 0
  br i1 %i.jf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.jg = extractelement <16 x i1> %i.jd, i64 1
  br i1 %i.jg, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue
  store i8 95, ptr %next.gep138, align 1, !tbaa !17
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue
  %i.jh = extractelement <16 x i1> %i.jd, i64 2
  br i1 %i.jh, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  store i8 95, ptr %next.gep139, align 1, !tbaa !17
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.ji = extractelement <16 x i1> %i.jd, i64 3
  br i1 %i.ji, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  store i8 95, ptr %next.gep140, align 1, !tbaa !17
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.jj = extractelement <16 x i1> %i.jd, i64 4
  br i1 %i.jj, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  store i8 95, ptr %next.gep141, align 1, !tbaa !17
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.jk = extractelement <16 x i1> %i.jd, i64 5
  br i1 %i.jk, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  store i8 95, ptr %next.gep142, align 1, !tbaa !17
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.jl = extractelement <16 x i1> %i.jd, i64 6
  br i1 %i.jl, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  store i8 95, ptr %next.gep143, align 1, !tbaa !17
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.jm = extractelement <16 x i1> %i.jd, i64 7
  br i1 %i.jm, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  store i8 95, ptr %next.gep144, align 1, !tbaa !17
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %i.jn = extractelement <16 x i1> %i.jd, i64 8
  br i1 %i.jn, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %pred.store.continue183
  store i8 95, ptr %next.gep145, align 1, !tbaa !17
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %pred.store.continue183
  %i.jo = extractelement <16 x i1> %i.jd, i64 9
  br i1 %i.jo, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  store i8 95, ptr %next.gep146, align 1, !tbaa !17
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %i.jp = extractelement <16 x i1> %i.jd, i64 10
  br i1 %i.jp, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  store i8 95, ptr %next.gep147, align 1, !tbaa !17
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.jq = extractelement <16 x i1> %i.jd, i64 11
  br i1 %i.jq, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  store i8 95, ptr %next.gep148, align 1, !tbaa !17
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.jr = extractelement <16 x i1> %i.jd, i64 12
  br i1 %i.jr, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 95, ptr %next.gep149, align 1, !tbaa !17
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.js = extractelement <16 x i1> %i.jd, i64 13
  br i1 %i.js, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 95, ptr %next.gep150, align 1, !tbaa !17
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.jt = extractelement <16 x i1> %i.jd, i64 14
  br i1 %i.jt, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 95, ptr %next.gep151, align 1, !tbaa !17
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.ju = extractelement <16 x i1> %i.jd, i64 15
  br i1 %i.ju, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 95, ptr %next.gep152, align 1, !tbaa !17
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.jv = extractelement <16 x i1> %i.je, i64 0
  br i1 %i.jv, label %pred.store.if200, label %pred.store.continue201

end_hunk_1
