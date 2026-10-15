Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !152 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1249

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !29
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #29 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.f, ptr %i.a, align 8, !tbaa !27
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !29
  %i.i = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.i, ptr %i.c, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !30
  store i8 %i.k, ptr %i.j, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  store ptr %i.r, ptr %i.p, align 8, !tbaa !170
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8SparsityEEEEE9constructISB_JRKSB_EEEvRSD_PT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !tbaa !30
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %.body

bb.e:                                             ; preds = %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #30
  invoke void @__cxa_rethrow() #28
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8SparsityEEEEE9constructISB_JRKSB_EEEvRSD_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ret void

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.aa

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi30casadi_dense_lsqr_single_solveIdEEiPKT_PS1_xxxS4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = getelementptr [8 x i8], ptr %5, i64 %3   ; 43 uses
  %.not.i = icmp ne ptr %5, null                  ; 4 uses
  br i1 %.not.i, label %bb.b, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = icmp sgt i64 %4, 0
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit279

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %1, null
  %i.f = icmp sgt i64 %3, 0                       ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %3, 8
  %i.g = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader736, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %5, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.k  ; 2 uses
  %next.gep545 = getelementptr i8, ptr %1, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep545, i64 16
  %wide.load = load <2 x double>, ptr %next.gep545, align 8, !tbaa !155
  %wide.load546 = load <2 x double>, ptr %i.l, align 8, !tbaa !155
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !155
  store <2 x double> %wide.load546, ptr %i.m, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader736

.lr.ph.i.preheader736:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %5, %.lr.ph.i.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.j, %middle.block ] ; 2 uses
  %i.o = sub nsw i64 %3, %.020.i.ph
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader736, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader736 ]
  %.01019.i.prol = phi ptr [ %i.r, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader736 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.p, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader736 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader736 ]
  %i.p = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.q = load double, ptr %.01218.i.prol, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.q, ptr %.01019.i.prol, align 8, !tbaa !155
  %i.s = add nuw nsw i64 %.020.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1251

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader736
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader736 ], [ %i.s, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader736 ], [ %i.r, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader736 ], [ %i.p, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %.020.i.ph, %3
  %i.u = icmp ugt i64 %i.t, -8
  br i1 %i.u, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.f, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.v = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %5, i8 0, i64 %i.v, i1 false), !tbaa !155
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.au, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.x = load double, ptr %.01218.i, align 8, !tbaa !155
  %i.y = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.x, ptr %.01019.i, align 8, !tbaa !155
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.aa = load double, ptr %i.w, align 8, !tbaa !155
  %i.ab = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.aa, ptr %i.y, align 8, !tbaa !155
  %i.ac = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ad = load double, ptr %i.z, align 8, !tbaa !155
  %i.ae = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ad, ptr %i.ab, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !155
  %i.ah = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ag, ptr %i.ae, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.aj = load double, ptr %i.af, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.aj, ptr %i.ah, align 8, !tbaa !155
  %i.al = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.am = load double, ptr %i.ai, align 8, !tbaa !155
  %i.an = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.am, ptr %i.ak, align 8, !tbaa !155
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ap = load double, ptr %i.al, align 8, !tbaa !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ap, ptr %i.an, align 8, !tbaa !155
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.as = load double, ptr %i.ao, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.as, ptr %i.aq, align 8, !tbaa !155
  %i.au = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.au, %3
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !1252

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.av = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4 ; 3 uses
  %i.aw = icmp sgt i64 %4, 0
  br i1 %i.aw, label %.lr.ph.preheader.i278, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit279

.lr.ph.preheader.i278:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ax = shl nuw i64 %4, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.ax, i1 false), !tbaa !155
  %i.ay = shl nuw i64 %4, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %i.ay, i1 false), !tbaa !155
  %i.az = shl nuw i64 %4, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.az, i1 false), !tbaa !155
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit279

_ZN6casadi12casadi_clearIdEEvPT_x.exit279:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %.lr.ph.preheader.i278
  %or.cond.i509512514 = phi i1 [ true, %.lr.ph.preheader.i278 ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ]
  %6 = phi i1 [ true, %.lr.ph.preheader.i278 ], [ %i.e, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 7 uses
  %7 = phi ptr [ %i.av, %.lr.ph.preheader.i278 ], [ %i.d, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.av, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 3 uses
  %8 = ptrtoaddr ptr %7 to i64
  %9 = getelementptr [8 x i8], ptr %i.c, i64 %4   ; 2 uses
  %10 = getelementptr [8 x i8], ptr %9, i64 %4    ; 17 uses
  %i.ba = getelementptr [8 x i8], ptr %10, i64 %4 ; 6 uses
  %i.bb = icmp sgt i64 %3, 0                      ; 6 uses
  br i1 %i.bb, label %.lr.ph.i.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph.i.i.preheader:                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit279
  %i.bc = add nsw i64 %3, -1
  %xtraiter737 = and i64 %3, 3                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %3, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.bp, %.lr.ph.i.i ]
  %.0710.i.i = phi ptr [ %5, %.lr.ph.i.i.preheader.new ], [ %i.bn, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.be = getelementptr i8, ptr %.0710.i.i, i64 8
  %i.bf = load double, ptr %.0710.i.i, align 8, !tbaa !155 ; 2 uses
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %.012.i.i)
  %i.bh = getelementptr i8, ptr %.0710.i.i, i64 16
  %i.bi = load double, ptr %i.be, align 8, !tbaa !155 ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.bg)
  %i.bk = getelementptr i8, ptr %.0710.i.i, i64 24
  %i.bl = load double, ptr %i.bh, align 8, !tbaa !155 ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bj)
  %i.bn = getelementptr i8, ptr %.0710.i.i, i64 32 ; 2 uses
  %i.bo = load double, ptr %i.bk, align 8, !tbaa !155 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bm) ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod738.not = icmp eq i64 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.bp, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %.0710.i.i.epil.init = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.bn, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod740 = icmp ne i64 %xtraiter737, 0
  tail call void @llvm.assume(i1 %lcmp.mod740)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi double [ %i.bs, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0710.i.i.epil = phi ptr [ %i.bq, %.lr.ph.i.i.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bq = getelementptr i8, ptr %.0710.i.i.epil, i64 8
  %i.br = load double, ptr %.0710.i.i.epil, align 8, !tbaa !155 ; 2 uses
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %.012.i.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter737
  br i1 %epil.iter.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil, !llvm.loop !1253

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit:       ; preds = %.lr.ph.i.i.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa
  %.lcssa735.a = phi double [ %i.bp, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ], [ %i.bs, %.lr.ph.i.i.epil ]
  %i.bt = tail call noundef double @sqrt(double noundef %.lcssa735.a) #29 ; 11 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %.lr.ph, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph:                                           ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.bv = fdiv nnan double 1.000000e+00, %i.bt    ; 2 uses
  %min.iters.check550 = icmp ult i64 %3, 4
  br i1 %min.iters.check550, label %scalar.ph549.preheader, label %vector.ph551

vector.ph551:                                     ; preds = %.lr.ph
  %n.vec552 = and i64 %3, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph551
  %index554 = phi i64 [ 0, %vector.ph551 ], [ %index.next557, %vector.body553 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index554 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load555 = load <2 x double>, ptr %i.bw, align 8, !tbaa !155
  %wide.load556 = load <2 x double>, ptr %i.bx, align 8, !tbaa !155
  %i.by = fmul <2 x double> %broadcast.splat, %wide.load555
  %i.bz = fmul <2 x double> %broadcast.splat, %wide.load556
  store <2 x double> %i.by, ptr %i.bw, align 8, !tbaa !155
  store <2 x double> %i.bz, ptr %i.bx, align 8, !tbaa !155
  %index.next557 = add nuw i64 %index554, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next557, %n.vec552
  br i1 %i.ca, label %middle.block558, label %vector.body553, !llvm.loop !1254

middle.block558:                                  ; preds = %vector.body553
  %cmp.n559 = icmp eq i64 %3, %n.vec552
  br i1 %cmp.n559, label %._crit_edge, label %scalar.ph549.preheader

scalar.ph549.preheader:                           ; preds = %.lr.ph, %middle.block558
  %.0252420.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec552, %middle.block558 ]
  br label %scalar.ph549

scalar.ph549:                                     ; preds = %scalar.ph549.preheader, %scalar.ph549
  %.0252420 = phi i64 [ %i.ce, %scalar.ph549 ], [ %.0252420.ph, %scalar.ph549.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.0252420 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !155
  %i.cd = fmul double %i.bv, %i.cc
  store double %i.cd, ptr %i.cb, align 8, !tbaa !155
  %i.ce = add nuw nsw i64 %.0252420, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph549, !llvm.loop !1255

._crit_edge:                                      ; preds = %scalar.ph549, %middle.block558
  %i.cf = icmp ne ptr %0, null
  %or.cond.i280 = and i1 %i.cf, %.not.i
  br i1 %or.cond.i280, label %bb.c, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit

bb.c:                                             ; preds = %._crit_edge
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %.preheader37.i, label %.preheader35.i

.preheader37.i:                                   ; preds = %bb.c
  br i1 %6, label %.preheader36.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.preheader36.i.preheader:                         ; preds = %.preheader37.i
  %xtraiter749 = and i64 %4, 1
  %i.cg = icmp eq i64 %4, 1
  %unroll_iter754 = and i64 %4, -2
  %lcmp.mod751.not = icmp eq i64 %xtraiter749, 0
  %lcmp.mod753 = trunc i64 %4 to i1
  br label %.preheader36.i

.preheader35.i:                                   ; preds = %bb.c
  br i1 %6, label %.preheader.i283.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.preheader.i283.preheader:                        ; preds = %.preheader35.i
  %xtraiter741 = and i64 %4, 1
  %i.ch = icmp eq i64 %4, 1
  %unroll_iter746 = and i64 %4, -2
  %lcmp.mod743.not = icmp eq i64 %xtraiter741, 0
  %lcmp.mod745 = trunc i64 %4 to i1
  br label %.preheader.i283

.preheader36.i:                                   ; preds = %.preheader36.i.preheader, %._crit_edge.i
  %.02842.i = phi i64 [ %i.db, %._crit_edge.i ], [ 0, %.preheader36.i.preheader ] ; 2 uses
  %.03041.i = phi ptr [ %.lcssa732.a, %._crit_edge.i ], [ %0, %.preheader36.i.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i ; 4 uses
  %.promoted.i = load double, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  br i1 %i.cg, label %.epil.preheader748, label %.preheader36.i.new

.preheader36.i.new:                               ; preds = %.preheader36.i, %.preheader36.i.new
  %i.cj = phi double [ %i.cu, %.preheader36.i.new ], [ %.promoted.i, %.preheader36.i ]
  %.040.i = phi i64 [ %i.cv, %.preheader36.i.new ], [ 0, %.preheader36.i ] ; 3 uses
  %.13139.i = phi ptr [ %i.cp, %.preheader36.i.new ], [ %.03041.i, %.preheader36.i ] ; 3 uses
  %niter755 = phi i64 [ %niter755.next.1, %.preheader36.i.new ], [ 0, %.preheader36.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.13139.i, i64 8
  %i.cl = load double, ptr %.13139.i, align 8, !tbaa !155
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !155
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cn, double %i.cj) ; 2 uses
  store double %i.co, ptr %i.ci, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %.13139.i, i64 16 ; 3 uses
  %i.cq = load double, ptr %i.ck, align 8, !tbaa !155
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ct, double %i.co) ; 3 uses
  store double %i.cu, ptr %i.ci, align 8, !tbaa !155
  %i.cv = add nuw nsw i64 %.040.i, 2              ; 2 uses
  %niter755.next.1 = add i64 %niter755, 2         ; 2 uses
  %niter755.ncmp.1 = icmp eq i64 %niter755.next.1, %unroll_iter754
  br i1 %niter755.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader36.i.new, !llvm.loop !1256

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader36.i.new
  br i1 %lcmp.mod751.not, label %._crit_edge.i, label %.epil.preheader748

.epil.preheader748:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader36.i
  %.epil.init = phi double [ %.promoted.i, %.preheader36.i ], [ %i.cu, %._crit_edge.i.unr-lcssa ]
  %.040.i.epil.init = phi i64 [ 0, %.preheader36.i ], [ %i.cv, %._crit_edge.i.unr-lcssa ]
  %.13139.i.epil.init = phi ptr [ %.03041.i, %.preheader36.i ], [ %i.cp, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod753)
  %i.cw = getelementptr inbounds nuw i8, ptr %.13139.i.epil.init, i64 8
  %i.cx = load double, ptr %.13139.i.epil.init, align 8, !tbaa !155
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !155
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cz, double %.epil.init)
  store double %i.da, ptr %i.ci, align 8, !tbaa !155
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader748
  %.lcssa732.a = phi ptr [ %i.cp, %._crit_edge.i.unr-lcssa ], [ %i.cw, %.epil.preheader748 ]
  %i.db = add nuw nsw i64 %.02842.i, 1            ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.db, %3
  br i1 %exitcond53.not.i, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit, label %.preheader36.i, !llvm.loop !1257

.preheader.i283:                                  ; preds = %.preheader.i283.preheader, %._crit_edge45.i
  %.12948.i = phi i64 [ %i.dx, %._crit_edge45.i ], [ 0, %.preheader.i283.preheader ] ; 2 uses
  %.247.i = phi ptr [ %.lcssa734, %._crit_edge45.i ], [ %0, %.preheader.i283.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.preheader.i283.new

.preheader.i283.new:                              ; preds = %.preheader.i283, %.preheader.i283.new
  %.144.i = phi i64 [ %i.dq, %.preheader.i283.new ], [ 0, %.preheader.i283 ] ; 3 uses
  %.343.i = phi ptr [ %i.dj, %.preheader.i283.new ], [ %.247.i, %.preheader.i283 ] ; 3 uses
  %niter747 = phi i64 [ %niter747.next.1, %.preheader.i283.new ], [ 0, %.preheader.i283 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.343.i, i64 8
  %i.de = load double, ptr %.343.i, align 8, !tbaa !155
  %i.df = load double, ptr %i.dc, align 8, !tbaa !155
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !155
  %i.di = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dh)
  store double %i.di, ptr %i.dg, align 8, !tbaa !155
  %i.dj = getelementptr inbounds nuw i8, ptr %.343.i, i64 16 ; 3 uses
  %i.dk = load double, ptr %i.dd, align 8, !tbaa !155
  %i.dl = load double, ptr %i.dc, align 8, !tbaa !155
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !155
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dl, double %i.do)
  store double %i.dp, ptr %i.dn, align 8, !tbaa !155
  %i.dq = add nuw nsw i64 %.144.i, 2              ; 2 uses
  %niter747.next.1 = add i64 %niter747, 2         ; 2 uses
  %niter747.ncmp.1 = icmp eq i64 %niter747.next.1, %unroll_iter746
  br i1 %niter747.ncmp.1, label %._crit_edge45.i.unr-lcssa, label %.preheader.i283.new, !llvm.loop !1258

._crit_edge45.i.unr-lcssa:                        ; preds = %.preheader.i283.new
  br i1 %lcmp.mod743.not, label %._crit_edge45.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge45.i.unr-lcssa, %.preheader.i283
  %.144.i.epil.init = phi i64 [ 0, %.preheader.i283 ], [ %i.dq, %._crit_edge45.i.unr-lcssa ]
  %.343.i.epil.init = phi ptr [ %.247.i, %.preheader.i283 ], [ %i.dj, %._crit_edge45.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod745)
  %i.dr = getelementptr inbounds nuw i8, ptr %.343.i.epil.init, i64 8
  %i.ds = load double, ptr %.343.i.epil.init, align 8, !tbaa !155
  %i.dt = load double, ptr %i.dc, align 8, !tbaa !155
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i.epil.init ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !155
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dt, double %i.dv)
  store double %i.dw, ptr %i.du, align 8, !tbaa !155
  br label %._crit_edge45.i

._crit_edge45.i:                                  ; preds = %._crit_edge45.i.unr-lcssa, %.epil.preheader
  %.lcssa734 = phi ptr [ %i.dj, %._crit_edge45.i.unr-lcssa ], [ %i.dr, %.epil.preheader ]
  %i.dx = add nuw nsw i64 %.12948.i, 1            ; 2 uses
  %exitcond55.not.i = icmp eq i64 %i.dx, %3
  br i1 %exitcond55.not.i, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit, label %.preheader.i283, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit: ; preds = %._crit_edge45.i, %._crit_edge.i, %._crit_edge
  br i1 %6, label %.lr.ph.i.i285.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph.i.i285.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit
  %i.dy = add i64 %4, -1
  %xtraiter756 = and i64 %4, 3                    ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 3
  br i1 %i.dz, label %.lr.ph.i.i285.epil.preheader, label %.lr.ph.i.i285.preheader.new

.lr.ph.i.i285.preheader.new:                      ; preds = %.lr.ph.i.i285.preheader
  %unroll_iter761 = and i64 %4, -4
  br label %.lr.ph.i.i285

.lr.ph.i.i285:                                    ; preds = %.lr.ph.i.i285, %.lr.ph.i.i285.preheader.new
  %.012.i.i286 = phi double [ 0.000000e+00, %.lr.ph.i.i285.preheader.new ], [ %i.el, %.lr.ph.i.i285 ]
  %.0710.i.i288 = phi ptr [ %i.c, %.lr.ph.i.i285.preheader.new ], [ %i.ej, %.lr.ph.i.i285 ] ; 5 uses
  %niter762 = phi i64 [ 0, %.lr.ph.i.i285.preheader.new ], [ %niter762.next.3, %.lr.ph.i.i285 ]
  %i.ea = getelementptr i8, ptr %.0710.i.i288, i64 8
  %i.eb = load double, ptr %.0710.i.i288, align 8, !tbaa !155 ; 2 uses
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double %.012.i.i286)
  %i.ed = getelementptr i8, ptr %.0710.i.i288, i64 16
  %i.ee = load double, ptr %i.ea, align 8, !tbaa !155 ; 2 uses
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %i.ec)
  %i.eg = getelementptr i8, ptr %.0710.i.i288, i64 24
  %i.eh = load double, ptr %i.ed, align 8, !tbaa !155 ; 2 uses
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.ef)
  %i.ej = getelementptr i8, ptr %.0710.i.i288, i64 32 ; 2 uses
  %i.ek = load double, ptr %i.eg, align 8, !tbaa !155 ; 2 uses
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ek, double %i.ei) ; 3 uses
  %niter762.next.3 = add i64 %niter762, 4         ; 2 uses
  %niter762.ncmp.3 = icmp eq i64 %niter762.next.3, %unroll_iter761
  br i1 %niter762.ncmp.3, label %.loopexit407.unr-lcssa, label %.lr.ph.i.i285, !llvm.loop !4

.loopexit407.unr-lcssa:                           ; preds = %.lr.ph.i.i285
  %lcmp.mod758.not = icmp eq i64 %xtraiter756, 0
  br i1 %lcmp.mod758.not, label %.loopexit407, label %.lr.ph.i.i285.epil.preheader

.lr.ph.i.i285.epil.preheader:                     ; preds = %.loopexit407.unr-lcssa, %.lr.ph.i.i285.preheader
  %.012.i.i286.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i285.preheader ], [ %i.el, %.loopexit407.unr-lcssa ]
  %.0710.i.i288.epil.init = phi ptr [ %i.c, %.lr.ph.i.i285.preheader ], [ %i.ej, %.loopexit407.unr-lcssa ]
  %lcmp.mod760 = icmp ne i64 %xtraiter756, 0
  tail call void @llvm.assume(i1 %lcmp.mod760)
  br label %.lr.ph.i.i285.epil

.lr.ph.i.i285.epil:                               ; preds = %.lr.ph.i.i285.epil, %.lr.ph.i.i285.epil.preheader
  %.012.i.i286.epil = phi double [ %i.eo, %.lr.ph.i.i285.epil ], [ %.012.i.i286.epil.init, %.lr.ph.i.i285.epil.preheader ]
  %.0710.i.i288.epil = phi ptr [ %i.em, %.lr.ph.i.i285.epil ], [ %.0710.i.i288.epil.init, %.lr.ph.i.i285.epil.preheader ] ; 2 uses
  %epil.iter757 = phi i64 [ %epil.iter757.next, %.lr.ph.i.i285.epil ], [ 0, %.lr.ph.i.i285.epil.preheader ]
  %i.em = getelementptr i8, ptr %.0710.i.i288.epil, i64 8
  %i.en = load double, ptr %.0710.i.i288.epil, align 8, !tbaa !155 ; 2 uses
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %.012.i.i286.epil) ; 2 uses
  %epil.iter757.next = add i64 %epil.iter757, 1   ; 2 uses
  %epil.iter757.cmp.not = icmp eq i64 %epil.iter757.next, %xtraiter756
  br i1 %epil.iter757.cmp.not, label %.loopexit407, label %.lr.ph.i.i285.epil, !llvm.loop !1260

.loopexit407:                                     ; preds = %.lr.ph.i.i285.epil, %.loopexit407.unr-lcssa
  %.lcssa731 = phi double [ %i.el, %.loopexit407.unr-lcssa ], [ %i.eo, %.lr.ph.i.i285.epil ]
  %i.ep = tail call noundef double @sqrt(double noundef %.lcssa731) #29 ; 7 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %.lr.ph422, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph422:                                        ; preds = %.loopexit407
  %i.er = fdiv nnan double 1.000000e+00, %i.ep    ; 2 uses
  %min.iters.check562 = icmp ult i64 %4, 4
  br i1 %min.iters.check562, label %scalar.ph561.preheader, label %vector.ph563

vector.ph563:                                     ; preds = %.lr.ph422
  %n.vec564 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert565 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat566 = shufflevector <2 x double> %broadcast.splatinsert565, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph563
  %index568 = phi i64 [ 0, %vector.ph563 ], [ %index.next571, %vector.body567 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index568 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load569 = load <2 x double>, ptr %i.es, align 8, !tbaa !155
  %wide.load570 = load <2 x double>, ptr %i.et, align 8, !tbaa !155
  %i.eu = fmul <2 x double> %broadcast.splat566, %wide.load569
  %i.ev = fmul <2 x double> %broadcast.splat566, %wide.load570
  store <2 x double> %i.eu, ptr %i.es, align 8, !tbaa !155
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !155
  %index.next571 = add nuw i64 %index568, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.ew, label %middle.block572, label %vector.body567, !llvm.loop !1261

middle.block572:                                  ; preds = %vector.body567
  %cmp.n573 = icmp eq i64 %4, %n.vec564
  br i1 %cmp.n573, label %._crit_edge423, label %scalar.ph561.preheader

scalar.ph561.preheader:                           ; preds = %.lr.ph422, %middle.block572
  %.1253421.ph = phi i64 [ 0, %.lr.ph422 ], [ %n.vec564, %middle.block572 ]
  br label %scalar.ph561

scalar.ph561:                                     ; preds = %scalar.ph561.preheader, %scalar.ph561
  %.1253421 = phi i64 [ %i.fa, %scalar.ph561 ], [ %.1253421.ph, %scalar.ph561.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.1253421 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !155
  %i.ez = fmul double %i.er, %i.ey
  store double %i.ez, ptr %i.ex, align 8, !tbaa !155
  %i.fa = add nuw nsw i64 %.1253421, 1            ; 2 uses
  %exitcond460.not = icmp eq i64 %i.fa, %4
  br i1 %exitcond460.not, label %._crit_edge423, label %scalar.ph561, !llvm.loop !1262

._crit_edge423:                                   ; preds = %scalar.ph561, %middle.block572
  br i1 %or.cond.i509512514, label %.lr.ph.i294.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph.i294.preheader:                            ; preds = %._crit_edge423
  %min.iters.check578 = icmp ult i64 %4, 8
  br i1 %min.iters.check578, label %.lr.ph.i294.preheader730, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph.i294.preheader
  %i.fb = shl i64 %4, 4
  %i.fc = add i64 %i.fb, -1
  %diff.check576 = icmp ult i64 %i.fc, 31
  br i1 %diff.check576, label %.lr.ph.i294.preheader730, label %vector.ph579

vector.ph579:                                     ; preds = %vector.memcheck575
  %n.vec580 = and i64 %4, -4                      ; 4 uses
  %i.fd = shl i64 %n.vec580, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %10, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.c, i64 %i.fd
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body581 ] ; 2 uses
  %i.fg = shl i64 %index582, 3                    ; 2 uses
  %next.gep583 = getelementptr i8, ptr %10, i64 %i.fg ; 2 uses
  %next.gep584 = getelementptr i8, ptr %i.c, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep584, i64 16
  %wide.load585 = load <2 x double>, ptr %next.gep584, align 8, !tbaa !155
  %wide.load586 = load <2 x double>, ptr %i.fh, align 8, !tbaa !155
  %i.fi = getelementptr i8, ptr %next.gep583, i64 16
  store <2 x double> %wide.load585, ptr %next.gep583, align 8, !tbaa !155
  store <2 x double> %wide.load586, ptr %i.fi, align 8, !tbaa !155
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.fj, label %middle.block588, label %vector.body581, !llvm.loop !1263

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %4, %n.vec580
  br i1 %cmp.n589, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294.preheader730

.lr.ph.i294.preheader730:                         ; preds = %vector.memcheck575, %.lr.ph.i294.preheader, %middle.block588
  %.020.i295.ph = phi i64 [ 0, %vector.memcheck575 ], [ 0, %.lr.ph.i294.preheader ], [ %n.vec580, %middle.block588 ] ; 4 uses
  %.01019.i296.ph = phi ptr [ %10, %vector.memcheck575 ], [ %10, %.lr.ph.i294.preheader ], [ %i.fe, %middle.block588 ] ; 2 uses
  %.01218.i297.ph = phi ptr [ %i.c, %vector.memcheck575 ], [ %i.c, %.lr.ph.i294.preheader ], [ %i.ff, %middle.block588 ] ; 2 uses
  %i.fk = sub i64 %4, %.020.i295.ph
  %xtraiter763 = and i64 %i.fk, 7                 ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol

.lr.ph.i294.prol:                                 ; preds = %.lr.ph.i294.preheader730, %.lr.ph.i294.prol
  %.020.i295.prol = phi i64 [ %i.fo, %.lr.ph.i294.prol ], [ %.020.i295.ph, %.lr.ph.i294.preheader730 ]
  %.01019.i296.prol = phi ptr [ %i.fn, %.lr.ph.i294.prol ], [ %.01019.i296.ph, %.lr.ph.i294.preheader730 ] ; 2 uses
  %.01218.i297.prol = phi ptr [ %i.fl, %.lr.ph.i294.prol ], [ %.01218.i297.ph, %.lr.ph.i294.preheader730 ] ; 2 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %.lr.ph.i294.prol ], [ 0, %.lr.ph.i294.preheader730 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.01218.i297.prol, i64 8 ; 2 uses
  %i.fm = load double, ptr %.01218.i297.prol, align 8, !tbaa !155
  %i.fn = getelementptr inbounds nuw i8, ptr %.01019.i296.prol, i64 8 ; 2 uses
  store double %i.fm, ptr %.01019.i296.prol, align 8, !tbaa !155
  %i.fo = add nuw nsw i64 %.020.i295.prol, 1      ; 2 uses
  %prol.iter765.next = add i64 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i64 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol, !llvm.loop !1264

.lr.ph.i294.prol.loopexit:                        ; preds = %.lr.ph.i294.prol, %.lr.ph.i294.preheader730
  %.020.i295.unr = phi i64 [ %.020.i295.ph, %.lr.ph.i294.preheader730 ], [ %i.fo, %.lr.ph.i294.prol ]
  %.01019.i296.unr = phi ptr [ %.01019.i296.ph, %.lr.ph.i294.preheader730 ], [ %i.fn, %.lr.ph.i294.prol ]
  %.01218.i297.unr = phi ptr [ %.01218.i297.ph, %.lr.ph.i294.preheader730 ], [ %i.fl, %.lr.ph.i294.prol ]
  %i.fp = sub i64 %.020.i295.ph, %4
  %i.fq = icmp ugt i64 %i.fp, -8
  br i1 %i.fq, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294

.lr.ph.i294:                                      ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294
  %.020.i295 = phi i64 [ %i.gp, %.lr.ph.i294 ], [ %.020.i295.unr, %.lr.ph.i294.prol.loopexit ]
  %.01019.i296 = phi ptr [ %i.go, %.lr.ph.i294 ], [ %.01019.i296.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %.01218.i297 = phi ptr [ %i.gm, %.lr.ph.i294 ], [ %.01218.i297.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 8
  %i.fs = load double, ptr %.01218.i297, align 8, !tbaa !155
  %i.ft = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 8
  store double %i.fs, ptr %.01019.i296, align 8, !tbaa !155
  %i.fu = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 16
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !155
  %i.fw = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 16
  store double %i.fv, ptr %i.ft, align 8, !tbaa !155
  %i.fx = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 24
  %i.fy = load double, ptr %i.fu, align 8, !tbaa !155
  %i.fz = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 24
  store double %i.fy, ptr %i.fw, align 8, !tbaa !155
  %i.ga = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 32
  %i.gb = load double, ptr %i.fx, align 8, !tbaa !155
  %i.gc = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 32
  store double %i.gb, ptr %i.fz, align 8, !tbaa !155
  %i.gd = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 40
  %i.ge = load double, ptr %i.ga, align 8, !tbaa !155
  %i.gf = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 40
  store double %i.ge, ptr %i.gc, align 8, !tbaa !155
  %i.gg = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 48
  %i.gh = load double, ptr %i.gd, align 8, !tbaa !155
  %i.gi = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 48
  store double %i.gh, ptr %i.gf, align 8, !tbaa !155
  %i.gj = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 56
  %i.gk = load double, ptr %i.gg, align 8, !tbaa !155
  %i.gl = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 56
  store double %i.gk, ptr %i.gi, align 8, !tbaa !155
  %i.gm = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 64
  %i.gn = load double, ptr %i.gj, align 8, !tbaa !155
  %i.go = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 64
  store double %i.gn, ptr %i.gl, align 8, !tbaa !155
  %i.gp = add nuw nsw i64 %.020.i295, 8           ; 2 uses
  %exitcond.not.i298.7 = icmp eq i64 %i.gp, %4
  br i1 %exitcond.not.i298.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294, !llvm.loop !1265

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301:    ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294, %middle.block588, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit, %.preheader35.i, %.preheader37.i, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, %._crit_edge423, %.loopexit407
  %i.gq = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.bt, %.loopexit407 ], [ %i.bt, %._crit_edge423 ], [ %i.bt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.bt, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ %i.bt, %.preheader37.i ], [ %i.bt, %.preheader35.i ], [ %i.bt, %middle.block588 ], [ %i.bt, %.lr.ph.i294 ], [ %i.bt, %.lr.ph.i294.prol.loopexit ] ; 4 uses
  %.0240390 = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.ep, %.loopexit407 ], [ %i.ep, %._crit_edge423 ], [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader37.i ], [ 0.000000e+00, %.preheader35.i ], [ %i.ep, %middle.block588 ], [ %i.ep, %.lr.ph.i294 ], [ %i.ep, %.lr.ph.i294.prol.loopexit ] ; 2 uses
  %11 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %.not269.not = icmp eq i64 %2, 0                ; 2 uses
  %i.gr = icmp ne ptr %0, null
  %or.cond.i302 = and i1 %i.gr, %.not.i           ; 2 uses
  %or.cond50.i305 = and i1 %i.bb, %6              ; 4 uses
  %i.gs = icmp slt i64 %4, 1
  %i.gt = shl i64 %4, 3
  %scevgep.a = getelementptr i8, ptr %11, i64 %i.gt
  %i.gu = add i64 %4, -1                          ; 6 uses
  %i.gv = add i64 %3, -1
  %min.iters.check686 = icmp ult i64 %3, 4
  %n.vec688 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n697 = icmp eq i64 %3, %n.vec688
  %xtraiter767 = and i64 %4, 1
  %i.gw = icmp eq i64 %i.gu, 0
  %unroll_iter772 = and i64 %4, -2
  %lcmp.mod769.not = icmp eq i64 %xtraiter767, 0
  %lcmp.mod771 = trunc i64 %4 to i1
  %xtraiter775 = and i64 %4, 1
  %i.gx = icmp eq i64 %i.gu, 0
  %unroll_iter782 = and i64 %4, -2
  %lcmp.mod779.not = icmp eq i64 %xtraiter775, 0
  %lcmp.mod781 = trunc i64 %4 to i1
  %xtraiter784 = and i64 %3, 3                    ; 3 uses
  %i.gy = icmp ult i64 %i.gv, 3
  %unroll_iter789 = and i64 %3, 9223372036854775804
  %lcmp.mod786.not = icmp eq i64 %xtraiter784, 0
  %lcmp.mod788 = icmp ne i64 %xtraiter784, 0
  %min.iters.check672 = icmp ult i64 %3, 4
  %n.vec674 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n683 = icmp eq i64 %3, %n.vec674
  %min.iters.check658 = icmp ult i64 %4, 4
  %n.vec660 = and i64 %4, -4                      ; 3 uses
  %cmp.n669 = icmp eq i64 %4, %n.vec660
  %xtraiter792 = and i64 %4, 1
  %i.gz = icmp eq i64 %i.gu, 0
  %unroll_iter797 = and i64 %4, -2
  %lcmp.mod794.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod796 = trunc i64 %4 to i1
  %xtraiter800 = and i64 %4, 1
  %i.ha = icmp eq i64 %i.gu, 0
  %unroll_iter807 = and i64 %4, -2
  %lcmp.mod804.not = icmp eq i64 %xtraiter800, 0
  %lcmp.mod806 = trunc i64 %4 to i1
  %xtraiter809 = and i64 %4, 3                    ; 3 uses
  %i.hb = icmp ult i64 %i.gu, 3
  %unroll_iter814 = and i64 %4, -4
  %lcmp.mod811.not = icmp eq i64 %xtraiter809, 0
  %lcmp.mod813 = icmp ne i64 %xtraiter809, 0
  %min.iters.check644 = icmp ult i64 %4, 4
  %n.vec646 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n655 = icmp eq i64 %4, %n.vec646
  %min.iters.check631 = icmp ult i64 %4, 2
  %n.vec633 = and i64 %4, -2                      ; 3 uses
  %cmp.n641 = icmp eq i64 %4, %n.vec633
  %min.iters.check615 = icmp ult i64 %4, 4
  %bound0611 = icmp ult ptr %7, %i.ba
  %bound1612 = icmp ult ptr %10, %scevgep.a
  %found.conflict613 = and i1 %bound0611, %bound1612
  %n.vec617 = and i64 %4, -4                      ; 3 uses
  %12 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %cmp.n628 = icmp eq i64 %4, %n.vec617
  %xtraiter816 = and i64 %4, 1
  %lcmp.mod817.not = icmp eq i64 %xtraiter816, 0
  %13 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %14 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %15 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %min.iters.check595 = icmp ult i64 %4, 4
  %bound0 = icmp ult ptr %10, %9
  %bound1 = icmp ult ptr %i.c, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  %n.vec597 = and i64 %4, -4                      ; 3 uses
  %cmp.n608 = icmp eq i64 %4, %n.vec597
  %xtraiter819 = and i64 %4, 1
  %lcmp.mod820.not = icmp eq i64 %xtraiter819, 0
  %xtraiter822 = and i64 %4, 3                    ; 3 uses
  %i.hc = icmp ult i64 %i.gu, 3
  %unroll_iter827 = and i64 %4, -4
  %lcmp.mod824.not = icmp eq i64 %xtraiter822, 0
  %lcmp.mod826 = icmp ne i64 %xtraiter822, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.0249 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.1250, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 4 uses
  %.0248 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.sp, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0245 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.sx, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0244 = phi double [ -1.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.su, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0243 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.un, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.1241 = phi double [ %.0240390, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.2242, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 5 uses
  %.0239 = phi double [ %.0240390, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.ot, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 3 uses
  %.0238 = phi double [ %i.gq, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.ov, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %.0237 = phi i64 [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.he, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %i.hd = phi <2 x double> [ zeroinitializer, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.tb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %i.he = add nuw nsw i64 %.0237, 1
  br i1 %i.bb, label %.lr.ph426, label %._crit_edge427

.lr.ph426:                                        ; preds = %bb.d
  %i.hf = fneg double %.1241                      ; 2 uses
  br i1 %min.iters.check686, label %scalar.ph685.preheader, label %vector.ph687

vector.ph687:                                     ; preds = %.lr.ph426
  %broadcast.splatinsert689 = insertelement <2 x double> poison, double %i.hf, i64 0
  %broadcast.splat690 = shufflevector <2 x double> %broadcast.splatinsert689, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph687
  %index692 = phi i64 [ 0, %vector.ph687 ], [ %index.next695, %vector.body691 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index692 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load693 = load <2 x double>, ptr %i.hg, align 8, !tbaa !155
  %wide.load694 = load <2 x double>, ptr %i.hh, align 8, !tbaa !155
  %i.hi = fmul <2 x double> %wide.load693, %broadcast.splat690
  %i.hj = fmul <2 x double> %wide.load694, %broadcast.splat690
  store <2 x double> %i.hi, ptr %i.hg, align 8, !tbaa !155
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !155
  %index.next695 = add nuw i64 %index692, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next695, %n.vec688
  br i1 %i.hk, label %middle.block696, label %vector.body691, !llvm.loop !1266

middle.block696:                                  ; preds = %vector.body691
  br i1 %cmp.n697, label %._crit_edge427, label %scalar.ph685.preheader

scalar.ph685.preheader:                           ; preds = %.lr.ph426, %middle.block696
  %.2254424.ph = phi i64 [ 0, %.lr.ph426 ], [ %n.vec688, %middle.block696 ]
  br label %scalar.ph685

scalar.ph685:                                     ; preds = %scalar.ph685.preheader, %scalar.ph685
  %.2254424 = phi i64 [ %i.ho, %scalar.ph685 ], [ %.2254424.ph, %scalar.ph685.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2254424 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !155
  %i.hn = fmul double %i.hm, %i.hf
  store double %i.hn, ptr %i.hl, align 8, !tbaa !155
  %i.ho = add nuw nsw i64 %.2254424, 1            ; 2 uses
  %exitcond461.not = icmp eq i64 %i.ho, %3
  br i1 %exitcond461.not, label %._crit_edge427, label %scalar.ph685, !llvm.loop !1267

._crit_edge427:                                   ; preds = %scalar.ph685, %middle.block696, %bb.d
  br i1 %or.cond.i302, label %bb.e, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

bb.e:                                             ; preds = %._crit_edge427
  br i1 %.not269.not, label %.preheader37.i306, label %.preheader35.i316

.preheader37.i306:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader36.i307, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader35.i316:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader.i317, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader36.i307:                                ; preds = %.preheader37.i306, %._crit_edge.i314
  %.02842.i308 = phi i64 [ %i.ii, %._crit_edge.i314 ], [ 0, %.preheader37.i306 ] ; 2 uses
  %.03041.i309 = phi ptr [ %.lcssa724, %._crit_edge.i314 ], [ %0, %.preheader37.i306 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i308 ; 4 uses
  %.promoted.i310 = load double, ptr %i.hp, align 8, !tbaa !155 ; 2 uses
  br i1 %i.gx, label %.epil.preheader774, label %.preheader36.i307.new

.preheader36.i307.new:                            ; preds = %.preheader36.i307, %.preheader36.i307.new
  %i.hq = phi double [ %i.ib, %.preheader36.i307.new ], [ %.promoted.i310, %.preheader36.i307 ]
  %.040.i311 = phi i64 [ %i.ic, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ] ; 3 uses
  %.13139.i312 = phi ptr [ %i.hw, %.preheader36.i307.new ], [ %.03041.i309, %.preheader36.i307 ] ; 3 uses
  %niter783 = phi i64 [ %niter783.next.1, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 8
  %i.hs = load double, ptr %.13139.i312, align 8, !tbaa !155
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !155
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.hu, double %i.hq) ; 2 uses
  store double %i.hv, ptr %i.hp, align 8, !tbaa !155
  %i.hw = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 16 ; 3 uses
  %i.hx = load double, ptr %i.hr, align 8, !tbaa !155
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !155
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ia, double %i.hv) ; 3 uses
  store double %i.ib, ptr %i.hp, align 8, !tbaa !155
  %i.ic = add nuw nsw i64 %.040.i311, 2           ; 2 uses
  %niter783.next.1 = add i64 %niter783, 2         ; 2 uses
  %niter783.ncmp.1 = icmp eq i64 %niter783.next.1, %unroll_iter782
  br i1 %niter783.ncmp.1, label %._crit_edge.i314.unr-lcssa, label %.preheader36.i307.new, !llvm.loop !1256

._crit_edge.i314.unr-lcssa:                       ; preds = %.preheader36.i307.new
  br i1 %lcmp.mod779.not, label %._crit_edge.i314, label %.epil.preheader774

.epil.preheader774:                               ; preds = %._crit_edge.i314.unr-lcssa, %.preheader36.i307
  %.epil.init778 = phi double [ %.promoted.i310, %.preheader36.i307 ], [ %i.ib, %._crit_edge.i314.unr-lcssa ]
  %.040.i311.epil.init = phi i64 [ 0, %.preheader36.i307 ], [ %i.ic, %._crit_edge.i314.unr-lcssa ]
  %.13139.i312.epil.init = phi ptr [ %.03041.i309, %.preheader36.i307 ], [ %i.hw, %._crit_edge.i314.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.id = getelementptr inbounds nuw i8, ptr %.13139.i312.epil.init, i64 8
  %i.ie = load double, ptr %.13139.i312.epil.init, align 8, !tbaa !155
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311.epil.init
  %i.ig = load double, ptr %i.if, align 8, !tbaa !155
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ig, double %.epil.init778)
  store double %i.ih, ptr %i.hp, align 8, !tbaa !155
  br label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %._crit_edge.i314.unr-lcssa, %.epil.preheader774
  %.lcssa724 = phi ptr [ %i.hw, %._crit_edge.i314.unr-lcssa ], [ %i.id, %.epil.preheader774 ]
  %i.ii = add nuw nsw i64 %.02842.i308, 1         ; 2 uses
  %exitcond53.not.i315 = icmp eq i64 %i.ii, %3
  br i1 %exitcond53.not.i315, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, label %.preheader36.i307, !llvm.loop !1257

.preheader.i317:                                  ; preds = %.preheader35.i316, %._crit_edge45.i323
  %.12948.i318 = phi i64 [ %i.je, %._crit_edge45.i323 ], [ 0, %.preheader35.i316 ] ; 2 uses
  %.247.i319 = phi ptr [ %.lcssa, %._crit_edge45.i323 ], [ %0, %.preheader35.i316 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i318 ; 3 uses
  br i1 %i.gw, label %.epil.preheader766, label %.preheader.i317.new

.preheader.i317.new:                              ; preds = %.preheader.i317, %.preheader.i317.new
  %.144.i320 = phi i64 [ %i.ix, %.preheader.i317.new ], [ 0, %.preheader.i317 ] ; 3 uses
  %.343.i321 = phi ptr [ %i.iq, %.preheader.i317.new ], [ %.247.i319, %.preheader.i317 ] ; 3 uses
  %niter773 = phi i64 [ %niter773.next.1, %.preheader.i317.new ], [ 0, %.preheader.i317 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.343.i321, i64 8
  %i.il = load double, ptr %.343.i321, align 8, !tbaa !155
  %i.im = load double, ptr %i.ij, align 8, !tbaa !155
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !155
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.il, double %i.im, double %i.io)
  store double %i.ip, ptr %i.in, align 8, !tbaa !155
  %i.iq = getelementptr inbounds nuw i8, ptr %.343.i321, i64 16 ; 3 uses
  %i.ir = load double, ptr %i.ik, align 8, !tbaa !155
  %i.is = load double, ptr %i.ij, align 8, !tbaa !155
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !155
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.is, double %i.iv)
  store double %i.iw, ptr %i.iu, align 8, !tbaa !155
  %i.ix = add nuw nsw i64 %.144.i320, 2           ; 2 uses
  %niter773.next.1 = add i64 %niter773, 2         ; 2 uses
  %niter773.ncmp.1 = icmp eq i64 %niter773.next.1, %unroll_iter772
  br i1 %niter773.ncmp.1, label %._crit_edge45.i323.unr-lcssa, label %.preheader.i317.new, !llvm.loop !1258

._crit_edge45.i323.unr-lcssa:                     ; preds = %.preheader.i317.new
  br i1 %lcmp.mod769.not, label %._crit_edge45.i323, label %.epil.preheader766

.epil.preheader766:                               ; preds = %._crit_edge45.i323.unr-lcssa, %.preheader.i317
  %.144.i320.epil.init = phi i64 [ 0, %.preheader.i317 ], [ %i.ix, %._crit_edge45.i323.unr-lcssa ]
  %.343.i321.epil.init = phi ptr [ %.247.i319, %.preheader.i317 ], [ %i.iq, %._crit_edge45.i323.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod771)
  %i.iy = getelementptr inbounds nuw i8, ptr %.343.i321.epil.init, i64 8
  %i.iz = load double, ptr %.343.i321.epil.init, align 8, !tbaa !155
  %i.ja = load double, ptr %i.ij, align 8, !tbaa !155
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320.epil.init ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !155
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.iz, double %i.ja, double %i.jc)
  store double %i.jd, ptr %i.jb, align 8, !tbaa !155
  br label %._crit_edge45.i323

._crit_edge45.i323:                               ; preds = %._crit_edge45.i323.unr-lcssa, %.epil.preheader766
  %.lcssa = phi ptr [ %i.iq, %._crit_edge45.i323.unr-lcssa ], [ %i.iy, %.epil.preheader766 ]
  %i.je = add nuw nsw i64 %.12948.i318, 1         ; 2 uses
  %exitcond55.not.i324 = icmp eq i64 %i.je, %3
  br i1 %exitcond55.not.i324, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, label %.preheader.i317, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325: ; preds = %._crit_edge45.i323, %._crit_edge.i314, %._crit_edge427, %.preheader37.i306, %.preheader35.i316
  br i1 %i.bb, label %.lr.ph.i.i327.preheader, label %.loopexit

.lr.ph.i.i327.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325
  br i1 %i.gy, label %.lr.ph.i.i327.epil.preheader, label %.lr.ph.i.i327

.lr.ph.i.i327:                                    ; preds = %.lr.ph.i.i327.preheader, %.lr.ph.i.i327
  %.012.i.i328 = phi double [ %i.jq, %.lr.ph.i.i327 ], [ 0.000000e+00, %.lr.ph.i.i327.preheader ]
  %.0710.i.i330 = phi ptr [ %i.jo, %.lr.ph.i.i327 ], [ %5, %.lr.ph.i.i327.preheader ] ; 5 uses
  %niter790 = phi i64 [ %niter790.next.3, %.lr.ph.i.i327 ], [ 0, %.lr.ph.i.i327.preheader ]
  %i.jf = getelementptr i8, ptr %.0710.i.i330, i64 8
  %i.jg = load double, ptr %.0710.i.i330, align 8, !tbaa !155 ; 2 uses
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %.012.i.i328)
  %i.ji = getelementptr i8, ptr %.0710.i.i330, i64 16
  %i.jj = load double, ptr %i.jf, align 8, !tbaa !155 ; 2 uses
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jj, double %i.jh)
  %i.jl = getelementptr i8, ptr %.0710.i.i330, i64 24
  %i.jm = load double, ptr %i.ji, align 8, !tbaa !155 ; 2 uses
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jm, double %i.jm, double %i.jk)
  %i.jo = getelementptr i8, ptr %.0710.i.i330, i64 32 ; 2 uses
  %i.jp = load double, ptr %i.jl, align 8, !tbaa !155 ; 2 uses
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jn) ; 3 uses
  %niter790.next.3 = add nuw nsw i64 %niter790, 4 ; 2 uses
  %niter790.ncmp.3 = icmp eq i64 %niter790.next.3, %unroll_iter789
  br i1 %niter790.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa, label %.lr.ph.i.i327, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa: ; preds = %.lr.ph.i.i327
  br i1 %lcmp.mod786.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332, label %.lr.ph.i.i327.epil.preheader

.lr.ph.i.i327.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa, %.lr.ph.i.i327.preheader
  %.012.i.i328.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i327.preheader ], [ %i.jq, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ]
  %.0710.i.i330.epil.init = phi ptr [ %5, %.lr.ph.i.i327.preheader ], [ %i.jo, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod788)
  br label %.lr.ph.i.i327.epil

.lr.ph.i.i327.epil:                               ; preds = %.lr.ph.i.i327.epil, %.lr.ph.i.i327.epil.preheader
  %.012.i.i328.epil = phi double [ %i.jt, %.lr.ph.i.i327.epil ], [ %.012.i.i328.epil.init, %.lr.ph.i.i327.epil.preheader ]
  %.0710.i.i330.epil = phi ptr [ %i.jr, %.lr.ph.i.i327.epil ], [ %.0710.i.i330.epil.init, %.lr.ph.i.i327.epil.preheader ] ; 2 uses
  %epil.iter785 = phi i64 [ %epil.iter785.next, %.lr.ph.i.i327.epil ], [ 0, %.lr.ph.i.i327.epil.preheader ]
  %i.jr = getelementptr i8, ptr %.0710.i.i330.epil, i64 8
  %i.js = load double, ptr %.0710.i.i330.epil, align 8, !tbaa !155 ; 2 uses
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.js, double %i.js, double %.012.i.i328.epil) ; 2 uses
  %epil.iter785.next = add i64 %epil.iter785, 1   ; 2 uses
  %epil.iter785.cmp.not = icmp eq i64 %epil.iter785.next, %xtraiter784
  br i1 %epil.iter785.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332, label %.lr.ph.i.i327.epil, !llvm.loop !1268

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332:    ; preds = %.lr.ph.i.i327.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa
  %.lcssa725 = phi double [ %i.jq, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ], [ %i.jt, %.lr.ph.i.i327.epil ]
  %i.ju = tail call noundef double @sqrt(double noundef %.lcssa725) #29 ; 10 uses
  %i.jv = fcmp ogt double %i.ju, 0.000000e+00
  br i1 %i.jv, label %.lr.ph429, label %.loopexit

.lr.ph429:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332
  %i.jw = fdiv nnan double 1.000000e+00, %i.ju    ; 2 uses
  br i1 %min.iters.check672, label %scalar.ph671.preheader, label %vector.ph673

vector.ph673:                                     ; preds = %.lr.ph429
  %broadcast.splatinsert675 = insertelement <2 x double> poison, double %i.jw, i64 0
  %broadcast.splat676 = shufflevector <2 x double> %broadcast.splatinsert675, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph673
  %index678 = phi i64 [ 0, %vector.ph673 ], [ %index.next681, %vector.body677 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index678 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load679 = load <2 x double>, ptr %i.jx, align 8, !tbaa !155
  %wide.load680 = load <2 x double>, ptr %i.jy, align 8, !tbaa !155
  %i.jz = fmul <2 x double> %broadcast.splat676, %wide.load679
  %i.ka = fmul <2 x double> %broadcast.splat676, %wide.load680
  store <2 x double> %i.jz, ptr %i.jx, align 8, !tbaa !155
  store <2 x double> %i.ka, ptr %i.jy, align 8, !tbaa !155
  %index.next681 = add nuw i64 %index678, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next681, %n.vec674
  br i1 %i.kb, label %middle.block682, label %vector.body677, !llvm.loop !1269

middle.block682:                                  ; preds = %vector.body677
  br i1 %cmp.n683, label %._crit_edge430, label %scalar.ph671.preheader

scalar.ph671.preheader:                           ; preds = %.lr.ph429, %middle.block682
  %.3255428.ph = phi i64 [ 0, %.lr.ph429 ], [ %n.vec674, %middle.block682 ]
  br label %scalar.ph671

scalar.ph671:                                     ; preds = %scalar.ph671.preheader, %scalar.ph671
  %.3255428 = phi i64 [ %i.kf, %scalar.ph671 ], [ %.3255428.ph, %scalar.ph671.preheader ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.3255428 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !155
  %i.ke = fmul double %i.jw, %i.kd
  store double %i.ke, ptr %i.kc, align 8, !tbaa !155
  %i.kf = add nuw nsw i64 %.3255428, 1            ; 2 uses
  %exitcond462.not = icmp eq i64 %i.kf, %3
  br i1 %exitcond462.not, label %._crit_edge430, label %scalar.ph671, !llvm.loop !1270

._crit_edge430:                                   ; preds = %scalar.ph671, %middle.block682
  %i.kg = fmul double %.1241, %.1241
  %i.kh = tail call double @llvm.fmuladd.f64(double %.0249, double %.0249, double %i.kg)
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %i.kh)
  %i.kj = fadd double %i.ki, 0.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.kj) ; 3 uses
  br i1 %6, label %.lr.ph433, label %._crit_edge434

.lr.ph433:                                        ; preds = %._crit_edge430
  %i.kk = fneg double %i.ju                       ; 2 uses
  br i1 %min.iters.check658, label %scalar.ph657.preheader, label %vector.ph659

vector.ph659:                                     ; preds = %.lr.ph433
  %broadcast.splatinsert661 = insertelement <2 x double> poison, double %i.kk, i64 0
  %broadcast.splat662 = shufflevector <2 x double> %broadcast.splatinsert661, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph659
  %index664 = phi i64 [ 0, %vector.ph659 ], [ %index.next667, %vector.body663 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index664 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %wide.load665 = load <2 x double>, ptr %i.kl, align 8, !tbaa !155
  %wide.load666 = load <2 x double>, ptr %i.km, align 8, !tbaa !155
  %i.kn = fmul <2 x double> %wide.load665, %broadcast.splat662
  %i.ko = fmul <2 x double> %wide.load666, %broadcast.splat662
  store <2 x double> %i.kn, ptr %i.kl, align 8, !tbaa !155
  store <2 x double> %i.ko, ptr %i.km, align 8, !tbaa !155
  %index.next667 = add nuw i64 %index664, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next667, %n.vec660
  br i1 %i.kp, label %middle.block668, label %vector.body663, !llvm.loop !1271

middle.block668:                                  ; preds = %vector.body663
  br i1 %cmp.n669, label %._crit_edge434, label %scalar.ph657.preheader

scalar.ph657.preheader:                           ; preds = %.lr.ph433, %middle.block668
  %.4256431.ph = phi i64 [ 0, %.lr.ph433 ], [ %n.vec660, %middle.block668 ]
  br label %scalar.ph657

scalar.ph657:                                     ; preds = %scalar.ph657.preheader, %scalar.ph657
  %.4256431 = phi i64 [ %i.kt, %scalar.ph657 ], [ %.4256431.ph, %scalar.ph657.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.4256431 ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !155
  %i.ks = fmul double %i.kr, %i.kk
  store double %i.ks, ptr %i.kq, align 8, !tbaa !155
  %i.kt = add nuw nsw i64 %.4256431, 1            ; 2 uses
  %exitcond463.not = icmp eq i64 %i.kt, %4
  br i1 %exitcond463.not, label %._crit_edge434, label %scalar.ph657, !llvm.loop !1272

._crit_edge434:                                   ; preds = %scalar.ph657, %middle.block668, %._crit_edge430
  br i1 %or.cond.i302, label %bb.f, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

bb.f:                                             ; preds = %._crit_edge434
  br i1 %.not269.not, label %.preheader37.i337, label %.preheader35.i347

.preheader37.i337:                                ; preds = %bb.f
  br i1 %or.cond50.i305, label %.preheader36.i338, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

.preheader35.i347:                                ; preds = %bb.f
  br i1 %or.cond50.i305, label %.preheader.i348, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

.preheader36.i338:                                ; preds = %.preheader37.i337, %._crit_edge.i345
  %.02842.i339 = phi i64 [ %i.ln, %._crit_edge.i345 ], [ 0, %.preheader37.i337 ] ; 2 uses
  %.03041.i340 = phi ptr [ %.lcssa727.a, %._crit_edge.i345 ], [ %0, %.preheader37.i337 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i339 ; 4 uses
  %.promoted.i341 = load double, ptr %i.ku, align 8, !tbaa !155 ; 2 uses
  br i1 %i.ha, label %.epil.preheader799, label %.preheader36.i338.new

.preheader36.i338.new:                            ; preds = %.preheader36.i338, %.preheader36.i338.new
  %i.kv = phi double [ %i.lg, %.preheader36.i338.new ], [ %.promoted.i341, %.preheader36.i338 ]
  %.040.i342 = phi i64 [ %i.lh, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ] ; 3 uses
  %.13139.i343 = phi ptr [ %i.lb, %.preheader36.i338.new ], [ %.03041.i340, %.preheader36.i338 ] ; 3 uses
  %niter808 = phi i64 [ %niter808.next.1, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 8
  %i.kx = load double, ptr %.13139.i343, align 8, !tbaa !155
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !155
  %i.la = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.kz, double %i.kv) ; 2 uses
  store double %i.la, ptr %i.ku, align 8, !tbaa !155
  %i.lb = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 16 ; 3 uses
  %i.lc = load double, ptr %i.kw, align 8, !tbaa !155
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load double, ptr %i.le, align 8, !tbaa !155
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.lf, double %i.la) ; 3 uses
  store double %i.lg, ptr %i.ku, align 8, !tbaa !155
  %i.lh = add nuw nsw i64 %.040.i342, 2           ; 2 uses
  %niter808.next.1 = add i64 %niter808, 2         ; 2 uses
  %niter808.ncmp.1 = icmp eq i64 %niter808.next.1, %unroll_iter807
  br i1 %niter808.ncmp.1, label %._crit_edge.i345.unr-lcssa, label %.preheader36.i338.new, !llvm.loop !1256

._crit_edge.i345.unr-lcssa:                       ; preds = %.preheader36.i338.new
  br i1 %lcmp.mod804.not, label %._crit_edge.i345, label %.epil.preheader799

.epil.preheader799:                               ; preds = %._crit_edge.i345.unr-lcssa, %.preheader36.i338
  %.epil.init803 = phi double [ %.promoted.i341, %.preheader36.i338 ], [ %i.lg, %._crit_edge.i345.unr-lcssa ]
  %.040.i342.epil.init = phi i64 [ 0, %.preheader36.i338 ], [ %i.lh, %._crit_edge.i345.unr-lcssa ]
  %.13139.i343.epil.init = phi ptr [ %.03041.i340, %.preheader36.i338 ], [ %i.lb, %._crit_edge.i345.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod806)
  %i.li = getelementptr inbounds nuw i8, ptr %.13139.i343.epil.init, i64 8
  %i.lj = load double, ptr %.13139.i343.epil.init, align 8, !tbaa !155
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342.epil.init
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !155
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.ll, double %.epil.init803)
  store double %i.lm, ptr %i.ku, align 8, !tbaa !155
  br label %._crit_edge.i345

._crit_edge.i345:                                 ; preds = %._crit_edge.i345.unr-lcssa, %.epil.preheader799
  %.lcssa727.a = phi ptr [ %i.lb, %._crit_edge.i345.unr-lcssa ], [ %i.li, %.epil.preheader799 ]
  %i.ln = add nuw nsw i64 %.02842.i339, 1         ; 2 uses
  %exitcond53.not.i346 = icmp eq i64 %i.ln, %3
  br i1 %exitcond53.not.i346, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader36.i338, !llvm.loop !1257

.preheader.i348:                                  ; preds = %.preheader35.i347, %._crit_edge45.i354
  %.12948.i349 = phi i64 [ %i.mj, %._crit_edge45.i354 ], [ 0, %.preheader35.i347 ] ; 2 uses
  %.247.i350 = phi ptr [ %.lcssa726, %._crit_edge45.i354 ], [ %0, %.preheader35.i347 ] ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i349 ; 3 uses
  br i1 %i.gz, label %.epil.preheader791, label %.preheader.i348.new

.preheader.i348.new:                              ; preds = %.preheader.i348, %.preheader.i348.new
  %.144.i351 = phi i64 [ %i.mc, %.preheader.i348.new ], [ 0, %.preheader.i348 ] ; 3 uses
  %.343.i352 = phi ptr [ %i.lv, %.preheader.i348.new ], [ %.247.i350, %.preheader.i348 ] ; 3 uses
  %niter798 = phi i64 [ %niter798.next.1, %.preheader.i348.new ], [ 0, %.preheader.i348 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.343.i352, i64 8
  %i.lq = load double, ptr %.343.i352, align 8, !tbaa !155
  %i.lr = load double, ptr %i.lo, align 8, !tbaa !155
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !155
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lr, double %i.lt)
  store double %i.lu, ptr %i.ls, align 8, !tbaa !155
  %i.lv = getelementptr inbounds nuw i8, ptr %.343.i352, i64 16 ; 3 uses
  %i.lw = load double, ptr %i.lp, align 8, !tbaa !155
  %i.lx = load double, ptr %i.lo, align 8, !tbaa !155
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !155
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.lx, double %i.ma)
  store double %i.mb, ptr %i.lz, align 8, !tbaa !155
  %i.mc = add nuw nsw i64 %.144.i351, 2           ; 2 uses
  %niter798.next.1 = add i64 %niter798, 2         ; 2 uses
  %niter798.ncmp.1 = icmp eq i64 %niter798.next.1, %unroll_iter797
  br i1 %niter798.ncmp.1, label %._crit_edge45.i354.unr-lcssa, label %.preheader.i348.new, !llvm.loop !1258

._crit_edge45.i354.unr-lcssa:                     ; preds = %.preheader.i348.new
  br i1 %lcmp.mod794.not, label %._crit_edge45.i354, label %.epil.preheader791

.epil.preheader791:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.preheader.i348
  %.144.i351.epil.init = phi i64 [ 0, %.preheader.i348 ], [ %i.mc, %._crit_edge45.i354.unr-lcssa ]
  %.343.i352.epil.init = phi ptr [ %.247.i350, %.preheader.i348 ], [ %i.lv, %._crit_edge45.i354.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod796)
  %i.md = getelementptr inbounds nuw i8, ptr %.343.i352.epil.init, i64 8
  %i.me = load double, ptr %.343.i352.epil.init, align 8, !tbaa !155
  %i.mf = load double, ptr %i.lo, align 8, !tbaa !155
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351.epil.init ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !155
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.me, double %i.mf, double %i.mh)
  store double %i.mi, ptr %i.mg, align 8, !tbaa !155
  br label %._crit_edge45.i354

._crit_edge45.i354:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.epil.preheader791
  %.lcssa726 = phi ptr [ %i.lv, %._crit_edge45.i354.unr-lcssa ], [ %i.md, %.epil.preheader791 ]
  %i.mj = add nuw nsw i64 %.12948.i349, 1         ; 2 uses
  %exitcond55.not.i355 = icmp eq i64 %i.mj, %3
  br i1 %exitcond55.not.i355, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader.i348, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356: ; preds = %._crit_edge45.i354, %._crit_edge.i345, %._crit_edge434, %.preheader37.i337, %.preheader35.i347
  br i1 %6, label %.lr.ph.i.i358.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363

.lr.ph.i.i358.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356
  br i1 %i.hb, label %.lr.ph.i.i358.epil.preheader, label %.lr.ph.i.i358

.lr.ph.i.i358:                                    ; preds = %.lr.ph.i.i358.preheader, %.lr.ph.i.i358
  %.012.i.i359 = phi double [ %i.mv, %.lr.ph.i.i358 ], [ 0.000000e+00, %.lr.ph.i.i358.preheader ]
  %.0710.i.i361 = phi ptr [ %i.mt, %.lr.ph.i.i358 ], [ %i.c, %.lr.ph.i.i358.preheader ] ; 5 uses
  %niter815 = phi i64 [ %niter815.next.3, %.lr.ph.i.i358 ], [ 0, %.lr.ph.i.i358.preheader ]
  %i.mk = getelementptr i8, ptr %.0710.i.i361, i64 8
  %i.ml = load double, ptr %.0710.i.i361, align 8, !tbaa !155 ; 2 uses
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.ml, double %i.ml, double %.012.i.i359)
  %i.mn = getelementptr i8, ptr %.0710.i.i361, i64 16
  %i.mo = load double, ptr %i.mk, align 8, !tbaa !155 ; 2 uses
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.mo, double %i.mm)
  %i.mq = getelementptr i8, ptr %.0710.i.i361, i64 24
  %i.mr = load double, ptr %i.mn, align 8, !tbaa !155 ; 2 uses
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.mr, double %i.mp)
  %i.mt = getelementptr i8, ptr %.0710.i.i361, i64 32 ; 2 uses
  %i.mu = load double, ptr %i.mq, align 8, !tbaa !155 ; 2 uses
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.mu, double %i.ms) ; 3 uses
  %niter815.next.3 = add i64 %niter815, 4         ; 2 uses
  %niter815.ncmp.3 = icmp eq i64 %niter815.next.3, %unroll_iter814
  br i1 %niter815.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, label %.lr.ph.i.i358, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i358
  br i1 %lcmp.mod811.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, label %.lr.ph.i.i358.epil.preheader

.lr.ph.i.i358.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, %.lr.ph.i.i358.preheader
  %.012.i.i359.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i358.preheader ], [ %i.mv, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  %.0710.i.i361.epil.init = phi ptr [ %i.c, %.lr.ph.i.i358.preheader ], [ %i.mt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod813)
  br label %.lr.ph.i.i358.epil

.lr.ph.i.i358.epil:                               ; preds = %.lr.ph.i.i358.epil, %.lr.ph.i.i358.epil.preheader
  %.012.i.i359.epil = phi double [ %i.my, %.lr.ph.i.i358.epil ], [ %.012.i.i359.epil.init, %.lr.ph.i.i358.epil.preheader ]
  %.0710.i.i361.epil = phi ptr [ %i.mw, %.lr.ph.i.i358.epil ], [ %.0710.i.i361.epil.init, %.lr.ph.i.i358.epil.preheader ] ; 2 uses
  %epil.iter810 = phi i64 [ %epil.iter810.next, %.lr.ph.i.i358.epil ], [ 0, %.lr.ph.i.i358.epil.preheader ]
  %i.mw = getelementptr i8, ptr %.0710.i.i361.epil, i64 8
  %i.mx = load double, ptr %.0710.i.i361.epil, align 8, !tbaa !155 ; 2 uses
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.mx, double %.012.i.i359.epil) ; 2 uses
  %epil.iter810.next = add i64 %epil.iter810, 1   ; 2 uses
  %epil.iter810.cmp.not = icmp eq i64 %epil.iter810.next, %xtraiter809
  br i1 %epil.iter810.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, label %.lr.ph.i.i358.epil, !llvm.loop !1273

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, %.lr.ph.i.i358.epil, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356
  %.0.lcssa.i.i357 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356 ], [ %i.mv, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ], [ %i.my, %.lr.ph.i.i358.epil ]
  %i.mz = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i357) #29 ; 5 uses
  %i.na = fcmp ule double %i.mz, 0.000000e+00
  %brmerge446 = or i1 %i.na, %i.gs
  br i1 %brmerge446, label %.loopexit, label %.lr.ph436

.lr.ph436:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363
  %i.nb = fdiv nnan double 1.000000e+00, %i.mz    ; 2 uses
  br i1 %min.iters.check644, label %scalar.ph643.preheader, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph436
  %broadcast.splatinsert647 = insertelement <2 x double> poison, double %i.nb, i64 0
  %broadcast.splat648 = shufflevector <2 x double> %broadcast.splatinsert647, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body649

vector.body649:                                   ; preds = %vector.body649, %vector.ph645
  %index650 = phi i64 [ 0, %vector.ph645 ], [ %index.next653, %vector.body649 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index650 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load651 = load <2 x double>, ptr %i.nc, align 8, !tbaa !155
  %wide.load652 = load <2 x double>, ptr %i.nd, align 8, !tbaa !155
  %i.ne = fmul <2 x double> %broadcast.splat648, %wide.load651
  %i.nf = fmul <2 x double> %broadcast.splat648, %wide.load652
  store <2 x double> %i.ne, ptr %i.nc, align 8, !tbaa !155
  store <2 x double> %i.nf, ptr %i.nd, align 8, !tbaa !155
  %index.next653 = add nuw i64 %index650, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next653, %n.vec646
  br i1 %i.ng, label %middle.block654, label %vector.body649, !llvm.loop !1274

middle.block654:                                  ; preds = %vector.body649
  br i1 %cmp.n655, label %.loopexit, label %scalar.ph643.preheader

scalar.ph643.preheader:                           ; preds = %.lr.ph436, %middle.block654
  %.5257435.ph = phi i64 [ 0, %.lr.ph436 ], [ %n.vec646, %middle.block654 ]
  br label %scalar.ph643

scalar.ph643:                                     ; preds = %scalar.ph643.preheader, %scalar.ph643
  %.5257435 = phi i64 [ %i.nk, %scalar.ph643 ], [ %.5257435.ph, %scalar.ph643.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.5257435 ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !155
  %i.nj = fmul double %i.nb, %i.ni
  store double %i.nj, ptr %i.nh, align 8, !tbaa !155
  %i.nk = add nuw nsw i64 %.5257435, 1            ; 2 uses
  %exitcond464.not = icmp eq i64 %i.nk, %4
  br i1 %exitcond464.not, label %.loopexit, label %scalar.ph643, !llvm.loop !1275

.loopexit:                                        ; preds = %scalar.ph643, %middle.block654, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332
  %i.nl = phi double [ %i.ju, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ 1.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ 1.000000e+00, %middle.block654 ], [ 1.000000e+00, %scalar.ph643 ] ; 2 uses
  %i.nm = phi double [ %i.ju, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %i.ju, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %i.ju, %middle.block654 ], [ %i.ju, %scalar.ph643 ] ; 8 uses
  %.1250 = phi double [ %.0249, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %sqrt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ %.0249, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %sqrt, %middle.block654 ], [ %sqrt, %scalar.ph643 ] ; 5 uses
  %.2242 = phi double [ %.1241, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %i.mz, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ %.1241, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %i.mz, %middle.block654 ], [ %i.mz, %scalar.ph643 ] ; 4 uses
  %i.nn = tail call double @llvm.fmuladd.f64(double %.0239, double %.0239, double 0.000000e+00) ; 4 uses
  %sqrt397 = tail call double @llvm.sqrt.f64(double %i.nn) ; 9 uses
  %i.no = fdiv double %.0239, %sqrt397
  %i.np = fdiv double 0.000000e+00, %sqrt397
  %i.nq = fmul double %.0238, %i.np
  %i.nr = fmul double %.0238, %i.no               ; 2 uses
  %i.ns = fcmp oeq double %i.nm, 0.000000e+00
  br i1 %i.ns, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.nt = fcmp ogt double %i.nn, 0.000000e+00
  %i.nu = select i1 %i.nt, double 1.000000e+00, double %sqrt397
  %i.nv = tail call double @llvm.fabs.f64(double %sqrt397)
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.h:                                             ; preds = %.loopexit
  %i.nw = fcmp oeq double %i.nn, 0.000000e+00
  br i1 %i.nw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.nx = fcmp olt double %i.nm, 0.000000e+00
  %i.ny = select i1 %i.nx, double -1.000000e+00, double %i.nl
  %i.nz = tail call double @llvm.fabs.f64(double %i.nm)
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.j:                                             ; preds = %bb.h
  %i.oa = tail call double @llvm.fabs.f64(double %i.nm)
  %i.ob = tail call double @llvm.fabs.f64(double %sqrt397)
  %i.oc = fcmp ogt double %i.oa, %i.ob
  br i1 %i.oc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.od = fdiv double %sqrt397, %i.nm             ; 3 uses
  %i.oe = fcmp olt double %i.nm, 0.000000e+00
  %i.of = select i1 %i.oe, double -1.000000e+00, double %i.nl
  %i.og = tail call double @llvm.fmuladd.f64(double %i.od, double %i.od, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.og)
  %i.oh = fdiv double %i.of, %sqrt.i              ; 3 uses
  %i.oi = fmul double %i.od, %i.oh
  %i.oj = fdiv double %i.nm, %i.oh
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ok = fdiv double %i.nm, %sqrt397             ; 3 uses
  %i.ol = fcmp ogt double %i.nn, 0.000000e+00
  %i.om = select i1 %i.ol, double 1.000000e+00, double %sqrt397
  %i.on = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.ok, double 1.000000e+00)
  %sqrt39.i = tail call double @llvm.sqrt.f64(double %i.on)
  %i.oo = fdiv double %i.om, %sqrt39.i            ; 3 uses
  %i.op = fmul double %i.ok, %i.oo
  %i.oq = fdiv double %sqrt397, %i.oo
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.0388 = phi double [ %i.nu, %bb.g ], [ 0.000000e+00, %bb.i ], [ %i.oi, %bb.k ], [ %i.oo, %bb.l ] ; 2 uses
  %.0 = phi double [ 0.000000e+00, %bb.g ], [ %i.ny, %bb.i ], [ %i.oh, %bb.k ], [ %i.op, %bb.l ] ; 3 uses
  %.sink.i = phi double [ %i.nv, %bb.g ], [ %i.nz, %bb.i ], [ %i.oj, %bb.k ], [ %i.oq, %bb.l ] ; 6 uses
  %i.or = fmul double %.2242, %.0                 ; 4 uses
  %i.os = fneg double %.0388
  %i.ot = fmul double %.2242, %i.os
  %i.ou = fmul double %i.nr, %.0388               ; 3 uses
  %i.ov = fmul double %i.nr, %.0                  ; 3 uses
  %i.ow = fmul double %.0, %i.ou
  %i.ox = fdiv double %i.ou, %.sink.i             ; 4 uses
  %i.oy = fneg double %i.or
  %i.oz = fdiv double %i.oy, %.sink.i             ; 4 uses
  br i1 %6, label %.lr.ph438.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370

.lr.ph438.preheader:                              ; preds = %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  br i1 %min.iters.check631, label %.lr.ph438.preheader721, label %vector.ph632

vector.ph632:                                     ; preds = %.lr.ph438.preheader
  %broadcast.splatinsert634 = insertelement <2 x double> poison, double %.sink.i, i64 0
  %broadcast.splat635 = shufflevector <2 x double> %broadcast.splatinsert634, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph632
  %index637 = phi i64 [ 0, %vector.ph632 ], [ %index.next639, %vector.body636 ] ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index637
  %wide.load638 = load <2 x double>, ptr %i.pa, align 8, !tbaa !155
  %i.pb = fdiv <2 x double> %wide.load638, %broadcast.splat635
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index637
  store <2 x double> %i.pb, ptr %i.pc, align 8, !tbaa !155
  %index.next639 = add nuw i64 %index637, 2       ; 2 uses
  %i.pd = icmp eq i64 %index.next639, %n.vec633
  br i1 %i.pd, label %middle.block640, label %vector.body636, !llvm.loop !1276

middle.block640:                                  ; preds = %vector.body636
  br i1 %cmp.n641, label %.lr.ph440.preheader, label %.lr.ph438.preheader721

.lr.ph438.preheader721:                           ; preds = %.lr.ph438.preheader, %middle.block640
  %.6258437.ph = phi i64 [ 0, %.lr.ph438.preheader ], [ %n.vec633, %middle.block640 ]
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader721, %.lr.ph438
  %.6258437 = phi i64 [ %i.pi, %.lr.ph438 ], [ %.6258437.ph, %.lr.ph438.preheader721 ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.6258437
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !155
  %i.pg = fdiv double %i.pf, %.sink.i
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.6258437
  store double %i.pg, ptr %i.ph, align 8, !tbaa !155
  %i.pi = add nuw nsw i64 %.6258437, 1            ; 2 uses
  %exitcond465.not = icmp eq i64 %i.pi, %4
  br i1 %exitcond465.not, label %.lr.ph440.preheader, label %.lr.ph438, !llvm.loop !1277

.lr.ph440.preheader:                              ; preds = %.lr.ph438, %middle.block640
  %brmerge = select i1 %min.iters.check615, i1 true, i1 %found.conflict613
  br i1 %brmerge, label %.lr.ph440.preheader720, label %vector.ph616

vector.ph616:                                     ; preds = %.lr.ph440.preheader
  %broadcast.splatinsert618 = insertelement <2 x double> poison, double %i.ox, i64 0
  %broadcast.splat619 = shufflevector <2 x double> %broadcast.splatinsert618, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph616
  %index621 = phi i64 [ 0, %vector.ph616 ], [ %index.next626, %vector.body620 ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index621 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load622 = load <2 x double>, ptr %i.pj, align 8, !tbaa !155, !alias.scope !1293
  %wide.load623 = load <2 x double>, ptr %i.pk, align 8, !tbaa !155, !alias.scope !1293
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index621 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %wide.load624 = load <2 x double>, ptr %i.pl, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %wide.load625 = load <2 x double>, ptr %i.pm, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %i.pn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat619, <2 x double> %wide.load622, <2 x double> %wide.load624)
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat619, <2 x double> %wide.load623, <2 x double> %wide.load625)
  store <2 x double> %i.pn, ptr %i.pl, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  store <2 x double> %i.po, ptr %i.pm, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %index.next626 = add nuw i64 %index621, 4       ; 2 uses
  %i.pp = icmp eq i64 %index.next626, %n.vec617
  br i1 %i.pp, label %middle.block627, label %vector.body620, !llvm.loop !1281

middle.block627:                                  ; preds = %vector.body620
  br i1 %cmp.n628, label %.lr.ph442.preheader, label %.lr.ph440.preheader720

.lr.ph440.preheader720:                           ; preds = %.lr.ph440.preheader, %middle.block627
  %.7259439.ph = phi i64 [ %n.vec617, %middle.block627 ], [ 0, %.lr.ph440.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.7259439.ph, 1
  br i1 %lcmp.mod817.not, label %.lr.ph440.prol.loopexit, label %.lr.ph440.prol

.lr.ph440.prol:                                   ; preds = %.lr.ph440.preheader720
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.7259439.ph
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !155
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %.7259439.ph ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !155
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.ox, double %i.pr, double %i.pt)
  store double %i.pu, ptr %i.ps, align 8, !tbaa !155
  %i.pv = or disjoint i64 %.7259439.ph, 1
  br label %.lr.ph440.prol.loopexit

.lr.ph440.prol.loopexit:                          ; preds = %.lr.ph440.prol, %.lr.ph440.preheader720
  %.7259439.unr = phi i64 [ %.7259439.ph, %.lr.ph440.preheader720 ], [ %i.pv, %.lr.ph440.prol ]
  %i.pw = icmp eq i64 %4, %.neg
  br i1 %i.pw, label %.lr.ph442.preheader, label %.lr.ph440

.lr.ph440:                                        ; preds = %.lr.ph440.prol.loopexit, %.lr.ph440
  %.7259439 = phi i64 [ %i.qi, %.lr.ph440 ], [ %.7259439.unr, %.lr.ph440.prol.loopexit ] ; 4 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.7259439
  %i.py = load double, ptr %i.px, align 8, !tbaa !155
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %.7259439 ; 2 uses
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !155
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.ox, double %i.py, double %i.qa)
  store double %i.qb, ptr %i.pz, align 8, !tbaa !155
  %i.qc = add nuw nsw i64 %.7259439, 1            ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !155
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.qc ; 2 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !155
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.ox, double %i.qe, double %i.qg)
  store double %i.qh, ptr %i.qf, align 8, !tbaa !155
  %i.qi = add nuw nsw i64 %.7259439, 2            ; 2 uses
  %exitcond466.not.1 = icmp eq i64 %i.qi, %4
  br i1 %exitcond466.not.1, label %.lr.ph442.preheader, label %.lr.ph440, !llvm.loop !1282

.lr.ph442.preheader:                              ; preds = %.lr.ph440.prol.loopexit, %.lr.ph440, %middle.block627
  %brmerge872 = or i1 %min.iters.check595, %found.conflict
  br i1 %brmerge872, label %.lr.ph442.preheader719, label %vector.ph596

vector.ph596:                                     ; preds = %.lr.ph442.preheader
  %broadcast.splatinsert598 = insertelement <2 x double> poison, double %i.oz, i64 0
  %broadcast.splat599 = shufflevector <2 x double> %broadcast.splatinsert598, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph596
  %index601 = phi i64 [ 0, %vector.ph596 ], [ %index.next606, %vector.body600 ] ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index601 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %wide.load602 = load <2 x double>, ptr %i.qj, align 8, !tbaa !155, !alias.scope !1295
  %wide.load603 = load <2 x double>, ptr %i.qk, align 8, !tbaa !155, !alias.scope !1295
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index601 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16 ; 2 uses
  %wide.load604 = load <2 x double>, ptr %i.ql, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %wide.load605 = load <2 x double>, ptr %i.qm, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %i.qn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat599, <2 x double> %wide.load604, <2 x double> %wide.load602)
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat599, <2 x double> %wide.load605, <2 x double> %wide.load603)
  store <2 x double> %i.qn, ptr %i.ql, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  store <2 x double> %i.qo, ptr %i.qm, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %index.next606 = add nuw i64 %index601, 4       ; 2 uses
  %i.qp = icmp eq i64 %index.next606, %n.vec597
  br i1 %i.qp, label %middle.block607, label %vector.body600, !llvm.loop !1286

middle.block607:                                  ; preds = %vector.body600
  br i1 %cmp.n608, label %.lr.ph.i.i365.preheader, label %.lr.ph442.preheader719

.lr.ph442.preheader719:                           ; preds = %.lr.ph442.preheader, %middle.block607
  %.8441.ph = phi i64 [ %n.vec597, %middle.block607 ], [ 0, %.lr.ph442.preheader ] ; 5 uses
  %.neg832 = or disjoint i64 %.8441.ph, 1
  br i1 %lcmp.mod820.not, label %.lr.ph442.prol.loopexit, label %.lr.ph442.prol

.lr.ph442.prol:                                   ; preds = %.lr.ph442.preheader719
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8441.ph
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !155
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.8441.ph ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !155
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.qt, double %i.qr)
  store double %i.qu, ptr %i.qs, align 8, !tbaa !155
  %i.qv = or disjoint i64 %.8441.ph, 1
  br label %.lr.ph442.prol.loopexit

.lr.ph442.prol.loopexit:                          ; preds = %.lr.ph442.prol, %.lr.ph442.preheader719
  %.8441.unr = phi i64 [ %.8441.ph, %.lr.ph442.preheader719 ], [ %i.qv, %.lr.ph442.prol ]
  %i.qw = icmp eq i64 %4, %.neg832
  br i1 %i.qw, label %.lr.ph.i.i365.preheader, label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.prol.loopexit, %.lr.ph442
  %.8441 = phi i64 [ %i.ri, %.lr.ph442 ], [ %.8441.unr, %.lr.ph442.prol.loopexit ] ; 4 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8441
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !155
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.8441 ; 2 uses
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !155
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.ra, double %i.qy)
  store double %i.rb, ptr %i.qz, align 8, !tbaa !155
  %i.rc = add nuw nsw i64 %.8441, 1               ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.rc
  %i.re = load double, ptr %i.rd, align 8, !tbaa !155
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.rc ; 2 uses
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !155
  %i.rh = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.rg, double %i.re)
  store double %i.rh, ptr %i.rf, align 8, !tbaa !155
  %i.ri = add nuw nsw i64 %.8441, 2               ; 2 uses
  %exitcond467.not.1 = icmp eq i64 %i.ri, %4
  br i1 %exitcond467.not.1, label %.lr.ph.i.i365.preheader, label %.lr.ph442, !llvm.loop !1287

.lr.ph.i.i365.preheader:                          ; preds = %.lr.ph442.prol.loopexit, %.lr.ph442, %middle.block607
  br i1 %i.hc, label %.lr.ph.i.i365.epil.preheader, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %.lr.ph.i.i365.preheader, %.lr.ph.i.i365
  %.012.i.i366 = phi double [ %i.ru, %.lr.ph.i.i365 ], [ 0.000000e+00, %.lr.ph.i.i365.preheader ]
  %.0710.i.i368 = phi ptr [ %i.rs, %.lr.ph.i.i365 ], [ %i.ba, %.lr.ph.i.i365.preheader ] ; 5 uses
  %niter828 = phi i64 [ %niter828.next.3, %.lr.ph.i.i365 ], [ 0, %.lr.ph.i.i365.preheader ]
  %i.rj = getelementptr i8, ptr %.0710.i.i368, i64 8
  %i.rk = load double, ptr %.0710.i.i368, align 8, !tbaa !155 ; 2 uses
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.rk, double %.012.i.i366)
  %i.rm = getelementptr i8, ptr %.0710.i.i368, i64 16
  %i.rn = load double, ptr %i.rj, align 8, !tbaa !155 ; 2 uses
  %i.ro = tail call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %i.rl)
  %i.rp = getelementptr i8, ptr %.0710.i.i368, i64 24
  %i.rq = load double, ptr %i.rm, align 8, !tbaa !155 ; 2 uses
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.rq, double %i.rq, double %i.ro)
  %i.rs = getelementptr i8, ptr %.0710.i.i368, i64 32 ; 2 uses
  %i.rt = load double, ptr %i.rp, align 8, !tbaa !155 ; 2 uses
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rt, double %i.rt, double %i.rr) ; 3 uses
  %niter828.next.3 = add i64 %niter828, 4         ; 2 uses
  %niter828.ncmp.3 = icmp eq i64 %niter828.next.3, %unroll_iter827
  br i1 %niter828.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, label %.lr.ph.i.i365, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i365
  br i1 %lcmp.mod824.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil.preheader

.lr.ph.i.i365.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.preheader
  %.012.i.i366.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i365.preheader ], [ %i.ru, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  %.0710.i.i368.epil.init = phi ptr [ %i.ba, %.lr.ph.i.i365.preheader ], [ %i.rs, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod826)
  br label %.lr.ph.i.i365.epil

.lr.ph.i.i365.epil:                               ; preds = %.lr.ph.i.i365.epil, %.lr.ph.i.i365.epil.preheader
  %.012.i.i366.epil = phi double [ %i.rx, %.lr.ph.i.i365.epil ], [ %.012.i.i366.epil.init, %.lr.ph.i.i365.epil.preheader ]
  %.0710.i.i368.epil = phi ptr [ %i.rv, %.lr.ph.i.i365.epil ], [ %.0710.i.i368.epil.init, %.lr.ph.i.i365.epil.preheader ] ; 2 uses
  %epil.iter823 = phi i64 [ %epil.iter823.next, %.lr.ph.i.i365.epil ], [ 0, %.lr.ph.i.i365.epil.preheader ]
  %i.rv = getelementptr i8, ptr %.0710.i.i368.epil, i64 8
  %i.rw = load double, ptr %.0710.i.i368.epil, align 8, !tbaa !155 ; 2 uses
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.rw, double %.012.i.i366.epil) ; 2 uses
  %epil.iter823.next = add i64 %epil.iter823, 1   ; 2 uses
  %epil.iter823.cmp.not = icmp eq i64 %epil.iter823.next, %xtraiter822
  br i1 %epil.iter823.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil, !llvm.loop !1288

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.epil, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i364 = phi double [ 0.000000e+00, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.ru, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ], [ %i.rx, %.lr.ph.i.i365.epil ]
  %i.ry = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i364) #29 ; 2 uses
  %i.rz = fneg double %.0244
  %i.sa = fmul double %.sink.i, %i.rz             ; 3 uses
  %i.sb = fneg double %.sink.i
  %i.sc = fmul double %.0243, %i.sb
  %i.sd = fmul double %i.or, %i.or
  %i.se = tail call double @llvm.fmuladd.f64(double %i.sc, double %.0245, double %i.ou) ; 2 uses
  %i.sf = fdiv double %i.se, %i.sa
  %i.sg = insertelement <2 x double> poison, double %i.sf, i64 0
  %i.sh = insertelement <2 x double> %i.sg, double %i.sa, i64 1 ; 2 uses
  %i.si = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = insertelement <2 x double> %i.si, double %i.sd, i64 1
  %i.sk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.sh, <2 x double> %i.sj) ; 2 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  %i.sm = tail call double @sqrt(double noundef %i.sl) #29 ; 2 uses
  %i.sn = insertelement <2 x double> poison, double %i.se, i64 0
  %i.so = insertelement <2 x double> %i.sn, double %i.or, i64 1
  %i.sp = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.ry, double %.0248) ; 2 uses
  %i.sq = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sr = insertelement <2 x double> %i.sq, double %i.sp, i64 1
  %i.ss = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sr) ; 3 uses
  %i.st = extractelement <2 x double> %i.ss, i64 0
  %i.su = fdiv double %i.sa, %i.st
  %i.sv = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sw = fdiv <2 x double> %i.so, %i.sv          ; 3 uses
  %i.sx = extractelement <2 x double> %i.sw, i64 0
  %i.sy = fmul double %i.ov, %i.ov
  %i.sz = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ta = insertelement <2 x double> %i.sz, double %i.nq, i64 0 ; 2 uses
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %i.ta, <2 x double> %i.hd) ; 2 uses
  %i.tc = extractelement <2 x double> %i.tb, i64 0
  %i.td = fadd double %i.tc, %i.sy
  %i.te = tail call double @sqrt(double noundef %i.td) #29 ; 2 uses
  %i.tf = tail call double @llvm.fabs.f64(double %i.ow)
  %i.tg = extractelement <2 x double> %i.ss, i64 1
  %i.th = fmul double %.1250, %i.tg
  %i.ti = fdiv double 1.000000e+00, %i.th         ; 2 uses
  %i.tj = fmul double %.1250, %i.sm
  %i.tk = fdiv double %i.tj, %i.gq
  %i.tl = fmul double %.1250, 1.000000e-15
  %i.tm = fmul double %i.tl, %i.sm
  %i.tn = fdiv double %i.tm, %i.gq
  %i.to = fadd double %i.tn, 1.000000e-15
  %i.tp = icmp ne i64 %.0237, 9999
  %i.tq = fadd double %i.ti, 1.000000e+00
  %i.tr = fcmp ugt double %i.tq, 1.000000e+00
  %i.ts = fmul double %.2242, %i.tf
  %i.tt = fdiv double %i.te, %i.gq                ; 2 uses
  %i.tu = fmul double %.1250, %i.te
  %i.tv = fadd double %i.tk, 1.000000e+00
  %i.tw = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.tx = insertelement <2 x double> %i.tw, double %i.ts, i64 1
  %i.ty = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tz = insertelement <2 x double> %i.ty, double %i.tu, i64 1
  %i.ua = fdiv <2 x double> %i.tx, %i.tz          ; 2 uses
  %i.ub = fadd <2 x double> %i.ua, splat (double 1.000000e+00)
  %i.uc = fcmp ugt <2 x double> %i.ub, splat (double 1.000000e+00) ; 2 uses
  %i.ud = fcmp ugt double %i.ti, 1.000000e-08
  %i.ue = extractelement <2 x double> %i.ua, i64 1
  %i.uf = fcmp ugt double %i.ue, 1.000000e-15
  %i.ug = fcmp ugt double %i.tt, %i.to
  %.not270391392393394395 = and i1 %i.tp, %i.tr
  %i.uh = select i1 %i.ug, i1 %i.uf, i1 false
  %i.ui = select i1 %i.uh, i1 %i.ud, i1 false
  %i.uj = extractelement <2 x i1> %i.uc, i64 0
  %i.uk = select i1 %i.ui, i1 %i.uj, i1 false
  %i.ul = extractelement <2 x i1> %i.uc, i64 1
  %i.um = select i1 %i.uk, i1 %i.ul, i1 false
  %.not270 = select i1 %i.um, i1 %.not270391392393394395, i1 false
  %i.un = extractelement <2 x double> %i.sw, i64 1
  br i1 %.not270, label %bb.d, label %split, !llvm.loop !1289

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.not.i371 = icmp eq ptr %1, null
  br i1 %.not.i371, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %bb.m

bb.m:                                             ; preds = %split
  br i1 %.not.i, label %.preheader16.i373, label %.preheader.i379

.preheader16.i373:                                ; preds = %bb.m
  br i1 %i.bb, label %.lr.ph.i374.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374.preheader:                            ; preds = %.preheader16.i373
  %min.iters.check702 = icmp ult i64 %3, 8
  %i.uo = sub i64 %8, %i.a
  %diff.check700 = icmp ugt i64 %i.uo, -32
  %or.cond717 = select i1 %min.iters.check702, i1 true, i1 %diff.check700
  br i1 %or.cond717, label %.lr.ph.i374.preheader718, label %vector.ph703

vector.ph703:                                     ; preds = %.lr.ph.i374.preheader
  %16 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %n.vec704 = and i64 %3, 9223372036854775804     ; 4 uses
  %i.up = shl i64 %n.vec704, 3                    ; 2 uses
  %i.uq = getelementptr i8, ptr %1, i64 %i.up
  %i.ur = getelementptr i8, ptr %16, i64 %i.up
  %17 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  br label %vector.body705

vector.body705:                                   ; preds = %vector.body705, %vector.ph703
  %index706 = phi i64 [ 0, %vector.ph703 ], [ %index.next711, %vector.body705 ] ; 2 uses
  %i.us = shl i64 %index706, 3                    ; 2 uses
  %next.gep707 = getelementptr i8, ptr %1, i64 %i.us ; 2 uses
  %next.gep708 = getelementptr i8, ptr %17, i64 %i.us ; 2 uses
  %i.ut = getelementptr i8, ptr %next.gep708, i64 16
  %wide.load709 = load <2 x double>, ptr %next.gep708, align 8, !tbaa !155
  %wide.load710 = load <2 x double>, ptr %i.ut, align 8, !tbaa !155
  %i.uu = getelementptr i8, ptr %next.gep707, i64 16
  store <2 x double> %wide.load709, ptr %next.gep707, align 8, !tbaa !155
  store <2 x double> %wide.load710, ptr %i.uu, align 8, !tbaa !155
  %index.next711 = add nuw i64 %index706, 4       ; 2 uses
  %i.uv = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.uv, label %middle.block712, label %vector.body705, !llvm.loop !1290

middle.block712:                                  ; preds = %vector.body705
  %cmp.n713 = icmp eq i64 %3, %n.vec704
  br i1 %cmp.n713, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374.preheader718

.lr.ph.i374.preheader718:                         ; preds = %.lr.ph.i374.preheader, %middle.block712
  %.020.i375.ph = phi i64 [ 0, %.lr.ph.i374.preheader ], [ %n.vec704, %middle.block712 ] ; 4 uses
  %.01019.i376.ph = phi ptr [ %1, %.lr.ph.i374.preheader ], [ %i.uq, %middle.block712 ] ; 2 uses
  %.01218.i377.ph = phi ptr [ %7, %.lr.ph.i374.preheader ], [ %i.ur, %middle.block712 ] ; 2 uses
  %i.uw = sub nsw i64 %3, %.020.i375.ph
  %xtraiter829 = and i64 %i.uw, 7                 ; 2 uses
  %lcmp.mod830.not = icmp eq i64 %xtraiter829, 0
  br i1 %lcmp.mod830.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol

.lr.ph.i374.prol:                                 ; preds = %.lr.ph.i374.preheader718, %.lr.ph.i374.prol
  %.020.i375.prol = phi i64 [ %i.va, %.lr.ph.i374.prol ], [ %.020.i375.ph, %.lr.ph.i374.preheader718 ]
  %.01019.i376.prol = phi ptr [ %i.uz, %.lr.ph.i374.prol ], [ %.01019.i376.ph, %.lr.ph.i374.preheader718 ] ; 2 uses
  %.01218.i377.prol = phi ptr [ %i.ux, %.lr.ph.i374.prol ], [ %.01218.i377.ph, %.lr.ph.i374.preheader718 ] ; 2 uses
  %prol.iter831 = phi i64 [ %prol.iter831.next, %.lr.ph.i374.prol ], [ 0, %.lr.ph.i374.preheader718 ]
  %i.ux = getelementptr inbounds nuw i8, ptr %.01218.i377.prol, i64 8 ; 2 uses
  %i.uy = load double, ptr %.01218.i377.prol, align 8, !tbaa !155
  %i.uz = getelementptr inbounds nuw i8, ptr %.01019.i376.prol, i64 8 ; 2 uses
  store double %i.uy, ptr %.01019.i376.prol, align 8, !tbaa !155
  %i.va = add nuw nsw i64 %.020.i375.prol, 1      ; 2 uses
  %prol.iter831.next = add i64 %prol.iter831, 1   ; 2 uses
  %prol.iter831.cmp.not = icmp eq i64 %prol.iter831.next, %xtraiter829
  br i1 %prol.iter831.cmp.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol, !llvm.loop !1291

.lr.ph.i374.prol.loopexit:                        ; preds = %.lr.ph.i374.prol, %.lr.ph.i374.preheader718
  %.020.i375.unr = phi i64 [ %.020.i375.ph, %.lr.ph.i374.preheader718 ], [ %i.va, %.lr.ph.i374.prol ]
  %.01019.i376.unr = phi ptr [ %.01019.i376.ph, %.lr.ph.i374.preheader718 ], [ %i.uz, %.lr.ph.i374.prol ]
  %.01218.i377.unr = phi ptr [ %.01218.i377.ph, %.lr.ph.i374.preheader718 ], [ %i.ux, %.lr.ph.i374.prol ]
  %i.vb = sub nsw i64 %.020.i375.ph, %3
  %i.vc = icmp ugt i64 %i.vb, -8
  br i1 %i.vc, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374

.preheader.i379:                                  ; preds = %bb.m
  br i1 %i.bb, label %.lr.ph23.preheader.i380, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph23.preheader.i380:                          ; preds = %.preheader.i379
  %i.vd = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.vd, i1 false), !tbaa !155
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374
  %.020.i375 = phi i64 [ %i.wc, %.lr.ph.i374 ], [ %.020.i375.unr, %.lr.ph.i374.prol.loopexit ]
  %.01019.i376 = phi ptr [ %i.wb, %.lr.ph.i374 ], [ %.01019.i376.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %.01218.i377 = phi ptr [ %i.vz, %.lr.ph.i374 ], [ %.01218.i377.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 8
  %i.vf = load double, ptr %.01218.i377, align 8, !tbaa !155
  %i.vg = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 8
  store double %i.vf, ptr %.01019.i376, align 8, !tbaa !155
  %i.vh = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 16
  %i.vi = load double, ptr %i.ve, align 8, !tbaa !155
  %i.vj = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 16
  store double %i.vi, ptr %i.vg, align 8, !tbaa !155
  %i.vk = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 24
  %i.vl = load double, ptr %i.vh, align 8, !tbaa !155
  %i.vm = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 24
  store double %i.vl, ptr %i.vj, align 8, !tbaa !155
  %i.vn = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 32
  %i.vo = load double, ptr %i.vk, align 8, !tbaa !155
  %i.vp = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 32
  store double %i.vo, ptr %i.vm, align 8, !tbaa !155
  %i.vq = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 40
  %i.vr = load double, ptr %i.vn, align 8, !tbaa !155
  %i.vs = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 40
  store double %i.vr, ptr %i.vp, align 8, !tbaa !155
  %i.vt = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 48
  %i.vu = load double, ptr %i.vq, align 8, !tbaa !155
  %i.vv = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 48
  store double %i.vu, ptr %i.vs, align 8, !tbaa !155
  %i.vw = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 56
  %i.vx = load double, ptr %i.vt, align 8, !tbaa !155
  %i.vy = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 56
  store double %i.vx, ptr %i.vv, align 8, !tbaa !155
  %i.vz = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 64
  %i.wa = load double, ptr %i.vw, align 8, !tbaa !155
  %i.wb = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 64
  store double %i.wa, ptr %i.vy, align 8, !tbaa !155
  %i.wc = add nuw nsw i64 %.020.i375, 8           ; 2 uses
  %exitcond.not.i378.7 = icmp eq i64 %i.wc, %3
  br i1 %exitcond.not.i378.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374, !llvm.loop !1292

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381:    ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374, %middle.block712, %split, %.preheader16.i373, %.preheader.i379, %.lr.ph23.preheader.i380
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px(i64 noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [100 x double], align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  switch i64 %0, label %bb.c [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %1, align 8, !tbaa !155 ; 2 uses
  %.not.i = icmp eq i64 %4, 0
  %i.c = tail call nsz double @llvm.fabs.f64(double %i.b)
  %i.d = select nsz i1 %.not.i, double %i.b, double %i.c
  %i.e = tail call nsz noundef double @llvm.maxnum.f64(double %2, double %i.d)
  store double %i.e, ptr %1, align 8, !tbaa !155
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %1, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef %6)
  %i.f = icmp sgt i64 %0, 0                       ; 2 uses
  br i1 %i.f, label %.preheader133.preheader, label %._crit_edge136.split.thread

.preheader133.preheader:                          ; preds = %bb.c
  %i.g = add nsw i64 %0, -1                       ; 3 uses
  %xtraiter = and i64 %0, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %0, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod225 = trunc i64 %0 to i1
  br label %.preheader133

._crit_edge136.split.thread:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !155
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %0
  br label %._crit_edge139.thread

.preheader133:                                    ; preds = %.preheader133.preheader, %._crit_edge
  %.0120135 = phi i64 [ %i.x, %._crit_edge ], [ 0, %.preheader133.preheader ] ; 3 uses
  %invariant.op = add nsw i64 %.0120135, -1       ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %1, i64 %.0120135 ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader133.new

.preheader133.new:                                ; preds = %.preheader133, %bb.g
  %.0124134 = phi i64 [ %i.t, %bb.g ], [ 0, %.preheader133 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.preheader133 ]
  %i.m = icmp slt i64 %.0124134, %invariant.op
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader133.new
  %i.n = mul nuw nsw i64 %.0124134, %0
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %i.n
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !155
  br label %bb.e

bb.e:                                             ; preds = %.preheader133.new, %bb.d
  %i.p = or disjoint i64 %.0124134, 1             ; 2 uses
  %i.q = icmp slt i64 %i.p, %invariant.op
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = mul nuw nsw i64 %i.p, %0
  %i.s = getelementptr [8 x i8], ptr %i.l, i64 %i.r
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !155
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = add nuw nsw i64 %.0124134, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader133.new, !llvm.loop !1297

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader133
  %.0124134.epil.init = phi i64 [ 0, %.preheader133 ], [ %i.t, %._crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod225)
  %i.u = icmp slt i64 %.0124134.epil.init, %invariant.op
  br i1 %i.u, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.epil.preheader
  %i.v = mul nuw nsw i64 %.0124134.epil.init, %0
  %i.w = getelementptr [8 x i8], ptr %i.l, i64 %i.v
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !155
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.h, %._crit_edge.unr-lcssa
  %i.x = add nuw nsw i64 %.0120135, 1             ; 2 uses
  %exitcond166.not = icmp eq i64 %i.x, %0
  br i1 %exitcond166.not, label %._crit_edge136.split, label %.preheader133, !llvm.loop !1298

._crit_edge136.split:                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !155 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0 ; 10 uses
  %.not186 = icmp eq i64 %0, 1
  br i1 %.not186, label %._crit_edge139.thread, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge136.split
  %i.ab = add nuw i64 %0, 1                       ; 5 uses
  %i.ac = add nsw i64 %0, -2                      ; 3 uses
  %xtraiter227 = and i64 %i.g, 3                  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %.epil.preheader226, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter230 = and i64 %i.g, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.1137 = phi i64 [ 1, %.lr.ph.new ], [ %i.ax, %bb.i ] ; 6 uses
  %niter231 = phi i64 [ 0, %.lr.ph.new ], [ %niter231.next.3, %bb.i ]
end_hunk_0
