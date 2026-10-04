Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/hyper_graph_action?download=true
inline.NumInlined: 713
inline.NumDeleted: 362
begin_hunk_0_@_ZN3g2o23HyperGraphActionLibrary14registerActionERKSt10shared_ptrINS_23HyperGraphElementActionEE:bb.a
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27, !inline_history !1
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i25 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.t, label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !51

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %bb.n
  %i.cd = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ax
  br i1 %i.ce, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cf = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #26
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ch = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ci, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !50
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #27, !inline_history !2
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #27, !inline_history !2
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i26 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i26, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.cl, %bb.x ], [ %i.cv, %bb.y ]
  %i.cw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cw, label %bb.z, label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #27
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.cx = call noundef zeroext i1 @_ZN3g2o33HyperGraphElementActionCollection14registerActionERKSt10shared_ptrINS_23HyperGraphElementActionEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  br label %bb.ae

bb.aa:                                            ; preds = %_ZN3g2o23HyperGraphActionLibrary12actionByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.cy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 120) #26
  br label %common.resume

bb.ab:                                            ; preds = %.noexc.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.da, %bb.ac ], [ %i.cz, %bb.ab ]
  call void @_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume

bb.ae:                                            ; preds = %bb.d, %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ true, %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o23HyperGraphActionLibrary16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !97
  store ptr %2, ptr %2, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not2125 = icmp eq ptr %i.d, %i.e
  br i1 %.not2125, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit, label %.lr.ph

.preheader:                                       ; preds = %.thread
  %.sroa.012.027.pre = load ptr, ptr %2, align 8, !tbaa !98 ; 2 uses
  %.not2228 = icmp eq ptr %.sroa.012.027.pre, %2
  br i1 %.not2228, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.i

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.sroa.017.026 = phi ptr [ %i.ad, %.thread ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN3g2o23HyperGraphElementActionE, ptr nonnull @_ZTIN3g2o33HyperGraphElementActionCollectionE, i64 0) #27 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %.not12.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not12.not.i, label %_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.05.013.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.u, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.013.i) #29 ; 2 uses
  %.not.not.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.not.i, label %_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit, label %bb.d, !llvm.loop !3

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr nonnull %.sroa.05.013.i)
  br label %_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit

_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit: ; preds = %bb.e, %bb.f, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit
  %i.y = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %_ZNSt7__cxx114listIPN3g2o33HyperGraphElementActionCollectionESaIS3_EE9push_backERKS3_.exit unwind label %bb.h ; 2 uses

_ZNSt7__cxx114listIPN3g2o33HyperGraphElementActionCollectionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.l, ptr %i.z, align 8, !tbaa !101
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !104
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !104
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %.lr.ph, %_ZNSt7__cxx114listIPN3g2o33HyperGraphElementActionCollectionESaIS3_EE9push_backERKS3_.exit, %_ZN3g2o33HyperGraphElementActionCollection16unregisterActionERKSt10shared_ptrINS_23HyperGraphElementActionEE.exit, %bb.b
  %i.ad = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.017.026) #29 ; 2 uses
  %.not21 = icmp eq ptr %i.ad, %i.e
  br i1 %.not21, label %.preheader, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ae = load ptr, ptr %.09.i.i, align 8, !tbaa !98 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #26
  %.not.i.i = icmp eq ptr %i.ae, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !91

_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a, %.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 true

bb.i:                                             ; preds = %.lr.ph30, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %.sroa.012.029 = phi ptr [ %.sroa.012.027.pre, %.lr.ph30 ], [ %.sroa.012.0, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.029, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1      ; 3 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.am = icmp eq ptr %i.aj, %i.al
  %i.an = icmp eq ptr %i.ak, %i.e
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.j, label %.critedge.i.i.i

bb.j:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ao)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i: ; preds = %bb.j
  store ptr null, ptr %i.g, align 8, !tbaa !21
  store ptr %i.e, ptr %i.c, align 8, !tbaa !33
  store ptr %i.e, ptr %i.h, align 8, !tbaa !34
  store i64 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit

.critedge.i.i.i:                                  ; preds = %.noexc
  %.not8.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not8.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit
  %.sroa.06.09.i.i.i = phi ptr [ %i.ar, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit ], [ %i.aj, %.critedge.i.i.i ] ; 2 uses
  %i.ar = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i.i) #29 ; 2 uses
  %i.as = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aw, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !50
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27, !inline_history !92
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27, !inline_history !92
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.o ], [ %i.bj, %bb.p ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.q, label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !51

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27
  br label %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit: ; preds = %_ZNSt12__shared_ptrIN3g2o23HyperGraphElementActionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 80) #26
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !35
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.f, align 8, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.ar, %i.ak
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !93

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN3g2o23HyperGraphElementActionEESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN3g2o23HyperGraphElementActionEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i
  %.sroa.012.0 = load ptr, ptr %.sroa.012.029, align 8, !tbaa !98 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.012.0, %2
  br i1 %.not22, label %._crit_edge, label %bb.i, !llvm.loop !94

bb.r:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.bs, %bb.r ]
  %i.bt = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %.not8.i.i7 = icmp eq ptr %i.bt, %2
  br i1 %.not8.i.i7, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit11, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %bb.s, %.lr.ph.i.i8
  %.09.i.i9 = phi ptr [ %i.bu, %.lr.ph.i.i8 ], [ %i.bt, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %.09.i.i9, align 8, !tbaa !98 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i9, i64 noundef 24) #26
  %.not.i.i10 = icmp eq ptr %i.bu, %2
  br i1 %.not.i.i10, label %_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit11, label %.lr.ph.i.i8, !llvm.loop !91

_ZNSt7__cxx1110_List_baseIPN3g2o33HyperGraphElementActionCollectionESaIS3_EED2Ev.exit11: ; preds = %.lr.ph.i.i8, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o18WriteGnuplotActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3g2o23HyperGraphElementActionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !28
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.i, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !31
  store i8 %i.k, ptr %i.j, align 1, !tbaa !31
  br label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.r, align 8, !tbaa !29
  store i8 0, ptr %i.q, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3g2o18WriteGnuplotActionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void

bb.d:                                             ; preds = %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o23HyperGraphElementActionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #27
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o10DrawAction10ParametersC2Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((16, 20), (24, 32)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10DrawAction10ParametersE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o10DrawActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3g2o23HyperGraphElementActionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !28
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.i, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !31
  store i8 %i.k, ptr %i.j, align 1, !tbaa !31
  br label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.r, align 8, !tbaa !29
  store i8 0, ptr %i.q, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o10DrawActionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 66 to ptr), ptr %i.t, align 8, !tbaa !59
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef null)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.y, align 8, !tbaa !60
  ret void

bb.e:                                             ; preds = %_ZN3g2o23HyperGraphElementActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o23HyperGraphElementActionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #27
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o10DrawAction19refreshPropertyPtrsEPNS_23HyperGraphElementAction10ParametersE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = icmp ne ptr %i.c, %1                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.thread, label %bb.c

end_hunk_0
