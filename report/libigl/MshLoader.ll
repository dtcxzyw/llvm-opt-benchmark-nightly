Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/MshLoader?download=true
inline.NumInlined: 1056
inline.NumDeleted: 484
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:bb.a
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 1, 28) i32 @_ZN3igl9MshLoader23num_nodes_per_elem_typeEi(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %switch.tableidx = add i32 %0, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 32703, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.27, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %0)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.28, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #22
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #20
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn15, %bb.h ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn.pn

switch.lookup:                                    ; preds = %bb.a
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3igl9MshLoader23num_nodes_per_elem_typeEi, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3igl9MshLoader23is_element_map_identityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = zext i32 %i.k to i64
  %.not = icmp eq i64 %indvars.iv, %i.l           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %i.i
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !164

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl9MshLoader16index_structuresEi(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  invoke void @_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 9 uses
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.f, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !182
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN3igl9MshLoader10msh_structES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl9MshLoader10msh_structES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit
  store ptr %i.k, ptr %i.l, align 8, !tbaa !182
  br label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE5clearEv.exit

_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE5clearEv.exit: ; preds = %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit, %_ZSt8_DestroyIPN3igl9MshLoader10msh_structES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  invoke void @_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.p)
          to label %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit18 unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE5clearEv.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit18: ; preds = %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.s, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.s, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %.not114 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit ] ; 4 uses
  %i.ae = phi ptr [ %i.ac, %.lr.ph ], [ %i.bf, %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31 ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31 ; 2 uses
  %.sroa.4.0.insert.ext = zext i32 %i.aj to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.067.0.insert.ext = zext i32 %i.ag to i64
  %.sroa.067.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.067.0.insert.ext
  %i.ak = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.067.0.insert.insert, ptr %i.al, align 4, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !185
  %.078.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.ao = mul nsw i32 %i.ag, 100
  %i.ap = add nsw i32 %i.aj, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.078.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i.i, %bb.e ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !187
  %i.as = mul nsw i32 %i.ar, 100
  %i.at = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !188
  %i.av = add nsw i32 %i.as, %i.au
  %i.aw = icmp slt i32 %i.ap, %i.av               ; 2 uses
  %.in.v.i.i.i = select i1 %i.aw, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !llvm.loop !165

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp eq ptr %.0710.i.i.i, %i.f
  %spec.select.i.i = or i1 %i.ax, %i.aw
  br label %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit

_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit: ; preds = %bb.d, %bb.f
  %.0.lcssa.i15.i.i = phi ptr [ %i.f, %bb.d ], [ %.0710.i.i.i, %bb.f ]
  %i.ay = phi i1 [ true, %bb.d ], [ %spec.select.i.i, %bb.f ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ay, ptr noundef nonnull %i.ak, ptr noundef nonnull %.0.lcssa.i15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #20
  %i.az = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.x ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !87 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %.not = icmp eq i64 %i.bj, %indvars.iv.next
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !166

._crit_edge:                                      ; preds = %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE6insertIS5_IS2_iEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, %_ZNSt8multimapIN3igl9MshLoader10msh_structEiSt4lessIS2_ESaISt4pairIKS2_iEEE5clearEv.exit18
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !21  ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %i.f
  br i1 %i.bl, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit", label %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.bm = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24
          to label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bn, i64 12, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 5 uses
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull readonly %i.bk) #21 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.bp, %i.f
  br i1 %.not24.i.i, label %.lr.ph.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i
  %.sroa.054.3 = phi ptr [ %.sroa.054.4, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bm, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 8 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.2, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.4, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 8 uses
  %i.bq = phi ptr [ %i.cr, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 3 uses
  %i.br = phi ptr [ %i.cs, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bp, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 4 uses
  %.sroa.021.025.i.i = phi ptr [ %.sroa.021.1.i.i, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i ], [ %i.bk, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i.i, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bu = load <2 x i32>, ptr %i.bs, align 4
  %i.bv = load <2 x i32>, ptr %i.bt, align 4
  %i.bw = icmp eq <2 x i32> %i.bu, %i.bv          ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bw, i64 0
  %i.by = extractelement <2 x i1> %i.bw, i64 1
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %.not.i.i3.i.i = icmp eq ptr %i.bq, %.sroa.19.3
  br i1 %.not.i.i3.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bt, i64 12, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 12 ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i

bb.i:                                             ; preds = %bb.g
  %i.cb = ptrtoint ptr %.sroa.19.3 to i64
  %i.cc = ptrtoint ptr %.sroa.054.3 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.j, label %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i4.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #22
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i4.i.i: ; preds = %bb.i
  %i.cf = sdiv exact i64 %i.cd, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i5.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i5.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 768614336404564650)
  %i.cj = select i1 %i.ch, i64 768614336404564650, i64 %i.ci ; 3 uses
  %.not.i.i.i.i6.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i6.i.i)
  %i.ck = mul nuw nsw i64 %i.cj, 12
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #24
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i4.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %i.bt, i64 12, i1 false)
  %.not10.i.i.i.i.i.i7.i.i = icmp eq ptr %.sroa.054.3, %.sroa.19.3
  br i1 %.not10.i.i.i.i.i.i7.i.i, label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i, label %.lr.ph.i.i.i.i.i.i8.i.i

.lr.ph.i.i.i.i.i.i8.i.i:                          ; preds = %.noexc22, %.lr.ph.i.i.i.i.i.i8.i.i
  %.012.i.i.i.i.i.i9.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i8.i.i ], [ %i.cl, %.noexc22 ] ; 2 uses
  %.0911.i.i.i.i.i.i10.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i8.i.i ], [ %.sroa.054.3, %.noexc22 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i9.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i10.i.i, i64 12, i1 false), !alias.scope !189
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i10.i.i, i64 12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i9.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i11.i.i = icmp eq ptr %i.cn, %.sroa.19.3
  br i1 %.not.i.i.i.i.i.i11.i.i, label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i, label %.lr.ph.i.i.i.i.i.i8.i.i, !llvm.loop !170

_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i: ; preds = %.lr.ph.i.i.i.i.i.i8.i.i, %.noexc22
  %.0.lcssa.i.i.i.i.i.i13.i.i = phi ptr [ %i.cl, %.noexc22 ], [ %i.co, %.lr.ph.i.i.i.i.i.i8.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i13.i.i, i64 12 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.3, i64 noundef %i.cd) #23
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i: ; preds = %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i, %bb.h, %.lr.ph.i.i
  %.sroa.054.4 = phi ptr [ %.sroa.054.3, %.lr.ph.i.i ], [ %i.cl, %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i ], [ %.sroa.054.3, %bb.h ] ; 4 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %.lr.ph.i.i ], [ %i.cp, %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i ], [ %i.ca, %bb.h ] ; 3 uses
  %.sroa.19.4 = phi ptr [ %.sroa.19.3, %.lr.ph.i.i ], [ %i.cq, %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i ], [ %.sroa.19.3, %bb.h ] ; 3 uses
  %i.cr = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.cp, %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i ], [ %i.ca, %bb.h ]
  %.sroa.021.1.i.i = phi ptr [ %.sroa.021.025.i.i, %.lr.ph.i.i ], [ %i.br, %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i15.i.i ], [ %i.br, %bb.h ]
  %i.cs = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.br) #21 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cs, %i.f
  br i1 %.not.i.i19, label %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit", label %.lr.ph.i.i, !llvm.loop !171

"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit16.i.i
  %.not5.i = icmp eq ptr %.sroa.054.4, %.sroa.11.2
  br i1 %.not5.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit"
  %.sroa.19.589 = phi ptr [ %.sroa.19.4, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit" ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 3 uses
  %.sroa.11.388 = phi ptr [ %.sroa.11.2, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit" ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ]
  %.sroa.054.587 = phi ptr [ %.sroa.054.4, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit" ], [ %i.bm, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS6_EEEaSERKS6_.exit.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !182
  %.pre7.i = load ptr, ptr %i.ct, align 8, !tbaa !86
  br label %bb.k

bb.k:                                             ; preds = %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i", %.lr.ph.i
  %i.cu = phi ptr [ %.pre7.i, %.lr.ph.i ], [ %2, %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i" ] ; 5 uses
  %.sroa.02.06.i.a = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.dt, %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i" ] ; 3 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.054.587, %.lr.ph.i ], [ %i.du, %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i" ] ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %.sroa.02.06.i.a, %i.cu
  br i1 %.not.i.i.i23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load i64, ptr %.sroa.02.06.i, align 4, !tbaa !31
  store i64 %i.cv, ptr %.sroa.02.06.i.a, align 4, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.a, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.l, align 8, !tbaa !182
  br label %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i"

bb.m:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !85  ; 5 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.n, label %_ZNKSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #22
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #24
          to label %.noexc25 unwind label %.loopexit101 ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  %i.dk = load i64, ptr %.sroa.02.06.i, align 4, !tbaa !31
  store i64 %i.dk, ptr %i.dj, align 4, !tbaa !31
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.cu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.di, %.noexc25 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cx, %.noexc25 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !191, !noalias !190
  store i64 %i.dl, ptr %.012.i.i.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !190, !noalias !191
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.cu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !175

_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc25
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.di, %.noexc25 ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.dp = load ptr, ptr %i.ct, align 8, !tbaa !86
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dr) #23
  br label %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.di, ptr %i.j, align 8, !tbaa !85
  store ptr %i.do, ptr %i.l, align 8, !tbaa !182
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg ; 2 uses
  store ptr %i.ds, ptr %i.ct, align 8, !tbaa !86
  br label %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i"

"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i": ; preds = %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.l
  %2 = phi ptr [ %i.cu, %bb.l ], [ %i.ds, %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.dt = phi ptr [ %i.cw, %bb.l ], [ %i.do, %_ZNSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.du, %.sroa.11.388
  br i1 %.not.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit", label %bb.k, !llvm.loop !176

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit": ; preds = %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i", %._crit_edge, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit"
  %.sroa.19.581 = phi ptr [ null, %._crit_edge ], [ %.sroa.19.4, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit" ], [ %.sroa.19.589, %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i" ] ; 2 uses
  %.sroa.054.579 = phi ptr [ null, %._crit_edge ], [ %.sroa.054.4, %"_ZSt11unique_copyISt17_Rb_tree_iteratorISt4pairIKN3igl9MshLoader10msh_structEiEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEZNS3_16index_structuresEiE3$_0ET0_T_SF_SE_T1_.exit" ], [ %.sroa.054.587, %"_ZZN3igl9MshLoader16index_structuresEiENK3$_1clERKSt4pairIKNS0_10msh_structEiE.exit.i" ] ; 4 uses
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !192 ; 2 uses
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !192
  %.not98122 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not98122, label %._crit_edge125, label %.lr.ph124

._crit_edge125:                                   ; preds = %bb.w, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit"
  %.not.i.i.i26 = icmp eq ptr %.sroa.054.579, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge125
  %i.dx = ptrtoint ptr %.sroa.19.581 to i64
  %i.dy = ptrtoint ptr %.sroa.054.579 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.579, i64 noundef %i.dz) #23
  br label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit: ; preds = %._crit_edge125, %bb.p
  ret void

.loopexit101:                                     ; preds = %_ZNKSt6vectorIN3igl9MshLoader10msh_structESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i4.i.i
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.n, %bb.j, %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.sroa.054.0.ph.ph = phi ptr [ %.sroa.054.587, %bb.n ], [ null, %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %.sroa.054.3, %bb.j ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.19.589, %bb.n ], [ null, %_ZNKSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %.sroa.19.3, %bb.j ]
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph124:                                        ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit", %bb.w
  %.sroa.050.0123 = phi ptr [ %i.gc, %bb.w ], [ %i.dv, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN3igl9MshLoader10msh_structEiESt6vectorIS7_SaIS7_EEEEZNS4_16index_structuresEiE3$_1ET0_T_SF_SE_.exit" ] ; 4 uses
  %.041.i.i = load ptr, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %._crit_edge121, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph124
  %i.ea = load i32, ptr %.sroa.050.0123, align 4, !tbaa !187
  %i.eb = mul nsw i32 %i.ea, 100
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.050.0123, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !188
  %i.ee = add nsw i32 %i.eb, %i.ed                ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i.i27
  %.044.i.i = phi ptr [ %.041.i.i, %.lr.ph.i.i27 ], [ %.0.i.i, %bb.t ] ; 8 uses
  %.02243.i.i = phi ptr [ %i.f, %.lr.ph.i.i27 ], [ %.123.i.i, %bb.t ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !187
  %i.eh = mul nsw i32 %i.eg, 100
  %i.ei = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 36
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !188
  %i.ek = add nsw i32 %i.eh, %i.ej                ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.ee
  br i1 %i.el, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.em = icmp slt i32 %i.ee, %i.ek
  br i1 %i.em, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !109 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !110 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.s, %.lr.ph.i.i.i28
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i28 ], [ %i.eo, %bb.s ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i28 ], [ %.044.i.i, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.es = load i32, ptr %i.er, align 4, !tbaa !187
  %i.et = mul nsw i32 %i.es, 100
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !188
  %i.ew = add nsw i32 %i.et, %i.ev
  %i.ex = icmp slt i32 %i.ew, %i.ee               ; 2 uses
  %.19.i.i.i = select i1 %i.ex, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ex, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i29, label %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i28, !llvm.loop !177

_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i28, %bb.s
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.s ], [ %.19.i.i.i, %.lr.ph.i.i.i28 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.eq, null
  br i1 %.not10.i24.i.i, label %.loopexit, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.eq, %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ] ; 4 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !187
  %i.fa = mul nsw i32 %i.ez, 100
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 36
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !188
  %i.fd = add nsw i32 %i.fa, %i.fc
  %i.fe = icmp slt i32 %i.ee, %i.fd               ; 2 uses
  %.19.i28.i.i = select i1 %i.fe, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.fe, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %.loopexit, label %.lr.ph.i25.i.i, !llvm.loop !178

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i64 [ 24, %bb.q ], [ 16, %bb.r ]
  %.123.i.i = phi ptr [ %.02243.i.i, %bb.q ], [ %.044.i.i, %bb.r ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.ff, align 8, !tbaa !186 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i30, label %._crit_edge121, label %bb.q, !llvm.loop !179

.loopexit:                                        ; preds = %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %.02243.i.i, %_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %.19.i28.i.i, %.lr.ph.i25.i.i ] ; 2 uses
  %.not99116 = icmp eq ptr %.08.lcssa.i.i.i, %.sroa.3.0.i.i
  br i1 %.not99116, label %._crit_edge121, label %.lr.ph120

._crit_edge121:                                   ; preds = %bb.t, %.lr.ph120, %.lr.ph124, %.loopexit
  %.0.lcssa = phi i32 [ 0, %.loopexit ], [ %i.fx, %.lr.ph120 ], [ 0, %.lr.ph124 ], [ 0, %bb.t ]
  %i.fg = load i64, ptr %.sroa.050.0123, align 4, !tbaa !31 ; 3 uses
  %i.fh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc41 unwind label %bb.x   ; 3 uses

.noexc41:                                         ; preds = %._crit_edge121
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i64 %i.fg, ptr %i.fi, align 4, !tbaa !31
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 %.0.lcssa, ptr %i.fj, align 4, !tbaa !185
  %.078.i.i.i31 = load ptr, ptr %i.o, align 8, !tbaa !186 ; 2 uses
  %.not9.i.i.i32 = icmp eq ptr %.078.i.i.i31, null
  br i1 %.not9.i.i.i32, label %bb.w, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.noexc41
  %i.fk = lshr i64 %i.fg, 32
  %i.fl = trunc nuw i64 %i.fk to i32
  %i.fm = trunc i64 %i.fg to i32
  %i.fn = mul nsw i32 %i.fm, 100
  %i.fo = add nsw i32 %i.fn, %i.fl
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i33
  %.0710.i.i.i34 = phi ptr [ %.078.i.i.i31, %.lr.ph.i.i.i33 ], [ %.07.i.i.i37, %bb.u ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0710.i.i.i34, i64 32
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !187
  %i.fr = mul nsw i32 %i.fq, 100
  %i.fs = getelementptr inbounds nuw i8, ptr %.0710.i.i.i34, i64 36
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !188
  %i.fu = add nsw i32 %i.fr, %i.ft
  %i.fv = icmp slt i32 %i.fo, %i.fu               ; 2 uses
  %.in.v.i.i.i35 = select i1 %i.fv, i64 16, i64 24
  %.in.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i34, i64 %.in.v.i.i.i35
  %.07.i.i.i37 = load ptr, ptr %.in.i.i.i36, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.07.i.i.i37, null
  br i1 %.not.i.i.i38, label %bb.v, label %bb.u, !llvm.loop !165

bb.v:                                             ; preds = %bb.u
  %i.fw = icmp eq ptr %.0710.i.i.i34, %i.s
  %spec.select.i.i39 = or i1 %i.fw, %i.fv
  br label %bb.w

.lr.ph120:                                        ; preds = %.loopexit, %.lr.ph120
  %.sroa.045.0118 = phi ptr [ %i.fy, %.lr.ph120 ], [ %.08.lcssa.i.i.i, %.loopexit ]
  %.0117 = phi i32 [ %i.fx, %.lr.ph120 ], [ 0, %.loopexit ]
  %i.fx = add nuw nsw i32 %.0117, 1               ; 2 uses
  %i.fy = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.045.0118) #21 ; 2 uses
  %.not99 = icmp eq ptr %i.fy, %.sroa.3.0.i.i
  br i1 %.not99, label %._crit_edge121, label %.lr.ph120, !llvm.loop !180

bb.w:                                             ; preds = %bb.v, %.noexc41
  %.0.lcssa.i15.i.i40 = phi ptr [ %i.s, %.noexc41 ], [ %.0710.i.i.i34, %bb.v ]
  %i.fz = phi i1 [ true, %.noexc41 ], [ %spec.select.i.i39, %bb.v ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fz, ptr noundef nonnull %i.fh, ptr noundef nonnull %.0.lcssa.i15.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #20
  %i.ga = load i64, ptr %i.v, align 8, !tbaa !23
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.v, align 8, !tbaa !23
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.050.0123, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !192
  %.not98 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not98, label %._crit_edge125, label %.lr.ph124, !llvm.loop !181

bb.x:                                             ; preds = %._crit_edge121
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit101, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.x
  %.sroa.054.1 = phi ptr [ %.sroa.054.579, %bb.x ], [ %.sroa.054.587, %.loopexit101 ], [ %.sroa.054.3, %.loopexit.split-lp.loopexit ], [ %.sroa.054.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.19.1 = phi ptr [ %.sroa.19.581, %bb.x ], [ %.sroa.19.589, %.loopexit101 ], [ %.sroa.19.3, %.loopexit.split-lp.loopexit ], [ %.sroa.19.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.x ], [ %lpad.loopexit, %.loopexit101 ], [ %lpad.loopexit102, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i43 = icmp eq ptr %.sroa.054.1, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit44, label %.thread

.thread:                                          ; preds = %.loopexit.split-lp
  %i.gf = ptrtoint ptr %.sroa.19.1 to i64
  %i.gg = ptrtoint ptr %.sroa.054.1 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.1, i64 noundef %i.gh) #23
  br label %_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit44

_ZNSt6vectorISt4pairIKN3igl9MshLoader10msh_structEiESaIS5_EED2Ev.exit44: ; preds = %.loopexit.split-lp, %.thread
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeIN3igl9MshLoader10msh_structESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !92
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
  unreachable
end_hunk_0
