Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Control?download=true
inline.NumInlined: 5426
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN25V3ControlWildcardResolverI14V3ControlFTaskE6updateERKS1_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN25V3ControlWildcardResolverI12V3ControlVarE6updateERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !53

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.b
  %.037.i.i = phi i32 [ %i.g, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.d = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.f = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  %.not.i.i4.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.b, !prof !54

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !55
  %i.g = add nuw nsw i32 %.037.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.g, 50000
  br i1 %exitcond.not.i.i, label %bb.c, label %.preheader.i.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %bb.a, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.c
  %i.h = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i10, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i10:  ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.j = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  %.not.i.i.i.i11 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i11, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17, label %.preheader.i.i12, !prof !53

.preheader.i.i12:                                 ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i10, %bb.d
  %.037.i.i13 = phi i32 [ %i.n, %bb.d ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i10 ]
  %i.k = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i14, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i14: ; preds = %.preheader.i.i12
  %i.m = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  %.not.i.i4.i.i15 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i4.i.i15, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17, label %bb.d, !prof !54

bb.d:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i14
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !55
  %i.n = add nuw nsw i32 %.037.i.i13, 1           ; 2 uses
  %exitcond.not.i.i16 = icmp eq i32 %i.n, 50000
  br i1 %exitcond.not.i.i16, label %bb.e, label %.preheader.i.i12, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17 unwind label %bb.h

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i14, %.preheader.i.i12, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i10, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.o, ptr nonnull @.str.168, ptr nonnull @.str.169, i32 43, ptr null) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  invoke void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_St10unique_ptrI12V3ControlVarSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS6_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.r)
          to label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI12V3ControlVarSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE5clearEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI12V3ControlVarSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE5clearEv.exit: ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit17
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.u, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.y, ptr nonnull @.str.168, ptr nonnull @.str.169, i32 41, ptr null) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not28 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI12V3ControlVarSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE5clearEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.i

._crit_edge:                                      ; preds = %bb.k, %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI12V3ControlVarSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE5clearEv.exit
  %i.ae = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit18

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %._crit_edge
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23 ; 0 uses
  %.pre = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41
  %i.ah = trunc nuw i8 %.pre to i1
  br i1 %i.ah, label %bb.g, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit18

bb.g:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit
  %i.ai = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit18

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit18: ; preds = %._crit_edge, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.021.029 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ao, %bb.k ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 32
  %i.al = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ad, ptr nonnull @.str.168, ptr nonnull @.str.169, i32 41, ptr null)
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12V3ControlVarSt4lessIS6_ESaISt4pairIS6_S7_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 64
  invoke void @_ZN12V3ControlVar6updateERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.029) #27 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ac
  br i1 %.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19

bb.m:                                             ; preds = %bb.l
  %i.as = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19: ; preds = %bb.m, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  %i.at = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !52, !range !41, !noundef !42
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.n, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit20

bb.n:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit20

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit20: ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit19, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3ControlVar6updateERKS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250  ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.f                       ; 4 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = icmp ult i64 %i.r, %i.m
  br i1 %i.s, label %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 10 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !254    ; 11 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit.i
  %2 = ptrtoaddr ptr %i.v to i64                  ; 3 uses
  %i.w = ptrtoaddr ptr %i.u to i64
  %3 = sub i64 %2, %i.w                           ; 7 uses
  %min.iters.check = icmp ult i64 %3, 8
  %4 = ptrtoaddr ptr %i.t to i64
  %5 = ptrtoaddr ptr %i.u to i64
  %i.x = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %3, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.z = getelementptr i8, ptr %i.t, i64 %n.vec
  %i.aa = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.ab = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !253, !alias.scope !816, !noalias !815
  %wide.load17 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !253, !alias.scope !816, !noalias !815
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !253, !alias.scope !815, !noalias !816
  store <16 x i8> %wide.load17, ptr %i.ac, align 1, !tbaa !253, !alias.scope !815, !noalias !816
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !257

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %3, -8                       ; 4 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %n.vec19
  %i.af = getelementptr i8, ptr %i.u, i64 %n.vec19
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.t, i64 %index20
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %index20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %wide.load23 = load <8 x i8>, ptr %next.gep22, align 1, !tbaa !253, !alias.scope !816, !noalias !815
  store <8 x i8> %wide.load23, ptr %next.gep21, align 1, !tbaa !253, !alias.scope !815, !noalias !816
  %index.next24 = add nuw i64 %index20, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !798

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %3, %n.vec19
  br i1 %cmp.n25, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph28 = ptrtoaddr ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.ah = sub i64 %2, %.0911.i.i.i.i.ph28
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.ai = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !253, !alias.scope !816, !noalias !815
  store i8 %i.ai, ptr %.012.i.i.i.i.prol, align 1, !tbaa !253, !alias.scope !815, !noalias !816
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !799

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
  %i.al = sub i64 %.0911.i.i.i.i.ph28, %2
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.an = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !253, !alias.scope !816, !noalias !815
  store i8 %i.an, ptr %.012.i.i.i.i, align 1, !tbaa !253, !alias.scope !815, !noalias !816
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !253, !alias.scope !818, !noalias !817
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !253, !alias.scope !817, !noalias !818
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !253, !alias.scope !820, !noalias !819
  store i8 %i.at, ptr %i.as, align 1, !tbaa !253, !alias.scope !819, !noalias !820
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !253, !alias.scope !822, !noalias !821
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !253, !alias.scope !821, !noalias !822
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !253, !alias.scope !824, !noalias !823
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !253, !alias.scope !823, !noalias !824
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !253, !alias.scope !826, !noalias !825
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !253, !alias.scope !825, !noalias !826
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !253, !alias.scope !828, !noalias !827
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !253, !alias.scope !827, !noalias !828
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !253, !alias.scope !830, !noalias !829
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !253, !alias.scope !829, !noalias !830
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.bj, %i.v
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !814

_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bl = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.u to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bo) #24
  br label %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI9VAttrTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.t, ptr %0, align 8, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !250
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store ptr %i.bq, ptr %i.o, align 8, !tbaa !251
  %.pre = load ptr, ptr %1, align 8, !tbaa !301
  %.pre7 = load ptr, ptr %i.g, align 8, !tbaa !301
  br label %_ZNSt6vectorI9VAttrTypeSaIS0_EE7reserveEm.exit

_ZNSt6vectorI9VAttrTypeSaIS0_EE7reserveEm.exit:   ; preds = %bb.c, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.br = phi ptr [ %i.c, %bb.c ], [ %i.t, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.bs = phi ptr [ %i.h, %bb.c ], [ %.pre7, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.bt = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.f
  tail call void @_ZNSt6vectorI9VAttrTypeSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEvNS5_IPS0_S2_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bu, ptr %i.bt, ptr %i.bs)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI9VAttrTypeSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEvNS5_IPS0_S2_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 6 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !251
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250  ; 22 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 9 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.d
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 13 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %iter.check181, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit

iter.check181:                                    ; preds = %bb.c
  %i.o = sub i64 0, %i.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 6 uses
  %min.iters.check165 = icmp ult i64 %i.d, 8
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %iter.check181
  %min.iters.check167 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check167, label %vec.epilog.ph185, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %i.q = and i64 %i.d, 24
  %n.vec169 = and i64 %i.d, -32                   ; 5 uses
  %i.r = getelementptr i8, ptr %i.h, i64 %n.vec169
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec169
  br label %vector.body170

vector.body170:                                   ; preds = %vector.ph168, %vector.body170
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 3 uses
  %next.gep172 = getelementptr i8, ptr %i.h, i64 %index171 ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.p, i64 %index171 ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load174 = load <16 x i8>, ptr %next.gep173, align 1, !tbaa !253
  %wide.load175 = load <16 x i8>, ptr %i.t, align 1, !tbaa !253
  %i.u = getelementptr i8, ptr %next.gep172, i64 16
  store <16 x i8> %wide.load174, ptr %next.gep172, align 1, !tbaa !253
  store <16 x i8> %wide.load175, ptr %i.u, align 1, !tbaa !253
  %index.next176 = add nuw i64 %index171, 32      ; 2 uses
  %i.v = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.v, label %middle.block177, label %vector.body170, !llvm.loop !831

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.d, %n.vec169
  br i1 %cmp.n178, label %_ZSt22__uninitialized_move_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block177
  %min.epilog.iters.check184 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check184, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph185, !prof !257

vec.epilog.ph185:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check183
  %vec.epilog.resume.val179 = phi i64 [ %n.vec169, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check166 ]
  %n.vec186 = and i64 %i.d, -8                    ; 4 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %n.vec186
  %i.x = getelementptr i8, ptr %i.p, i64 %n.vec186
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph185
  %index188 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph185 ], [ %index.next192, %vec.epilog.vector.body187 ] ; 3 uses
  %next.gep189 = getelementptr i8, ptr %i.h, i64 %index188
  %next.gep190 = getelementptr i8, ptr %i.p, i64 %index188
  %wide.load191 = load <8 x i8>, ptr %next.gep190, align 1, !tbaa !253
  store <8 x i8> %wide.load191, ptr %next.gep189, align 1, !tbaa !253
  %index.next192 = add nuw i64 %index188, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next192, %n.vec186
  br i1 %i.y, label %vec.epilog.middle.block193, label %vec.epilog.vector.body187, !llvm.loop !832

vec.epilog.middle.block193:                       ; preds = %vec.epilog.vector.body187
  %cmp.n194 = icmp eq i64 %i.d, %n.vec186
  br i1 %cmp.n194, label %_ZSt22__uninitialized_move_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check181, %vec.epilog.iter.check183, %vec.epilog.middle.block193
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %iter.check181 ], [ %i.r, %vec.epilog.iter.check183 ], [ %i.w, %vec.epilog.middle.block193 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %iter.check181 ], [ %i.s, %vec.epilog.iter.check183 ], [ %i.x, %vec.epilog.middle.block193 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.z = load i8, ptr %.sroa.08.012.i.i.i.i.i, align 1, !tbaa !253
  store i8 %i.z, ptr %.013.i.i.i.i.i, align 1, !tbaa !253
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !833

_ZSt22__uninitialized_move_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block193, %middle.block177
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !250
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = sub i64 %i.ad, %i.l                     ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ag = sub nsw i64 0, %i.ae
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI9VAttrTypeSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEvNS5_IPS0_S2_EET_SB_St20forward_iterator_tag:bb.a
  %i.el = and i64 %i.ek, 24
  %n.vec201 = and i64 %i.ek, -32                  ; 5 uses
  %i.em = getelementptr i8, ptr %i.ej, i64 %n.vec201 ; 2 uses
  %i.en = getelementptr i8, ptr %i.dz, i64 %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.ph200, %vector.body202
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next208, %vector.body202 ] ; 3 uses
  %next.gep204 = getelementptr i8, ptr %i.ej, i64 %index203 ; 2 uses
  %next.gep205 = getelementptr i8, ptr %i.dz, i64 %index203 ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep205, i64 16
  %wide.load206 = load <16 x i8>, ptr %next.gep205, align 1, !tbaa !253
  %wide.load207 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !253
  %i.ep = getelementptr i8, ptr %next.gep204, i64 16
  store <16 x i8> %wide.load206, ptr %next.gep204, align 1, !tbaa !253
  store <16 x i8> %wide.load207, ptr %i.ep, align 1, !tbaa !253
  %index.next208 = add nuw i64 %index203, 32      ; 2 uses
  %i.eq = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.eq, label %middle.block209, label %vector.body202, !llvm.loop !842

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.ek, %n.vec201
  br i1 %cmp.n210, label %iter.check248, label %vec.epilog.iter.check215

vec.epilog.iter.check215:                         ; preds = %middle.block209
  %min.epilog.iters.check216 = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check216, label %.lr.ph.i.i.i.i.i60.preheader, label %vec.epilog.ph217, !prof !257

vec.epilog.ph217:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check215
  %vec.epilog.resume.val211 = phi i64 [ %n.vec201, %vec.epilog.iter.check215 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec218 = and i64 %i.ek, -8                   ; 4 uses
  %i.er = getelementptr i8, ptr %i.ej, i64 %n.vec218 ; 2 uses
  %i.es = getelementptr i8, ptr %i.dz, i64 %n.vec218
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph217
  %index220 = phi i64 [ %vec.epilog.resume.val211, %vec.epilog.ph217 ], [ %index.next224, %vec.epilog.vector.body219 ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.ej, i64 %index220
  %next.gep222 = getelementptr i8, ptr %i.dz, i64 %index220
  %wide.load223 = load <8 x i8>, ptr %next.gep222, align 1, !tbaa !253
  store <8 x i8> %wide.load223, ptr %next.gep221, align 1, !tbaa !253
  %index.next224 = add nuw i64 %index220, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.et, label %vec.epilog.middle.block225, label %vec.epilog.vector.body219, !llvm.loop !843

vec.epilog.middle.block225:                       ; preds = %vec.epilog.vector.body219
  %cmp.n226 = icmp eq i64 %i.ek, %n.vec218
  br i1 %cmp.n226, label %iter.check248, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %iter.check213, %vec.epilog.iter.check215, %vec.epilog.middle.block225
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.ej, %iter.check213 ], [ %i.em, %vec.epilog.iter.check215 ], [ %i.er, %vec.epilog.middle.block225 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.dz, %iter.check213 ], [ %i.en, %vec.epilog.iter.check215 ], [ %i.es, %vec.epilog.middle.block225 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader ] ; 2 uses
  %i.eu = load i8, ptr %.sroa.08.012.i.i.i.i.i62, align 1, !tbaa !253
  store i8 %i.eu, ptr %.013.i.i.i.i.i61, align 1, !tbaa !253
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 1 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.ev, %1
  br i1 %.not.i.i.i.i.i63, label %iter.check248, label %.lr.ph.i.i.i.i.i60, !llvm.loop !844

iter.check248:                                    ; preds = %.lr.ph.i.i.i.i.i60, %middle.block209, %vec.epilog.middle.block225, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.ej, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE11_M_allocateEm.exit ], [ %i.er, %vec.epilog.middle.block225 ], [ %i.em, %middle.block209 ], [ %i.ew, %.lr.ph.i.i.i.i.i60 ] ; 6 uses
  %min.iters.check232 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i.i.i.i64230 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.ex = sub i64 %i.c, %.0.lcssa.i.i.i.i.i64230
  %diff.check231 = icmp ugt i64 %i.ex, -32
  %or.cond300 = select i1 %min.iters.check232, i1 true, i1 %diff.check231
  br i1 %or.cond300, label %.lr.ph.i.i.i.i66.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %iter.check248
  %min.iters.check234 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check234, label %vec.epilog.ph252, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %i.ey = and i64 %i.d, 24
  %n.vec236 = and i64 %i.d, -32                   ; 5 uses
  %i.ez = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %n.vec236 ; 2 uses
  %i.fa = getelementptr i8, ptr %2, i64 %n.vec236
  br label %vector.body237

vector.body237:                                   ; preds = %vector.ph235, %vector.body237
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body237 ] ; 3 uses
  %next.gep239 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %index238 ; 2 uses
  %next.gep240 = getelementptr i8, ptr %2, i64 %index238 ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load241 = load <16 x i8>, ptr %next.gep240, align 1, !tbaa !253
  %wide.load242 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !253
  %i.fc = getelementptr i8, ptr %next.gep239, i64 16
  store <16 x i8> %wide.load241, ptr %next.gep239, align 1, !tbaa !253
  store <16 x i8> %wide.load242, ptr %i.fc, align 1, !tbaa !253
  %index.next243 = add nuw i64 %index238, 32      ; 2 uses
  %i.fd = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.fd, label %middle.block244, label %vector.body237, !llvm.loop !845

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.d, %n.vec236
  br i1 %cmp.n245, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %middle.block244
  %min.epilog.iters.check251 = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check251, label %.lr.ph.i.i.i.i66.preheader, label %vec.epilog.ph252, !prof !257

vec.epilog.ph252:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check250
  %vec.epilog.resume.val246 = phi i64 [ %n.vec236, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec253 = and i64 %i.d, -8                    ; 4 uses
  %i.fe = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %n.vec253 ; 2 uses
  %i.ff = getelementptr i8, ptr %2, i64 %n.vec253
  br label %vec.epilog.vector.body254

vec.epilog.vector.body254:                        ; preds = %vec.epilog.vector.body254, %vec.epilog.ph252
  %index255 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph252 ], [ %index.next259, %vec.epilog.vector.body254 ] ; 3 uses
  %next.gep256 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %index255
  %next.gep257 = getelementptr i8, ptr %2, i64 %index255
  %wide.load258 = load <8 x i8>, ptr %next.gep257, align 1, !tbaa !253
  store <8 x i8> %wide.load258, ptr %next.gep256, align 1, !tbaa !253
  %index.next259 = add nuw i64 %index255, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next259, %n.vec253
  br i1 %i.fg, label %vec.epilog.middle.block260, label %vec.epilog.vector.body254, !llvm.loop !846

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body254
  %cmp.n261 = icmp eq i64 %i.d, %n.vec253
  br i1 %cmp.n261, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %iter.check248, %vec.epilog.iter.check250, %vec.epilog.middle.block260
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %iter.check248 ], [ %i.ez, %vec.epilog.iter.check250 ], [ %i.fe, %vec.epilog.middle.block260 ] ; 2 uses
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %iter.check248 ], [ %i.fa, %vec.epilog.iter.check250 ], [ %i.ff, %vec.epilog.middle.block260 ] ; 3 uses
  %.sroa.04.08.i.i.i.i68.ph309 = ptrtoaddr ptr %.sroa.04.08.i.i.i.i68.ph to i64 ; 2 uses
  %i.fh = sub i64 %i.b, %.sroa.04.08.i.i.i.i68.ph309
  %xtraiter310 = and i64 %i.fh, 7                 ; 2 uses
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i66.prol

.lr.ph.i.i.i.i66.prol:                            ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66.prol
  %.09.i.i.i.i67.prol = phi ptr [ %i.fk, %.lr.ph.i.i.i.i66.prol ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68.prol = phi ptr [ %i.fj, %.lr.ph.i.i.i.i66.prol ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %prol.iter312 = phi i64 [ %prol.iter312.next, %.lr.ph.i.i.i.i66.prol ], [ 0, %.lr.ph.i.i.i.i66.preheader ]
  %i.fi = load i8, ptr %.sroa.04.08.i.i.i.i68.prol, align 1, !tbaa !253
  store i8 %i.fi, ptr %.09.i.i.i.i67.prol, align 1, !tbaa !253
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68.prol, i64 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67.prol, i64 1 ; 3 uses
  %prol.iter312.next = add i64 %prol.iter312, 1   ; 2 uses
  %prol.iter312.cmp.not = icmp eq i64 %prol.iter312.next, %xtraiter310
  br i1 %prol.iter312.cmp.not, label %.lr.ph.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i66.prol, !llvm.loop !847

.lr.ph.i.i.i.i66.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i66.prol, %.lr.ph.i.i.i.i66.preheader
  %.lcssa302.unr = phi ptr [ poison, %.lr.ph.i.i.i.i66.preheader ], [ %i.fk, %.lr.ph.i.i.i.i66.prol ]
  %.09.i.i.i.i67.unr = phi ptr [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ], [ %i.fk, %.lr.ph.i.i.i.i66.prol ]
  %.sroa.04.08.i.i.i.i68.unr = phi ptr [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ], [ %i.fj, %.lr.ph.i.i.i.i66.prol ]
  %i.fl = sub i64 %.sroa.04.08.i.i.i.i68.ph309, %i.b
  %i.fm = icmp ugt i64 %i.fl, -8
  br i1 %i.fm, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.unr, %.lr.ph.i.i.i.i66.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.gj, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.unr, %.lr.ph.i.i.i.i66.prol.loopexit ] ; 9 uses
  %i.fn = load i8, ptr %.sroa.04.08.i.i.i.i68, align 1, !tbaa !253
  store i8 %i.fn, ptr %.09.i.i.i.i67, align 1, !tbaa !253
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 1
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !253
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !253
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 2
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !253
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !253
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 3
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !253
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !253
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 4
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !253
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !253
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 5
  %i.gb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 5
  %i.gc = load i8, ptr %i.ga, align 1, !tbaa !253
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !253
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 6
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 6
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !253
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !253
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 7
  %i.gh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 7
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !253
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !253
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69.7 = icmp eq ptr %i.gj, %3
  br i1 %.not.i.i.i.i69.7, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !848

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i66, %vec.epilog.middle.block260, %middle.block244
  %.lcssa116 = phi ptr [ %i.fe, %vec.epilog.middle.block260 ], [ %i.ez, %middle.block244 ], [ %.lcssa302.unr, %.lr.ph.i.i.i.i66.prol.loopexit ], [ %i.gk, %.lr.ph.i.i.i.i66 ] ; 7 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, label %iter.check283

iter.check283:                                    ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71
  %i.gl = sub i64 %i.j, %i.a                      ; 7 uses
  %min.iters.check267 = icmp ult i64 %i.gl, 8
  %4 = ptrtoaddr ptr %.lcssa116 to i64
  %i.gm = sub i64 %i.a, %4
  %diff.check266 = icmp ugt i64 %i.gm, -32
  %or.cond301 = select i1 %min.iters.check267, i1 true, i1 %diff.check266
  br i1 %or.cond301, label %.lr.ph.i.i.i.i.i73.preheader, label %vector.main.loop.iter.check268

vector.main.loop.iter.check268:                   ; preds = %iter.check283
  %min.iters.check269 = icmp ult i64 %i.gl, 32
  br i1 %min.iters.check269, label %vec.epilog.ph287, label %vector.ph270

vector.ph270:                                     ; preds = %vector.main.loop.iter.check268
  %i.gn = and i64 %i.gl, 24
  %n.vec271 = and i64 %i.gl, -32                  ; 5 uses
  %i.go = getelementptr i8, ptr %.lcssa116, i64 %n.vec271 ; 2 uses
  %i.gp = getelementptr i8, ptr %1, i64 %n.vec271
  br label %vector.body272

vector.body272:                                   ; preds = %vector.ph270, %vector.body272
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %.lcssa116, i64 %index273 ; 2 uses
  %next.gep275 = getelementptr i8, ptr %1, i64 %index273 ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <16 x i8>, ptr %next.gep275, align 1, !tbaa !253
  %wide.load277 = load <16 x i8>, ptr %i.gq, align 1, !tbaa !253
  %i.gr = getelementptr i8, ptr %next.gep274, i64 16
  store <16 x i8> %wide.load276, ptr %next.gep274, align 1, !tbaa !253
  store <16 x i8> %wide.load277, ptr %i.gr, align 1, !tbaa !253
  %index.next278 = add nuw i64 %index273, 32      ; 2 uses
  %i.gs = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.gs, label %middle.block279, label %vector.body272, !llvm.loop !849

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.gl, %n.vec271
  br i1 %cmp.n280, label %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block279
  %min.epilog.iters.check286 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph.i.i.i.i.i73.preheader, label %vec.epilog.ph287, !prof !257

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check268, %vec.epilog.iter.check285
  %vec.epilog.resume.val281 = phi i64 [ %n.vec271, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check268 ]
  %n.vec288 = and i64 %i.gl, -8                   ; 4 uses
  %i.gt = getelementptr i8, ptr %.lcssa116, i64 %n.vec288 ; 2 uses
  %i.gu = getelementptr i8, ptr %1, i64 %n.vec288
  br label %vec.epilog.vector.body289

vec.epilog.vector.body289:                        ; preds = %vec.epilog.vector.body289, %vec.epilog.ph287
  %index290 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph287 ], [ %index.next294, %vec.epilog.vector.body289 ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %.lcssa116, i64 %index290
  %next.gep292 = getelementptr i8, ptr %1, i64 %index290
  %wide.load293 = load <8 x i8>, ptr %next.gep292, align 1, !tbaa !253
  store <8 x i8> %wide.load293, ptr %next.gep291, align 1, !tbaa !253
  %index.next294 = add nuw i64 %index290, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next294, %n.vec288
  br i1 %i.gv, label %vec.epilog.middle.block295, label %vec.epilog.vector.body289, !llvm.loop !850

vec.epilog.middle.block295:                       ; preds = %vec.epilog.vector.body289
  %cmp.n296 = icmp eq i64 %i.gl, %n.vec288
  br i1 %cmp.n296, label %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block295
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa116, %iter.check283 ], [ %i.go, %vec.epilog.iter.check285 ], [ %i.gt, %vec.epilog.middle.block295 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %iter.check283 ], [ %i.gp, %vec.epilog.iter.check285 ], [ %i.gu, %vec.epilog.middle.block295 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i75.ph313 = ptrtoaddr ptr %.sroa.08.012.i.i.i.i.i75.ph to i64 ; 2 uses
  %i.gw = sub i64 %i.j, %.sroa.08.012.i.i.i.i.i75.ph313
  %xtraiter314 = and i64 %i.gw, 7                 ; 2 uses
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %.lr.ph.i.i.i.i.i73.prol.loopexit, label %.lr.ph.i.i.i.i.i73.prol

.lr.ph.i.i.i.i.i73.prol:                          ; preds = %.lr.ph.i.i.i.i.i73.preheader, %.lr.ph.i.i.i.i.i73.prol
  %.013.i.i.i.i.i74.prol = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i73.prol ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i73.prol ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 2 uses
  %prol.iter316 = phi i64 [ %prol.iter316.next, %.lr.ph.i.i.i.i.i73.prol ], [ 0, %.lr.ph.i.i.i.i.i73.preheader ]
  %i.gx = load i8, ptr %.sroa.08.012.i.i.i.i.i75.prol, align 1, !tbaa !253
  store i8 %i.gx, ptr %.013.i.i.i.i.i74.prol, align 1, !tbaa !253
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75.prol, i64 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74.prol, i64 1 ; 3 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %.lr.ph.i.i.i.i.i73.prol.loopexit, label %.lr.ph.i.i.i.i.i73.prol, !llvm.loop !851

.lr.ph.i.i.i.i.i73.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i73.prol, %.lr.ph.i.i.i.i.i73.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.gz, %.lr.ph.i.i.i.i.i73.prol ]
  %.013.i.i.i.i.i74.unr = phi ptr [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.gz, %.lr.ph.i.i.i.i.i73.prol ]
  %.sroa.08.012.i.i.i.i.i75.unr = phi ptr [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.gy, %.lr.ph.i.i.i.i.i73.prol ]
  %i.ha = sub i64 %.sroa.08.012.i.i.i.i.i75.ph313, %i.j
  %i.hb = icmp ugt i64 %i.ha, -8
  br i1 %i.hb, label %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.prol.loopexit, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.unr, %.lr.ph.i.i.i.i.i73.prol.loopexit ] ; 9 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.unr, %.lr.ph.i.i.i.i.i73.prol.loopexit ] ; 9 uses
  %i.hc = load i8, ptr %.sroa.08.012.i.i.i.i.i75, align 1, !tbaa !253
  store i8 %i.hc, ptr %.013.i.i.i.i.i74, align 1, !tbaa !253
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 1
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !253
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !253
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 2
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 2
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !253
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !253
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 3
  %i.hk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 3
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !253
  store i8 %i.hl, ptr %i.hk, align 1, !tbaa !253
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 4
  %i.ho = load i8, ptr %i.hm, align 1, !tbaa !253
  store i8 %i.ho, ptr %i.hn, align 1, !tbaa !253
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 5
  %i.hq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 5
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !253
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !253
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 6
  %i.ht = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 6
  %i.hu = load i8, ptr %i.hs, align 1, !tbaa !253
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !253
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 7
  %i.hw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 7
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !253
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !253
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76.7 = icmp eq ptr %i.hy, %i.h
  br i1 %.not.i.i.i.i.i76.7, label %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !852

_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73.prol.loopexit, %.lr.ph.i.i.i.i.i73, %middle.block279, %vec.epilog.middle.block295, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa116, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit71 ], [ %i.gt, %vec.epilog.middle.block295 ], [ %i.go, %middle.block279 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i73.prol.loopexit ], [ %i.hz, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.dz, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78
  %i.ia = load ptr, ptr %i.e, align 8, !tbaa !251
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ic) #24
  br label %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP9VAttrTypeS1_SaIS0_EET0_T_S4_S3_RT1_.exit78, %bb.p
  store ptr %i.ej, ptr %0, align 8, !tbaa !254
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !250
  %i.id = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store ptr %i.id, ptr %i.e, align 8, !tbaa !251
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9VAttrTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt12_Vector_baseI9VAttrTypeSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI14V3ControlFTaskSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE7emplaceIJRS6_DnEEESE_ISt17_Rb_tree_iteratorISF_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !196 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI14V3ControlFTaskSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !853

_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI14V3ControlFTaskSt14default_deleteIS8_EESt4lessIS6_ESaISt4pairIS6_SB_EEE11lower_boundERS6_.exit: ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

end_hunk_1
